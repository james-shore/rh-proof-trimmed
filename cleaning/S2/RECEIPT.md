# S2 receipt (on #185)

Remove proof syntax that Lean's linters flag as unused.

- Removes `simp` arguments that `unusedSimpArgs` flagged when the Lean 4.36 port was built
- Removes tactic alternatives that `unreachableTactic` flagged (they never run)
- Removes tactics that `unusedTactic` flagged (they do nothing)
- Only deletions, all inside tactic blocks
- Deletions that broke a trial build are left out, and so are deletions that would conflict with leanprover-community
  PRs #87 and #126
- Every deletion is one that #134's own Lean 4.36 build also flags
- Where #185 builds on Lean 4.37, every deletion is one that Lean 4.37's linters also flag. Deletions expected to
  fail on Lean 4.37 are left out
- Deletions inside declarations that #134 or #185 rewrote are left out
- Deletions in files that the closed #58 and #61 would have removed are left out, to be considered later
- No edit inside the statement cone (`statement-cone.tsv`). `Main.lean`, `Statements.lean` and `Challenge.lean` are
  unchanged
- Every declaration is kept. There is no S1 underneath

| Edit list | Edits |
|---|---|
| `simp-args.tsv.gz` (unused `simp` arguments) | 18,235 |
| `unreachable.tsv.gz` (alternatives that never run) | 31,714 |
| `unused-tactics.tsv.gz` (tactics that do nothing) | 4,320 |
| **Total** | **54,269**, all applied |

| | #185 | S2 | Change |
|---|---|---|---|
| Files | 149,216 | 149,216 | 0 |
| Lines | 20,788,790 | 20,772,893 | −15,897 (−0.1%) |
| Files changed | | 22,104 | |

- Files and lines exclude `Challenge.lean`
- `git diff --stat --no-renames` on `src/` against #185 gives 22,104 files changed, 27,994 insertions and 43,891
  deletions (all modified)
- On #134 under Lean 4.36 there are 220,352 stored warnings from these three linters, and 127,173 after this change
  (-42.3%)
- By linter, unusedSimpArgs 25,751 → 1,654, unreachableTactic 92,889 → 60,377, unusedTactic 101,712 → 65,142
- Every other linter's count is unchanged, apart from one more `introMerge` entry

| Check | Result |
|---|---|
| Compiles | [ ] |
| Kernel-accepted | [ ] |
| Same statements | [ ] |
| Term diff against #185 | [ ] |

- S2 on #134 under Lean 4.36 (`1b4ffc4c`, 54,370 deletions) compiles every module, 149,217 of 149,217
- This tree leaves out 101 of those deletions. 60 are where #185 changed the lines or rewrote the proof, and 41 are
  ones that Lean 4.37's linters no longer flag or that are expected to fail on Lean 4.37. The other deletions are the
  same

## Regenerate

```
for f in keep statement-cone simp-args unreachable unused-tactics; do gunzip -c cleaning/S2/$f.tsv.gz > $f.tsv; done
python3 cleaning/transform/transform.py BASE/src DEST --keep keep.tsv --level L0 \
  --lib-namespaces cleaning/transform/mathlib-namespaces.txt.gz --statement-cone statement-cone.tsv \
  --edits simp-args.tsv --edits unreachable.tsv --edits unused-tactics.tsv
```

- BASE is #185's branch at `89ea1959`
- The last line printed is the tree fingerprint
  `e61888ad63c8c41f544a6ec787b9cf043127b2617f2cde82f082fb5a38e974b1` (149,217 files including `Challenge.lean`)
