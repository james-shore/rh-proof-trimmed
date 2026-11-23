# S2 receipt (on main, with #185 merged)

Remove proof syntax that Lean's linters flag as unused.

- Removes `simp` arguments that `unusedSimpArgs` flagged when the Lean 4.36 port was built
- Removes tactic alternatives that `unreachableTactic` flagged (they never run)
- Removes tactics that `unusedTactic` flagged (they do nothing)
- Only deletions, all inside tactic blocks
- Deletions that broke a trial build are left out, and so are deletions that would conflict with leanprover-community
  PRs #87 and #126
- Every deletion is one that #134's own Lean 4.36 build also flags
- Every deletion is one that Lean 4.37's linters also flag on main before #221. Deletions expected to fail on Lean 4.37
  are left out
- Deletions inside declarations that #134 or #185 rewrote are left out
- No edit inside the statement cone (`statement-cone.tsv`). `Main.lean`, `Statements.lean` and `Challenge.lean` are
  unchanged
- Every declaration is kept. There is no S1 underneath

| Edit list | Edits |
|---|---|
| `simp-args.tsv.gz` (unused `simp` arguments) | 17,908 |
| `unreachable.tsv.gz` (alternatives that never run) | 85,236 |
| `unused-tactics.tsv.gz` (tactics that do nothing) | 3,951 |
| **Total** | **107,095**, all applied |

| | main | S2 | Change |
|---|---|---|---|
| Files | 148,229 | 148,229 | 0 |
| Lines | 20,567,714 | 20,555,576 | −12,138 (−0.1%) |
| Files changed | | 50,195 | |

- Files and lines exclude `Challenge.lean`
- `git diff --stat --no-renames` on `src/` against main gives 50,195 files changed, 55,916 insertions and 68,054
  deletions (all modified)
- On #134 under Lean 4.36 there are 220,352 stored warnings from these three linters, and 12,391 after this change
  (-94.4%)
- By linter, unusedSimpArgs 25,751 → 1,616, unreachableTactic 92,889 → 3,016, unusedTactic 101,712 → 7,759
- Every other linter's count is unchanged, apart from one more `introMerge` entry

| Check | Result |
|---|---|
| Compiles | [ ] |
| Kernel-accepted | [ ] |
| Same statements | [ ] |
| Term diff against main | [ ] |

- S2 on #134 under Lean 4.36 (`e6b999ca`, 111,808 deletions) compiles every module, 149,217 of 149,217
- On main before #221 (`9c9f665e`) under Lean 4.37 the previous version (`e3ace8d3`, 111,704 deletions) compiles every
  module, 149,217 of 149,217, nanoda accepts it (1,498,135 declarations, no typechecker errors), and con-leche accepts
  it against the challenge (52,613 declarations, 5 axioms justified). This tree is that version carried onto main after
  #221. A build on it follows
- This tree leaves out 4,713 of those deletions. 4,672 are where #185 or #221 changed the lines, rewrote the proof or
  deleted the code, and 41 are
  ones that Lean 4.37's linters no longer flag or that are expected to fail on Lean 4.37. The other deletions are the
  same

## Regenerate

```
for f in keep statement-cone simp-args unreachable unused-tactics; do gunzip -c cleaning/S2/$f.tsv.gz > $f.tsv; done
python3 cleaning/transform/transform.py BASE/src DEST --keep keep.tsv --level L0 \
  --lib-namespaces cleaning/transform/mathlib-namespaces.txt.gz --statement-cone statement-cone.tsv \
  --edits simp-args.tsv --edits unreachable.tsv --edits unused-tactics.tsv
```

- BASE is leanprover-community/riemann-hypothesis main at `98cc3736`, just after #221 merged
- The last line printed is the tree fingerprint
  `8b2d4e7ea07f31ef9faeb522554cd3dc4a92cc3073792f44e4f93f10f86bc70e` (148,230 files including `Challenge.lean`)
