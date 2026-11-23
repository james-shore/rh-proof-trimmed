"""Write a reduced copy of the Lean project from a keep-list. Text only: runs nothing from it.

usage:
  transform.py SRC DEST --keep KEEP.tsv [--keep MORE.tsv ...] [--level L0|L1|L2] [--report R.json]
  transform.py SRC DEST --rhtrim KEPT_FILES.txt CUTS.json [--rhtrim-docs RH_TRIM_REPO]

SRC is the mirror's `src/` at the pinned commit (never written to). DEST gets `src/` plus the
mirror's top-level build files. The last line printed is the fingerprint of DEST/src, computed
as rh-trim's tools/tree_hash.py does, so the two compare.

Keep-list (TSV, `#` comments, header optional): file, line, name, why. `file` is relative to
SRC; `line` is any line inside the command to keep, or `*` for the whole file; `name` (optional)
is checked against the command found there; `why` is free text carried into the report.

--rhtrim reproduces keithadler/rh-trim's make-fork.sh (prune.py, check_fork.py, trim_main.py,
and add_docs.py when given the repo) from its kept-files list and cut spans; it is the
regression test of the shared back half. The import rewiring and span cutting follow rh-trim's
tools/prune.py (Apache-2.0, https://github.com/keithadler/rh-trim).
"""
import argparse, collections, hashlib, json, os, re, shutil, subprocess, sys
from concurrent.futures import ProcessPoolExecutor

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import leancmds as L
from index import CUSTOM_RE as IXC

ALWAYS_FILES = ('Main', 'Statements', 'Challenge')
TOP_FILES = ('lakefile.toml', 'lake-manifest.json', 'lean-toolchain', 'comparator.json',
             'export-targets.txt', '.gitignore')
SIMP_ATTR = re.compile(r'(?<![-\w])(simp|simps!?|norm_cast|push_cast|reassoc \(attr := simp\))(?![\w])')
RFL_BODY = re.compile(r':=\s*(?:by\s+)?(?:exact\s+)?(?:rfl|Iff\.rfl|HEq\.rfl|Eq\.refl\s+_?)\s*$')
COE_INST = re.compile(r':\s*(?:@)?(?:CoeFun|CoeSort|Coe|CoeTail|CoeHead|CoeOut|CoeDep|CoeTC|CoeHTCT|CoeHTC|CoeOTC)\b')
# attributes that register elaboration-time code (tactic extensions etc.): the file is meta code
META_ATTR = re.compile(r'@\[(?:[^\]]*[\s,])?(?:positivity|norm_num|tactic|term_elab|command_elab|macro|delab|'
                       r'app_unexpander|simproc|dsimproc|builtin_\w+)\b')
ATTR_CMD = re.compile(r'^((?:[^\n]*\bin\n)*)((?:scoped\[[^\]]*\]\s+|local\s+|scoped\s+)?attribute\s*\[)', re.S)


# ----------------------------------------------------------------------------- helpers

def mod_of(rel):
    return rel[:-5].replace('/', '.')


def rel_of(mod):
    return mod.replace('.', '/') + '.lean'


def tree_hash(root):
    """rh-trim's tools/tree_hash.py: sha256 over sorted (relative path, sha256(content))."""
    h = hashlib.sha256(); n = 0
    paths = sorted(os.path.relpath(os.path.join(d, f), root) for d, _, fs in os.walk(root) for f in fs)
    for rel in paths:
        h.update(rel.encode() + b'\0')
        h.update(hashlib.sha256(open(os.path.join(root, rel), 'rb').read()).digest()); n += 1
    return h.hexdigest(), n


PRIVATE_RE = re.compile(r'^_private\.(?:[^.]+\.)*?0\.')


def read_keeplists(paths):
    """Read keep-lists in either format: ours (file, line, name, why; file relative to src/) or
    the keep list (decl, kind, file, start_line, end_line, ...; file relative to the mirror
    root). Returns ({file: set of lines or '*'}, {(file, line): name}, Counter of why)."""
    keep = collections.defaultdict(set)
    why = collections.Counter(); names = {}
    for p in paths:
        cols = None
        for raw in open(p, encoding='utf-8'):
            if not raw.strip() or raw.startswith('#'):
                continue
            parts = raw.rstrip('\n').split('\t')
            if cols is None and parts[0] in ('file', 'decl'):
                cols = parts; continue
            if cols is None:
                cols = ['file', 'line', 'name', 'why']
            r = dict(zip(cols, parts))
            f = r.get('file', '')
            if f.startswith('src/'):
                f = f[4:]
            if not f.endswith('.lean'):
                f = rel_of(f)
            line = r.get('line', r.get('start_line', '*')) or '*'
            nm = r.get('name', r.get('decl', ''))
            w = r.get('why', 'cone' if 'decl' in cols else '')
            keep[f].add(line if line == '*' else int(line))
            why[w] += 1
            if nm and line != '*':
                names[(f, int(line))] = PRIVATE_RE.sub('', nm)
    return keep, names, why


def _prefixes(n):
    p = n.split('.')
    return ['.'.join(p[:k]) for k in range(1, len(p))]


# ----------------------------------------------------------------------------- phase 1: per file

def _same_decl(want, have):
    """Does source name `have` (namespace-qualified as written) match kernel name `want`?"""
    return want == have or want.endswith('.' + have) or have.endswith('.' + want)


