import Mathlib
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.SiegelReframe

open Matrix MeasureTheory GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe
open scoped Real ContDiff

noncomputable section

namespace GlobalTheory.FlatKernel

variable {g : ℕ}

def flatL (τ : Matrix (Fin g) (Fin g) ℂ) : (Fin g → ℂ) →ₗ[ℝ] Fl g where
  toFun := flatOf τ
  map_add' z w := by
    ext (i | i) <;> simp [flatOf, Matrix.vecMul, dotProduct, add_mul, Finset.sum_add_distrib] <;> ring
  map_smul' c z := by
    ext (i | i)
    · simp [flatOf, Matrix.vecMul, dotProduct, Finset.mul_sum, mul_assoc]
    · simp only [flatOf, Sum.elim_inr, Pi.sub_apply, Pi.smul_apply, Matrix.vecMul, dotProduct,
        smul_eq_mul, Complex.smul_re, Complex.smul_im, Finset.mul_sum, mul_sub]
      refine congrArg _ (Finset.sum_congr rfl fun k _ => ?_)
      rw [Finset.sum_mul, Finset.sum_mul, Finset.mul_sum]
      exact Finset.sum_congr rfl fun l _ => by simp only [RingHom.id_apply]; ring

@[simp] lemma flatL_apply (τ : Matrix (Fin g) (Fin g) ℂ) (z : Fin g → ℂ) :
    flatL τ z = flatOf τ z := rfl

end GlobalTheory.FlatKernel
