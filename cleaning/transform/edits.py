"""Edit lists for the refactor transform (format: cleaning/transform/EDIT-LISTS.md). Text only; nothing is compiled or run.

    edits.py check MIRROR_SRC CONE.tsv LIST.tsv [LIST.tsv ...]     validate lists against the mirror and the hard guard
    edits.py guard-filter MIRROR_SRC CONE.tsv SUFFIX LIST.tsv [...]  write LIST<SUFFIX>.tsv without the guard's rows

CONE.tsv: the statement cone (statement-cone-with_definitions.tsv from rh-proof-dependencies). Hard guard: no edit
to Main/Statements/Challenge.lean (except S4 import-set rows for Main and Statements), no
delete/alias of an export target, and no delete/alias/replace inside a statement-cone declaration.

Coordinates: `file` under the mirror's src/, `line` 1-based, `col` 0-based Unicode code points (Lean's Position),
spans half-open [line:col, end_line:end_col).
"""
import collections, os, re, sys

KINDS = ('delete', 'replace', 'alias', 'import-add', 'import-drop', 'import-set')
COLS = ('kind', 'file', 'line', 'col', 'end_line', 'end_col', 'name', 'text', 'why')
OPTIONAL = ('expect',)      # v2: what the span holds; the transform fails on a mismatch
# `text` may only be a name, module names, or empty: never source
NAME_RE = re.compile(r"^[^\s()\[\]{}:=,;\"`]*$")
MODULES_RE = re.compile(r"^[^\s()\[\]{}:=,;\"`]+(?: [^\s()\[\]{}:=,;\"`]+)*$")


class EditError(Exception):
    pass


# The five theorems and their statements are never edited: no edit may touch these files, and no delete/alias may name
# an export target (S3 v1 deleted `riemannHypothesis` as a "duplicate" of `rhOfAll`, 08:40 UTC)
PROTECTED_FILES = ('Main.lean', 'Statements.lean', 'Challenge.lean')
TARGETS = ('riemannHypothesis', 'riemannZeta_eq_zero_re', 'LFunction_ne_zero_of_half_lt_re', 'LFunction_eq_zero_re',
           'LFunction_eq_zero_re_of_isPrimitive')


def read_cone(path):
    """the statement cone (statement-cone-with_definitions.tsv from rh-proof-dependencies: decl, kind, file, start_line,
    …): {file: [start_line, …]} with paths under src/."""
    out = collections.defaultdict(list)
    with open(path, encoding='utf-8') as h:
        hdr = h.readline().rstrip('\n').split('\t')
        fi, li = hdr.index('file'), hdr.index('start_line')
        for line in h:
            v = line.rstrip('\n').split('\t')
            f = v[fi][4:] if v[fi].startswith('src/') else v[fi]
            out[f].append(int(v[li]))
    return out


def cone_spans(cone, cmd_lines_of):
    """{file: [(l0, l1)]}: the command spans (mirror lines) of the statement-cone declarations. cmd_lines_of(file) gives
    [(line, end_line)] of the file's commands."""
    out = {}
    for f, starts in cone.items():
        cl = cmd_lines_of(f)
        out[f] = sorted({next(((a, b) for a, b in cl if a <= s <= b), (s, s)) for s in starts})
    return out


def cone_violation(r, spans):
    """True if edit row r deletes, aliases or changes something inside a statement-cone declaration."""
    if r['kind'] not in ('delete', 'alias', 'replace') or r['file'] not in spans or r['line'] is None:
        return False
    lo, hi = r['line'], (r['end_line'] or r['line'])
    return any(a <= hi and lo <= b for a, b in spans[r['file']])


def guard(rows):
    for r in rows:
        if r['file'] in PROTECTED_FILES and not (r['kind'] == 'import-set' and r['file'] != 'Challenge.lean'):
            raise EditError(f'{r["_src"]}: edits to {r["file"]} are not allowed (the five theorems and their statements)')
        nm = r['name'].removeprefix('_root_.')
        if r['kind'] in ('delete', 'alias') and (nm in TARGETS or nm.rsplit('.', 1)[-1] in TARGETS):
            raise EditError(f'{r["_src"]}: {r["kind"]} of export target {r["name"]!r} is not allowed')
    return rows


def _int(x, what, row):
    if x == '':
        return None
    if not re.fullmatch(r'\d+', x):
        raise EditError(f'{row["_src"]}: {what} is not a number: {x!r}')
    return int(x)


