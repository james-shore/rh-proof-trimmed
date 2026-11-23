import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.IsBasisOfBot
import ReciprocityTheory.DualLattices.SqZeroOfSpan

noncomputable section

open GlobalTheory.Sandwich GlobalTheory.IndefiniteRowSideFullHecke.SandwichMaps GlobalTheory.DetInv Matrix TensorProduct

namespace GlobalTheory.DetInv

section SlopeTestRemainingChoices

variable {O : Type} [CommRing O] {C : Type} [Field C] [Algebra O C]

theorem incl_apply' (h : ℕ) (l : Fin h → O) : incl C h l = fun i => algebraMap O C (l i) := rfl

end SlopeTestRemainingChoices

end GlobalTheory.DetInv
