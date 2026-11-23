# rh-proof-trimmed (S3 on Lean 4.37)

The Lean 4 proof of RH and GRH for Dirichlet L-functions ([remark.pdf](https://alpo.ge/remark.pdf)), made smaller by
mechanical steps only. This branch has one stage on
[leanprover-community/riemann-hypothesis #185](https://github.com/leanprover-community/riemann-hypothesis/pull/185)
(#134 on Lean v4.37.0-rc1). The Lean 4.33.1 stages are on [main](https://github.com/james-shore/rh-proof-trimmed).

- The five theorems in `src/Main.lean` and their statements are unchanged
- No proof is written by hand or by a model
- S3 is one commit on top of leanprover-community main at `9c9f665e`, just after #185 merged, with no other stage
  underneath
- Its receipt is in `cleaning/S3/RECEIPT.md`

## Stage

| Stage | What | Files | Lines | Compiles | Kernel-accepted | Same statements | Term diff |
|---|---|---|---|---|---|---|---|
| Base | main at `9c9f665e` | 149,216 | 20,788,872 | | | | |
| S3 | keep one copy of each duplicate theorem or definition | 149,216 | 20,680,886 | [ ] | [ ] | [ ] | [ ] |

- Compiles means Lean v4.37.0-rc1 builds every module
- Kernel-accepted means an independent kernel (nanoda) accepts the exported proof
- Same statements means con-leche `--compare` accepts the export against the published challenge
- Term diff compares each statement in the exported proof with the base's
- Files and lines exclude `Challenge.lean`

## Base

- #185 is #134 moved to Lean v4.37.0-rc1. #134 speeds up the build. It removes heartbeat overrides, narrows imports
  and speeds up slow proofs
- `9c9f665e` is main when this stage was made, just after #185 merged

## Regenerate

```
for f in keep statement-cone theorems mathlib definitions tier2 imports; do gunzip -c cleaning/S3/$f.tsv.gz > $f.tsv; done
python3 cleaning/transform/transform.py BASE/src DEST --keep keep.tsv --statement-cone statement-cone.tsv \
  --edits theorems.tsv --edits mathlib.tsv --edits definitions.tsv --edits tier2.tsv --edits imports.tsv
```

- BASE is leanprover-community/riemann-hypothesis main at `9c9f665e`
- The last line printed is the tree fingerprint, which must match the receipt
- The edit format is in `cleaning/transform/EDIT-LISTS.md`

## Layout

- `src/` is the source after S3
- `cleaning/` has the transform, the keep list, the edit lists and the receipt
- Everything else is the base, unchanged. Its README is `README-base.md`

## Inputs

- Base `9c9f665ed79ce0fa8da61bd803b7a4bf1ad62ed0`
- Lean v4.37.0-rc1 and Mathlib `31ce06eaadf4a200c0e1407c5f10953cf606b8f8`
- `cleaning/transform/` follows [keithadler/rh-trim](https://github.com/keithadler/rh-trim) `tools/prune.py`
  (Apache-2.0)

## Licence

[LICENSE.md](LICENSE.md)
