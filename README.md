# rh-proof-trimmed

The Lean 4 proof of RH and GRH for Dirichlet L-functions ([remark.pdf](https://alpo.ge/remark.pdf)), made smaller by
mechanical steps only.

- The five theorems in `src/Main.lean` and their statements are unchanged
- No proof is written by hand or by a model
- Each stage is one commit on top of
  [leanprover-community/riemann-hypothesis](https://github.com/leanprover-community/riemann-hypothesis) at `8f558a88`
- Each stage has a receipt in `cleaning/<stage>/`

## Stages

| Stage | What | Files | Lines | Declarations | Compiles | Kernel-accepted | Same statements |
|---|---|---|---|---|---|---|---|
| Base | the source at `8f558a88` | 175,181 | 17,373,929 | 1,061,507 | yes (LC's CI) | | |
| S1 | remove declarations the proof doesn't use | 152,371 | 14,611,339 | 864,715 | yes | running | running |
| S2 | remove syntax Lean's own linters flag as unused | coming | | | | | |
| S3 | keep one copy of each duplicate theorem or definition | coming | | | | | |
| S4 | remove import lines each file doesn't need | coming | | | | | |

- Compiles means Lean 4.33.1 builds every module
- Kernel-accepted means an independent kernel (nanoda) accepts the exported proof
- Same statements means con-leche `--compare` accepts the export against the published challenge
- Files and lines exclude `Challenge.lean`

## Base

- `8f558a88` differs from the original archive (`8b83d5e7`) in 8 files under `src/`
- 6 modules are deleted, and `Main.lean` and `Statements.lean` import less
- LC's CI built the same `src/` in run 44928889426 (183,897 jobs, exit 0)

## Regenerate a stage

```
python3 cleaning/transform/transform.py BASE/src DEST --keep keep.tsv --level L2g \
  --lib-namespaces cleaning/transform/mathlib-namespaces.txt.gz [--statement-cone CONE.tsv --edits LIST.tsv …]
```

- BASE is this repository at `8f558a88`
- The last line printed is the tree fingerprint, which must match the receipt
- Edit lists need `--statement-cone`, the table `data/statement-cone-with_definitions.tsv` from
  [rh-proof-dependencies](https://github.com/james-shore/rh-proof-dependencies). No edit can touch it
- The edit format is in `cleaning/transform/EDIT-LISTS.md`

## Layout

- `src/` is the source after the latest stage
- `cleaning/` has the transform, the keep list, the edit lists and the receipts
- Everything else is the base, unchanged. Its README is `README-base.md`

## Inputs

- Base `8f558a8848a80dac6851a00a95ca477ff403e922`
- Lean v4.33.1 and Mathlib `0df444a360eaa60ab8c11dca51a86af692955474`
- Used declarations from [rh-proof-dependencies](https://github.com/james-shore/rh-proof-dependencies)
- `cleaning/transform/` follows [keithadler/rh-trim](https://github.com/keithadler/rh-trim) `tools/prune.py`
  (Apache-2.0)

## Licence

[LICENSE.md](LICENSE.md)
