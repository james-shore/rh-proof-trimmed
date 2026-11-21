import Mathlib
import Development.AbelianVarietyTheory.Definitions.Foundations.MatrixMeasurableSpace
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsSubquotientDetRepParInd

open ValuativeRel Topology Matrix

noncomputable section

namespace GlobalTheory.RowCut

lemma mem_SB_iff {Z : Type} [TopologicalSpace Z] (f : Z → ℂ) :
    f ∈ GlobalTheory.SplitWeil.SB Z ↔ IsLocallyConstant f ∧ HasCompactSupport f := Iff.rfl

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
variable {n m : ℕ}

variable {Y : Type} [TopologicalSpace Y]

end GlobalTheory.RowCut