def read_edits(paths):
    rows = []
    for p in paths:
        with open(p, encoding='utf-8') as h:
            hdr = h.readline().rstrip('\n').split('\t')
            missing = [c for c in COLS if c not in hdr]
            if missing:
                raise EditError(f'{p}: header lacks {missing}')
            ix = {c: hdr.index(c) for c in COLS + OPTIONAL if c in hdr}
            for n, line in enumerate(h, 2):
                if not line.strip():
                    continue
                v = line.rstrip('\n').split('\t')
                v += [''] * (len(hdr) - len(v))
                r = {c: v[ix[c]] if c in ix else '' for c in COLS + OPTIONAL}
                r['_src'] = f'{p}:{n}'
                if r['kind'] not in KINDS:
                    raise EditError(f'{r["_src"]}: unknown kind {r["kind"]!r}')
                f = r['file']
                if f.startswith('src/'):
                    r['file'] = f[4:]
                for c in ('line', 'col', 'end_line', 'end_col'):
                    r[c] = _int(r[c], c, r)
                t = r['text']
                if r['kind'] in ('replace', 'alias', 'import-add', 'import-drop'):
                    if not NAME_RE.match(t):
                        raise EditError(f'{r["_src"]}: text must be a name or empty (no source text): {t[:40]!r}')
                if r['kind'] == 'import-set' and t and not MODULES_RE.match(t):
                    raise EditError(f'{r["_src"]}: text must be space-separated module names')
                if r['kind'] == 'replace' and None in (r['line'], r['col'], r['end_line'], r['end_col']):
                    raise EditError(f'{r["_src"]}: replace needs line, col, end_line, end_col')
                if r['kind'] in ('delete', 'alias') and not (r['name'] or (r['file'] and r['line'])):
                    raise EditError(f'{r["_src"]}: {r["kind"]} needs name, or file and line')
                if r['kind'] == 'alias' and not t:
                    raise EditError(f'{r["_src"]}: alias needs text (the target name)')
                if r['kind'].startswith('import') and not (r['file'] and t is not None):
                    raise EditError(f'{r["_src"]}: {r["kind"]} needs file and text')
                rows.append(r)
    return guard(rows)


def line_starts(t):
    out = [0]
    for i, ch in enumerate(t):
        if ch == '\n':
            out.append(i + 1)
    return out


def offset(starts, t, line, col, src):
    if line < 1 or line > len(starts):
        raise EditError(f'{src}: line {line} outside the file')
    a = starts[line - 1]
    end = starts[line] - 1 if line < len(starts) else len(t)
    if a + col > end + (0 if line < len(starts) else 0):
        raise EditError(f'{src}: column {col} beyond line {line} (length {end - a})')
    return a + col


def expect_ok(span_text, expect):
    """v2 `expect`: empty (no check), `sha256:` + the first 12+ hex digits of sha256(span text, UTF-8), or the exact
    span text when it is a single identifier."""
    if not expect:
        return True
    if expect.startswith('sha256:'):
        import hashlib
        h = expect[7:].lower()
        return len(h) >= 8 and hashlib.sha256(span_text.encode('utf-8')).hexdigest().startswith(h)
    return span_text == expect


def resolve(rows, decl_index):
    """decl_index: full name -> list of (file, line) of declaration commands (keyword lines). Fills file/line for
    name-only delete/alias rows."""
    for r in rows:
        if r['kind'] in ('delete', 'alias') and r['name'] and not (r['file'] and r['line']):
            hits = decl_index.get(r['name'], [])
            if r['file']:
                hits = [h for h in hits if h[0] == r['file']]
            if len(hits) != 1:
                raise EditError(f'{r["_src"]}: name {r["name"]!r} resolves to {len(hits)} declarations')
            r['file'], r['line'] = hits[0]
    return guard(rows)


def by_file(rows):
    out = collections.defaultdict(list)
    for r in rows:
        out[r['file']].append(r)
    return out


