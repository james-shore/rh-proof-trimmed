# S1 receipt

Remove declarations the proof doesn't use.

- Keeps the declarations the five theorems' proof terms use, plus what elaborating them needs
- Keeps every `simp`/`rfl` lemma and instance of a kept file
- No line of a kept declaration changes
- Imports are rewired to the kept files, in the original order
- Where a name is declared in more than one file, keeps the copy the original's environment holds
- No file is added. `Main.lean`, `Statements.lean` and `Challenge.lean` are unchanged

| | Base | S1 | Change |
|---|---|---|---|
| Files | 175,181 | 152,371 | −22,810 (−13.0%) |
| Lines | 17,373,929 | 14,611,339 | −2,762,590 (−15.9%) |
| Declarations | 1,061,507 | 864,715 | −196,792 (−18.5%) |
| Import lines | 909,805 | 859,808 | −49,997 (−5.5%) |

- Files and lines exclude `Challenge.lean`
- `git diff --stat --no-renames` on `src/` against the base gives 63,263 files changed, 131,635 insertions and
  2,894,225 deletions (22,810 files deleted, 40,453 modified, 0 added)

| Check | Result |
|---|---|
| Compiles | yes, Lean 4.33.1, 152,372 modules, 0 failures |
| Kernel-accepted | running |
| Same statements | running |
| Term diff against the original | running |

## Regenerate

```
gunzip -c cleaning/S1/keep.tsv.gz > keep.tsv
python3 cleaning/transform/transform.py BASE/src DEST --keep keep.tsv --level L2g \
  --lib-namespaces cleaning/transform/mathlib-namespaces.txt.gz
```

- BASE is this repository at `8f558a88`
- The last line printed is the tree fingerprint
  `d25d2b3c4b56dd3c0fc97354a9240f55e1f379d54b1e6f5842437dd0ec83ac47` (152,372 files including `Challenge.lean`)
