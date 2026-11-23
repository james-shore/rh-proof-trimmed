"""Split a Lean 4 source file into top-level commands, as text. Runs nothing.

A command starts on a line whose first column holds a command keyword (outside comments and
strings); any other non-blank first-column line continues the command above it (`by`, `where`,
`termination_by`, `]`, ...). Docstrings, `@[...]` lines and `open/set_option/... in` prefixes are
merged into the command they decorate, and a `mutual ... end` block is one command. Spans are
Python string offsets (code points) into the file text, like rh-trim's `cuts.json`, and run from
the command's first line to the start of the next command, so blank lines go with the command
above them.
"""
import re
from dataclasses import dataclass, field

DECL_KW = {'theorem', 'lemma', 'def', 'abbrev', 'structure', 'class', 'instance', 'inductive',
           'coinductive', 'opaque', 'axiom', 'example', 'alias', 'irreducible_def', 'proof_wanted'}
MODIFIERS = {'private', 'protected', 'noncomputable', 'partial', 'unsafe', 'nonrec', 'public',
             'meta', 'scoped', 'local'}
STRUCT_KW = {'namespace', 'section', 'end', 'open', 'variable', 'universe', 'universes',
             'set_option', 'omit', 'include', 'export', 'unseal', 'seal', 'mutual', 'attribute',
             'assert_not_exists', 'suppress_compilation', 'unsuppress_compilation'}
META_KW = {'macro', 'macro_rules', 'syntax', 'elab', 'elab_rules', 'notation', 'notation3',
           'infix', 'infixl', 'infixr', 'prefix', 'postfix', 'declare_syntax_cat', 'simproc',
           'dsimproc', 'simproc_decl', 'initialize', 'builtin_initialize', 'run_cmd', 'run_elab',
           'run_meta', 'register_option', 'register_simp_attr', 'register_label_attr',
           'initialize_simps_projections', 'add_decl_doc', 'library_note', 'deriving',
           'compile_inductive', 'binder_predicate', 'unif_hint'}
QUERY_KW = {'#check', '#print', '#eval', '#reduce', '#exit', '#guard', '#synth', '#guard_msgs',
            '#lint', '#help'}
HEADER_KW = {'import', 'module', 'prelude'}
PREFIX_KW = {'open', 'set_option', 'variable', 'omit', 'include', 'attribute', 'local', 'scoped',
             'unseal', 'universe'}
START_KW = DECL_KW | MODIFIERS | STRUCT_KW | META_KW | QUERY_KW | HEADER_KW

_IDC = r"A-Za-z_À-ʯͰ-Ͽἀ-῾ᴀ-ᶿ℀-⅏\U0001d400-\U0001d7ff"
IDENT = re.compile(r"(?:«[^»]*»|[" + _IDC + r"][" + _IDC + r"0-9'!?₀-₉ₐ-ₜ]*)"
                   r"(?:\.(?:«[^»]*»|[" + _IDC + r"0-9][" + _IDC + r"0-9'!?₀-₉ₐ-ₜ]*))*")
FIRST = re.compile(r'(@\[|/--|/-!|/-|--|#?[^\s(\[{:,⟨«]+|.)')
NONCODE = re.compile(r'"|/-|--|\'')
STRING = re.compile(r'"(?:\\.|[^"\\])*"', re.S)
CHARLIT = re.compile(r"'(?:\\.|[^\\'\n])'")


@dataclass
class Command:
    start: int                 # offset of the command's first line
    end: int                   # offset of the next command's first line (or len(text))
    line: int                  # 1-based line of `start`
    end_line: int              # 1-based last line that belongs to the span
    kind: str                  # header | decl | mutual | struct | attr | meta | query | comment | other
    kw: str                    # the core keyword (e.g. 'theorem', 'namespace', 'attribute')
    names: list = field(default_factory=list)   # full names declared (decl / mutual)
    attrs: str = ''            # text of the leading @[...] attributes, if any
    mods: tuple = ()           # modifiers before the keyword
    ns: str = ''               # enclosing namespace
    prefix: bool = False       # carries `... in` prefixes
    extra: dict = field(default_factory=dict)