def _select_file(args):
    """Segment one file and pick its commands. Returns a summary dict (no text)."""
    src, f, lines, level, custom, want = args
    t = open(os.path.join(src, f), encoding='utf-8').read()
    cmds = L.segment(t, custom)
    whole = '*' in lines
    kept = set()
    misses, repaired, mismatched = [], [], []
    if whole:
        kept = set(range(len(cmds)))
    else:
        starts = [c.line for c in cmds]
        import bisect
        for ln in sorted(x for x in lines if x != '*'):
            k = bisect.bisect_right(starts, ln) - 1
            if k < 0 or cmds[k].kind == 'header':
                misses.append(ln); continue
            nm = want.get(ln)
            if nm and cmds[k].names and not any(_same_decl(nm, x) for x in cmds[k].names):
                alt = [j for j, c in enumerate(cmds) if any(_same_decl(nm, x) for x in c.names)]
                if alt:
                    k = min(alt, key=lambda j: abs(cmds[j].line - ln)); repaired.append(ln)
                else:
                    mismatched.append(ln)
            kept.add(k)
    seeded = set(kept)
    added = collections.Counter()
    if kept:
        # coercion instances are unfolded while elaborating (`π g` becomes `op π g`), so they leave no trace in the
        # proof term but every coercion in the file needs them (UnitaryRepresentations/IsInvariantIff…)
        for k, c in enumerate(cmds):
            if k not in kept and c.kind == 'decl' and c.kw == 'instance':
                head = t[c.extra['kwpos']:c.end]
                head = head[:min([i for i in (head.find(':='), head.find(' where')) if i > 0] or [len(head)])]
                if COE_INST.search(head):
                    kept.add(k); added['coe-instance'] += 1
    # L1/L2: in kept files only (the brief's ladder); L1g/L2g: in every file of the project
    if (kept and level in ('L1', 'L2', 'Li')) or level in ('L1g', 'L2g'):
        for k, c in enumerate(cmds):
            if k in kept or c.kind != 'decl' or c.kw == 'example':
                continue
            body = t[c.start:c.end].rstrip()
            if level == 'Li':      # instances only (to split L2's additions by category)
                if c.kw == 'instance' or re.search(r'(?<![-\w])instance\b', c.attrs):
                    kept.add(k); added['instance'] += 1
                continue
            if SIMP_ATTR.search(c.attrs):
                kept.add(k); added['simp'] += 1
            elif c.kw in ('theorem', 'lemma') and RFL_BODY.search(body):
                kept.add(k); added['rfl'] += 1
            elif level in ('L2', 'L2g') and (c.kw == 'instance' or re.search(r'(?<![-\w])instance\b', c.attrs)):
                kept.add(k); added['instance'] += 1
    namespaces = []     # (full namespace name, -) for every namespace command
    substantive_ns = []  # (index, ns) of kept commands that matter outside their block
    for k, c in enumerate(cmds):
        if c.kind == 'struct' and c.kw == 'namespace':
            w = t[c.extra['kwpos']:c.end].split()
            if len(w) > 1:
                namespaces.append(((c.ns + '.' + w[1]) if c.ns else w[1], 0))
        if (k in kept and c.kind in ('decl', 'mutual', 'meta')) or (c.kind == 'struct' and c.kw == 'export'):
            substantive_ns.append((k, c.ns))
    decls = []          # (index, kind, names) for every declaration-like command
    meta_tokens = []    # non-local syntax this file defines, with the token users write
    open_words = set()   # (word, namespace) of every `open` (command or `... in` prefix) in the file
    for c in cmds:
        for m in re.finditer(r'(?m)^open\s+((?:[^\n]|\n[ \t])*)', t[c.start:c.end]):
            body = re.sub(r'\([^)]*\)', ' ', m.group(1))
            for w in body.split():
                if w not in ('scoped', 'in', 'hiding', 'renaming') and (w[0].isalpha() or w[0] in '_«'):
                    open_words.add((w, c.ns))
    decl_lines = []
    for k, c in enumerate(cmds):
        if c.kind in ('decl', 'mutual'):
            decls.append((k, c.kw, c.names, c.ns))
            decl_lines.append((k, c.kw, c.names, c.ns, c.line))
        if c.kind == 'meta' and not any(m == 'local' for m in c.mods):
            m = re.search(r'"([^"]+)"', t[c.start:c.end])
            if m and m.group(1).strip():
                meta_tokens.append(m.group(1).strip())
    defines_elab = bool(re.search(r'^(?:local |scoped )?elab(?:_rules)?\b', t, re.M)) or \
        bool(IXC.findall(t)) or bool(META_ATTR.search(t))
    runs_code = any(c.kw in ('run_cmd', 'run_elab', 'run_meta', 'initialize', 'builtin_initialize') for c in cmds)
    # `export X (a b)` makes aliases other files resolve names through; a file of only exports has no
    # declarations of its own but must stay (TauReduction/Imports.lean)
    exports = any(c.kind == 'struct' and c.kw == 'export' and 'local' not in c.mods for c in cmds)
    return dict(file=f, n=len(cmds), kept=sorted(kept), seeded=len(seeded), added=dict(added),
                misses=misses, repaired=repaired, mismatched=mismatched, decls=decls, meta_tokens=meta_tokens, defines_elab=defines_elab,
                runs_code=runs_code, exports=exports, cmd_lines=[(c.line, c.end_line) for c in cmds], open_words=sorted(open_words), decl_lines=decl_lines, namespaces=namespaces, substantive_ns=substantive_ns, imports=L.imports_of(t),
                imports_ms=(L.header_imports(t) if L.is_module(t) else None))


# ----------------------------------------------------------------------------- phase 3: per kept file

_G = {}


def _init(g):
    _G.update(g)


def _resolve_cut(tok, ns, opens):
    """True if `tok` (as written in namespace `ns` with `opens`) names a project declaration that
    was cut and none that survives."""
    surv, cut = _G['surviving'], _G['cut']
    if tok.startswith('_root_.'):
        cands = [tok[7:]]
    else:
        parts = ns.split('.') if ns else []
        cands = [tok] + ['.'.join(parts[:k]) + '.' + tok for k in range(len(parts), 0, -1)]
        cands += [o + '.' + tok for o in sorted(opens)]
    if any(c in surv for c in cands):
        return False
    if any(c in cut for c in cands):
        return True
    # generated names (projections, constructors, instances) of a cut structure, class or inductive. Only such a
    # prefix counts: `Matrix.normedAddCommGroup` is Mathlib's even if some project declaration `X.Matrix` was cut
    cut_types = _G.get('cut_types', set()); lib = _G.get('lib_ns') or set()
    for c in cands:
        while '.' in c:
            c = c.rsplit('.', 1)[0]
            if c in surv or c in lib:
                return False
            if c in cut_types:
                return True
    return False


def _opens_at(text, cmds, upto):
    """Namespaces opened by `open` in scope before command `upto` (approximate)."""
    stack = [set()]
    for c in cmds[:upto]:
        if c.kind != 'struct':
            continue
        if c.kw in ('namespace', 'section'):
            n = max(1, len(L.name_components(text[c.extra['kwpos']:c.end].split('\n')[0][len(c.kw):])))
            for _ in range(n):
                stack.append(set(stack[-1]))
        elif c.kw == 'end' and len(stack) > 1:
            n = max(1, len(L.name_components(text[c.extra['kwpos']:c.end].split('\n')[0][3:])))
            for _ in range(min(n, len(stack) - 1)):
                stack.pop()
        elif c.kw == 'open' and not c.prefix:
            body = text[c.extra['core']:c.end].strip()[4:]
            words = re.sub(r'\([^)]*\)', ' ', body).replace('scoped', ' ').split()
            stack[-1].update(w for w in words if w[0].isalpha() or w[0] in '_«')
    return stack[-1]


DIRECTIVE = re.compile(r'^(?P<head>(?:scoped\[[^\]]*\]\s+|local\s+|scoped\s+)?attribute\s*\[)', re.S)


