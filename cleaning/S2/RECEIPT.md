# S2 receipt (fresh, on main after #644)

Remove proof syntax that Lean's linters flag as unused.

- #438 put most of the earlier S2 into main, ported onto the clumped tree. This is a fresh pass of the same rules on main
  after #295, read from that main's own Lean 4.37 build with every module linted, and carried onto main after #644
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
| `simp-args.tsv.gz` (unused `simp` arguments) | 387 |
| `unreachable.tsv.gz` (alternatives that never run) | 1,997 |
| `unused-tactics.tsv.gz` (tactics that do nothing) | 262 |
| **Total** | **2,646**, all applied |

| | main | S2 | Change |
|---|---|---|---|
| Files | 60,928 | 60,928 | 0 |
| Lines | 16,894,982 | 16,893,895 | −1,087 (−0.01%) |
| Files changed | | 1,281 | |

- Files and lines exclude `Challenge.lean`
- `git diff --stat --no-renames` on `src/` against main gives 1,281 files changed, 1,359 insertions and 2,446 deletions
  (all modified)
- On main after #295 the three linters hold 13,249 stored warnings (unusedTactic 8,792, unreachableTactic 2,574, unusedSimpArgs
  1,883)
- Carrying onto main after #644 drops 49 of the 2,695 edits. 26 are in declarations #644 rewrote or removed, and 23 are
  alternatives whose text #644 changed
- Every remaining edit is still flagged at its exact place by the Lean 4.37 lint of main after #644
- 6 flagged edits are left out because they sit inside a `<;>` group, which runs once for each goal, so a linter's
  verdict from one run doesn't hold for all of them
- The earlier S2 (107,095 deletions, tag `s2-pr-185-8`) passed every check below on main after #221

| Check | Result |
|---|---|
| Compiles | yes, Lean 4.37.0-rc1 on main after #644, 60,929 of 60,929 modules, 0 failures |
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

- BASE is leanprover-community/riemann-hypothesis main at `343b1de3`, just after #644 merged
- `cleaning/transform/mathlib-namespaces.txt.gz` here is the namespace list of Lean 4.37's Mathlib (`31ce06ea`)
- The last line printed is the tree fingerprint
  `8d8783383a9eb3d0949144be8d50e9631d712c80539b7d83eaecea20885dc18b` (60,929 files including `Challenge.lean`)