def noncode_ranges(text):
    """(start, end) ranges of comments and string literals."""
    out, i, n = [], 0, len(text)
    while True:
        m = NONCODE.search(text, i)
        if not m:
            return out
        j = m.start(); tok = m.group()
        if tok == '"':
            s = STRING.match(text, j)
            e = s.end() if s else n
            out.append((j, e)); i = e
        elif tok == '--':
            e = text.find('\n', j)
            e = n if e < 0 else e
            out.append((j, e)); i = e
        elif tok == '/-':
            depth, k = 1, j + 2
            while depth and k < n:
                a, b = text.find('/-', k), text.find('-/', k)
                if b < 0:
                    k = n; break
                if 0 <= a < b:
                    depth += 1; k = a + 2
                else:
                    depth -= 1; k = b + 2
            out.append((j, k)); i = k
        else:  # a quote: char literal only when not part of an identifier (x', h'')
            prev = text[j - 1] if j else ' '
            c = CHARLIT.match(text, j) if not (prev.isalnum() or prev in "_'!?") else None
            i = c.end() if c else j + 1


def _line_starts(text):
    starts = [0]
    find = text.find
    k = find('\n')
    while k >= 0:
        starts.append(k + 1)
        k = find('\n', k + 1)
    return starts


def _balanced_attr_end(text, i):
    """Index just past the `]` closing the `@[` at i, or -1."""
    depth, k, n = 0, i + 1, len(text)
    while k < n:
        ch = text[k]
        if ch == '[':
            depth += 1
        elif ch == ']':
            depth -= 1
            if depth == 0:
                return k + 1
        k += 1
    return -1


def _skip_ws(text, i, e):
    while i < e and text[i] in ' \t\r\n':
        i += 1
    return i


def _strip_decor(text, s, e):
    """Skip a docstring and @[...] blocks starting at s. Returns (pos, attrs_text)."""
    i = _skip_ws(text, s, e); attrs = []
    while i < e:
        if text.startswith('/--', i):
            k = text.find('-/', i + 3)
            if k < 0 or k >= e:
                return i, ''.join(attrs)
            i = _skip_ws(text, k + 2, e)
        elif text.startswith('@[', i):
            k = _balanced_attr_end(text, i)
            if k < 0 or k > e:
                return i, ''.join(attrs)
            attrs.append(text[i:k]); i = _skip_ws(text, k, e)
        else:
            break
    return i, ' '.join(attrs)



def _is_decor_only(text, s, e):
    i, _ = _strip_decor(text, s, e)
    return _skip_ws(text, i, e) >= e and i > s


def _decl_name(text, i, e, kw):
    """The declared name after keyword `kw` at text[i:], or ''."""
    j = _skip_ws(text, i + len(kw), e)
    if kw == 'instance':
        if text.startswith('(priority', j):
            k = text.find(')', j)
            j = _skip_ws(text, k + 1, e) if 0 <= k < e else j
    if kw == 'class' and text.startswith('inductive', j):
        j = _skip_ws(text, j + len('inductive'), e)
    if kw == 'alias' and text.startswith('⟨', j):
        k = text.find('⟩', j)
        inner = text[j + 1:k] if 0 <= k < e else ''
        return ','.join(x.strip() for x in inner.split(',') if x.strip() and x.strip() != '_')
    m = IDENT.match(text, j)
    if not m:
        return ''
    name = m.group()
    if kw == 'instance':
        nxt = text[m.end():m.end() + 1]
        if nxt and nxt not in ' \t\n:.({[⦃':
            return ''
    return name


