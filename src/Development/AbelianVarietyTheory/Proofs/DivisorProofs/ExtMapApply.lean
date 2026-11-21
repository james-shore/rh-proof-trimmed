import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.TranslationInv

set_option autoImplicit false

noncomputable section

open Matrix
open GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe

namespace GlobalTheory.TorsionForm

def genProd {m : ℕ} (φ : Matrix (Fin m) (Fin m) ℂ) (S : Finset (Fin m)) : Ext m :=
  (S.sort (· ≤ ·)).foldr (fun i acc => ∑ k, φ i k • wedge k acc) (Pi.single ∅ 1)

def extMap {m : ℕ} (φ : Matrix (Fin m) (Fin m) ℂ) : Ext m →L[ℂ] Ext m :=
  LinearMap.toContinuousLinearMap
    { toFun := fun w => ∑ S, w S • genProd φ S
      map_add' := fun v w => by simp [add_smul, Finset.sum_add_distrib]
      map_smul' := fun c w => by simp [Finset.smul_sum, smul_smul] }

theorem extMap_apply {m : ℕ} (φ : Matrix (Fin m) (Fin m) ℂ) (w : Ext m) :
    extMap φ w = ∑ S, w S • genProd φ S := rfl

def fibMat (n : ℕ) {g : ℕ} (a : Matrix (Fin g) (Fin g) ℂ) :
    Matrix (Fin (n + n + g)) (Fin (n + n + g)) ℂ :=
  Matrix.reindex finSumFinEquiv finSumFinEquiv (Matrix.fromBlocks 1 0 0 a)

def frameMap (n : ℕ) {g : ℕ} (D : Matrix (Fin g) (Fin g) ℂ) : Ext (n + n + g) →L[ℂ] Ext (n + n + g) :=
  extMap (fibMat n (D⁻¹)ᴴ)

end GlobalTheory.TorsionForm
