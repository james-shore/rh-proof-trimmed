import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DbarEqZeroOfHolomorphic

set_option autoImplicit false
noncomputable section
open Matrix GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe GlobalTheory.TorsionForm GlobalTheory.TorsionForm.FlatAcyc
open scoped Real ContDiff

namespace GlobalTheory.TorsionForm.FlatAcyc

section Second
variable {g : ℕ} {W : Type} [NormedAddCommGroup W] [NormedSpace ℝ W] [Module ℂ W]
  [SMulCommClass ℝ ℂ W] [ContinuousConstSMul ℂ W]

theorem dbar_eq_half_fderiv (F : (Fin g → ℂ) → W) (z v : Fin g → ℂ) :
    d01 F z v = (1 / 2 : ℂ) • (fderiv ℝ F z v + Complex.I • fderiv ℝ F z (Complex.I • v)) := rfl

end Second

end GlobalTheory.TorsionForm.FlatAcyc
