# rh-proof-trimmed (S2 on Lean 4.37)

The Lean 4 proof of RH and GRH for Dirichlet L-functions ([remark.pdf](https://alpo.ge/remark.pdf)), made smaller by
mechanical steps only. This branch has one stage on leanprover-community main on Lean v4.37.0-rc1. The Lean 4.33.1
stages are on [main](https://github.com/james-shore/rh-proof-trimmed).

- The five theorems in `src/Main.lean` and their statements are unchanged
- No proof is written by hand or by a model
- S2 is one commit on top of leanprover-community main at `a28ad7ec`, just after #295 merged, with no other stage
  underneath
- Its receipt is in `cleaning/S2/RECEIPT.md`

## Stage

| Stage | What | Files | Lines | Compiles | Kernel-accepted | Same statements | Term diff |
|---|---|---|---|---|---|---|---|
| Base | main at `a28ad7ec` | 60,931 | 16,897,777 | | | | |
| S2 | remove syntax Lean's own linters flag as unused | 60,931 | 16,896,662 | yes | [ ] | [ ] | [ ] |

- Compiles means Lean v4.37.0-rc1 builds every module
- Kernel-accepted means an independent kernel (nanoda) accepts the exported proof
- Same statements means con-leche `--compare` accepts the export against the published challenge
- Term diff compares each statement in the exported proof with the base's
- Files and lines exclude `Challenge.lean`

## Base

- #438 put most of the earlier S2 into main, ported onto the clumped tree. This stage is a fresh pass for what's left, on main after #295
- `a28ad7ec` is main when this stage was made, just after #295 merged

## Regenerate

```
for f in keep statement-cone simp-args unreachable unused-tactics; do gunzip -c cleaning/S2/$f.tsv.gz > $f.tsv; done
python3 cleaning/transform/transform.py BASE/src DEST --keep keep.tsv --level L0 \
  --lib-namespaces cleaning/transform/mathlib-namespaces.txt.gz --statement-cone statement-cone.tsv \
  --edits simp-args.tsv --edits unreachable.tsv --edits unused-tactics.tsv
```

- BASE is leanprover-community/riemann-hypothesis main at `a28ad7ec`
- The last line printed is the tree fingerprint, which must match the receipt
- The edit format is in `cleaning/transform/EDIT-LISTS.md`

## Layout

- `src/` is the source after S2
- `cleaning/` has the transform, the keep list, the edit lists and the receipt
- Everything else is the base, unchanged. Its README is `README-base.md`

## Inputs

- Base `a28ad7ec8b9f5ff4ec448fe210d3ac57aacfffe1`
- Lean v4.37.0-rc1 and Mathlib `31ce06eaadf4a200c0e1407c5f10953cf606b8f8`
- `cleaning/transform/` follows [keithadler/rh-trim](https://github.com/keithadler/rh-trim) `tools/prune.py`
  (Apache-2.0)

## Licence

[LICENSE.md](LICENSE.md)