def _core(text, s, e):
    """Skip decorations and modifiers at s. Returns (pos, attrs, mods)."""
    i, attrs = _strip_decor(text, s, e)
    mods = []
    while True:
        m = FIRST.match(text, i)
        if m and m.group() == 'scoped' and text.startswith('[', m.end()):
            k = text.find(']', m.end())
            if 0 <= k < e:
                mods.append(text[m.start():k + 1]); i = _skip_ws(text, k + 1, e); continue
        if m and m.group() in MODIFIERS and text[m.end():m.end() + 1] in (' ', '\t', '\n'):
            mods.append(m.group()); i = _skip_ws(text, m.end(), e)
            if text.startswith('@[', i):
                i, a2 = _strip_decor(text, i, e); attrs = (attrs + ' ' + a2).strip()
            continue
        break
    return i, attrs, tuple(mods)


_ENDS_IN = re.compile(r'\sin$')


def segment(text, custom_commands=frozenset()):
    """Split `text` into a list of Command."""
    n = len(text)
    ls = _line_starts(text)
    nc = noncode_ranges(text)
    # line starts that are inside a comment or string literal
    bad = set()
    if nc:
        import bisect
        for a, b in nc:
            k = bisect.bisect_right(ls, a)
            while k < len(ls) and ls[k] < b:
                bad.add(k); k += 1
    starts = []   # (offset, line index, first token)
    for li, off in enumerate(ls):
        if off >= n or li in bad:
            continue
        ch = text[off]
        if ch in ' \t\r\n':
            continue
        tok = FIRST.match(text, off).group()
        if tok in START_KW or tok in ('@[', '/--', '/-!', '/-', '--') or tok in custom_commands:
            if tok == 'deriving' and not text.startswith('deriving instance', off):
                continue
            starts.append((off, li, tok))
    segs = []
    for k, (off, li, tok) in enumerate(starts):
        end = starts[k + 1][0] if k + 1 < len(starts) else n
        segs.append([off, end, li, tok])
    if not segs or segs[0][0] > 0:
        # text before the first command start (unusual): attach to a synthetic segment
        segs.insert(0, [0, segs[0][0] if segs else n, 0, ''])
    # merge mutual ... end
    merged = []
    k = 0
    while k < len(segs):
        s = segs[k]
        if s[3] == 'mutual':
            j = k + 1
            while j < len(segs) and not (segs[j][3] == 'end' and text[segs[j][0]:segs[j][1]].strip() == 'end'):
                j += 1
            j = min(j, len(segs) - 1)
            merged.append([s[0], segs[j][1], s[2], 'mutual', [x[0] for x in segs[k + 1:j]]]); k = j + 1
            continue
        merged.append(s + [None]); k += 1
    # merge decorations and `... in` prefixes into the following command
    out = []
    pending = None          # (start, line index, core start or None)
    for s in merged:
        off, end, li, tok, inner = s
        body = text[off:end].rstrip()
        is_pref = tok in PREFIX_KW and bool(_ENDS_IN.search(body))
        is_decor = tok in ('@[', '/--') and _is_decor_only(text, off, end)
        last = s is merged[-1]
        if pending is None:
            pending = [off, li, None]
        if is_pref and not last:
            continue
        if pending[2] is None:
            pending[2] = off            # decorations are parsed as part of the core
        if is_decor and not last:
            continue
        out.append((pending[0], end, pending[1], tok, pending[2], inner, pending[2] > pending[0]))
        pending = None
    # classify
    cmds = []
    stack = []
    for off, end, li, tok, core, inner, had_prefix in out:
        body_end = len(text[off:end].rstrip()) + off
        end_line = li + 1 + text.count('\n', off, body_end)
        c = Command(off, end, li + 1, end_line, 'other', tok)
        c.ns = '.'.join(x for x in stack if x)
        c.prefix = had_prefix
        c.extra['core'] = core
        i, attrs, mods = _core(text, core, end)
        m = FIRST.match(text, i)
        kw = m.group() if m else ''
        c.attrs, c.mods, c.kw = attrs, mods, kw
        c.extra['kwpos'] = i
        if kw in HEADER_KW:
            c.kind = 'header'
        elif kw in ('/-', '--', '/-!'):
            c.kind = 'comment'
        elif kw in QUERY_KW:
            c.kind = 'query'
        elif kw == 'mutual':
            c.kind = 'mutual'
            for so in inner:
                si, _, _ = _core(text, so, end)
                sm = FIRST.match(text, si)
                if sm and sm.group() in DECL_KW:
                    nm = _decl_name(text, si, end, sm.group())
                    if nm:
                        c.names.append(_qualify(c.ns, nm))
        elif kw in DECL_KW:
            c.kind = 'decl'
            nm = _decl_name(text, i, end, kw)
            local = [x for x in nm.split(',') if x] if kw == 'alias' else ([nm] if nm else [])
            c.names = [_qualify(c.ns, x) for x in local]
            if kw == 'instance' and not nm:
                c.extra['anon_instance'] = True
        elif kw == 'section' and 'noncomputable' in mods:
            c.kind = 'struct'
        elif kw in STRUCT_KW:
            c.kind = 'attr' if kw == 'attribute' else 'struct'
        elif kw in META_KW or kw in custom_commands:
            c.kind = 'meta'
        # namespace bookkeeping, one scope per name component: `namespace A.B.C` opens A, B and C, and
        # `end C` closes only C (IntegralPSBserSubOne.lean); `open X in section` still opens a section
        if c.kind == 'struct' and m:
            eol = text.find('\n', m.end())
            rest = text[m.end():eol if 0 <= eol < end else end].strip()
            comps = name_components(rest)
            if kw == 'namespace':
                stack.extend(comps)
            elif kw == 'section':
                stack.extend([None] * max(1, len(comps)))
            elif kw == 'end':
                for _ in range(min(max(1, len(comps)), len(stack))):
                    stack.pop()
        cmds.append(c)
    return cmds


