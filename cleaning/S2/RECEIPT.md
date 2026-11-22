# S2 receipt

Remove proof syntax that Lean's linters flag as unused.

- Removes `simp` arguments that `unusedSimpArgs` flagged when the original was built
- Removes tactic alternatives that `unreachableTactic` flagged (they never run)
- Removes tactics that `unusedTactic` flagged (they do nothing)
- Only deletions, all inside tactic blocks
- Deletions that broke a trial build are left out (`dropped.tsv`)
- Deletions that would conflict with leanprover-community's main or with its open PRs #58, #60 and #61 are left out
- No edit inside the statement cone (`statement-cone.tsv`). `Main.lean`, `Statements.lean` and `Challenge.lean` are
  unchanged
- S2 is on main at `bdda2f0e`, merged into this repository before this commit

| Edit list | Edits | Applied |
|---|---|---|
| `simp-args.tsv.gz` (unused `simp` arguments) | 20,750 | |
| `unreachable.tsv.gz` (alternatives that never run) | 41,587 | |
| `unused-tactics.tsv.gz` (tactics that do nothing) | 3,461 | |
| **Total** | **65,798** | **54,079** |

- The other 11,719 edits fall in code S1 already removes
- The lists started at 124,750 edits. 58,952 were left out because main, #58, #60 or #61 deletes their files or
  changes their lines or the lines next to them

| | S1 | S2 | Change |
|---|---|---|---|
| Files | 150,632 | 150,632 | 0 |
| Lines | 14,468,143 | 14,453,805 | −14,338 (−0.1%) |
| Files changed | | 22,079 | |
| Stored linter warnings (distinct) | 356,887 | 264,689 | −92,198 |

- Files and lines exclude `Challenge.lean`. S1 here is S1 on main at `bdda2f0e`
- `git diff --stat --no-renames` on `src/` against it gives 22,079 files changed, 28,913 insertions and 43,251
  deletions (all modified)
- S2 deletes no declarations
- By linter, unusedSimpArgs 24,214 → 68, unreachableTactic 94,598 → 61,224, unusedTactic 96,169 → 61,715
- Of the 123,007 warnings left from these three linters, about 118,000 (96%) are in files that #58 and #61 delete

| Check | Result |
|---|---|
| Compiles | yes, Lean 4.33.1, 150,633 modules, 0 failures |
| Kernel-accepted | running |
| Same statements | running |
| Term diff against S1 | running |

## Regenerate

```
for f in keep statement-cone simp-args unreachable unused-tactics; do gunzip -c cleaning/S2/$f.tsv.gz > $f.tsv; done
python3 cleaning/transform/transform.py BASE/src DEST --keep keep.tsv --level L2g \
  --lib-namespaces cleaning/transform/mathlib-namespaces.txt.gz --statement-cone statement-cone.tsv \
  --edits simp-args.tsv --edits unreachable.tsv --edits unused-tactics.tsv
```

- BASE is leanprover-community/riemann-hypothesis at `bdda2f0e`
- `keep.tsv.gz` is the S1 keep list carried through main's changes since `7da4577e`
- The last line printed is the tree fingerprint
  `65c5425996a92fbddc1da2258fbad18fe7aa3693609c1f2a34204a6253b2c910` (150,633 files including `Challenge.lean`)