def filter_directive(s, ns, opens):
    """Rewrite one attribute / unseal / export directive (optionally ending in ` in`) without the
    targets that name cut declarations. Returns the new text, or None if nothing is left."""
    body = s.rstrip(); tail = s[len(body):]
    suffix = ''
    if re.search(r'\sin$', body):
        body, suffix = body[:-2].rstrip(), ' in'
    m = DIRECTIVE.match(body)
    if m:
        j = L._balanced_attr_end(body, m.end() - 2)
        if j < 0:
            return s
        head, toks, close = body[:j], body[j:].split(), ''
        scope_ns = None
    elif body.startswith(('unseal', 'seal')):
        kw = body.split(None, 1)[0]
        head, toks, close, scope_ns = kw, body[len(kw):].split(), '', None
    elif body.startswith('open'):
        if _G.get('lib_ns') is None:
            return s
        return _filter_open(s, body, suffix, tail, ns)
    elif body.startswith('export'):
        m = re.match(r'export\s+(\S+)\s*\(([^)]*)\)\s*$', body, re.S)
        if not m:
            return s
        head, toks, close, scope_ns = f'export {m.group(1)} (', m.group(2).split(), ')', m.group(1)
    else:
        return s
    keep = []
    for x in toks:
        name = (scope_ns + '.' + x) if scope_ns else x
        if not _resolve_cut(name, ns, opens):
            keep.append(x)
    if len(keep) == len(toks):
        return s
    _G['stats']['targets_removed'] += len(toks) - len(keep)
    if not keep:
        return None
    if scope_ns:
        return head + ' '.join(keep) + close + suffix + tail
    return head + ' ' + ' '.join(keep) + suffix + tail


def _ns_status(w, ns, extra=()):
    """'keep' if namespace `w` (as written in namespace `ns`, after opening `extra`) still exists,
    'gone' if it only ever named project namespaces that the cut removed."""
    if w.startswith('_root_.'):
        cands = [w[7:]]
    else:
        parts = ns.split('.') if ns else []
        cands = ['.'.join(parts[:k]) + '.' + w for k in range(len(parts), 0, -1)] + [w]
    via = [o + '.' + w for o in extra]   # `open A B` may mean A.B: checked against the whole tree
    seen = _G.get('file_ns')       # project namespaces this file can see through its reduced imports
    own = _G.get('own_ns', ())     # ... and those it registered itself before this command
    if any(c in _G['lib_ns'] or c in own or (c in seen if seen is not None else c in _G['surv_ns'])
           for c in cands) or \
            any(c in _G['lib_ns'] or c in _G['surv_ns'] for c in via):
        return 'keep'
    cands = cands + via
    if any(c in _G['proj_ns'] for c in cands):
        return 'gone'
    return 'keep'


def _filter_open(s, body, suffix, tail, ns):
    """`open A B`, `open scoped A`, `open A (x y)`, `open A hiding x`, `open A renaming x → y`."""
    rest = body[4:]
    if re.search(r'[(]|\bhiding\b|\brenaming\b', rest):
        m = re.match(r'\s*(?:scoped\s+)?(\S+)', rest)
        if m and _ns_status(m.group(1), ns, _G.get('opens_here', ())) == 'gone':
            _G['stats']['open_ns_removed'] += 1
            return None
        e = re.match(r'(\s*(?:scoped\s+)?(\S+)\s*\()([^)]*)(\).*)$', rest, re.S)
        if e:   # open X (a b c): drop the names that were cut
            xs = e.group(3).split()
            keep = [x for x in xs if not _resolve_cut(e.group(2) + '.' + x, ns, set())]
            if len(keep) < len(xs):
                _G['stats']['open_names_removed'] += len(xs) - len(keep)
                if not keep:
                    return None
                return 'open' + e.group(1) + ' '.join(keep) + e.group(4) + suffix + tail
        return s
    words = rest.split()
    scoped = words[:1] == ['scoped']
    names = words[1:] if scoped else words
    keep = []
    seen = list(_G.get('opens_here', ()))
    for w in names:
        if _ns_status(w, ns, seen) != 'gone':
            keep.append(w)
        seen.append(w)
    if len(keep) == len(names):
        return s
    _G['stats']['open_ns_removed'] += len(names) - len(keep)
    if not keep:
        return None
    return 'open ' + ('scoped ' if scoped else '') + ' '.join(keep) + suffix + tail


def _filter_prefixes(text, c, opens):
    """Filter the `attribute/unseal ... in` prefix lines of a kept command."""
    pre = text[c.start:c.extra['core']]
    if not re.search(r'^(?:scoped|local|attribute|unseal|seal|open)', pre, re.M):
        return pre
    chunks = re.split(r'(?m)^(?=\S)', pre)
    out = []
    for ch in chunks:
        if not ch:
            continue
        r = filter_directive(ch, c.ns, opens)
        if r is None:
            _G['stats']['prefix_dropped'] += 1
            continue
        out.append(r)
    return ''.join(out)


SUBSTANTIVE_STRUCT = ('export',)


def _dead_scope_members(text, cmds, keep_idx):
    """Commands of namespace/section blocks that hold nothing kept that matters outside them.
    A `namespace X` / `end X` pair is never dropped: an empty block can exist only to register X so that
    an `open X` before X's declarations works (JacobiMinorProofs/LeIffLtColHeight.lean)."""
    drop = set(); protected = set()
    stack = []   # one entry per name component: [live, members, opener index, is namespace]
    for k, c in enumerate(cmds):
        if c.kind == 'struct' and c.kw in ('namespace', 'section'):
            n = max(1, len(L.name_components(text[c.extra['kwpos']:c.end].split('\n')[0][len(c.kw):])))
            for _ in range(n):
                stack.append([False, [k], k, c.kw == 'namespace'])
            continue
        if c.kind == 'struct' and c.kw == 'end' and stack:
            n = max(1, len(L.name_components(text[c.extra['kwpos']:c.end].split('\n')[0][3:])))
            for _ in range(min(n, len(stack))):
                live, members, opener, is_ns = stack.pop()
                members.append(k)
                if is_ns:
                    protected.update((opener, k))
                if live:
                    if stack:
                        stack[-1][0] = True
                else:
                    drop.update(members)
                    if stack:
                        stack[-1][1].extend(members)
            continue
        if not stack:
            continue
        stack[-1][1].append(k)
        if k not in keep_idx:
            continue
        if c.kind == 'struct' and c.kw not in SUBSTANTIVE_STRUCT:
            continue
        if c.kind == 'meta' and 'local' in c.mods:
            continue
        if c.kind == 'attr' and re.search(r'attribute\s*\[\s*local\b', text[c.extra['core']:c.end]):
            continue
        if c.kind == 'header':
            continue
        for s in stack:
            s[0] = True
    return drop - protected


def _apply_spans(t, a, b, reps):
    """t[a:b] with the replacements (offset, end, text) that lie inside it."""
    out, last = [], a
    for x, y, txt in sorted(reps):
        out.append(t[last:x]); out.append(txt); last = y
    out.append(t[last:b])
    return ''.join(out)


