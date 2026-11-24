# S2 receipt (fresh, on main after #295)

Remove proof syntax that Lean's linters flag as unused.

- #438 put most of the earlier S2 into main, ported onto the clumped tree. This is a fresh pass of the same rules on main
  after #295, read from main's own Lean 4.37 build with every module linted
- Removes `simp` arguments that `unusedSimpArgs` flags
- Removes tactic alternatives that `unreachableTactic` flags (they never run)
- Removes tactics that `unusedTactic` flags (they do nothing)
- Only deletions, all inside tactic blocks
- The same rules and safety checks as the earlier S2
- No edit inside the statement cone (`statement-cone.tsv`). `Main.lean`, `Statements.lean` and `Challenge.lean` are
  unchanged
- Every declaration is kept. There is no S1 underneath

| Edit list | Edits |
|---|---|
| `simp-args.tsv.gz` (unused `simp` arguments) | 390 |
| `unreachable.tsv.gz` (alternatives that never run) | 2,042 |
| `unused-tactics.tsv.gz` (tactics that do nothing) | 263 |
| **Total** | **2,695**, all applied |

| | main | S2 | Change |
|---|---|---|---|
| Files | 60,931 | 60,931 | 0 |
| Lines | 16,897,777 | 16,896,662 | −1,115 (−0.01%) |
| Files changed | | 1,294 | |

- Files and lines exclude `Challenge.lean`
- `git diff --stat --no-renames` on `src/` against main gives 1,294 files changed, 1,381 insertions and 2,496 deletions
  (all modified)
- On main the three linters hold 13,249 stored warnings (unusedTactic 8,792, unreachableTactic 2,574, unusedSimpArgs
  1,883)
- 6 flagged edits are left out because they sit inside a `<;>` group, which runs once for each goal, so a linter's
  verdict from one run doesn't hold for all of them
- The earlier S2 (107,095 deletions, tag `s2-pr-185-8`) passed every check below on main after #221

| Check | Result |
|---|---|
| Compiles | yes, Lean 4.37.0-rc1 on main after #295, 60,932 of 60,932 modules, 0 failures |
| Kernel-accepted | [ ] |
| Same statements | [ ] |
| Term diff against main | [ ] |

## Regenerate

```
for f in keep statement-cone simp-args unreachable unused-tactics; do gunzip -c cleaning/S2/$f.tsv.gz > $f.tsv; done
python3 cleaning/transform/transform.py BASE/src DEST --keep keep.tsv --level L0 \
  --lib-namespaces cleaning/transform/mathlib-namespaces.txt.gz --statement-cone statement-cone.tsv \
  --edits simp-args.tsv --edits unreachable.tsv --edits unused-tactics.tsv
```

- BASE is leanprover-community/riemann-hypothesis main at `a28ad7ec`, just after #295 merged
- `cleaning/transform/mathlib-namespaces.txt.gz` here is the namespace list of Lean 4.37's Mathlib (`31ce06ea`)
- The last line printed is the tree fingerprint
  `b6713a46da22cd544bca4ae319e37d1bc0ab8dfdf9ee2a94c0cd1d5d604957c1` (60,932 files including `Challenge.lean`)
