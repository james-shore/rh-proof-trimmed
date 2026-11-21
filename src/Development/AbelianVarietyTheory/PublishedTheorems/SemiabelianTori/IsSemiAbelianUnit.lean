import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.SemiabelianTori.GeometricallyConnectedSplitTorusAff
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.LocallyOfFinitePresentationDiagMap
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.IsAbelianSchemeAndExtendOfGenericHoms

noncomputable section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open scoped CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor

namespace GlobalTheory.Published.SemiAbelianHomExtension.Edge

open GlobalTheory.ExtUnique

def Concl {S : Scheme.{0}} (U : S.Opens) (G H : Over S) [GrpObj G] [GrpObj H] : Prop :=
  ∀ f : (Over.pullback U.ι).obj G ⟶ (Over.pullback U.ι).obj H, IsMonHom f →
    ∃! F : G ⟶ H, IsMonHom F ∧ (Over.pullback U.ι).map F = f

theorem iff_concl : SemiAbelianHomExtension ↔
    ∀ (S : Scheme.{0}) [AlgebraicGeometry.IsNoetherian S], ReciprocityTheory.ChartRestriction.G.Geo.Tor.IsNormalScheme S →
      ∀ (U : S.Opens), Dense (U : Set S) → ∀ (G H : Over S) [GrpObj G] [GrpObj H],
        IsSemiAbelian G → IsSemiAbelian H → Concl U G H := Iff.rfl

end GlobalTheory.Published.SemiAbelianHomExtension.Edge