def _write_file(args):
    f, kept, new_imports, compat, file_ns, fedits = args[:6]
    new_flags = args[6] if len(args) > 6 else None   # module-system file: {import: (public, meta)}
    repl = args[7] if len(args) > 7 else None        # {dropped import: [its kept frontier]}
    not_edited = args[8] if len(args) > 8 else False  # the file's imports had no import-set/add/remove edit
    repl_meta = args[9] if len(args) > 9 else None   # {dropped import: {frontier module: meta on the way}}
    src, dest = _G['src'], _G['dest']
    _G['stats'] = collections.Counter()
    _G['file_ns'] = file_ns
    t = open(os.path.join(src, f), encoding='utf-8').read()
    if compat:
        # rh-trim mode: cut the given spans, nothing else
        spans = _G['cuts'].get(mod_of(f), [])
        parts, last = [], 0
        for a, b in spans:
            if a < last:
                continue
            parts.append(t[last:a]); last = b
        parts.append(t[last:])
        body = ''.join(parts)
    else:
        cmds = L.segment(t, _G['custom'])
        keep_idx = set(kept)
        keep_idx |= {k for k, c in enumerate(cmds) if c.kind in ('header', 'struct', 'meta', 'comment', 'other', 'attr')}
        if _G['prune_scopes'] and len(kept) < len(cmds):
            dead = _dead_scope_members(t, cmds, keep_idx)
            _G['stats']['scope_cmds_dropped'] += len(dead & keep_idx)
            keep_idx -= dead
        pieces = []
        own_ns = set(); _G['own_ns'] = own_ns
        aliases = (fedits or {}).get('alias', {})
        reps_by_cmd = collections.defaultdict(list)
        if fedits and fedits.get('replace'):
            import edits as ED
            st = ED.line_starts(t)
            for l0, c0, l1, c1, txt, srcref, exp in fedits['replace']:
                x = ED.offset(st, t, l0, c0, srcref); y = ED.offset(st, t, l1, c1, srcref)
                if not ED.expect_ok(t[x:y], exp):
                    raise SystemExit(f'error: {srcref}: expect {exp!r} does not match the mirror span')
                k = next((k for k, c in enumerate(cmds) if c.start <= x and y <= c.end), None)
                if k is None:
                    raise SystemExit(f'error: {srcref}: span crosses a command boundary')
                reps_by_cmd[k].append((x, y, txt))
        for k, c in enumerate(cmds):
            if k in keep_idx:
                if c.kind in ('decl', 'mutual'):
                    for n in c.names:
                        own_ns.update(_prefixes(n))
                elif c.kind == 'struct' and c.kw == 'namespace':
                    w = t[c.extra['kwpos']:c.end].split()
                    if len(w) > 1:
                        own_ns.update(_prefixes(((c.ns + '.' + w[1]) if c.ns else w[1]) + '.x'))
            if k not in keep_idx:
                _G['stats']['cmds_cut_' + c.kind] += 1
                if k in reps_by_cmd:
                    _G['stats']['edit replace: command cut'] += len(reps_by_cmd[k])
                if k in aliases:
                    _G['stats']['edit alias: command cut'] += 1
                continue
            directive = c.kind == 'attr' or (c.kind == 'struct' and c.kw in ('export', 'unseal', 'seal', 'open'))
            opens = _opens_at(t, cmds, k) if (directive or c.prefix) and len(kept) < len(cmds) else None
            _G['opens_here'] = sorted(opens) if opens else ()
            reps = reps_by_cmd.get(k, [])
            core, kwp = c.extra.get('core', c.start), c.extra.get('kwpos', c.start)
            if k in aliases:
                orig = t[c.start:c.end]; trail = orig[len(orig.rstrip()):] or '\n'
                pre = t[c.start:core] if opens is None else _filter_prefixes(t, c, opens)
                words = t[kwp:c.end].split()
                # the declared name only: no universe parameters (`foo.{u}`) or binders glued to it; `alias` takes
                # neither (e.g. `SelectionLemmas.aux2.{u_1}`)
                m = re.match(r"[^\s({\[:]+", words[1])
                name = (m.group(0) if m else words[1]).rstrip('.')
                mods = t[core:kwp]
                if 'expose' in pre or 'expose' in mods:   # Lean 4.36 rejects `@[expose] alias` (expose is for defs only)
                    def _noexp(s):
                        def fix(mt):
                            items = [x.strip() for x in mt.group(1).split(',') if x.strip() != 'expose']
                            return ('@[' + ', '.join(items) + ']') if items else ''
                        return re.sub(r'@\[([^\]]*)\]', fix, s)
                    pre, mods = _noexp(pre), _noexp(mods)
                piece = pre + mods + 'alias ' + name + ' := ' + aliases[k] + trail
                _G['stats']['edit alias'] += 1
                if reps:
                    _G['stats']['edit replace: in aliased command'] += len(reps)
            elif reps and (opens is None or not directive):
                inside = [r for r in reps if r[0] >= core]
                if len(inside) < len(reps):
                    _G['stats']['edit replace: in a prefix, dropped'] += len(reps) - len(inside)
                head = t[c.start:core] if opens is None else _filter_prefixes(t, c, opens)
                piece = head + _apply_spans(t, core, c.end, inside)
                _G['stats']['edit replace'] += len(inside)
            elif reps:
                _G['stats']['edit replace: in a directive, dropped'] += len(reps)
                piece = filter_directive(t[c.start:c.end], c.ns, opens)
                if piece is None:
                    _G['stats']['dropped_' + c.kw] += 1
                    continue
            elif opens is None:
                piece = t[c.start:c.end]
            elif directive and not c.prefix:
                piece = filter_directive(t[c.start:c.end], c.ns, opens)
                if piece is None:
                    _G['stats']['dropped_' + c.kw] += 1
                    continue
            else:
                piece = _filter_prefixes(t, c, opens) + t[c.extra['core']:c.end]
            pieces.append(piece)
        body = ''.join(pieces)
    old_imports = L.imports_of(t)
    old_flags = {w: (p, m) for w, p, m, _ in L.header_imports(t)} if new_flags is not None else None
    if new_flags is not None and not_edited and not repl:
        out = body                                # module file, nothing dropped or edited: header verbatim
    elif new_flags is not None and not_edited:
        out = _rewrite_module_header(body, repl, new_flags, repl_meta)
    elif new_imports == old_imports and (new_flags is None or all(old_flags.get(i) == new_flags.get(i) for i in new_imports)):
        out = body
    else:
        lines = body.split('\n')
        body_start = 0
        for k, line in enumerate(lines):
            s = line.strip()
            if s.startswith('import ') or s == '' or (new_flags is not None and (s == 'module' or L.IMPORT_MS_RE.match(s))):
                body_start = k + 1
            else:
                break
        hdr_out = _rewrite_header_keeping_lines(lines, new_imports, repl) if new_flags is None else None
        if hdr_out is not None:
            out = hdr_out[0] + '\n'.join(lines[hdr_out[1]:])
        elif new_flags is None:
            out = '\n'.join('import ' + i for i in new_imports) + '\n\n' + '\n'.join(lines[body_start:])
        else:                                     # module system: keep `module` and each import's public/meta
            hdr = ['module', ''] + [('public ' if new_flags.get(i, (True, False))[0] else '') + ('meta ' if new_flags.get(i, (True, False))[1] else '') + 'import ' + i
                                    for i in new_imports]
            out = '\n'.join(hdr) + '\n\n' + '\n'.join(lines[body_start:])
    p = os.path.join(dest, 'src', f)
    os.makedirs(os.path.dirname(p), exist_ok=True)
    with open(p, 'w', encoding='utf-8') as h:
        h.write(out)
    return f, out.count('\n') + 1, len(out), dict(_G['stats'])


