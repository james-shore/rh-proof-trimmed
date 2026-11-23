import Mathlib
import Formalism.LocalToGlobal.ThresholdSelection
import Formalism.SharpRestriction.GlobalSchurBounds.MassRatioUnfoldedOfTheoremTwo
import Formalism.SharpRestriction.GlobalSchurBounds.TheoremThreeFamilyOfFormalDegreeInput
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.UniqGapOfUniq
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.SzHypFam
import Development.AbelianVarietyTheory.Statements.DiscreteSeriesShifts.ThmBpDS
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.FormalDegreeCompactDualIff
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LoopRowsOfLargeGapDiscreteSeriesStatement
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HypOfUniqGap
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.BesselMultiplicityOneLargeGapAndWhittakerBesselStatement
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.DiscreteSeriesCoefPointwiseBoundUnconditionalStatement
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ClassNumberAll
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.FirstTypePrimeLargeOfRecord
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.NcardPrimesOverOfNorm
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.VolumeEqMassOfReal
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.RankConditionOfColumnsEqualSymmetricLevelStatement
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.TFrameOfRanksRowThree
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.WuDecayOfGap
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.TSelF
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.RanksAndFrameOfTiedClass

set_option synthInstance.maxHeartbeats 200000

section
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.S Formalism.L2.SG.ThmSOwn
namespace GlobalTheory.LoopRowsByName
theorem loopRows_of_rowsFinDim_alt :
    Formalism.L2.SG.RowsDef.RowsFinDim → (∀ D : D7, RT.MassRatioUnderVolume D) → ∀ (𝒞 : FamClass), _root_.Formalism.L2.TwistSelection 𝒞 →
      ∀ sel : SSel 𝒞, (∀ {eps : ℝ} (Fm : FamP eps), 𝒞 Fm → TuSize Fm) → LoopRowS 3 𝒞 sel := by
  intro hFin hUT 𝒞 hT sel hTu
  exact GlobalTheory.T.loopRows_of_large_gap_discreteSeries (GlobalTheory.GapIn.hyp_of_uniqGap GlobalTheory.T.bessel_multiplicity_one_large_gap_and_whittaker_bessel.1) GlobalTheory.T.bessel_multiplicity_one_large_gap_and_whittaker_bessel.2 GlobalTheory.T.discreteSeriesCoef_pointwiseBound_unconditional
    GlobalTheory.wuDecayOfGap hFin 𝒞 sel hTu (_root_.GlobalTheory.ranks_and_frame_of_tied_class_alt hUT 𝒞 hT).1
end GlobalTheory.LoopRowsByName
end
