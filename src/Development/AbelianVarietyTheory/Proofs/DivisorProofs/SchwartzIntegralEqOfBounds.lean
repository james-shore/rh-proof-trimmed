import Mathlib
open MeasureTheory

namespace GlobalTheory.SchwartzFormIntegral

open scoped BoundedContinuousFunction

variable {D : Type} [NormedAddCommGroup D] [NormedSpace ℝ D]

noncomputable def weightedDeriv (m n : ℕ) (φ : SchwartzMap D ℂ) :
    D →ᵇ ContinuousMultilinearMap ℝ (fun _ : Fin n => D) ℂ :=
  BoundedContinuousFunction.ofNormedAddCommGroup
    (fun x => (‖x‖ ^ m) • iteratedFDeriv ℝ n φ x)
    ((continuous_norm.pow m).smul ((φ.smooth ⊤).continuous_iteratedFDeriv (mod_cast le_top)))
    (SchwartzMap.seminorm ℂ m n φ)
    (fun x => by
      rw [norm_smul, Real.norm_of_nonneg (by positivity)]
      exact SchwartzMap.le_seminorm ℂ m n φ x)

lemma weightedDeriv_apply (m n : ℕ) (φ : SchwartzMap D ℂ) (x : D) :
    weightedDeriv m n φ x = (‖x‖ ^ m) • iteratedFDeriv ℝ n φ x := rfl

end GlobalTheory.SchwartzFormIntegral
