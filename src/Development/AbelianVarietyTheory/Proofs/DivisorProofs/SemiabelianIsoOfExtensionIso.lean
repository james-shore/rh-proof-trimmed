import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OfRingHom
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.NonemptyGtCoordOfIsGt
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsTorusAndQuotientHom

set_option autoImplicit false

noncomputable section

open CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
attribute [local instance] SplitExt.free SplitExt.finite

namespace GlobalTheory.ExtUnique

variable {S : Scheme.{0}} {G G' B : Over S}

section Frames

variable {κ : Type} (N : κ → LB B.left)

abbrev Frames (q : G ⟶ B) : Type := ∀ k j, Γ(G.left, q.left ⁻¹ᵁ (N k).U j)ˣ

variable {N} {q : G ⟶ B} {q' : G' ⟶ B}

def Rel (s : Frames N q) (s' : Frames N q') {Z : Over S} (g : Z ⟶ G) (g' : Z ⟶ G') : Prop :=
  g ≫ q = g' ≫ q' ∧ ∀ k (W : Scheme.{0}) (r : W ⟶ Z.left) (w : W) j, (g ≫ q).left (r w) ∈ (N k).U j →
    gm (r ≫ g.left) w _ (s k j) = gm (r ≫ g'.left) w _ (s' k j)

variable {s : Frames N q} {s' : Frames N q'}

theorem Rel.symm {Z : Over S} {g : Z ⟶ G} {g' : Z ⟶ G'} (h : Rel s s' g g') : Rel s' s g' g :=
  ⟨h.1.symm, fun k W r w j hj => (h.2 k W r w j (h.1 ▸ hj)).symm⟩

theorem Rel.comp {Z Z' : Over S} (f : Z' ⟶ Z) {g : Z ⟶ G} {g' : Z ⟶ G'} (h : Rel s s' g g') :
    Rel s s' (f ≫ g) (f ≫ g') :=
  ⟨by rw [Category.assoc, h.1, Category.assoc], fun k W r w j hj => by
    have := h.2 k W (r ≫ f.left) w j hj
    rwa [Category.assoc, Category.assoc] at this⟩

variable [GrpObj G'] {X : Type} [AddCommGroup X]

variable {i : splitTorus S X ⟶ G'} {b : Module.Basis κ ℤ X}

end Frames

end GlobalTheory.ExtUnique
