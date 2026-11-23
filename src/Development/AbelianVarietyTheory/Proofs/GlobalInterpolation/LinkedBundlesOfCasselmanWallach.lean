import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.AdmissibleDiscreteSeriesOfHasParam
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.HarishChandraModulesOn
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsNormLeHeightPow
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasDRepIffHasDerivAt
import Formalism.UnipotentAdelicQuotients.SiegelWeilUnitaryConvergent
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder
import Formalism.SharpRestriction.GlobalSchurBounds.MassRatioUnfoldedOfTheoremTwo
import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.GeometricWeakTiesOfStrong
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.BundleBothPartsOfStandardKernelOfGlobalArtinReciStatement
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.DeliveryAtBundlePointsOfTrueColumnsStatement
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelPrimeColumnValuationsBundlePointsOverColumnStatement
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ReferencePeriodIntegralBundlePointsOfOverColumnsStatement
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.TwistedPeriodsIntegralAtBundlePointsStatement
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ReferenceChainEvaluationBundlePointsOverColumnsAStatement
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ClassCountBoundParamsLambdaConstructedPoints
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.TupAllUsedAtPart
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.UnitaryHyperplaneVolumeRatioSiegelWeil
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LoopRowsOfLargeGapDiscreteSeriesStatement
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HypOfUniqGap
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.BesselMultiplicityOneLargeGapAndWhittakerBesselStatement
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.DiscreteSeriesCoefPointwiseBoundUnconditionalStatement
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.OffK0Closed
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.RowPositivityOfSiegelWeil
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.CountConstantsOfSiegelWeil
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.IrreducibilityRowOfConcreteAutomorphicDataStatement

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.RT GlobalTheory.EX GlobalTheory.EX.OB GlobalTheory.Mem GlobalTheory.Mem.Top GlobalTheory.Mem.Top.Bl GlobalTheory.Fc

namespace GlobalTheory.Fc.AllAtMemberStage0

section large₂

variable {KP : ∀ B : GlobalTheory.Mem.Base, Fr B.toPre → Prop} {Q Q' : V4.Slot}

theorem eventually_coreProperty_of_forall {r : V4.Slot → Prop} (h : ∀ S, r S) : Lg1 KP Q Q' r :=
  ⟨fun _ _ _ _ _ => True, largeBaseProperty_true, h _⟩

theorem eventually_coreProperty_mono {r r' : V4.Slot → Prop} (h : Lg1 KP Q Q' r) (hi : ∀ S, r S → r' S) : Lg1 KP Q Q' r' :=
  let ⟨R, hR, h⟩ := h; ⟨R, hR, hi _ h⟩

end large₂

end GlobalTheory.Fc.AllAtMemberStage0
