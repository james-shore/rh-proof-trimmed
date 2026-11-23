# S3 receipt (on #185)

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
- Copies are only treated as the same when Lean 4.36 sees their types as equal, and Lean 4.37 too in the parts of #185
  that already build on 4.37
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
| Declarations deleted | 16,757 |
| Declarations turned into `alias`es | 3,459 |
| Uses rewritten to the kept copy | 32,988 |
| Imports added | 1,675 |

| | #185 | S3 | Change |
|---|---|---|---|
| Files | 149,216 | 149,216 | 0 |
| Lines | 20,788,857 | 20,680,535 | −108,322 (−0.5%) |
| Files changed | | 21,317 | |

- Files and lines exclude `Challenge.lean`
- `git diff --stat --no-renames` on `src/` against #185 gives 21,317 files changed, 34,650 insertions and 142,972
  deletions (all modified)
- #221 already makes about 0.3% of these deletions. On top of #221 this PR would make 16,599, since #221's new proofs
  still use some of the names

| Check | Result |
|---|---|
| Compiles | [ ] |
| Kernel-accepted | [ ] |
| Same statements | [ ] |
| Term diff against #185 | [ ] |

- S3 on #134 under Lean 4.36 (`95372cc9`, 16,797 deletions, 4,148 aliases, 2,063 imports added) compiles every
  module, 149,217 of 149,217
- This tree differs from it where #185 or Lean 4.37 needs it, mainly 686 duplicates kept as full theorems. In total it
  has 40 fewer deletions, -689 aliases and -388 added imports
- On #185 under Lean 4.37 an earlier cut of these lists (`5099fe62`) adds no failures to the modules that build so far

## Regenerate

```
for f in keep statement-cone theorems mathlib definitions tier2 imports; do gunzip -c cleaning/S3/$f.tsv.gz > $f.tsv; done
python3 cleaning/transform/transform.py BASE/src DEST --keep keep.tsv --statement-cone statement-cone.tsv \
  --edits theorems.tsv --edits mathlib.tsv --edits definitions.tsv --edits tier2.tsv --edits imports.tsv
```

- BASE is #185's branch at `bafe7f25`
- The last line printed is the tree fingerprint
  `0362669b73c990afc04b917a0955a64ef82df27aaa7f8f8b06d7509770f1334b` (149,217 files including `Challenge.lean`)
