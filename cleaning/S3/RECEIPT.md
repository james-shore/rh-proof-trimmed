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
- The added imports make no module newly reachable from the challenge
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
| Declarations deleted | 16,533 |
| Declarations turned into `alias`es | 3,444 |
| Uses rewritten to the kept copy | 32,635 |
| Imports added | 1,617 |

| | main | S3 | Change |
|---|---|---|---|
| Files | 148,229 | 148,229 | 0 |
| Lines | 20,567,714 | 20,464,503 | −103,211 (−0.5%) |
| Files changed | | 21,145 | |

- Files and lines exclude `Challenge.lean`
- `git diff --stat --no-renames` on `src/` against main gives 21,145 files changed, 34,274 insertions and 137,485
  deletions (all modified)

| Check | Result |
|---|---|
| Compiles | yes, Lean 4.37.0-rc1 on main after #221, 148,230 of 148,230 modules, 0 failures |
| Kernel-accepted | yes, nanoda `0da9f98f`, 1,465,723 declarations, no typechecker errors |
| Same statements | yes, con-leche `--compare` (`5dc36dc1`) against the Lean 4.37 challenge, 52,613 declarations, 5 axioms justified |
| Export | `solution.ndjson` sha256 `2435313ffc3ca3189586e225f135f7451f9ceb30adf3a42dfd9367e118a5ae06`, 60,624,237,916 bytes |
| Term diff against main | [ ] |

- S3 on #134 under Lean 4.36 (`95372cc9`, 16,797 deletions, 4,148 aliases, 2,063 imports added) compiles every
  module, 149,217 of 149,217
- This tree differs from it where #185, #221 or Lean 4.37 needs it, mainly 686 duplicates kept as full theorems. In total
  it has 264 fewer deletions, -704 aliases and -446 added imports
- On main before #221 (`9c9f665e`) under Lean 4.37 this version (`9227f022`) compiles every module, 149,217 of 149,217,
  nanoda accepts it (1,477,982 declarations, no typechecker errors), and con-leche accepts it against the challenge
  (52,613 declarations, 5 axioms justified)
- On main after #221 under Lean 4.37 every module compiles with this change, 148,230 of 148,230

## Regenerate

```
for f in keep statement-cone theorems mathlib definitions tier2 imports; do gunzip -c cleaning/S3/$f.tsv.gz > $f.tsv; done
python3 cleaning/transform/transform.py BASE/src DEST --keep keep.tsv --statement-cone statement-cone.tsv \
  --edits theorems.tsv --edits mathlib.tsv --edits definitions.tsv --edits tier2.tsv --edits imports.tsv
```

- BASE is leanprover-community/riemann-hypothesis main at `98cc3736`, just after #221 merged
- The last line printed is the tree fingerprint
  `8dd25a584ea68b568a203aa6232543c1713003ca37e368555b1a2a848f895bba` (148,230 files including `Challenge.lean`)
