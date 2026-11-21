import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasLatticesComplete
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MapDegEqPowMulCard
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueOfIsAdicColimit
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.HenselianLocalRingOfIsAdicComplete
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.IsFiniteFlatTorsionOfIsGt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoOfBijectiveAffinePts

set_option autoImplicit false

open CategoryTheory AlgebraicGeometry Limits MonoidalCategory CartesianMonoidalCategory MonObj TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.DeRham GlobalTheory.PDiv GlobalTheory.PDivGroup GlobalTheory.BadPt GlobalTheory.AdicColimit IsLocalRing
open ReciprocityTheory.ChartRestriction.G.Out (thick thickObj thickMap jK)
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.FinitePartTower

section Formal

variable {R : Type} [CommRing R] {I : Ideal R} {G Gt : Over (Sp R)} {H : ∀ e : ℕ, Over (Sp (R ⧸ I ^ (e + 1)))}
  (F : ∀ e, (H e).left ⟶ G.left) (Ft : ∀ e, (H e).left ⟶ Gt.left)

def Agree {T : Over (Sp R)} (x : T ⟶ G) (y : T ⟶ Gt) : Prop :=
  ∀ (e : ℕ) (Y : Scheme.{0}) (k : Y ⟶ T.left) (s : Y ⟶ Sp (R ⧸ I ^ (e + 1))), k ≫ T.hom = s ≫ thick R I e →
    ∃ a : Y ⟶ (H e).left, a ≫ F e = k ≫ x.left ∧ a ≫ Ft e = k ≫ y.left

variable {F Ft}

theorem mono_of_isPullback {e : ℕ} (h : IsPullback (F e) (H e).hom G.hom (thick R I e)) : Mono (F e) :=
  MorphismProperty.of_isPullback (P := .monomorphisms _) h.flip (mono_thick I e)

theorem Agree.symm {T : Over (Sp R)} {x : T ⟶ G} {y : T ⟶ Gt} (h : Agree F Ft x y) : Agree Ft F y x :=
  fun e Y k s w => (h e Y k s w).imp fun _ h => h.symm

theorem Agree.comp {T T' : Over (Sp R)} {x : T ⟶ G} {y : T ⟶ Gt} (h : Agree F Ft x y) (r : T' ⟶ T) :
    Agree F Ft (r ≫ x) (r ≫ y) := fun e Y k s w => by
  obtain ⟨a, h₁, h₂⟩ := h e Y (k ≫ r.left) s (by rw [Category.assoc, Over.w, w])
  exact ⟨a, h₁.trans (Category.assoc _ _ _), h₂.trans (Category.assoc _ _ _)⟩

theorem Agree.unique (hF : ∀ e, IsPullback (F e) (H e).hom G.hom (thick R I e)) {T : Over (Sp R)}
    (hT : IsAdicColimit I T) {x : T ⟶ G} {y y' : T ⟶ Gt} (h : Agree F Ft x y) (h' : Agree F Ft x y') : y = y' := by
  refine Over.OverMorphism.ext (hT.hom_ext fun e => ?_)
  obtain ⟨a, h₁, h₂⟩ := h e _ (thickι I e T) _ pullback.condition
  obtain ⟨a', h₁', h₂'⟩ := h' e _ (thickι I e T) _ pullback.condition
  have := mono_of_isPullback (hF e)
  rw [← h₂, ← h₂', (cancel_mono _).1 (h₁.trans h₁'.symm)]

variable [GrpObj G] [GrpObj Gt] [∀ e, GrpObj (H e)]

theorem Agree.mul (hF : ∀ e, IsGrpPullback (H e) G (thick R I e) (F e))
    (hFt : ∀ e, IsGrpPullback (H e) Gt (thick R I e) (Ft e)) {T : Over (Sp R)} {x x' : T ⟶ G} {y y' : T ⟶ Gt}
    (h : Agree F Ft x y) (h' : Agree F Ft x' y') : Agree F Ft (x * x') (y * y') := fun e Y k s w => by
  obtain ⟨a, h₁, h₂⟩ := h e Y k s w
  obtain ⟨a', h₁', h₂'⟩ := h' e Y k s w
  have o : ∀ {b : Y ⟶ (H e).left} {z : T ⟶ G}, b ≫ F e = k ≫ z.left → b ≫ (H e).hom = s := fun {b z} hb => by
    rw [← cancel_mono (thick R I e), Category.assoc, ← (hF e).1.w, ← Category.assoc, hb, Category.assoc, Over.w, w]
  let b : Over.mk s ⟶ H e := Over.homMk a (o h₁)
  let b' : Over.mk s ⟶ H e := Over.homMk a' (o h₁')
  let k' : Over.mk ((Over.mk s).hom ≫ thick R I e) ⟶ T := Over.homMk k w
  refine ⟨(b * b').left, ?_, ?_⟩
  · rw [← (hF e).2 _ b b' (k' ≫ x) (k' ≫ x') h₁.symm h₁'.symm, ← MonObj.comp_mul]; rfl
  · rw [← (hFt e).2 _ b b' (k' ≫ y) (k' ≫ y') h₂.symm h₂'.symm, ← MonObj.comp_mul]; rfl

end Formal

end GlobalTheory.FinitePartTower