def check(src, cone_path, paths):
    sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
    import leancmds, index as I
    rows = read_edits(paths)
    files = I.lean_files(src)
    custom = I.custom_commands(src, files)
    need = by_file(rows)
    decl_index = collections.defaultdict(list)
    named = {r['name'] for r in rows if r['name'] and not (r['file'] and r['line'])}
    segs = {}
    def seg(f):
        if f not in segs:
            p = os.path.join(src, f)
            if not os.path.exists(p):
                raise EditError(f'file not in the mirror: {f}')
            t = open(p, encoding='utf-8').read()
            segs[f] = (t, leancmds.segment(t, custom))
        return segs[f]
    if named:
        for f in files:
            t, cmds = seg(f)
            for c in cmds:
                if c.kind in ('decl', 'mutual'):
                    for n in c.names:
                        if n in named:
                            decl_index[n].append((f, c.line))
    resolve(rows, decl_index)
    errors = 0; touched = collections.Counter()
    def cmd_lines_of(f):
        try:
            return [(c.line, c.end_line) for c in seg(f)[1]]
        except EditError:
            return []
    spans = cone_spans(read_cone(cone_path), cmd_lines_of)
    bad = [r for r in rows if cone_violation(r, spans)]
    for r in bad[:20]:
        print(f'ERROR {r["_src"]}: {r["kind"]} inside a statement-cone declaration ({r["file"]}:{r["line"]})')
    if len(bad) > 20:
        print(f'ERROR … {len(bad) - 20} more statement-cone rows')
    errors += len(bad)
    for f, rs in sorted(by_file(rows).items()):
        t, cmds = seg(f)
        st = line_starts(t)
        spans = []
        for r in rs:
            try:
                if r['kind'] == 'replace':
                    a = offset(st, t, r['line'], r['col'], r['_src']); b = offset(st, t, r['end_line'], r['end_col'], r['_src'])
                    if b < a:
                        raise EditError(f'{r["_src"]}: span ends before it starts')
                    c = next((c for c in cmds if c.start <= a and b <= c.end), None)
                    if c is None:
                        raise EditError(f'{r["_src"]}: span crosses a command boundary')
                    if not expect_ok(t[a:b], r['expect']):
                        raise EditError(f'{r["_src"]}: expect {r["expect"]!r} does not match the mirror span')
                    spans.append((a, b, r))
                    touched[('replace', c.kind)] += 1
                elif r['kind'] in ('delete', 'alias'):
                    c = next((c for c in cmds if c.line <= r['line'] <= c.end_line), None)
                    if c is None or c.kind not in ('decl', 'mutual'):
                        raise EditError(f'{r["_src"]}: line {r["line"]} is not inside a declaration')
                    touched[(r['kind'], c.kw)] += 1
                else:
                    touched[(r['kind'], '')] += 1
            except EditError as e:
                print('ERROR', e); errors += 1
        spans.sort(key=lambda x: (x[0], x[1]))
        for (a1, b1, r1), (a2, b2, r2) in zip(spans, spans[1:]):
            if a2 < b1 and not (a1 == a2 and b1 == b2 and r1['text'] == r2['text']):
                print(f'ERROR {r1["_src"]} and {r2["_src"]} overlap'); errors += 1
    print(f'{len(rows)} rows in {len(paths)} lists; {errors} errors')
    for (k, what), n in sorted(touched.items()):
        print(f'  {k:12s} {what:10s} {n}')
    return errors


def guard_filter(src, cone_path, suffix, paths):
    sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
    import leancmds, index as I
    custom = I.custom_commands(src, I.lean_files(src))
    cone = read_cone(cone_path)
    def cmd_lines_of(f):
        p = os.path.join(src, f)
        if not os.path.exists(p):
            return []
        return [(c.line, c.end_line) for c in leancmds.segment(open(p, encoding='utf-8').read(), custom)]
    spans = cone_spans(cone, cmd_lines_of)
    for p in paths:
        base, ext = os.path.splitext(p)
        n = dropped = 0
        with open(p, encoding='utf-8') as h, open(base + suffix + ext, 'w', encoding='utf-8') as o:
            hdr = h.readline(); o.write(hdr)
            cols = hdr.rstrip('\n').split('\t')
            ix = {c: cols.index(c) for c in ('kind', 'file', 'line', 'end_line') if c in cols}
            for line in h:
                v = line.rstrip('\n').split('\t') + [''] * len(cols)
                f = v[ix['file']][4:] if v[ix['file']].startswith('src/') else v[ix['file']]
                r = {'kind': v[ix['kind']], 'file': f,
                     'line': int(v[ix['line']]) if v[ix['line']].isdigit() else None,
                     'end_line': int(v[ix['end_line']]) if 'end_line' in ix and v[ix['end_line']].isdigit() else None}
                n += 1
                if f in PROTECTED_FILES or cone_violation(r, spans):
                    dropped += 1
                else:
                    o.write(line)
        print(f'{p}: {n} rows, {dropped} dropped by the guard, {n - dropped} written to {base + suffix + ext}')


if __name__ == '__main__':
    try:
        if len(sys.argv) >= 5 and sys.argv[1] == 'check':
            sys.exit(1 if check(sys.argv[2], sys.argv[3], sys.argv[4:]) else 0)
        if len(sys.argv) >= 6 and sys.argv[1] == 'guard-filter':
            guard_filter(sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5:]); sys.exit(0)
        sys.exit(__doc__)
    except EditError as e:
        sys.exit(f'ERROR {e}')