def visible_namespaces(res, keep_files, sel, new_imports, proj_ns, lib_ns, surv_ns):
    """For each kept file: the project namespaces (among those its `open`s could mean) that exist in the file
    itself or in a kept file it imports, transitively. A namespace that survives only outside the file's
    import closure makes `open` fail there (HasDerivAtLpOfDominated: `open … GlobalTheory.CompanionTheory.Hypotheses₂ …`)."""
    byf = {r['file']: r for r in res}
    # namespaces each kept file registers in the reduced tree
    reg = {}
    for f in keep_files:
        r = byf[f]; ks = set(sel.get(f, []))
        s = set()
        for k, kw, nms, ns in r['decls']:
            if k in ks:
                for n in nms:
                    s.update(_prefixes(n))
        for nsn, _ in r['namespaces']:
            s.update(_prefixes(nsn + '.x'))
        for k, ns in r['substantive_ns']:
            if ns:
                s.update(_prefixes(ns + '.x'))
        reg[f] = s
    # candidate namespaces the kept opens could mean, restricted to project-only ones
    want = {}
    for f in keep_files:
        cs = set()
        for w, ns in byf[f]['open_words']:
            if w.startswith('_root_.'):
                cands = [w[7:]]
            else:
                parts = ns.split('.') if ns else []
                cands = ['.'.join(parts[:k]) + '.' + w for k in range(len(parts), 0, -1)] + [w]
            cs.update(c for c in cands if c in proj_ns and c not in lib_ns)
        want[f] = cs
    universe = sorted(set().union(*want.values())) if want else []
    bit = {n: 1 << i for i, n in enumerate(universe)}
    regbits = {f: sum(bit[n] for n in reg[f] if n in bit) for f in keep_files}
    mod2f = {mod_of(f): f for f in keep_files}
    vis = {}
    sys.setrecursionlimit(1000000)
    order = []; state = {}
    for m0 in sorted(mod2f):
        if m0 in state:
            continue
        st = [(m0, iter(new_imports.get(m0, [])))]; state[m0] = 1
        while st:
            m, it = st[-1]
            nxt = next((i for i in it if i in mod2f and i not in state), None)
            if nxt is not None:
                state[nxt] = 1; st.append((nxt, iter(new_imports.get(nxt, [])))); continue
            st.pop(); order.append(m)
    for m in order:
        b = regbits[mod2f[m]]
        for i in new_imports.get(m, []):
            if i in mod2f:
                b |= vis[i]
        vis[m] = b
    out = {}
    for f in keep_files:
        b = 0                          # imports only: the file's own namespaces count from their position on
        for i in new_imports.get(mod_of(f), []):
            if i in mod2f:
                b |= vis[i]
        out[f] = frozenset(n for n in want[f] if b & bit[n])
    return out


_HDR_COMMENT_RE = re.compile(r'^\s*(--.*|/-.*-/\s*)$')


def _rewrite_module_header(body, repl, new_flags, repl_meta=None):
    """Module-system header with dropped imports and no import edits: every header line stays as written (`module`,
    comments, blank lines, each surviving import with its own public/meta/all), and the line of a dropped import is
    replaced in place by import lines for its kept frontier: public iff the dropped import was public, meta if the line
    or the path to that module was meta. A frontier module is not added again when a surviving line or an earlier
    replacement already imports it at least as strongly: public if public is needed, and with the same meta-ness
    (a private `import X` must not hide the `public import X` a dropped public import implied)."""
    lines = body.split('\n')
    k = 0
    while k < len(lines):
        s0 = lines[k].strip()
        if s0 == '' or s0 == 'module' or L.IMPORT_MS_RE.match(s0) or _HDR_COMMENT_RE.match(lines[k]):
            k += 1
        else:
            break
    cover = collections.defaultdict(set)          # module -> {(public, meta)} already imported
    for line in lines[:k]:
        m = L.IMPORT_MS_RE.match(line.strip())
        if m:
            for w in m.group(4).split('--', 1)[0].split():
                if w not in repl:
                    cover[w].add((m.group(1) == 'public', bool(m.group(2))))
    out = []
    for line in lines[:k]:
        m = L.IMPORT_MS_RE.match(line.strip())
        if not m:
            out.append(line); continue
        mods = m.group(4).split('--', 1)[0].split()
        if not any(w in repl for w in mods):
            out.append(line); continue
        pub, meta = m.group(1) == 'public', bool(m.group(2))
        keep = [w for w in mods if w not in repl]
        if keep:
            out.append(line.replace(m.group(4).split('--', 1)[0].strip(), ' '.join(keep), 1))
        for w in mods:
            for x in repl.get(w, ()):
                xm = meta or ((repl_meta or {}).get(w, {}).get(x, new_flags.get(x, (pub, False))[1]))
                if any(cm == xm and (cp or not pub) for cp, cm in cover[x]):
                    continue
                cover[x].add((pub, xm))
                out.append(('public ' if pub else '') + ('meta ' if xm else '') + 'import ' + x)
    return '\n'.join(out + lines[k:])


def _rewrite_header_keeping_lines(lines, new_imports, repl):
    """For a (4.33-style) header that contains comments (a leading comment line, or `import X -- note`): keep every
    header line as written (comments, blank lines, each surviving import with its comment) and replace only the line
    of a dropped import by `import F` lines for its kept frontier, at the same position. Returns (header text, index of
    the first line after the header in LINES, the file's kept text split in lines) or None when the header has no comments (the plain writer is then
    used, so trees without such headers are unchanged) or when the import list was edited beyond rewiring."""
    k, has_comment = 0, False
    while k < len(lines):
        s = lines[k].strip()
        if s.startswith('import '):
            has_comment |= '--' in s
        elif s == '':
            pass
        elif _HDR_COMMENT_RE.match(lines[k]):
            has_comment = True
        else:
            break
        k += 1
    if not has_comment or repl is None:
        return None
    out, emitted = [], set()
    own = {}                                   # module -> its own one-module import line (with its comment)
    for line in lines[:k]:
        s = line.strip()
        if s.startswith('import '):
            ms = s[len('import '):].split('--', 1)[0].split()
            if len(ms) == 1:
                own.setdefault(ms[0], line)
    for line in lines[:k]:
        s = line.strip()
        if not s.startswith('import '):
            out.append(line); continue
        mods = s[len('import '):].split('--', 1)[0].split()
        if all(x in new_imports for x in mods) and not any(x in emitted for x in mods):
            out.append(line); emitted.update(mods); continue
        for x in mods:
            if x in new_imports and x not in emitted:
                out.append('import ' + x); emitted.add(x)
            for y in (repl or {}).get(x, []):
                if y in new_imports and y not in emitted:
                    out.append(own.get(y, 'import ' + y)); emitted.add(y)   # y's own line (comment kept) if it has one
    if [x for x in new_imports if x not in emitted] or len(emitted) != len(new_imports):
        return None                                        # import edits beyond rewiring: plain writer
    return '\n'.join(out) + '\n', k


