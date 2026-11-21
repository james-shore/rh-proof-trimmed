import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.LeTwoMulOfForallScale

open GlobalTheory
open scoped ContDiff

noncomputable section

namespace GlobalTheory

def imForm {g : ℕ} (H : Matrix (Fin g) (Fin g) ℂ) :
    (Fin g → ℂ) →ₗ[ℝ] (Fin g → ℂ) →ₗ[ℝ] ℝ :=
  LinearMap.mk₂ ℝ (fun v w => (HermFrame.form H v w).im)
    (fun v v' w => by simp [HermFrame.form_add_left])
    (fun c v w => by
      rw [← Complex.coe_smul, HermFrame.form_smul_left]; simp)
    (fun v w w' => by simp [HermFrame.form_add_right])
    (fun c v w => by
      rw [← Complex.coe_smul, HermFrame.form_smul_right]; simp)

theorem imForm_apply {g : ℕ} (H : Matrix (Fin g) (Fin g) ℂ) (v w : Fin g → ℂ) :
    imForm H v w = (HermFrame.form H v w).im := rfl

end GlobalTheory
