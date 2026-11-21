import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FullRk
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SubMemTwistSpan

open ValuativeRel Matrix

noncomputable section
namespace GlobalTheory.NormalCore
open GlobalTheory.SplitFlip GlobalTheory.FullRankCoinv

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

def ebox {A D : Type} (ϖ : kˣ) (C : Matrix A D k) (r : A → D → ℕ) : Set (Matrix A D k) :=
  {X | ∀ i j, valuation k (X i j - C i j) ≤ valuation k ((ϖ ^ r i j : kˣ) : k)}

theorem box_eq_ebox {A D : Type} (ϖ : kˣ) (C : Matrix A D k) (e : A → ℕ) :
    GlobalTheory.RankCoinv.box ϖ C e = ebox ϖ C (fun i _ => e i) := rfl

def dgl {m : ℕ} (i₀ : Fin m) (t : kˣ) : GL (Fin m) k where
  val := diagonal (Function.update (1 : Fin m → k) i₀ (t : k))
  inv := diagonal (Function.update (1 : Fin m → k) i₀ ((t⁻¹ : kˣ) : k))
  val_inv := by
    rw [diagonal_mul_diagonal, ← diagonal_one]
    congr 1; ext i
    by_cases h : i = i₀ <;> simp [h, Function.update_apply]
  inv_val := by
    rw [diagonal_mul_diagonal, ← diagonal_one]
    congr 1; ext i
    by_cases h : i = i₀ <;> simp [h, Function.update_apply]

theorem dgl_val {m : ℕ} (i₀ : Fin m) (t : kˣ) :
    (dgl i₀ t).1 = diagonal (Function.update (1 : Fin m → k) i₀ (t : k)) := rfl

end GlobalTheory.NormalCore
