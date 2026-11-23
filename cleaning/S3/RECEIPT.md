# S3 receipt (on main, with #185 merged)

Keep one copy of each duplicate theorem and definition.

- Keeps one theorem when several theorems have the same statement. The others are deleted, or become `alias` of the kept
  theorem where a name is still needed
- Does the same for definitions with the same type and value
- Where a theorem restates a Mathlib or core lemma, it uses Mathlib's name instead, but only in files that already import
  that lemma
- Rewrites old references to the deleted copies to instead point at the chosen/kept copy
- Where the kept copy isn't in scope, a plain `import` of its file is added (`imports.tsv.gz`). No Mathlib imports are
  added
- Where a duplicate definition is deleted, statements that mentioned it now name the kept copy instead
- Copies are only treated as the same when Lean 4.36 and Lean 4.37 both see their types as equal
- A copy stays in (not deleted) when deleting it would leave a use that can't trivially be re-pointed at the kept version
- 686 duplicate theorems whose kept copy Lean 4.37 can only see through a private import stay as full theorems with
  their own proofs, instead of becoming `alias`es. Their uses are unchanged, since S3 keeps their names
- Edits that would conflict with leanprover-community PRs #109, #116, #119, #127, #132, #139, #140 and #145 (note
  now mostly in #221 and #262) are left out
- `Main.lean`, `Statements.lean` and `Challenge.lean` are unchanged and nothing inside the statements of the five theorems
  (or the definitions they unfold to) is edited (`statement-cone.tsv`)
- Every other declaration is kept. There is no S1 or S2 underneath

| | Count |
|---|---|
| Declarations deleted | 16,722 |
| Declarations turned into `alias`es | 3,456 |
| Uses rewritten to the kept copy | 32,938 |
| Imports added | 1,673 |

| | main | S3 | Change |
|---|---|---|---|
| Files | 149,216 | 149,216 | 0 |
| Lines | 20,788,872 | 20,680,886 | −107,986 (−0.5%) |
| Files changed | | 21,293 | |

- Files and lines exclude `Challenge.lean`
- `git diff --stat --no-renames` on `src/` against main gives 21,293 files changed, 34,598 insertions and 142,584
  deletions (all modified)
- #221 already makes about 0.3% of these deletions. On top of #221 this PR would make 16,564, since #221's new proofs
  still use some of the names

| Check | Result |
|---|---|
| Compiles | yes, Lean 4.37.0-rc1 on main, 149,217 of 149,217 modules, 0 failures |
| Kernel-accepted | yes, nanoda `0da9f98f`, 1,477,991 declarations, no typechecker errors |
| Same statements | yes, con-leche `--compare` (`5dc36dc1`) against the Lean 4.37 challenge, 52,613 declarations, 5 axioms justified |
| Export | `solution.ndjson` sha256 `146d1914f1e5461ce1fb22cfe0c7d7e1736338b20c2923c5b3843b4289d27a47`, 61,095,306,171 bytes |
| Term diff against main | [ ] |

- S3 on #134 under Lean 4.36 (`95372cc9`, 16,797 deletions, 4,148 aliases, 2,063 imports added) compiles every
  module, 149,217 of 149,217
- This tree differs from it where #185 or Lean 4.37 needs it, mainly 686 duplicates kept as full theorems. In total it
  has 75 fewer deletions, -692 aliases and -390 added imports
- On main under Lean 4.37 every module compiles with this change, 149,217 of 149,217

## Regenerate

```
for f in keep statement-cone theorems mathlib definitions tier2 imports; do gunzip -c cleaning/S3/$f.tsv.gz > $f.tsv; done
python3 cleaning/transform/transform.py BASE/src DEST --keep keep.tsv --statement-cone statement-cone.tsv \
  --edits theorems.tsv --edits mathlib.tsv --edits definitions.tsv --edits tier2.tsv --edits imports.tsv
```

- BASE is leanprover-community/riemann-hypothesis main at `9c9f665e`, just after #185 merged
- The last line printed is the tree fingerprint
  `8e6d1b5e8f0b1260f37dbac549e87c06b1e19250f30e6ec52423f07de16e29ce` (149,217 files including `Challenge.lean`)
