import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CellFunctorOfCharCentral
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FullRk
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InducedFullRankIrreducible

noncomputable section

open GlobalTheory.SmGL GlobalTheory.PRep GlobalTheory.LeviBlockExponent

namespace GlobalTheory.IndJacBlock

def sz3 (d : ℕ) (j : Fin 3) : ℕ := if (j : ℕ) = 1 then d - 2 else 1

variable (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

def torEntry (d : ℕ) (p : kˣ × kˣ) (j : Fin 3) : kˣ := if (j : ℕ) = 0 then p.1 else if (j : ℕ) = 2 then p.2 else 1

def tor3 (d : ℕ) : kˣ × kˣ →* Levi k (fun j : Fin 3 => Fin (sz3 d j)) where
  toFun p j := Matrix.GeneralLinearGroup.scalar _ (torEntry k d p j)
  map_one' := by funext j; simp [torEntry]
  map_mul' p q := by
    funext j
    simp only [Pi.mul_apply, ← map_mul]
    congr 1
    simp only [torEntry, Prod.fst_mul, Prod.snd_mul]
    split_ifs <;> simp

theorem torus_three_block_apply (d : ℕ) (p : kˣ × kˣ) (j : Fin 3) :
    tor3 k d p j = Matrix.GeneralLinearGroup.scalar _ (torEntry k d p j) := rfl

end GlobalTheory.IndJacBlock
