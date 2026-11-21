import Mathlib
import Development.AutomorphicArithmetic.DivisorFrames.GaussianFourierConjPower

open MeasureTheory

private lemma rad_int (p : ℝ) (hp : -2 < p) :
    Integrable (fun s : ℂ => ‖s‖ ^ p * Real.exp (-Real.pi * ‖s‖ ^ 2)) := by
  rw [integrable_fun_norm_addHaar (volume : Measure ℂ)
    (f := fun r : ℝ => r ^ p * Real.exp (-Real.pi * r ^ 2))]
  have h := integrableOn_rpow_mul_exp_neg_mul_sq Real.pi_pos (s := p + 1) (by linarith)
  refine h.congr_fun (fun r hr => ?_) measurableSet_Ioi
  have hr' : (0 : ℝ) < r := hr
  simp only [Complex.finrank_real_complex, smul_eq_mul]
  rw [Real.rpow_add_one hr'.ne']
  norm_num
  ring

private lemma nat_int (m : ℕ) :
    Integrable (fun s : ℂ => ‖s‖ ^ m * Real.exp (-Real.pi * ‖s‖ ^ 2)) := by
  have := rad_int (m : ℝ) (by have : (0 : ℝ) ≤ m := Nat.cast_nonneg m; linarith)
  simpa only [Real.rpow_natCast] using this

private noncomputable def gk (k : ℕ) (s : ℂ) : ℂ :=
  (starRingEnd ℂ s) ^ k * Complex.exp (-(Real.pi : ℂ) * (‖s‖ : ℂ) ^ 2)

private lemma rad_pos (m : ℕ) :
    0 < ∫ s : ℂ, ‖s‖ ^ m * Real.exp (-Real.pi * ‖s‖ ^ 2) := by
  refine integral_pos_of_integrable_nonneg_nonzero (x := 1) (by fun_prop) (nat_int m)
    (fun s => by positivity) ?_
  have := Real.exp_pos (-Real.pi)
  simp

