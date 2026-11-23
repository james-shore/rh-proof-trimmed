"""Index every top-level command of a Lean source tree (text only, runs nothing).

usage: index.py SRC OUT.tsv[.gz] [--jobs N]

One row per command: file, line, end_line, kind, kw, names (comma-separated full names),
attrs, mods, ns, prefix, start, end (code-point offsets). Used by transform.py and as a text
index of declarations with file and line span.
"""
import gzip, os, re, sys
from concurrent.futures import ProcessPoolExecutor

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import leancmds as L

COLS = ['file', 'line', 'end_line', 'kind', 'kw', 'names', 'attrs', 'mods', 'ns', 'prefix', 'start', 'end']
CUSTOM_RE = re.compile(r'^(?:local |scoped )?(?:elab|syntax|macro)(?::\w+)?\s+"([^"\s]+)\s*"[^\n]*:\s*command\b', re.M)


def lean_files(src):
    out = []
    for d, _, fs in os.walk(src):
        for f in fs:
            if f.endswith('.lean'):
                out.append(os.path.relpath(os.path.join(d, f), src))
    return sorted(out)


def custom_commands(src, files):
    """Command keywords the project itself defines (e.g. `elab "foo" : command`)."""
    found = set()
    for f in files:
        t = open(os.path.join(src, f), encoding='utf-8').read()
        if 'command' in t:
            found.update(CUSTOM_RE.findall(t))
    return frozenset(found)


def _clean(s):
    return s.replace('\t', ' ').replace('\n', ' ')


def index_file(args):
    src, f, custom = args
    t = open(os.path.join(src, f), encoding='utf-8').read()
    rows = []
    for c in L.segment(t, custom):
        rows.append((f, c.line, c.end_line, c.kind, c.kw, ','.join(c.names), _clean(c.attrs),
                     ' '.join(c.mods), c.ns, int(c.prefix), c.start, c.end))
    return rows


def build(src, jobs=None):
    files = lean_files(src)
    custom = custom_commands(src, files)
    with ProcessPoolExecutor(jobs) as ex:
        res = list(ex.map(index_file, [(src, f, custom) for f in files], chunksize=256))
    return files, custom, res


def write(path, res):
    op = gzip.open if path.endswith('.gz') else open
    with op(path, 'wt', encoding='utf-8') as h:
        h.write('\t'.join(COLS) + '\n')
        for rows in res:
            for r in rows:
                h.write('\t'.join(map(str, r)) + '\n')


def read(path):
    op = gzip.open if path.endswith('.gz') else open
    with op(path, 'rt', encoding='utf-8') as h:
        hdr = h.readline().rstrip('\n').split('\t')
        for line in h:
            yield dict(zip(hdr, line.rstrip('\n').split('\t')))


if __name__ == '__main__':
    src, out = sys.argv[1], sys.argv[2]
    jobs = int(sys.argv[sys.argv.index('--jobs') + 1]) if '--jobs' in sys.argv else None
    files, custom, res = build(src, jobs)
    write(out, res)
    print(f'files {len(files)}, commands {sum(map(len, res))}, custom commands {sorted(custom)}')