# ----------------------------------------------------------------------------- import rewiring

def rewire(all_imports, keep_mods, flags=None, meta_out=None):
    """prune.py's rule: an import of a dropped project module is replaced by the kept modules and
    package modules it reaches through dropped modules only, so new closure ∩ kept = old ∩ kept.
    Module system (flags: {module file: {import: (public, meta, all)}}): an importer of a module file loads only its
    public interface, so the walk through a dropped module file follows its `public` imports only; each replacement
    import is public iff the importer imported the dropped module publicly, and meta if any step was meta. Returns
    (new, new_flags) with new_flags only for module files."""
    sys.setrecursionlimit(1000000)
    flags = flags or {}
    memo = {}

    def frontier(m):
        # in the original depth-first order (sorting changed instance precedence and which same-name copy wins);
        # entries (module, meta-on-the-way)
        if m in memo:
            return memo[m]
        memo[m] = ()
        out, seen = [], {}
        fm = flags.get(m)
        for i in all_imports.get(m, []):
            if fm is not None:
                pub, meta, allf = fm.get(i, (False, False, False))
                if not pub:
                    continue                    # private import of a dropped module file: invisible to its importers
            else:
                meta = False
            for x, xm in (((i, False),) if (i not in all_imports or i in keep_mods) else frontier(i)):
                xm = xm or meta
                if x not in seen:
                    seen[x] = len(out); out.append((x, xm))
                elif out[seen[x]][1] and not xm:
                    out[seen[x]] = (x, False)
        memo[m] = tuple(out)
        return memo[m]

    new, new_flags, repl = {}, {}, {}
    for m in sorted(keep_mods):
        fm = flags.get(m)
        lst = []
        rp = {}
        for i in all_imports[m]:
            pub, meta, allf = fm.get(i, (False, False, False)) if fm is not None else (False, False, False)
            if i not in all_imports or i in keep_mods:
                lst.append((i, pub, meta))
            else:
                if allf:
                    sys.exit(f'error: {m} has `import all {i}`, and {i} is dropped (not supported)')
                lst.extend((x, pub, meta or xm) for x, xm in frontier(i))
                rp[i] = [x for x, _ in frontier(i)]
                if meta_out is not None and fm is not None:
                    meta_out.setdefault(m, {})[i] = {x: (meta or xm) for x, xm in frontier(i)}
        seen, ded, fl = set(), [], {}
        for i, pub, meta in lst:
            if i == m:
                continue
            if i not in seen:
                seen.add(i); ded.append(i); fl[i] = (pub, meta)
            else:
                fl[i] = (fl[i][0] or pub, fl[i][1] and meta)
        new[m] = ded
        repl[m] = rp
        if fm is not None:
            new_flags[m] = fl
    return new, new_flags, repl


# ----------------------------------------------------------------------------- rh-trim cleanup steps

def rhtrim_check_fork(fork, orig):
    """check_fork.py's attribute rule: drop `attribute [...] x` lines naming a declaration (by last
    name component) that the original file declares and the fork no longer does."""
    declre = re.compile(r'^(?:@\[[^\]]*\]\s*)?(?:(?:private|protected|noncomputable|partial|unsafe|nonrec)\s+)*'
                        r'(?:theorem|lemma|def|abbrev|structure|class|instance|inductive|opaque)\b\s*([^\s:({\[⦃]*)', re.M)
    attre = re.compile(r'^attribute \[[^\]]*\]\s+(.+)$', re.M)
    last = lambda n: n.split('.')[-1]
    removed = 0
    for d, _, fs in os.walk(fork):
        for f in fs:
            if not f.endswith('.lean'):
                continue
            p = os.path.join(d, f); rel = os.path.relpath(p, fork)
            t = open(p, encoding='utf-8').read()
            if 'attribute [' not in t:
                continue
            o = open(os.path.join(orig, rel), encoding='utf-8').read()
            gone = {last(n) for n in declre.findall(o) if n} - {last(n) for n in declre.findall(t) if n}
            if not gone:
                continue
            out = []
            for line in t.split('\n'):
                m = attre.match(line)
                if m and any(last(x) in gone for x in m.group(1).split()):
                    removed += 1; continue
                out.append(line)
            if len(out) != t.count('\n') + 1:
                open(p, 'w', encoding='utf-8').write('\n'.join(out))
    return removed


def rhtrim_trim_main(fork_src):
    p = os.path.join(fork_src, 'Main.lean')
    t = open(p, encoding='utf-8').read()
    open(p, 'w', encoding='utf-8').write(
        'import Statements\nimport Supplements.Kernels.MainTheorems\n\n' + t[t.index('theorem'):])


