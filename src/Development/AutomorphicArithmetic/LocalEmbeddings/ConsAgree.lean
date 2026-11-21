import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsEqnIffGeneratesAtInv

set_option autoImplicit false

noncomputable section

open CategoryTheory AlgebraicGeometry IsLocalRing
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.Cartier

namespace GlobalTheory.ConsGeo

abbrev gpt (X : Scheme.{0}) [IsIntegral X] : Sp X.functionField ⟶ X := X.fromSpecStalk (genericPoint X)

def embDeg {K L : Type} [Field K] [Field L] (θ : K →+* L) : ℕ := letI := θ.toAlgebra; Module.finrank K L

end GlobalTheory.ConsGeo

end
