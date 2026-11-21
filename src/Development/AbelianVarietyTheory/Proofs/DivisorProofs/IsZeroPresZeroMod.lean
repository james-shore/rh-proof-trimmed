import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.GlobalHeightBoundIffAtGoodPrimes
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFrobCokernelSmulHomPow

set_option autoImplicit false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry IsLocalRing
open GlobalTheory GlobalTheory.Vert GlobalTheory.MixedLocalChains

namespace GlobalTheory.FrobFilt

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (p : ℕ) [Fact p.Prime]
  (B : GlobalTheory.Vert.Model O)

def frob : B.X.Modules ⥤ B.X.Modules :=
  Scheme.Modules.pullback (GlobalTheory.SS.FrobField.absFrob _ p 1 Fact.out
      (FrobQuot.natCast_eq_zero_fibI p B) ≫ (fibI p B).subschemeι) ⋙
    Scheme.Modules.pushforward (fibI p B).subschemeι

instance : (frob p B).Additive := inferInstanceAs ((_ ⋙ _).Additive)

variable {B}

end GlobalTheory.FrobFilt
