# S1 receipt

Remove declarations the proof doesn't use.

- Keeps the declarations the five theorems' proof terms use, plus what elaborating them needs
- Keeps every `simp`/`rfl` lemma and instance of a kept file
- No line of a kept declaration changes
- Imports are rewired to the kept files, in the original order
- Where a name is declared in more than one file, keeps the copy the original's environment holds
- No file is added. `Main.lean`, `Statements.lean` and `Challenge.lean` are unchanged

| | Base | S1 | Change |
|---|---|---|---|
| Files | 164,463 | 150,632 | −13,831 (−8.4%) |
| Lines | 16,588,671 | 14,473,033 | −2,115,638 (−12.8%) |
| Declarations | 1,024,669 | 858,404 | −166,265 (−16.2%) |
| Import lines | 843,861 | 826,438 | −17,423 (−2.1%) |

- Files and lines exclude `Challenge.lean`
- `git diff --stat --no-renames` on `src/` against the base gives 53,290 files changed, 106,848 insertions and
  2,222,486 deletions (13,831 files deleted, 39,459 modified, 0 added)

| Check | Result |
|---|---|
| Compiles | yes, Lean 4.33.1, 150,633 modules, 0 failures |
| Kernel-accepted | yes, nanoda `0da9f98f`, 1,484,733 declarations, no errors, axioms `propext`, `Classical.choice`, `Quot.sound` |
| Same statements | yes, con-leche `--compare` (`5dc36dc1`) against Sutherland's `challenge.ndjson` |
| Export | sha256 `5e48c576b4b83135fa3c959b93b585247955137b947e57b53497906709cbdcbb`, 61,570,596,150 bytes |
| Term diff against the original | running |

- Build time was measured for S1 on the original archive, on the same machine and settings as the original. 4.50 h
  against 5.51 h wall, 710.0 against 872.8 CPU hours, 171 against 291 GB peak memory

## Regenerate

```
gunzip -c cleaning/S1/keep.tsv.gz > keep.tsv
python3 cleaning/transform/transform.py BASE/src DEST --keep keep.tsv --level L2g \
  --lib-namespaces cleaning/transform/mathlib-namespaces.txt.gz
```

- BASE is this repository at `7da4577e`
- The last line printed is the tree fingerprint
  `5d63654c1d05a2db2529e78ba31852a2cdb6e22e35f8106fecdf73e6b617a7ac` (150,633 files including `Challenge.lean`)
