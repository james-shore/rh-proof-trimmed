import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocalWhittakerDuality.DampedFunctionalEquationAtPoint
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.Th
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.GaugeTopology.SSmoothW
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.VerticalStrips.UnramifiedEulerProductIntegral
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TestVectorNonvanishingLocal

open MeasureTheory Matrix GroundTheory.LocalField GroundTheory.Automorphic Ad3 Ad3.K.GL2LocalData GlobalTheory.CompanionTheory.DampedZetaMajorant
open scoped ValuativeRel

noncomputable section

namespace GlobalTheory.CompanionTheory.IwaHaar

section Loc

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  [MeasurableSpace F] [BorelSpace F]

omit [MeasurableSpace F] [BorelSpace F] in
theorem secondCountable_units : SecondCountableTopology Fˣ :=
  isOpenEmbedding_units_val.isEmbedding.secondCountableTopology

attribute [local instance] secondCountable_units GlobalTheory.CompanionTheory.LocalTestVectors.secondCountable_GL2

def wE (p : Fˣ × Fˣ × GL (Fin 2) F) : ENNReal := ENNReal.ofReal (wR p)

def iwM (ψ : AddChar F Circle) : Measure (GL (Fin 2) F) :=
  Measure.map (fun q : (Fˣ × Fˣ × GL (Fin 2) F) × F => uni2 q.2 * hI q.1)
    (((mIw ψ).withDensity wE).prod (selfDualMeasure ψ))

theorem finite_restrict (ψ : AddChar F Circle) : IsFiniteMeasure ((LFS.hG ψ).restrict (K2 F)) := by
  haveI : (LFS.hG ψ).IsHaarMeasure := by unfold LFS.hG; infer_instance
  exact ⟨by rw [Measure.restrict_apply_univ]; exact (GLnLocal.isCompact_integralGL F 2).measure_lt_top⟩

attribute [local instance] finite_restrict

instance (ψ : AddChar F Circle) : SFinite (mIw ψ) := by unfold mIw; infer_instance

instance (ψ : AddChar F Circle) : SFinite (iwM ψ) := by unfold iwM; infer_instance

theorem haar_inst (ψ : AddChar F Circle) : (LFS.hG ψ).IsHaarMeasure := by
  unfold LFS.hG; infer_instance

attribute [local instance] haar_inst

theorem right_inst (ψ : AddChar F Circle) : (LFS.hG ψ).IsMulRightInvariant :=
  Measures.isMulRightInvariant_GL F 2 _

attribute [local instance] right_inst

end Loc

end GlobalTheory.CompanionTheory.IwaHaar

