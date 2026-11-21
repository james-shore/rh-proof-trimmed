import Mathlib

open NumberField IsDedekindDomain

namespace GlobalTheory.IndefiniteRowSideFullHecke.RelativeDifferentValues

def hostGens (e q₁ d : ℕ) : Set ℂ :=
  {Complex.exp (2 * Real.pi * Complex.I / ((4 * 2 ^ e : ℕ) : ℂ)) +
      (Complex.exp (2 * Real.pi * Complex.I / ((4 * 2 ^ e : ℕ) : ℂ)))⁻¹,
    Complex.I * (Real.sqrt q₁ : ℂ), Complex.I * (Real.sqrt d : ℂ)}

noncomputable def hostField (e q₁ d : ℕ) : IntermediateField ℚ ℂ :=
  IntermediateField.adjoin ℚ (hostGens e q₁ d)

theorem isIntegral_I_mul_sqrt (m : ℕ) : IsIntegral ℚ (Complex.I * (Real.sqrt m : ℂ)) := by
  refine IsIntegral.of_pow (n := 2) (by norm_num) ?_
  have : (Complex.I * (Real.sqrt m : ℂ)) ^ 2 = algebraMap ℚ ℂ (-(m : ℚ)) := by
    rw [mul_pow, Complex.I_sq, ← Complex.ofReal_pow, Real.sq_sqrt (Nat.cast_nonneg m)]
    simp
  rw [this]
  exact isIntegral_algebraMap

instance (e q₁ d : ℕ) : NumberField (hostField e q₁ d) where
  to_finiteDimensional := by
    have : Finite (hostGens e q₁ d) := by
      unfold hostGens; infer_instance
    refine IntermediateField.finiteDimensional_adjoin ?_
    have hz : IsIntegral ℚ (Complex.exp (2 * Real.pi * Complex.I / ((4 * 2 ^ e : ℕ) : ℂ))) :=
      ((Complex.isPrimitiveRoot_exp (4 * 2 ^ e) (by positivity)).isIntegral
        (by positivity)).tower_top
    rintro x (rfl | rfl | rfl)
    · exact hz.add hz.inv
    · exact isIntegral_I_mul_sqrt _
    · exact isIntegral_I_mul_sqrt _

end GlobalTheory.IndefiniteRowSideFullHecke.RelativeDifferentValues
