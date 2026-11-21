import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameAtApply
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DbarAddVectorScalar
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DBaseApply

open Matrix MeasureTheory Set Filter Topology GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe GlobalTheory.TorsionForm GlobalTheory.TorsionForm.Gauge GlobalTheory.TorsionForm.Fibrewise
open scoped ContDiff

set_option autoImplicit false
noncomputable section
namespace GlobalTheory.TorsionForm.Fibrewise.SqZero
variable {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E] {g n : ℕ}

theorem d_one_zero_eq_dEps_neg_I (f : E → ℂ) (b y : E) :
    d10 f b y = (1/2 : ℂ) * (fderiv ℝ f b y - Complex.I * fderiv ℝ f b (Complex.I • y)) := rfl

theorem d_zero_one_eq_dEps_I (f : E → ℂ) (b y : E) :
    d01 f b y = (1/2 : ℂ) * (fderiv ℝ f b y + Complex.I * fderiv ℝ f b (Complex.I • y)) := rfl

end GlobalTheory.TorsionForm.Fibrewise.SqZero
