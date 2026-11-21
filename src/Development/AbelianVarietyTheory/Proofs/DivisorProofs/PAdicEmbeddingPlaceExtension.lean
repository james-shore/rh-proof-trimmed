import Mathlib
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IoOfLeOneIff

open NumberField IsDedekindDomain GlobalTheory.TrueGeo

namespace GlobalTheory.TrueGeo.ExtOfEmb

variable {p : ℕ} [Fact p.Prime]

theorem norm_le_one_of_isIntegral_int {x : ℂ_[p]} (hx : IsIntegral ℤ x) : ‖x‖ ≤ 1 := by
  have h1 : IsIntegral (NormedField.valuation (K := ℂ_[p])).integer x := hx.tower_top
  have h2 := (Valuation.integer.integers (NormedField.valuation (K := ℂ_[p]))).mem_of_integral h1
  have h3 : ‖x‖₊ ≤ 1 := h2
  exact_mod_cast h3

section Field

variable {F : Type} [Field F] [NumberField F]

theorem norm_int_le (φ : F →+* ℂ_[p]) (y : 𝓞 F) : ‖φ (y : F)‖ ≤ 1 :=
  norm_le_one_of_isIntegral_int (by
    convert map_isIntegral_int φ (RingOfIntegers.isIntegral_coe y)
    exact Subsingleton.elim _ _)

def smallIdeal (φ : F →+* ℂ_[p]) : Ideal (𝓞 F) where
  carrier := {y | ‖φ (y : F)‖ < 1}
  add_mem' := by
    intro a b ha hb
    simp only [Set.mem_setOf_eq] at ha hb ⊢
    have : φ ((a + b : 𝓞 F) : F) = φ (a : F) + φ (b : F) := by simp
    rw [this]
    exact lt_of_le_of_lt (IsUltrametricDist.norm_add_le_max _ _) (max_lt ha hb)
  zero_mem' := by simp
  smul_mem' := by
    intro c a ha
    simp only [Set.mem_setOf_eq] at ha ⊢
    have : φ ((c • a : 𝓞 F) : F) = φ (c : F) * φ (a : F) := by simp
    rw [this, norm_mul]
    have h1 := norm_int_le φ c
    nlinarith [norm_nonneg (φ (c : F)), norm_nonneg (φ (a : F))]

theorem mem_smallIdeal (φ : F →+* ℂ_[p]) (y : 𝓞 F) : y ∈ smallIdeal φ ↔ ‖φ (y : F)‖ < 1 := Iff.rfl

noncomputable def normAbv (φ : F →+* ℂ_[p]) : AbsoluteValue F ℝ :=
  (NormedField.toAbsoluteValue ℂ_[p]).comp φ.injective

theorem normAbv_apply (φ : F →+* ℂ_[p]) (x : F) : normAbv φ x = ‖φ x‖ := rfl

end Field

section Closure

variable {K : Type} [Field K]

noncomputable def powAbv (ι : K →+* ℂ_[p]) (c : ℝ) (hc : 0 < c) : AbsoluteValue K ℝ where
  toFun x := ‖ι x‖ ^ c
  map_mul' x y := by
    simp only [map_mul, norm_mul]
    exact Real.mul_rpow (norm_nonneg _) (norm_nonneg _)
  nonneg' x := Real.rpow_nonneg (norm_nonneg _) _
  eq_zero' x := by
    rw [Real.rpow_eq_zero (norm_nonneg _) hc.ne', norm_eq_zero, map_eq_zero]
  add_le' x y := by
    rw [map_add]
    calc ‖ι x + ι y‖ ^ c ≤ (max ‖ι x‖ ‖ι y‖) ^ c :=
          Real.rpow_le_rpow (norm_nonneg _) (IsUltrametricDist.norm_add_le_max _ _) hc.le
      _ ≤ ‖ι x‖ ^ c + ‖ι y‖ ^ c := by
        rcases le_total ‖ι x‖ ‖ι y‖ with h | h
        · rw [max_eq_right h]; linarith [Real.rpow_nonneg (norm_nonneg (ι x)) c]
        · rw [max_eq_left h]; linarith [Real.rpow_nonneg (norm_nonneg (ι y)) c]

theorem powAbv_apply (ι : K →+* ℂ_[p]) (c : ℝ) (hc : 0 < c) (x : K) : powAbv ι c hc x = ‖ι x‖ ^ c := rfl

def ball (ι : K →+* ℂ_[p]) : ValuationSubring K where
  carrier := {z | ‖ι z‖ ≤ 1}
  mul_mem' {x y} hx hy := by
    simp only [Set.mem_setOf_eq, map_mul, norm_mul] at *
    exact mul_le_one₀ hx (norm_nonneg _) hy
  one_mem' := by simp
  add_mem' {x y} hx hy := by
    simp only [Set.mem_setOf_eq, map_add] at *
    exact (IsUltrametricDist.norm_add_le_max _ _).trans (max_le hx hy)
  zero_mem' := by simp
  neg_mem' {x} hx := by simpa using hx
  mem_or_inv_mem' x := by
    simp only [Set.mem_setOf_eq, map_inv₀, norm_inv]
    rcases le_total ‖ι x‖ 1 with h | h
    · exact .inl h
    · exact .inr (inv_le_one_of_one_le₀ h)

theorem mem_ball (ι : K →+* ℂ_[p]) (z : K) : z ∈ ball ι ↔ ‖ι z‖ ≤ 1 := Iff.rfl

end Closure

end GlobalTheory.TrueGeo.ExtOfEmb
