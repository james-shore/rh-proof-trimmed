import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocallyConstantMajorants.GammaSplitting.InnW
import GroundTheory.GlobalFields.TateThesis.GaussianComplexFourier

noncomputable section
open MeasureTheory Complex Ad3.K Ad3.K.LC Ad3.K.LC.C
open scoped Real
namespace GlobalTheory.CompanionTheory.TateC

theorem val_measurableEmbedding : MeasurableEmbedding (Units.val : ℂˣ → ℂ) := by
  refine ⟨fun _ _ h => Units.ext h, comap_measurable _, ?_⟩
  rintro _ ⟨B, hB, rfl⟩
  have : Units.val '' (Units.val ⁻¹' B : Set ℂˣ) = B ∩ {0}ᶜ := by
    ext x
    constructor
    · rintro ⟨u, hu, rfl⟩
      exact ⟨hu, by simp⟩
    · rintro ⟨hx, hx0⟩
      exact ⟨Units.mk0 x hx0, hx, rfl⟩
  rw [this]
  exact hB.inter (measurableSet_singleton _).compl

def nuC : Measure ℂ := volume.withDensity fun z : ℂ => ENNReal.ofReal (‖z‖ ^ 2)⁻¹

theorem map_val_mulC : Measure.map (Units.val : ℂˣ → ℂ) mulC = nuC := by
  have h := val_measurableEmbedding.map_comap nuC
  have hr : Set.range (Units.val : ℂˣ → ℂ) = {0}ᶜ := by
    ext x
    constructor
    · rintro ⟨u, rfl⟩
      simp
    · intro hx
      exact ⟨Units.mk0 x hx, rfl⟩
  have hac : nuC ≪ volume := withDensity_absolutelyContinuous _ _
  have h0 : nuC {0} = 0 := hac (by simp)
  have : nuC.restrict ({0}ᶜ : Set ℂ) = nuC :=
    Measure.restrict_eq_self_of_ae_mem (by
      rw [ae_iff]
      simpa using h0)
  rw [hr, this] at h
  exact h

instance : SigmaFinite mulC := by
  refine SigmaFinite.of_map _ val_measurableEmbedding.measurable.aemeasurable ?_
  rw [map_val_mulC, nuC]
  exact SigmaFinite.withDensity_ofReal _

theorem map_mul_volume {g : ℂ} (hg : g ≠ 0) :
    Measure.map (fun x : ℂ => x * g) volume = ENNReal.ofReal (‖g‖ ^ 2)⁻¹ • volume := by
  have hd : LinearMap.det (Algebra.lmul ℝ ℂ g) = ‖g‖ ^ 2 := by
    have := Algebra.norm_complex_apply g
    rw [Algebra.norm_apply] at this
    rw [Complex.normSq_eq_norm_sq] at this
    exact this
  have hne : LinearMap.det (Algebra.lmul ℝ ℂ g) ≠ 0 := by
    rw [hd]
    exact pow_ne_zero _ (norm_ne_zero_iff.2 hg)
  have h := Measure.map_linearMap_addHaar_eq_smul_addHaar (volume : Measure ℂ) hne
  have hf : (⇑(Algebra.lmul ℝ ℂ g) : ℂ → ℂ) = fun x : ℂ => x * g := by
    funext x
    simp [mul_comm]
  rw [hf, hd, abs_of_nonneg (by positivity)] at h
  exact h

theorem nuC_preimage {g : ℂ} (hg : g ≠ 0) {B : Set ℂ} (hB : MeasurableSet B) :
    nuC ((fun x => x * g) ⁻¹' B) = nuC B := by
  have hw : Measurable fun x : ℂ => ENNReal.ofReal (‖x‖ ^ 2)⁻¹ := by fun_prop
  have hm : Measurable fun x : ℂ => x * g := by fun_prop
  have hgn : ‖g‖ ^ 2 ≠ 0 := pow_ne_zero _ (norm_ne_zero_iff.2 hg)
  have hgp : 0 ≤ ‖g‖ ^ 2 := by positivity
  set w : ℂ → ENNReal := fun x : ℂ => ENNReal.ofReal (‖x‖ ^ 2)⁻¹ with hwdef
  have h1 : ∀ x, ((fun x => x * g) ⁻¹' B).indicator w x
      = ENNReal.ofReal (‖g‖ ^ 2) * (B.indicator w) (x * g) := by
    intro x
    by_cases hx : x * g ∈ B
    · rw [Set.indicator_of_mem (show x ∈ (fun x => x * g) ⁻¹' B from hx), Set.indicator_of_mem hx,
        hwdef]
      simp only
      rw [← ENNReal.ofReal_mul hgp]
      congr 1
      rw [norm_mul, mul_pow, mul_inv, mul_comm ((‖x‖ ^ 2)⁻¹), ← mul_assoc,
        mul_inv_cancel₀ hgn, one_mul]
    · rw [Set.indicator_of_notMem (show x ∉ (fun x => x * g) ⁻¹' B from hx),
        Set.indicator_of_notMem hx]
      simp
  have hmeas : Measurable fun x : ℂ => B.indicator w (x * g) := (hw.indicator hB).comp hm
  rw [nuC, withDensity_apply _ (hm hB), withDensity_apply _ hB, ← lintegral_indicator (hm hB),
    ← lintegral_indicator hB, lintegral_congr h1, lintegral_const_mul _ hmeas]
  have h2 : ∫⁻ x, B.indicator w (x * g)
      = ∫⁻ y, B.indicator w y ∂(Measure.map (fun x => x * g) volume) :=
    (lintegral_map (hw.indicator hB) hm).symm
  rw [h2, map_mul_volume hg, lintegral_smul_measure, smul_eq_mul, ← mul_assoc,
    ← ENNReal.ofReal_mul hgp, mul_inv_cancel₀ hgn]
  simp only [ENNReal.ofReal_one, one_mul]
  rfl

instance : mulC.IsMulRightInvariant := by
  refine ⟨fun g => ?_⟩
  ext A hA
  obtain ⟨B, hB, rfl⟩ := hA
  have hpre : ∀ C : Set ℂ, MeasurableSet C → mulC (Units.val ⁻¹' C) = nuC C := by
    intro C hC
    rw [← map_val_mulC, Measure.map_apply val_measurableEmbedding.measurable hC]
  have hm : Measurable fun x : ℂˣ => x * g := measurable_mul_const g
  rw [Measure.map_apply hm (val_measurableEmbedding.measurable hB), hpre B hB]
  have : (fun x : ℂˣ => x * g) ⁻¹' (Units.val ⁻¹' B)
      = Units.val ⁻¹' ((fun x : ℂ => x * (g : ℂ)) ⁻¹' B) := by
    ext x
    simp
  rw [this, hpre _ ((measurable_mul_const (g : ℂ)) hB), nuC_preimage g.ne_zero hB]

def bil (t : ℂ) : ℂ →ₗ[ℝ] ℂ →ₗ[ℝ] ℝ :=
  LinearMap.mk₂ ℝ (fun x y => 2 * (t * x * y).re)
    (fun a b y => by simp only [mul_add, add_mul, Complex.add_re])
    (fun c x y => by
      simp only [Complex.real_smul, smul_eq_mul]
      rw [show t * ((c : ℂ) * x) * y = (c : ℂ) * (t * x * y) by ring, Complex.re_ofReal_mul]
      ring)
    (fun x a b => by simp only [mul_add, Complex.add_re])
    (fun c x y => by
      simp only [Complex.real_smul, smul_eq_mul]
      rw [show t * x * ((c : ℂ) * y) = (c : ℂ) * (t * x * y) by ring, Complex.re_ofReal_mul]
      ring)

theorem bil_apply (t x y : ℂ) : bil t x y = 2 * (t * x * y).re := rfl

end GlobalTheory.CompanionTheory.TateC
