# Edit lists

`transform.py` builds every stage with one command.

```
python3 cleaning/transform/transform.py BASE/src DEST --keep KEEP.tsv --level L2g \
  --lib-namespaces cleaning/transform/mathlib-namespaces.txt.gz --statement-cone CONE.tsv --edits LIST.tsv …
```

- It reads the base source without writing to it
- It prints the tree fingerprint (sha256 over the sorted
  relative paths and the sha256 of each file)
- Edit lists are TSV files with a header row
- They hold names, paths, spans and module names only, never source text

## Coordinates

- `file` is a path under the source's `src/`.
- `line` is 1-based and `col` is 0-based, counted in Unicode code points, as in Lean's `Position`. Spans are half-open,
  `[line:col, end_line:end_col)`.
- All coordinates refer to the original source, whatever the stage.

## Columns

`kind  file  line  col  end_line  end_col  name  text  why  expect`

Unused cells are empty. `why` is free text. For a `replace`, `expect` is either the exact span text, when it is a single
identifier, or `sha256:` followed by the first 12 hex digits of the sha256 of the span text. A mismatch stops the
transform. Rows apply as a set, so their order doesn't matter.

| kind | Locates | Effect |
|---|---|---|
| `delete` | `file` and `line` (any line of the declaration), or `name` | removes the whole declaration command, with its doc comment, attributes and `… in` prefixes |
| `replace` | `file`, `line`, `col`, `end_line`, `end_col` | replaces the span with `text`, a name or nothing |
| `alias` | `file` and `line`, or `name`, with `text` the target | replaces the declaration with `alias <its own name> := <text>`, keeping its doc comment, attributes and modifiers |
| `import-add` | `file`, with `text` a module | adds `import <text>` |
| `import-drop` | `file`, with `text` a module | removes that import |
| `import-set` | `file`, with `text` the modules separated by spaces | replaces the whole import list |

## How lists combine

1. The keep list selects declarations, and `delete` rows remove theirs.
2. A `replace` or `alias` inside a declaration the tree doesn't keep is dropped and counted, not an error.
3. Overlapping rows are an error unless they are identical. A `replace` inside a deleted or aliased declaration is
   dropped and counted.
4. Import edits act on the import list after the transform has rewired it. Every module they name must be in the tree.

## Hard guard

- No edit to `Main.lean`, `Statements.lean` or `Challenge.lean`, except `import-set` rows for `Main` and `Statements`.
- No `delete` or `alias` of one of the five theorems.
- No `delete`, `alias` or `replace` inside a declaration of the statement cone (`--statement-cone`, the table
  `data/statement-cone-with_definitions.tsv` from rh-proof-dependencies).

Rows of the first two kinds stop the transform. Rows inside the statement cone are dropped and counted
(`guard: dropped (statement cone)`). `edits.py check BASE/src CONE.tsv LIST.tsv …` checks lists against the source
and the guard before a build.
