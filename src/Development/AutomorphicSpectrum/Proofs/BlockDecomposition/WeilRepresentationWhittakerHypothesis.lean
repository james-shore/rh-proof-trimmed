import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocalWhittakerDuality.FibProp
import GroundTheory.LocalFields.QuadraticAbelian.WeilRepQuadratic
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnstatedLocalWeilLemma
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SplitRepresentationHypothesis
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.DualWhittakerAdelicGL3
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.AdelicGaussians.UpperRightUnipotentInvariance
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.SquareIntegrable.WhittakerModelGL2
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TemperedBoundGL2
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSmoothCharCompNorm
import GroundTheory.LocalFields.LocalZetaGauss
import GroundTheory.LocalFields.LocalFourierMult
import GroundTheory.LocalFields.LocalZetaTate

open MeasureTheory Matrix GroundTheory.LocalField GroundTheory.Automorphic Ad3 Ad3.K.GL2LocalData
open GroundTheory.LocalField.FiltrationCocycleLiftCriterion.WeilRep
open scoped ValuativeRel

noncomputable section

namespace GlobalTheory.CompanionTheory.WeilRepW

open GlobalTheory.CompanionTheory.WeilSB (sb_comp sb_mul isLocallyConstant_char continuous_norm_of)
open GlobalTheory.CompanionTheory.SplitRep (chi_add modulus_neg_one modulus_neg')

variable {F E : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  [MeasurableSpace F] [BorelSpace F]
  [Field E] [ValuativeRel E] [TopologicalSpace E] [IsNonarchimedeanLocalField E]
  [MeasurableSpace E] [BorelSpace E] [Algebra F E]
  [ValuativeExtension F E] [FiniteDimensional F E] [Algebra.IsSeparable F E]
  [Fact (Module.finrank F E = 2)]

theorem fts_apply (χ : AddChar F Circle) (μ : Measure E) (Φ : E → ℂ) (u : E) :
    FTs χ (conj F E) μ Φ u = localFourier μ (chE E χ) Φ (conj F E u) := by
  simp only [FTs, localFourier]
  refine integral_congr_ae (Filter.Eventually.of_forall fun z => ?_)
  show Φ z * (χ _ : ℂ) = Φ z * (χ (Algebra.trace F E (z * conj F E u)) : ℂ)
  rw [mul_comm (conj F E u)]

theorem integral_conj (μ : Measure E) [μ.IsAddHaarMeasure] (f : E → ℂ) :
    ∫ x, f (conj F E x) ∂μ = ∫ x, f x ∂μ := by
  have h := (conjContinuousAddEquiv F E).toHomeomorph.measurableEmbedding.integral_map (μ := μ) f
  have e : ((conjContinuousAddEquiv F E).toHomeomorph : E → E) = conj F E := rfl
  rw [e, map_conj_eq] at h
  exact h.symm

theorem fts_fts {χ : AddChar F Circle} (hχ : Continuous χ) (hχ1 : χ ≠ 1) {Φ : E → ℂ}
    (hΦ : Φ ∈ SBE E) (z : E) :
    FTs χ (conj F E) (muE E χ) (FTs χ (conj F E) (muE E χ) Φ) z = Φ (-z) := by
  have hχE : Continuous (chE E χ) := continuous_traceChar hχ hχ1
  have hχE1 : chE E χ ≠ 1 := traceChar_ne_one hχ hχ1
  rw [fts_apply, ← localFourier_localFourier_selfDual hχE hχE1 hΦ z]
  calc localFourier (muE E χ) (chE E χ) (FTs χ (conj F E) (muE E χ) Φ) (conj F E z)
      = ∫ u, (fun v => localFourier (muE E χ) (chE E χ) Φ v * (chE E χ (v * z) : ℂ)) (conj F E u)
          ∂muE E χ := by
        rw [localFourier]
        refine integral_congr_ae (Filter.Eventually.of_forall fun u => ?_)
        have e : conj F E u * z = conj F E (u * conj F E z) := by simp [map_mul]
        show FTs χ (conj F E) (muE E χ) Φ u * (χ (Algebra.trace F E (u * conj F E z)) : ℂ) =
          localFourier (muE E χ) (chE E χ) Φ (conj F E u) * (χ (Algebra.trace F E (conj F E u * z)) : ℂ)
        rw [fts_apply, e, GroundTheory.LocalField.FiltrationCocycleLiftCriterion.WeilRep.trace_conj]
    _ = ∫ v, localFourier (muE E χ) (chE E χ) Φ v * (chE E χ (v * z) : ℂ) ∂muE E χ :=
        integral_conj (F := F) (muE E χ) (fun v => localFourier (muE E χ) (chE E χ) Φ v * (chE E χ (v * z) : ℂ))
    _ = _ := rfl

end GlobalTheory.CompanionTheory.WeilRepW
