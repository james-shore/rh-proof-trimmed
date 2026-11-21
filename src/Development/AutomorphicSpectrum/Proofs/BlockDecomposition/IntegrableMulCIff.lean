import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocallyConstantMajorants.GammaSplitting.InnW

noncomputable section

open MeasureTheory Matrix Set
open Ad3.K Ad3.K.LC Ad3.K.LC.C

namespace GlobalTheory.CompanionTheory.GodementFE

def nuC : Measure ℂ := volume.withDensity fun z : ℂ => ENNReal.ofReal (‖z‖ ^ 2)⁻¹

theorem range_val : range (Units.val : ℂˣ → ℂ) = {0}ᶜ := by
  ext x
  constructor
  · rintro ⟨u, rfl⟩
    simp
  · intro hx
    exact ⟨Units.mk0 x hx, rfl⟩

theorem val_measEmb : MeasurableEmbedding (Units.val : ℂˣ → ℂ) := by
  refine ⟨fun _ _ h => Units.ext h, comap_measurable _, ?_⟩
  rintro _ ⟨B, hB, rfl⟩
  have : Units.val '' (Units.val ⁻¹' B : Set ℂˣ) = B ∩ {0}ᶜ := by
    rw [image_preimage_eq_inter_range, range_val]
  rw [this]
  exact hB.inter (measurableSet_singleton _).compl

theorem nuC_singleton : nuC {0} = 0 :=
  (withDensity_absolutelyContinuous _ _) (by simp)

theorem map_val_mulC : Measure.map (Units.val : ℂˣ → ℂ) mulC = nuC := by
  have h := val_measEmb.map_comap nuC
  have : nuC.restrict ({0}ᶜ : Set ℂ) = nuC :=
    Measure.restrict_eq_self_of_ae_mem (by
      rw [ae_iff]
      simpa using nuC_singleton)
  rw [range_val, this] at h
  exact h

instance : SigmaFinite mulC := by
  refine SigmaFinite.of_map _ val_measEmb.measurable.aemeasurable ?_
  rw [map_val_mulC, nuC]
  exact SigmaFinite.withDensity_ofReal _

def mulL (c : ℂ) : ℂ →L[ℝ] ℂ := ContinuousLinearMap.mul ℝ ℂ c

theorem det_mulL (c : ℂ) : (mulL c).det = Complex.normSq c := by
  have : ((mulL c : ℂ →L[ℝ] ℂ) : ℂ →ₗ[ℝ] ℂ) = Algebra.lmul ℝ ℂ c := by
    ext z
    simp [mulL]
  rw [ContinuousLinearMap.det, this, ← Algebra.norm_apply, Algebra.norm_complex_apply]

theorem nuC_preimage (φ c : ℂ → ℂ) (hφ : Measurable φ)
    (hd : ∀ z, z ≠ 0 → HasFDerivAt φ (mulL (c z)) z)
    (hs : ∀ z, z ≠ 0 → φ z ≠ 0) (hinj : InjOn φ {0}ᶜ) (hsurj : ∀ y, y ≠ 0 → ∃ z, z ≠ 0 ∧ φ z = y)
    (hw : ∀ z, z ≠ 0 → ‖c z‖ ^ 2 * (‖φ z‖ ^ 2)⁻¹ = (‖z‖ ^ 2)⁻¹) {B : Set ℂ} (hB : MeasurableSet B) :
    nuC (φ ⁻¹' B) = nuC B := by
  have hwm : Measurable fun z : ℂ => ENNReal.ofReal (‖z‖ ^ 2)⁻¹ := by fun_prop
  have hcut : ∀ {A : Set ℂ}, MeasurableSet A → nuC A = nuC (A ∩ {0}ᶜ) := by
    intro A hA
    refine (measure_congr ?_)
    have : (A ∩ {0}ᶜ : Set ℂ) =ᵐ[nuC] A := by
      refine inter_ae_eq_left_of_ae_eq_univ ?_
      rw [ae_eq_univ]
      simpa using nuC_singleton
    exact this.symm
  set S : Set ℂ := φ ⁻¹' B ∩ {0}ᶜ with hS
  have hSm : MeasurableSet S := (hφ hB).inter (measurableSet_singleton _).compl
  have himg : φ '' S = B ∩ {0}ᶜ := by
    ext y
    constructor
    · rintro ⟨z, ⟨hz1, hz2⟩, rfl⟩
      exact ⟨hz1, hs z hz2⟩
    · rintro ⟨hy1, hy2⟩
      obtain ⟨z, hz, rfl⟩ := hsurj y hy2
      exact ⟨z, ⟨hy1, hz⟩, rfl⟩
  have key := lintegral_image_eq_lintegral_abs_det_fderiv_mul (volume : Measure ℂ) hSm
    (f := φ) (f' := fun z => mulL (c z)) (fun z hz => (hd z hz.2).hasFDerivWithinAt)
    (hinj.mono inter_subset_right) (fun z : ℂ => ENNReal.ofReal (‖z‖ ^ 2)⁻¹)
  rw [hcut hB, hcut (hφ hB), ← hS, nuC, withDensity_apply _ hSm,
    withDensity_apply _ (hB.inter (measurableSet_singleton _).compl), ← himg, key]
  refine (setLIntegral_congr_fun hSm fun z hz => ?_).symm
  rw [det_mulL, ← ENNReal.ofReal_mul (abs_nonneg _), abs_of_nonneg (Complex.normSq_nonneg _),
    Complex.normSq_eq_norm_sq, hw z hz.2]

theorem nuC_mul (b : ℂˣ) {B : Set ℂ} (hB : MeasurableSet B) :
    nuC ((fun z => (b : ℂ) * z) ⁻¹' B) = nuC B := by
  have hb : (b : ℂ) ≠ 0 := b.ne_zero
  refine nuC_preimage (fun z => (b : ℂ) * z) (fun _ => b) (by fun_prop) ?_ ?_ ?_ ?_ ?_ hB
  · intro z _
    have := (mulL (b : ℂ)).hasFDerivAt (x := z)
    exact this
  · intro z hz
    exact mul_ne_zero hb hz
  · intro x _ y _ h
    exact mul_left_cancel₀ hb h
  · intro y hy
    exact ⟨(b : ℂ)⁻¹ * y, mul_ne_zero (inv_ne_zero hb) hy, by field_simp⟩
  · intro z hz
    have h1 : ‖(b : ℂ)‖ ≠ 0 := norm_ne_zero_iff.2 hb
    have h2 : ‖z‖ ≠ 0 := norm_ne_zero_iff.2 hz
    rw [norm_mul]
    field_simp

theorem mulC_preimage {C : Set ℂ} (hC : MeasurableSet C) :
    mulC (Units.val ⁻¹' C) = nuC C := by
  rw [← map_val_mulC, Measure.map_apply val_measEmb.measurable hC]

instance : mulC.IsMulLeftInvariant := by
  refine ⟨fun g => ?_⟩
  ext A hA
  obtain ⟨B, hB, rfl⟩ := hA
  have hm : Measurable fun x : ℂˣ => g * x := measurable_const_mul g
  rw [Measure.map_apply hm (val_measEmb.measurable hB), mulC_preimage hB]
  have : (fun x : ℂˣ => g * x) ⁻¹' (Units.val ⁻¹' B)
      = Units.val ⁻¹' ((fun x : ℂ => (g : ℂ) * x) ⁻¹' B) := by
    ext x
    simp
  rw [this, mulC_preimage ((measurable_const_mul (g : ℂ)) hB), nuC_mul g hB]

end GlobalTheory.CompanionTheory.GodementFE
