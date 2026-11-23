# S4 receipt

Remove import lines each file doesn't need.

- Each file keeps only the imports its own declarations need
- Imports that can change what a file means (instances, notation, `open` targets) are kept, in the original order
- No declaration changes. Only `import` lines change
- `Main.lean`, `Statements.lean` and `Challenge.lean` are unchanged
- S4 is on S1, not on S2. It is on this branch, `s4-on-s1`, and not on main

| | S1 | S4 | Change |
|---|---|---|---|
| Files | 150,632 | 150,632 | 0 |
| Lines | 14,468,143 | 14,252,250 | −215,893 (−1.5%) |
| Import lines | 826,438 | 571,261 | −255,177 (−30.9%) |
| Files changed | | 92,243 | |

- Files and lines exclude `Challenge.lean`. S1 here is S1 on main at `bdda2f0e`

| Check | Result |
|---|---|
| Compiles | yes, Lean 4.33.1, 150,633 modules, 0 failures |
| Kernel-accepted | yes, nanoda `0da9f98f`, 1,484,734 declarations, no typechecker errors, axioms `propext`, `Classical.choice`, `Quot.sound` |
| Same statements | yes, con-leche `--compare` (`5dc36dc1`) against Sutherland's `challenge.ndjson` |
| Export | sha256 `7df3e49a2b3e45e96abb3f8c76e2018596dcd73f0b106dd8f7329ca5edaf93e8`, 61,570,581,801 bytes |
| Term diff against S1 | 0 statements changed, 0 proofs changed |

- Against S1 no statement or proof changed, no declaration was added or removed, and nothing outside the project
  changed. The rest is auxiliary renumbering
- Main's PR #57, merged before S4, changes 6 statements and 7 proofs in its own 5 files and in one place that uses
  them. These are counted apart and are not S4's

## Regenerate

```
for f in keep statement-cone imports; do gunzip -c cleaning/S4/$f.tsv.gz > $f.tsv; done
python3 cleaning/transform/transform.py BASE/src DEST --keep keep.tsv --level L2g \
  --lib-namespaces cleaning/transform/mathlib-namespaces.txt.gz --statement-cone statement-cone.tsv \
  --edits imports.tsv
```

- BASE is leanprover-community/riemann-hypothesis at `bdda2f0e`
- `keep.tsv.gz` is the S1 keep list carried through main's changes since `7da4577e`
- The last line printed is the tree fingerprint
  `383b029077a1668d36d6ca409617d7b5d3358aa9341b5f103164601eb90b2ce9` (150,633 files including `Challenge.lean`)
