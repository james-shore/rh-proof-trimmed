import Mathlib
import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsHodgeLine
import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Proportional
import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LaurentCechNerveLevelSpecTensorPower

open MvPolynomial

theorem PositivityTheory.Xgn.polynomial_eval_complex_conjugate : ∀ (σ : Type) (s : MvPolynomial σ ℤ) (z : σ → ℂ), eval (fun p => (starRingEnd ℂ) (z p)) (MvPolynomial.map (Int.castRingHom ℂ) s) = (starRingEnd ℂ) (eval z (MvPolynomial.map (Int.castRingHom ℂ) s)) := by
  intro σ s z
  rw [MvPolynomial.eval_map, MvPolynomial.eval_map, MvPolynomial.eval₂_comp_left]
  congr 1
  exact RingHom.ext_int _ _