def name_components(s):
    """Components of a dotted Lean name, keeping «…» parts whole."""
    out, cur, i = [], '', 0
    s = s.split()[0] if s.split() else ''
    while i < len(s):
        if s[i] == '«':
            j = s.find('»', i)
            j = len(s) - 1 if j < 0 else j
            cur += s[i:j + 1]; i = j + 1; continue
        if s[i] == '.':
            out.append(cur); cur = ''
        else:
            cur += s[i]
        i += 1
    if cur:
        out.append(cur)
    return [x for x in out if x]


def _qualify(ns, nm):
    if nm.startswith('_root_.'):
        return nm[7:]
    return ns + '.' + nm if ns else nm


IMPORT_RE = re.compile(r'^import\s+(.+)$', re.M)
# Lean 4.36 module system: `module` header, then `[public] [meta] import [all] M…` lines
IMPORT_MS_RE = re.compile(r'^(?:(public|private)\s+)?(?:(meta)\s+)?import\s+(?:(all)\s+)?(\S.*)$', re.M)
_LEAD_RE = re.compile(r'\A(?:\s+|--[^\n]*\n|/-(?:[^-]|-(?!/))*-/)*')


def is_module(text):
    """True if the file's first token after comments and whitespace is the module-system keyword `module`."""
    m = _LEAD_RE.match(text)
    rest = text[m.end():] if m else text
    return re.match(r'module\b', rest) is not None


def header_imports(text):
    """[(module, public, meta, all)] for every import line (a plain 4.33 `import M` gives (M, False, False, False))."""
    return [(w, g1 == 'public', bool(g2), bool(g3))
            for g1, g2, g3, rest in IMPORT_MS_RE.findall(text) for w in rest.split('--', 1)[0].split()]


def imports_of(text):
    return [w for w, _, _, _ in header_imports(text)]
