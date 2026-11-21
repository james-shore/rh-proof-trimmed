import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCochFrame
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Definitions.Uniformization.ExistsUniqueTorusCompat
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ESecCompOfIsGrpPullback
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsProjectiveOverRingByChartsAbelianVariety
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.HomBaseChangeBijectiveOfLeNilradical
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsSchemeTheoreticallyDominantSpecOfInjective
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.FormallyUnramifiedOfTangentMapInjective
import Development.AbelianVarietyTheory.Proofs.ThetaLawProofs.MorphismDescendsToSubring
import Development.AbelianVarietyTheory.Proofs.ThetaLawProofs.ExistsFiniteTypeSubringAdjoin
import Development.AbelianVarietyTheory.Proofs.ThetaLawProofs.IsProjOverDescendsToSubring
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.GeometricallyConnectedOpenConditionSmoothProject
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.SmoothGrpSchemeDescendsToFgSubring
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverMorphismRestrictOfRelAmple
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.GroupSchemeMorphismDescends
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.SplitTorusExtensionDescends
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.SchemeDescendsToSubalgebra
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.IsSemiAbelianOfProperGenericTorusExtensionSpecialFiber
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.FlatAndSurjectiveOfSurjectivePoints

open AlgebraicGeometry CategoryTheory Limits NumberField MonoidalCategory CartesianMonoidalCategory MonObj Topology
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.TorusSpread

def Near {S : Scheme.{0}} {k : Type} [Field k] (x : Sp k ⟶ S)
    (P : ∀ (K : Type) [Field K], (Sp K ⟶ S) → Prop) : Prop :=
  ∃ (V : Scheme.{0}) (π : V ⟶ S) (v : Sp k ⟶ V), v ≫ π = x ∧ LocallyOfFiniteType π ∧
    ∀ (K : Type) [Field K] (w : Sp K ⟶ V), P K (w ≫ π)

section Near

variable {S : Scheme.{0}} {k : Type} [Field k] {x : Sp k ⟶ S} {P Q : ∀ (K : Type) [Field K], (Sp K ⟶ S) → Prop}

theorem Near.mono (h : Near x P) (H : ∀ (K : Type) [Field K] (y : Sp K ⟶ S), P K y → Q K y) : Near x Q := by
  obtain ⟨V, π, v, e, hπ, h⟩ := h
  exact ⟨V, π, v, e, hπ, fun K _ w => H K _ (h K w)⟩

theorem Near.and (h : Near x P) (h' : Near x Q) : Near x fun K _ y => P K y ∧ Q K y := by
  obtain ⟨V, π, v, e, hπ, h⟩ := h
  obtain ⟨V', π', v', e', hπ', h'⟩ := h'
  refine ⟨pullback π π', pullback.fst π π' ≫ π, pullback.lift v v' (e.trans e'.symm), by
    rw [pullback.lift_fst_assoc, e], inferInstance, fun K _ w => ⟨?_, ?_⟩⟩
  · rw [← Category.assoc]; exact h K _
  · rw [pullback.condition, ← Category.assoc]; exact h' K _

theorem Near.pull {S' : Scheme.{0}} {x' : Sp k ⟶ S'} {ρ : S' ⟶ S} (e : x' ≫ ρ = x) (h : Near x P) :
    Near x' fun K _ y => P K (y ≫ ρ) := by
  obtain ⟨V, π, v, e', hπ, h⟩ := h
  refine ⟨pullback π ρ, pullback.snd π ρ, pullback.lift v x' (e'.trans e.symm), pullback.lift_snd _ _ _,
    inferInstance, fun K _ w => ?_⟩
  change P K ((w ≫ pullback.snd π ρ) ≫ ρ)
  rw [Category.assoc, ← pullback.condition, ← Category.assoc]
  exact h K _

end Near

end GlobalTheory.TorusSpread
