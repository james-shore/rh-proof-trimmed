import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenImmersionChart
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsEquivOfIsGrpPullback
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFrameOfProjective
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDualPullback

set_option autoImplicit false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry NumberField TopologicalSpace MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.PullbackSections Formalism.L2.Pj
open GlobalTheory.VB GlobalTheory.LieVB GlobalTheory.LieMet GlobalTheory.LocM GlobalTheory.LocM.TanPair GlobalTheory.DualPull
open GlobalTheory.Twist (resM resM_self)
open ReciprocityTheory.ChartRestriction.G.Pdiv (specO ptMap LieG dualScale)
open scoped CategoryTheory.Obj

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.TanSec.Frame

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {X : Scheme.{0}}
  {t : SAB H X} {R : Type} [CommRing R] {x : Sp R ⟶ X}

def form (v : TanM x t.G) : Γ(dual ((Scheme.Modules.pullback x).obj (omega t.G)), ⊤) :=
  (homGlobalEquiv _ _).symm (tanForm t (isTan_tv v))

end GlobalTheory.TanSec.Frame

namespace GlobalTheory.TanSec.Frame

end GlobalTheory.TanSec.Frame
