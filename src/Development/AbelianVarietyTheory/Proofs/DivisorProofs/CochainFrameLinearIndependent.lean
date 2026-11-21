import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCochFrame
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusLieAlgebraCoordinateLinearEquiv
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsBlockMetricDiagForm
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabPull
open AlgebraicGeometry CategoryTheory Limits NumberField MonoidalCategory CartesianMonoidalCategory MonObj Matrix Topology
open Formalism.BasicNotions ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.PullbackSections ReciprocityTheory.ChartRestriction.G.Pdiv ReciprocityTheory.GeometryOfNumbersTheory
open scoped CategoryTheory.Obj ComplexOrder
open GlobalTheory GlobalTheory.CubeFib GlobalTheory.LieMet GlobalTheory.LieHt GlobalTheory.LocM.Frm GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.ShFam.Hor GlobalTheory.ShFam.Hor.LogCh GlobalTheory.Toroidal GlobalTheory.CovTop GlobalTheory.CovHt GlobalTheory.BdFib
attribute [local instance] Over.cartesianMonoidalCategory
open Formalism.L2.Pj
open GlobalTheory.IndefiniteRowSideFullHecke.LieAlgebraMaps (torus lieAdd lieCoord)
open ReciprocityTheory.ChartRestriction.G.Pdiv.AvDefs (lieScale)

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.BdFib

section CochFrame

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {X : Scheme.{0}} (t : SAB H X)
  {k : Type} [CommRing k] (x : Sp k ⟶ X)

def fibPush (y : specO k (DualNumber k) ⟶ (Over.pullback x).obj t.G) : overAt x (DualNumber k) ⟶ t.G :=
  pushPt (isGrpPullback_pullback t.G x).1.w y

theorem fibPush_left (y : specO k (DualNumber k) ⟶ (Over.pullback x).obj t.G) :
    (fibPush t x y).left = y.left ≫ pullback.fst t.G.hom x := rfl

end CochFrame

end GlobalTheory.BdFib

end
