import Mathlib
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RangeSndRel
import Development.AbelianVarietyTheory.Definitions.Divisors.DiscreteSeriesHermitianUnique
import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.CuspAlongSmoothRows
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsVacFOfIsVacVec
import Development.AbelianVarietyTheory.BlockTheory.HeightDefect.FinitePartTypes
import Development.AbelianVarietyTheory.Proofs.HeightProofs.TypeAtOfDiscreteSeries
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CasselmanWallachExtensionBanachTarget
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CoefBoundOfCasselmanWallach
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.KFiniteLeOfGKStableDiscreteSeriesModel
import Development.AbelianVarietyTheory.Proofs.HeightProofs.FiniteDimensionalPolyV
import Development.AbelianVarietyTheory.Proofs.HeightProofs.CompactUnitaryCoordFunMulEqSum
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ContDiffMatrixRightInvariantDerivative
import Development.AbelianVarietyTheory.Proofs.HeightProofs.CompactUnitaryCasimirInverseTopDegreeBound
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.MemSmoothVectorsDiscreteSeriesModelIff
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ComplexConjugationMapsMultiplicitySpace
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IntegrableOnOfRapidDec
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ThetaGrowthOfThetaSquareIntegrable
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.CuspAlongOfPairLifts
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.GKModuleMapCuspFormsExtendsMultiplicitySpace
import Development.AbelianVarietyTheory.Definitions.Jets.SumIoPrAlt
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DecompAtZero
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasCtpId
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsKFiniteReproducingFunction
import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.InfFam
import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.ContinuousTensMap
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdicIntegersCompact.IsCompactAdicCompletionIntegers
import Development.AbelianVarietyTheory.Definitions.Divisors.IsSquareIntegrableIffMemL2
import Formalism.LocalToGlobal.IndefiniteReal.RecTie
import Formalism.LocalToGlobal.GaloisLevelStructure.DefsAut
import Formalism.LocalToGlobal.GaloisLevelStructure.TiedHecke

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.StdFrames GlobalTheory.RowClaim GlobalTheory.FlipRun
attribute [local instance] Formalism.BasicNotions.Host.cmStar GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField borelKw borelSpaceKw

noncomputable section

namespace GlobalTheory.CuspApproxX

open GlobalTheory.Grow GlobalTheory.Size

theorem thetaKO_le_quotHeight {D : D7} {V W : HSp D} {ψ : AddChar (AF D.host.F) ℂ} {θ : InfFam D}
    {χS χT : (AE D)ˣ →* Circle} {ω : GA D V × GA D W →* Module.End ℂ (WO V W → ℂ)} {f : WO V W → ℂ}
    (hθ : IsInfFam θ) (hω : IsWeilDatumO ψ V W χS χT ω) (hf : IsThetaFunO ψ V W f) {C : Set (GA D V)}
    (hC : IsCompact C) : ∃ (K : ℝ) (a : ℕ), ∀ g ∈ C, ∀ h, ‖thetaKO ω g h f‖ ≤ K * quotHeight W h ^ a := by
  obtain ⟨A, d, H⟩ := GlobalTheory.KernelSeminorm.thetaGrowth D V.rank W.rank
  obtain ⟨U, hU, hl⟩ := isTheta_iff_level.1 hf
  obtain ⟨μ, 𝓕, hμ⟩ := exists_isCovolOne V W
  obtain ⟨c, hc0, hc⟩ := (H V W rfl rfl).real ψ hθ hU
  obtain ⟨B, hB⟩ := exists_height_le_of_isCompact V hC
  have key := (hc χS χT ω hω μ 𝓕 hμ f hl).2
  set s := (sobO ψ θ μ 𝓕 d f).toReal
  have hs : 0 ≤ s := ENNReal.toReal_nonneg
  refine ⟨c * s * max B 1 ^ A * 2 ^ A, A, fun g hg h => ?_⟩
  have h1 : ∀ h', ‖thetaKO ω g h' f‖ ≤ (c * s * height V g ^ A) * height W h' ^ A := fun h' => by
    rw [mul_assoc _ (height V g ^ A), ← mul_pow]; exact key g h'
  refine (norm_le_quotHeight_pow (GlobalTheory.Chain.LiftConv.thetaKO_left hω hf g) h1 h).trans ?_
  have hg1 : height V g ^ A ≤ max B 1 ^ A :=
    pow_le_pow_left₀ (height_pos V g).le ((hB g hg).trans (le_max_left _ _)) A
  have hq := (pow_pos (quotHeight_pos W h) A).le
  have h2 : (0:ℝ) ≤ 2 ^ A := by positivity
  calc c * s * height V g ^ A * 2 ^ A * quotHeight W h ^ A
      ≤ c * s * max B 1 ^ A * 2 ^ A * quotHeight W h ^ A := by gcongr
    _ = _ := rfl

end GlobalTheory.CuspApproxX

namespace GlobalTheory.CuspApproxX

end GlobalTheory.CuspApproxX

namespace GlobalTheory.CuspApproxX

end GlobalTheory.CuspApproxX

end
