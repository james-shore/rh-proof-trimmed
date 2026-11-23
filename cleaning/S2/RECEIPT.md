# S2 receipt (on main, with #185 merged)

Remove proof syntax that Lean's linters flag as unused.

- Removes `simp` arguments that `unusedSimpArgs` flagged when the Lean 4.36 port was built
- Removes tactic alternatives that `unreachableTactic` flagged (they never run)
- Removes tactics that `unusedTactic` flagged (they do nothing)
- Only deletions, all inside tactic blocks
- Deletions that broke a trial build are left out, and so are deletions that would conflict with leanprover-community
  PRs #87 and #126
- Every deletion is one that #134's own Lean 4.36 build also flags
- Every deletion is one that Lean 4.37's linters also flag on main. Deletions expected to fail on Lean 4.37 are left
  out
- Deletions inside declarations that #134 or #185 rewrote are left out
- No edit inside the statement cone (`statement-cone.tsv`). `Main.lean`, `Statements.lean` and `Challenge.lean` are
  unchanged
- Every declaration is kept. There is no S1 underneath

| Edit list | Edits |
|---|---|
| `simp-args.tsv.gz` (unused `simp` arguments) | 18,268 |
| `unreachable.tsv.gz` (alternatives that never run) | 89,072 |
| `unused-tactics.tsv.gz` (tactics that do nothing) | 4,364 |
| **Total** | **111,704**, all applied |

| | main | S2 | Change |
|---|---|---|---|
| Files | 149,216 | 149,216 | 0 |
| Lines | 20,788,872 | 20,772,900 | −15,972 (−0.1%) |
| Files changed | | 50,868 | |

- Files and lines exclude `Challenge.lean`
- `git diff --stat --no-renames` on `src/` against main gives 50,868 files changed, 56,756 insertions and 72,728
  deletions (all modified)
- On #134 under Lean 4.36 there are 220,352 stored warnings from these three linters, and 12,391 after this change
  (-94.4%)
- By linter, unusedSimpArgs 25,751 → 1,616, unreachableTactic 92,889 → 3,016, unusedTactic 101,712 → 7,759
- Every other linter's count is unchanged, apart from one more `introMerge` entry

| Check | Result |
|---|---|
| Compiles | yes, Lean 4.37.0-rc1 on main, 149,217 of 149,217 modules, 0 failures |
| Kernel-accepted | yes, nanoda `0da9f98f`, 1,498,135 declarations, no typechecker errors |
| Same statements | yes, con-leche `--compare` (`5dc36dc1`) against the Lean 4.37 challenge, 52,613 declarations, 5 axioms justified |
| Export | `solution.ndjson` sha256 `f154fceb19992cdae80d072b3afa4bf71db36fd20cea5d8cbc85d61b1e2f5a7f`, 61,172,308,990 bytes |
| Term diff against main | [ ] |

- S2 on #134 under Lean 4.36 (`e6b999ca`, 111,808 deletions) compiles every module, 149,217 of 149,217
- This tree leaves out 104 of those deletions. 63 are where #185 changed the lines or rewrote the proof, and 41 are
  ones that Lean 4.37's linters no longer flag or that are expected to fail on Lean 4.37. The other deletions are the
  same

## Regenerate

```
for f in keep statement-cone simp-args unreachable unused-tactics; do gunzip -c cleaning/S2/$f.tsv.gz > $f.tsv; done
python3 cleaning/transform/transform.py BASE/src DEST --keep keep.tsv --level L0 \
  --lib-namespaces cleaning/transform/mathlib-namespaces.txt.gz --statement-cone statement-cone.tsv \
  --edits simp-args.tsv --edits unreachable.tsv --edits unused-tactics.tsv
```

- BASE is leanprover-community/riemann-hypothesis main at `9c9f665e`, just after #185 merged
- The last line printed is the tree fingerprint
  `e3ace8d32faa2ec27911fa2d59fa2947081dd68bf66d15ff84665998d26f0cfa` (149,217 files including `Challenge.lean`)
