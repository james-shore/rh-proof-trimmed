import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCochFrame
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsBlockMetricDiagForm
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.LeftEqIffLieVecSmul
import Formalism.LocalToGlobal.ProjectiveLattices.SatLeaves
open AlgebraicGeometry CategoryTheory Limits NumberField MonoidalCategory CartesianMonoidalCategory MonObj Matrix Topology
open Formalism.BasicNotions ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.PullbackSections ReciprocityTheory.ChartRestriction.G.Pdiv ReciprocityTheory.GeometryOfNumbersTheory
open scoped CategoryTheory.Obj ComplexOrder
open GlobalTheory GlobalTheory.CubeFib GlobalTheory.LieMet GlobalTheory.LieHt GlobalTheory.LocM.Frm GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.ShFam.Hor GlobalTheory.ShFam.Hor.LogCh GlobalTheory.Toroidal GlobalTheory.CovTop GlobalTheory.CovHt GlobalTheory.BdFib
attribute [local instance] Over.cartesianMonoidalCategory

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.KerAb

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {X : Scheme.{0}}
  {t : SAB H X} {k : Type} [Field k] {x : Sp k ⟶ X} {φ : Fib k} {m : CubeMap φ.G t.G}

theorem isTanAtG_push (hF : FibAt t x φ m) {w : epsR k ⟶ φ.G} (hw : IsTangent w) :
    Formalism.L2.Pj.IsTanAtG t x (w.left ≫ m.F) := by
  refine ⟨?_, ?_⟩
  · rw [Category.assoc, hF.1.1.w, ← Category.assoc, Over.w w]
    rfl
  · have h1 := Formalism.L2.Pj.grpPull_one hF.1 (𝟙_ (Over (Sp k)))
    have h2 : (𝟙_ (Over (Sp k))).hom ≫ x = x := Category.id_comp x
    rw [← Category.assoc, hw]
    rw [h2] at h1
    rw [h1]
    congr 1

theorem isTangent_comp {G G' : Over (Sp k)} [GrpObj G] [GrpObj G'] (f : G ⟶ G') [IsMonHom f] {w : epsR k ⟶ G}
    (hw : IsTangent w) : IsTangent (w ≫ f) := by
  unfold IsTangent at hw ⊢
  rw [Over.comp_left, ← Category.assoc, hw, ← Over.comp_left, IsMonHom.one_hom]

def torL (hF : FibAt t x φ m) : (φ.X →+ k) →ₗ[k] TanM x t.G :=
  haveI := φ.i_hom
  { toFun := fun c => tanOf (isTanAtG_push hF (isTangent_comp φ.i (GlobalTheory.Diag.isTangent_lieVec c)))
    map_add' := fun c d => tan_ext (by
      rw [left_tanOf, GlobalTheory.Diag.lieVec_add, MonObj.mul_comp, tv_add]
      exact (hF.1.2 (epsR k) _ _ _ _ rfl rfl).symm)
    map_smul' := fun a c => tan_ext (by
      rw [left_tanOf, Over.comp_left, GlobalTheory.Diag.lieVec_smul_left, Category.assoc, Category.assoc]
      rfl) }

theorem left_torL (hF : FibAt t x φ m) (c : φ.X →+ k) :
    (tv (torL hF c)).left = (GlobalTheory.Diag.lieVec c ≫ φ.i).left ≫ m.F := rfl

end GlobalTheory.KerAb

end