# ----------------------------------------------------------------------------- main

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('src'); ap.add_argument('dest')
    ap.add_argument('--keep', action='append', default=[])
    ap.add_argument('--level', default='L0', choices=['L0', 'L1', 'L2', 'Li', 'L1g', 'L2g'])
    ap.add_argument('--rhtrim', nargs=2, metavar=('KEPT_FILES', 'CUTS_JSON'))
    ap.add_argument('--rhtrim-docs', metavar='RH_TRIM_REPO')
    ap.add_argument('--no-prune-scopes', action='store_true')
    ap.add_argument('--lib-namespaces', help='namespaces Mathlib and deps provide (one per line, .gz ok); '
                    'enables dropping `open` of project namespaces the cut removed')
    ap.add_argument('--report')
    ap.add_argument('--write-keep', help='write the declarations this tree keeps, as a keep-list')
    ap.add_argument('--jobs', type=int)
    ap.add_argument('--edits', action='append', default=[], help='edit list (cleaning/transform/EDIT-LISTS.md); repeatable')
    ap.add_argument('--exclude', help='keep-list format: commands never kept, whatever the keep-list or level adds '
                    '(e.g. the losing copies of names declared in two modules)')
    ap.add_argument('--statement-cone', help="the statement cone (statement-cone-with_definitions.tsv from rh-proof-dependencies) (required with --edits): the hard guard")
    a = ap.parse_args()
    src = os.path.abspath(a.src); dest = os.path.abspath(a.dest)
    if os.path.exists(os.path.join(dest, 'src')):
        sys.exit(f'error: {dest}/src exists; pass an empty folder')
    if os.path.commonpath([src, dest]) == src:
        sys.exit('error: DEST must be outside SRC')
    import index as IX
    files = IX.lean_files(src)
    all_imports = {}
    report = dict(src=src, args=vars(a))
    file_edits = {}; edit_stats = collections.Counter()

    if a.rhtrim:
        keep_mods = {l.strip() for l in open(a.rhtrim[0]) if l.strip()} | set(ALWAYS_FILES)
        cuts = json.load(open(a.rhtrim[1]))
        for f in files:
            all_imports[mod_of(f)] = L.imports_of(open(os.path.join(src, f), encoding='utf-8').read())
        keep_mods = {m for m in keep_mods if m in all_imports}
        g = dict(src=src, dest=dest, cuts=cuts, custom=frozenset(), stats=collections.Counter())
        sel = {rel_of(m): [] for m in keep_mods}
        compat = True
    else:
        keep, names, why = read_keeplists(a.keep)
        for m in ALWAYS_FILES:
            keep[rel_of(m)].add('*')
        custom = IX.custom_commands(src, files)
        want = collections.defaultdict(dict)
        for (f, ln), nm in names.items():
            want[f][ln] = nm
        jobs = [(src, f, keep.get(f, set()), a.level, custom, want.get(f, {})) for f in files]
        with ProcessPoolExecutor(a.jobs) as ex:
            res = list(ex.map(_select_file, jobs, chunksize=256))
        byf = {r['file']: r for r in res}
        for r in res:
            all_imports[mod_of(r['file'])] = r['imports']
        if a.exclude:
            ex, _, _ = read_keeplists([a.exclude]); nx = 0
            for f, lines in ex.items():
                r = byf.get(f)
                if r is None:
                    continue
                ks = {k for k, (l0, l1) in enumerate(r['cmd_lines']) if any(l0 <= x <= l1 for x in lines if x != '*')}
                before = len(r['kept']); r['kept'] = [k for k in r['kept'] if k not in ks]; nx += before - len(r['kept'])
            report['excluded'] = nx
        if a.edits:
            import edits as ED
            erows = ED.read_edits(a.edits)
            dindex = collections.defaultdict(list)
            for r in res:
                for k, kw, nms, ns, line in r['decl_lines']:
                    for n in nms:
                        dindex[n].append((r['file'], line))
            ED.resolve(erows, dindex)
            if not a.statement_cone:
                raise SystemExit('error: --edits needs --statement-cone (the hard guard)')
            spans = ED.cone_spans(ED.read_cone(a.statement_cone), lambda f: byf[f]['cmd_lines'] if f in byf else [])
            n0 = len(erows)
            erows = [e for e in erows if not ED.cone_violation(e, spans)]
            edit_stats['guard: dropped (statement cone)'] = n0 - len(erows)
            for f, rs in ED.by_file(erows).items():
                r = byf.get(f)
                if r is None:
                    raise SystemExit(f'error: edit for a file not in the mirror: {f}')
                def cmd_at(line, src):
                    k = next((k for k, (l0, l1) in enumerate(r['cmd_lines']) if l0 <= line <= l1), None)
                    if k is None:
                        raise SystemExit(f'error: {src}: line {line} is not in a command')
                    return k
                fe = file_edits[f] = dict(alias={}, replace=[], imports=[])
                for e in rs:
                    if e['kind'] == 'delete':
                        k = cmd_at(e['line'], e['_src'])
                        if k in r['kept']:
                            r['kept'] = [x for x in r['kept'] if x != k]; edit_stats['delete'] += 1
                        else:
                            edit_stats['delete: already cut'] += 1
                    elif e['kind'] == 'alias':
                        fe['alias'][cmd_at(e['line'], e['_src'])] = e['text']
                    elif e['kind'] == 'replace':
                        fe['replace'].append((e['line'], e['col'], e['end_line'], e['end_col'], e['text'], e['_src'], e['expect']))
                    else:
                        fe['imports'].append((e['kind'], e['text'], e['_src']))
        # files: any kept declaration, plus pinned ones
        keep_files = {r['file'] for r in res if r['kept']}
        pinned = collections.Counter()
        for r in res:
            f = r['file']
            if r['defines_elab'] or r['runs_code']:
                if f not in keep_files or len(r['kept']) < r['n']:
                    pinned['meta-file'] += 1
                r['kept'] = list(range(r['n'])); keep_files.add(f)
        for r in res:
            if r['exports'] and r['file'] not in keep_files:
                keep_files.add(r['file']); pinned['export-file'] += 1
        for m in ALWAYS_FILES:
            if rel_of(m) in byf:
                keep_files.add(rel_of(m))
        # files defining non-local syntax that kept files use
        tok_owner = collections.defaultdict(set)
        for r in res:
            for tok in r['meta_tokens']:
                tok_owner[tok].add(r['file'])
        if tok_owner:
            rx = re.compile('|'.join(sorted((re.escape(x) for x in tok_owner), key=len, reverse=True)))
            used = set()
            for f in sorted(keep_files):
                used.update(rx.findall(open(os.path.join(src, f), encoding='utf-8').read()))
            for tok in used:
                for f in tok_owner[tok]:
                    if f not in keep_files:
                        keep_files.add(f); pinned['syntax-owner'] += 1
        # surviving / cut declaration names
        surviving, cut = set(), set()
        for r in res:
            kf = r['file'] in keep_files; ks = set(r['kept'])
            for k, kw, nms, ns in r['decls']:
                (surviving if kf and k in ks else cut).update(nms)
        cut -= surviving
        cut_types = set()
        for r in res:
            kf = r['file'] in keep_files; ks = set(r['kept'])
            for k, kw, nms, ns in r['decls']:
                if kw in ('structure', 'class', 'inductive', 'coinductive') and not (kf and k in ks):
                    cut_types.update(n for n in nms[:1] if n not in surviving)
        surv_ns, proj_ns = set(), set()
        for r in res:
            kf = r['file'] in keep_files; ks = set(r['kept'])
            for k, kw, nms, ns in r['decls']:
                for n in nms:
                    pre = _prefixes(n)
                    proj_ns.update(pre)
                    if kf and k in ks:
                        surv_ns.update(pre)
            for nsn, live in r['namespaces']:
                proj_ns.update(_prefixes(nsn + '.x'))
                if r['file'] in keep_files:      # namespace blocks of kept files are never pruned
                    surv_ns.update(_prefixes(nsn + '.x'))
        for r in res:
            if r['file'] in keep_files:
                for k, ns in r['substantive_ns']:
                    if ns and (k in set(r['kept']) or True):
                        surv_ns.update(_prefixes(ns + '.x'))
        lib_ns = set()
        if a.lib_namespaces:
            import gzip as _gz
            op = _gz.open if a.lib_namespaces.endswith('.gz') else open
            with op(a.lib_namespaces, 'rt', encoding='utf-8') as h:
                lib_ns = {l.strip() for l in h if l.strip()}
        keep_mods = {mod_of(f) for f in keep_files}
        sel = {f: byf[f]['kept'] for f in keep_files}
        if a.write_keep:
            with open(a.write_keep, 'w', encoding='utf-8') as h:
                h.write('file\tline\tname\twhy\n')
                for f in sorted(keep_files):
                    ks = set(byf[f]['kept'])
                    for k, kw, nms, ns, line in byf[f]['decl_lines']:
                        if k in ks:
                            h.write(f"{f}\t{line}\t{','.join(nms)}\t{a.level}\n")
        g = dict(src=src, dest=dest, custom=custom, surviving=surviving, cut=cut,
                 stats=collections.Counter(), prune_scopes=not a.no_prune_scopes,
                 surv_ns=surv_ns, proj_ns=proj_ns, lib_ns=lib_ns if a.lib_namespaces else None,
                 cut_types=cut_types)
        compat = False
        misses = {r['file']: r['misses'] for r in res if r['misses']}
        unknown_files = sorted(set(keep) - set(byf))
        name_mismatch = 0
        report.update(level=a.level, keep_entries=sum(len(v) for v in keep.values()), why=dict(why),
                      keep_lines_not_in_a_command=sum(map(len, misses.values())),
                      keep_names_repaired=sum(len(r['repaired']) for r in res),
                      keep_names_mismatched=sum(len(r['mismatched']) for r in res),
                      mismatch_examples=[(r['file'], r['mismatched'][:3]) for r in res if r['mismatched']][:20],
                      keep_files_not_in_src=unknown_files[:50], n_keep_files_not_in_src=len(unknown_files),
                      pinned=dict(pinned),
                      level_added=dict(sum((collections.Counter(r['added']) for r in res), collections.Counter())),
                      decls_surviving=len(surviving), decl_names_cut=len(cut))
    ms_flags = {mod_of(r['file']): {w: (p, me, al) for w, p, me, al in r['imports_ms']}
                for r in (res if not a.rhtrim else []) if r.get('imports_ms') is not None}
    repl_meta = {}
    new_imports, new_flags, new_repl = rewire(all_imports, keep_mods, ms_flags, meta_out=repl_meta)
    file_ns = {}
    if not compat and a.lib_namespaces:
        file_ns = visible_namespaces(res, keep_files, sel, new_imports, proj_ns, lib_ns, surv_ns)
        report['open_namespaces_checked'] = len(set().union(*file_ns.values())) if file_ns else 0
    os.makedirs(os.path.join(dest, 'src'), exist_ok=True)
    if not compat:
        for f, fe in file_edits.items():
            m = mod_of(f)
            if m not in keep_mods:
                edit_stats['import edits: file cut'] += len(fe['imports']); continue
            for kind, text, srcref in fe['imports']:
                # `public M` marks M public in a module-system file; a bare M is a plain
                # (private) import there. In a 4.33 file `public` has no meaning and is dropped.
                mods, pubs, nextpub = [], set(), False
                for w in text.split():
                    if w == 'public':
                        nextpub = True; continue
                    mods.append(w)
                    if nextpub: pubs.add(w)
                    nextpub = False
                bad = [x for x in mods if not x.startswith(('Mathlib', 'Batteries', 'Aesop', 'Qq', 'Plausible',
                       'ProofWidgets', 'LeanSearchClient', 'ImportGraph', 'Lean', 'Init', 'Std')) and x not in keep_mods]
                if bad:
                    raise SystemExit(f'error: {srcref}: modules not in the tree: {bad[:3]}')
                cur = new_imports[m]
                fl = new_flags.get(m)          # None for a 4.33 (non-module) file
                if kind == 'import-set':
                    new_imports[m] = mods
                    if fl is not None:
                        new_flags[m] = {x: ((x in pubs) or fl.get(x, (False, False))[0], fl.get(x, (False, False))[1]) for x in mods}
                elif kind == 'import-add':
                    new_imports[m] = cur + [x for x in mods if x not in cur]      # repeated rows add nothing
                    if fl is not None:
                        for x in mods:
                            o = fl.get(x, (False, False)); fl[x] = (o[0] or x in pubs, o[1])
                else:
                    new_imports[m] = [x for x in cur if x not in mods]
                edit_stats[kind] += 1
    # Module-system files: a header nothing rewired (no dropped import) or edited is written back verbatim, so
    # repeated imports of one module with different modifiers (`public import X` + `import all X`, `public import Lean`
    # + `meta import Lean`) survive; rewire's de-duplicated list would merge them (8534c68b identity check: 5 files).
    hdr_edited = {mod_of(f) for f, fe in file_edits.items() if fe.get('imports')}
    jobs = [(rel_of(m), sel.get(rel_of(m), []), new_imports[m], compat, file_ns.get(rel_of(m)),
             {k: v for k, v in file_edits.get(rel_of(m), {}).items() if k != 'imports'}, new_flags.get(m), new_repl.get(m),
             m not in hdr_edited, repl_meta.get(m))
            for m in sorted(keep_mods)]
    for f, fe in file_edits.items():
        if mod_of(f) not in keep_mods:
            edit_stats['replace: file cut'] += len(fe['replace']); edit_stats['alias: file cut'] += len(fe['alias'])
    with ProcessPoolExecutor(a.jobs, initializer=_init, initargs=(g,)) as ex:
        out = list(ex.map(_write_file, jobs, chunksize=64))
    stats = collections.Counter()
    for _, _, _, st in out:
        stats.update(st)
    report['write_stats'] = dict(stats)
    if a.edits:
        edit_stats.update({k[5:]: v for k, v in stats.items() if k.startswith('edit ')})
        report['edits'] = dict(edit_stats)
        print('edits: ' + ', '.join(f'{k} {v}' for k, v in sorted(edit_stats.items())), file=sys.stderr)
    lines = sum(x[1] for x in out); chars = sum(x[2] for x in out)
    if compat:
        removed = rhtrim_check_fork(os.path.join(dest, 'src'), src)
        rhtrim_trim_main(os.path.join(dest, 'src'))
        report['attribute_lines_removed'] = removed
        if a.rhtrim_docs:
            subprocess.run([sys.executable, os.path.join(a.rhtrim_docs, 'tools', 'add_docs.py'),
                            os.path.join(dest, 'src')], check=True)
    for f in TOP_FILES:
        p = os.path.join(os.path.dirname(src), f)
        if os.path.exists(p):
            shutil.copy(p, os.path.join(dest, f))
    fp, n = tree_hash(os.path.join(dest, 'src'))
    report.update(files=len(keep_mods), lines=lines, chars=chars,
                  imports_rewritten=sum(1 for m in keep_mods if new_imports[m] != all_imports[m]),
                  max_imports=max(len(v) for v in new_imports.values()), fingerprint=fp, fingerprint_files=n)
    if a.report:
        json.dump(report, open(a.report, 'w'), indent=1, sort_keys=True, default=str)
    print(json.dumps({k: report[k] for k in ('files', 'lines', 'chars', 'imports_rewritten', 'max_imports')
                      if k in report}))
    print(fp, n)


if __name__ == '__main__':
    main()
