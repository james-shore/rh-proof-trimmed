import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.GrNormCompCast
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLengthOneChainIdentityEmbedding
import Development.AbelianVarietyTheory.Definitions.Divisors.GlobalHeightBoundIffAtGoodPrimes
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.IsDiscreteValuationRingAndFiniteResidueFieldValu

set_option autoImplicit false
set_option synthInstance.maxHeartbeats 400000

noncomputable section

open CategoryTheory Limits AlgebraicGeometry IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.DV Formalism.L2.Pj Formalism.L2.Geo
open GlobalTheory.QCoh GlobalTheory.CechPic GlobalTheory.Vert GlobalTheory.LocM GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.Mean4O GlobalTheory.MixedLocalChains

namespace GlobalTheory.ChainPts

section Eq

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (p : ℕ) [Fact p.Prime] [CharZero O]
  [CharP (ResidueField O) p] (B : Vert.Model O) (Λ : Type) [CommRing Λ]

abbrev AM : Type 1 := Action B.X.Modules Λ

variable {B Λ}

end Eq

namespace Examples₂

open GlobalTheory.MixedLocalChains.ChainOne

section Gen

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {B : Vert.Model O} {Λ : Type} [CommRing Λ]
  (χ : Λ →+* ℤ)

def mkA (F : B.X.Modules) : AM B Λ := ⟨F, ((Int.castRingHom (End F)).comp χ).toMonoidHom⟩

variable {χ}

variable (p : ℕ) [Fact p.Prime]

end Gen

section Base

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {Λ : Type} [CommRing Λ] (χ : Λ →+* ℤ)

abbrev sA (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] : AM (Model.base O) Λ := mkA χ (sO O)

variable (p : ℕ) [Fact p.Prime] [CharZero O] [CharP (ResidueField O) p]

end Base

end Examples₂

end GlobalTheory.ChainPts

end
