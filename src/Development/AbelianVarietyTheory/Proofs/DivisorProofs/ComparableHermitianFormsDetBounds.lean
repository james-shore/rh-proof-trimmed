import Mathlib
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.StarInvMulVecDotProductMulVecInvMulVec

open Matrix
open scoped ComplexOrder Matrix MatrixOrder

namespace GlobalTheory.CompMetric

theorem inv_sub_posSemidef {n : ℕ} {A B : Matrix (Fin n) (Fin n) ℂ} {c : ℝ} (hc : 0 < c)
    (hA : A.PosDef) (hB : B.PosDef) (h : (((c : ℂ) • B) - A).PosSemidef) :
    (((c : ℂ) • A⁻¹) - B⁻¹).PosSemidef := by
  have h' : A ≤ c • B := by
    rw [Matrix.le_iff, RCLike.real_smul_eq_coe_smul (K := ℂ)]; exact h
  have h1 := GlobalTheory.inv_le_inv_of_posDef_of_le hA h'
  rw [GlobalTheory.inv_real_smul_of_posDef hB hc.ne'] at h1
  have h2 := (Matrix.le_iff.mp h1).smul hc.le
  rw [smul_sub, smul_smul, mul_inv_cancel₀ hc.ne', one_smul,
    RCLike.real_smul_eq_coe_smul (K := ℂ)] at h2
  exact h2

end GlobalTheory.CompMetric
