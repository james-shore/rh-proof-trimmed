import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsBaseEqChain
import Development.AbelianVarietyTheory.Definitions.Divisors.FaithfulSMulAlgClosure
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.PrismaticDieudonnePerfd

open CategoryTheory Limits AlgebraicGeometry IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.DV Formalism.L2.Pj Formalism.L2.Geo
open GlobalTheory.QCoh GlobalTheory.CechPic GlobalTheory.Vert GlobalTheory.LocM GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.Mean4O GlobalTheory.MixedLocalChains GlobalTheory.ChainPts
open GlobalTheory.Twist (resM)
open Formalism.MainNotions.DIV.Cons (intO)

set_option autoImplicit false
set_option synthInstance.maxHeartbeats 400000

noncomputable section

namespace GlobalTheory.ChainPts.PullHT

open GlobalTheory.VB (IsFrame IsVB)

section EPres

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {B B₁ : Vert.Model O} {Λ : Type} [CommRing Λ]

abbrev pullA (f : B.X ⟶ B₁.X) : AM B₁ Λ ⥤ AM B Λ := (Scheme.Modules.pullback f).mapAction Λ

end EPres

end GlobalTheory.ChainPts.PullHT

end
