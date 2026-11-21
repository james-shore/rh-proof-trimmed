import Mathlib
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SvalUpSec
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllSixAbelianSchemeLawsHold

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory NumberField IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.DVR
open GlobalTheory.LN GlobalTheory.TorRef GlobalTheory.IntegralCombination
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section
namespace GlobalTheory.ClosedIndep
open GlobalTheory.FieldBaseChange

variable {X Y Z : Scheme.{0}}

theorem Good.comp {L : LB X} {Y' : Scheme.{0}} (ψ : Z ⟶ Y') {y : Z} {J : (Z ⟶ X) → L.ι} (hJ : Good L y J) :
    Good L (ψ y) (fun χ => J (ψ ≫ χ)) := fun χ => hJ (ψ ≫ χ)

end GlobalTheory.ClosedIndep

