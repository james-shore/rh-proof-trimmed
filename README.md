# rh-proof-trimmed (S2 on #185)

The Lean 4 proof of RH and GRH for Dirichlet L-functions ([remark.pdf](https://alpo.ge/remark.pdf)), made smaller by
mechanical steps only. This branch has one stage on
[leanprover-community/riemann-hypothesis #185](https://github.com/leanprover-community/riemann-hypothesis/pull/185)
(#134 on Lean v4.37.0-rc1). The Lean 4.33.1 stages are on [main](https://github.com/james-shore/rh-proof-trimmed).

- The five theorems in `src/Main.lean` and their statements are unchanged
- No proof is written by hand or by a model
- S2 is one commit on top of #185 at `6e27f85d`, with no other stage underneath
- Its receipt is in `cleaning/S2/RECEIPT.md`

## Stage

| Stage | What | Files | Lines | Compiles | Kernel-accepted | Same statements | Term diff |
|---|---|---|---|---|---|---|---|
| Base | #185 at `6e27f85d` | 149,216 | 20,788,770 | | | | |
| S2 | remove syntax Lean's own linters flag as unused | 149,216 | 20,772,871 | [ ] | [ ] | [ ] | [ ] |

- Compiles means Lean v4.37.0-rc1 builds every module
- Kernel-accepted means an independent kernel (nanoda) accepts the exported proof
- Same statements means con-leche `--compare` accepts the export against the published challenge
- Term diff compares each statement in the exported proof with the base's
- Files and lines exclude `Challenge.lean`

## Base

- #185 is #134 moved to Lean v4.37.0-rc1. #134 speeds up the build. It removes heartbeat overrides, narrows imports
  and speeds up slow proofs
- `6e27f85d` is #185's head when this stage was made

## Regenerate

```
for f in keep statement-cone simp-args unreachable unused-tactics; do gunzip -c cleaning/S2/$f.tsv.gz > $f.tsv; done
python3 cleaning/transform/transform.py BASE/src DEST --keep keep.tsv --level L0 \
  --lib-namespaces cleaning/transform/mathlib-namespaces.txt.gz --statement-cone statement-cone.tsv \
  --edits simp-args.tsv --edits unreachable.tsv --edits unused-tactics.tsv
```

- BASE is #185's branch at `6e27f85d`
- The last line printed is the tree fingerprint, which must match the receipt
- The edit format is in `cleaning/transform/EDIT-LISTS.md`

## Layout

- `src/` is the source after S2
- `cleaning/` has the transform, the keep list, the edit lists and the receipt
- Everything else is the base, unchanged. Its README is `README-base.md`

## Inputs

- Base `6e27f85d84e1eedc39b1d487255b6fcfa738c22f`
- Lean v4.37.0-rc1 and Mathlib `31ce06eaadf4a200c0e1407c5f10953cf606b8f8`
- `cleaning/transform/` follows [keithadler/rh-trim](https://github.com/keithadler/rh-trim) `tools/prune.py`
  (Apache-2.0)

## Licence

[LICENSE.md](LICENSE.md)
