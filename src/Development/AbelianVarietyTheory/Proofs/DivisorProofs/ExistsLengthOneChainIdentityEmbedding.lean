import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.GlobalHeightBoundIffAtGoodPrimes
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFrobCokernelSmulHomPow

set_option autoImplicit false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry IsLocalRing
open GlobalTheory GlobalTheory.Vert GlobalTheory.MixedLocalChains

namespace GlobalTheory.MixedLocalChains.ChainOne

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]

abbrev sO (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] :
    (Model.base O).X.Modules := GlobalTheory.QCoh.structureModule (Model.base O).X

end GlobalTheory.MixedLocalChains.ChainOne
