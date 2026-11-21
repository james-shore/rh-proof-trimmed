import Mathlib
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.SiegelReframe
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodMapFlatDerivative

open Matrix MeasureTheory GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe
open scoped Real ContDiff

noncomputable section

namespace GlobalTheory.FibreInt

theorem flatForm_apply {g : ℕ} {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E]
    (τ : E → Matrix (Fin g) (Fin g) ℂ) (P u w : Pt E g) :
    om0 τ P ![u, w] = riem (dflat τ P u) (dflat τ P w) := rfl

end GlobalTheory.FibreInt
