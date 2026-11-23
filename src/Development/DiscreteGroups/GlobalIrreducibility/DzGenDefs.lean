import Mathlib
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsSubquotientDetRepParInd

noncomputable section

open GlobalTheory.PRep GlobalTheory.SmGL

namespace DiscreteGroups.sglob.DzType

def eOne (m : ℕ) : (Σ _ : Fin m, Fin 1) ≃ Fin m := Equiv.sigmaUnique (Fin m) fun _ => Fin 1

end DiscreteGroups.sglob.DzType
