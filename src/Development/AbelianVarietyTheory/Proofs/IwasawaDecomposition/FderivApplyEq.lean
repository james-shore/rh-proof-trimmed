import Mathlib
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BetaLowerAndSmul

open Formalism.DegreeFormula GlobalTheory.HodgeDomain
open scoped ContDiff

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.HessForm

variable {ι : Type} [Fintype ι] {p q : ℕ}

abbrev Fl (ι : Type) (p q : ℕ) : Type := ι × Fin p × Fin q → ℂ

theorem flat_add (ξ ζ : Pt ι p q) : flat (ξ + ζ) = flat ξ + flat ζ := rfl

theorem flat_smul (c : ℂ) (ξ : Pt ι p q) :
    flat (c • ξ) = c.re • flat ξ + c.im • flat (Complex.I • ξ) := by
  funext x
  simp only [flat, Pi.add_apply, Pi.smul_apply, Matrix.smul_apply, smul_eq_mul, Complex.real_smul]
  conv_lhs => rw [← Complex.re_add_im c]
  ring

theorem flat_I_smul (c : ℂ) (ξ : Pt ι p q) :
    flat (Complex.I • c • ξ) = c.re • flat (Complex.I • ξ) - c.im • flat ξ := by
  funext x
  simp only [flat, Pi.sub_apply, Pi.smul_apply, Matrix.smul_apply, smul_eq_mul, Complex.real_smul]
  conv_lhs => rw [← Complex.re_add_im c]
  linear_combination (c.im * ξ x.1 x.2.1 x.2.2) * Complex.I_mul_I

def fn (B : Fl ι p q →L[ℝ] Fl ι p q →L[ℝ] ℝ) (ξ ζ : Pt ι p q) : ℂ :=
  (((B (flat ξ) (flat ζ) + B (flat (Complex.I • ξ)) (flat (Complex.I • ζ)) : ℝ) : ℂ) +
    Complex.I * ((B (flat ξ) (flat (Complex.I • ζ)) - B (flat (Complex.I • ξ)) (flat ζ) : ℝ) : ℂ)) /
      (4 * Real.pi)

def sesq (B : Fl ι p q →L[ℝ] Fl ι p q →L[ℝ] ℝ) : Pt ι p q →ₗ[ℂ] Pt ι p q →ₗ⋆[ℂ] ℂ :=
  LinearMap.mk₂'ₛₗ (RingHom.id ℂ) (starRingEnd ℂ) (fn B)
    (fun ξ ξ' ζ => by
      simp only [fn, smul_add, flat_add, map_add, ContinuousLinearMap.add_apply]
      push_cast; ring)
    (fun c ξ ζ => by
      simp only [fn]
      rw [flat_I_smul c ξ, flat_smul c ξ]
      simp only [map_add, map_sub, map_smul, ContinuousLinearMap.add_apply,
        ContinuousLinearMap.sub_apply, ContinuousLinearMap.smul_apply, smul_eq_mul, RingHom.id_apply]
      conv_rhs => rw [← Complex.re_add_im c]
      push_cast
      ring_nf; simp only [Complex.I_sq]; ring)
    (fun ξ ζ ζ' => by
      simp only [fn, smul_add, flat_add, map_add]
      push_cast; ring)
    (fun c ξ ζ => by
      simp only [fn]
      rw [flat_I_smul c ζ, flat_smul c ζ]
      simp only [map_add, map_sub, map_smul, smul_eq_mul]
      conv_rhs => rw [← Complex.re_add_im c]
      simp only [map_add, map_mul, Complex.conj_ofReal, Complex.conj_I]
      push_cast
      ring_nf; simp only [Complex.I_sq]; ring)

end GlobalTheory.HessForm

namespace GlobalTheory.HessForm

variable {ι : Type} [Fintype ι] {p q : ℕ}

theorem sesq_apply (B : Fl ι p q →L[ℝ] Fl ι p q →L[ℝ] ℝ) (ξ ζ : Pt ι p q) : sesq B ξ ζ = fn B ξ ζ := rfl

end GlobalTheory.HessForm
