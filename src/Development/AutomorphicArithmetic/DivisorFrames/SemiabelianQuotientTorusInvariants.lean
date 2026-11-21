import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntEmbCoe
import Development.AbelianVarietyTheory.Definitions.Divisors.IsIsoFromNormalization
import Development.AbelianVarietyTheory.Definitions.Degenerations.OfDerivationFnOn
import Development.AbelianVarietyTheory.Definitions.Uniformization.ExistsUniqueTorusCompat
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsPullbackKernelBaseChange
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.FlatQuotientIsoOfSameKernel
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SABBaseChangeSt
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabComp
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsSmoothTorusQuotientOfGoodOpenCover

open CategoryTheory AlgebraicGeometry Limits MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.VB GlobalTheory.LieVB GlobalTheory.CurveRootGeometry GlobalTheory.NeronCurve GlobalTheory.SS GlobalTheory.UU
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
section SlopeTestRemainingChoices
open Opposite GlobalTheory.TorusQuotientGlue

private theorem epi_spec {A B : CommRingCat.{0}} (f : A ⟶ B) (hf : Function.Injective f.hom)
    [Surjective (Spec.map f)] : Epi (Spec.map f) := by
  have hd : IsSchemeTheoreticallyDominant (Spec.map f) := by
    refine ⟨Scheme.IdealSheafData.ext_of_iSup_eq_top (fun _ : Unit ↦ ⟨⊤, isAffineOpen_top _⟩)
      (by simp) fun y ↦ ?_⟩
    rw [Scheme.Hom.ker_apply, Scheme.IdealSheafData.ideal_bot, Pi.bot_apply,
      ← RingHom.injective_iff_ker_eq_bot]
    have e : (Spec.map f).appTop = (Scheme.ΓSpecIso A).hom ≫ f ≫ (Scheme.ΓSpecIso B).inv := by
      rw [← Scheme.ΓSpecIso_naturality_assoc]; simp
    change Function.Injective (Spec.map f).appTop.hom
    rw [e]
    exact (ConcreteCategory.bijective_of_isIso (Scheme.ΓSpecIso B).inv).1.comp
      (hf.comp (ConcreteCategory.bijective_of_isIso (Scheme.ΓSpecIso A).hom).1)
  have : QuasiCompact (Spec.map f) := inferInstance
  generalize Spec.map f = π at *
  refine ⟨fun {Z} a b hab ↦ ?_⟩
  have hb : a.base = b.base := by
    ext y
    obtain ⟨x, rfl⟩ := π.surjective y
    exact congr($hab x)
  refine Scheme.Hom.ext hb fun U ↦ ?_
  have : Mono (π.app (b ⁻¹ᵁ U)) := ConcreteCategory.mono_of_injective _ (π.app_injective _)
  rw [← cancel_mono (π.app _)]
  simp only [Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_map, Scheme.Hom.appLE_comp_appLE, hab]

open GlobalTheory.TorusGrading GlobalTheory.TorusQuotientLift GlobalTheory.AffineThickening

variable {S : Scheme.{0}} {X : Type} [AddCommGroup X] {G : Over S} [GrpObj G] {i : splitTorus S X ⟶ G}

end SlopeTestRemainingChoices

