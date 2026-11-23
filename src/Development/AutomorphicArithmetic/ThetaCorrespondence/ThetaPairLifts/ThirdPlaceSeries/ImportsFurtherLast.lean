import Mathlib
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.BoundAtTwoAndThreeForFamily
import Formalism.SharpRestriction.LevelLetterCocycles.JointConditionsZpowers.BaseFont
import Formalism.SharpRestriction.LevelLetterCocycles.JointConditionsZpowers.WachRestrictionOfLiftingPackage
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.StepJumpDirect
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.BhattScholzeCrystallineLattices
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CrystallineRestrictFiniteExtensionJumps
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FontainePropertiesAllPlaces
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CentralElementsFromIdempotentCoeffsStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TwistedDualFamiliesContinuousStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TypePrimeCompletionDegreeOneCountProofStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GlobalOfArtinReciprocity
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoCharactersTypePrimeProofStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JumpRangePositiveSignPlaceStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DualJumpRangeNegativeSignPlaceProofStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LiftFMonoLoc
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalCountDirectLiftingProofStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalCountDualLiftingProofStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TypeFamilyPotentiallyCrystallineCommonTameExtensStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SecondClosedOfFirstClosed
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TwistedGaloisRepCharacterBlocksStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TypeLocalGlobal
import Formalism.LocalRingCardinality.SpanPowerMembership.NZTypeE
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.AwayRepIsoLoc
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisRepUniqueBaseChange
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsTypeLocus
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClosingAtRecord
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodParIffGoodSig
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TameDescentConditionsEveryLocalisation
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LenUnitLeOfFamily
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PadicValNatPowSubOneLe
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CrystallinePeriodBoundAllConstantGeFortyStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TheoremTbOfLocalBlochKatoDualityEulerStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalAbsorptionLengthBoundOfBlochKatoStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ResidualRepSpansMatrixAlgebraOfGoodPoint
import Formalism.SharpRestriction.LevelLetterCocycles.CongruenceAnnihilatesCharacterPart
import Formalism.SharpRestriction.LevelLetterCocycles.SecondPropositionEveryLocalisation
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsWachFunctorComparisonOfBhattScholzeStatement
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.NormChoiceFacts
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.LocalGlobalCompatibility
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.AdmG14OfAuxStatement

set_option synthInstance.maxHeartbeats 200000

section
open NumberField IsDedekindDomain Formalism Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions Formalism.MainNotions.N Formalism.WeaklyAdmissibleFiltrations GlobalTheory.NLink
namespace GlobalTheory.NormFromFacts
theorem main_alt_alt : Hypotheses₂ → ∃ CT : ℕ, ∀ (D : D7) (nch : NChoice D), _root_.GlobalTheory.NFacts.NormChoiceFacts D nch → (PairedCharacterCondition.tieChi (D := D) ∧ (∃ Q : PairedCharacterCondition.Pend (D), PairedCharacterCondition.admDZ Q ∧ GlobalTheory.Pass.EigSpan Q) ∧ GlobalTheory.Pass.TieInePoly (D) ∧ GlobalTheory.TypeLeaf.SerLoc (D)) → _root_.Formalism.MainNotions.PairedCharacterCondition.PairedCharacterConditionAlt (D := D) (8 * (CT : ℝ)) CT := by
  intro hP
  refine ⟨40, ?_⟩
  intro D nch hf h
  obtain ⟨hchi, hQ, hine, hser⟩ := h
  obtain ⟨HW, F, ⟨Cm⟩⟩ := GlobalTheory.T.exists_wachFunctor_comparison_of_bhattScholze hP.bs D
  have hA := hf.adm.1.1
  exact _root_.GlobalTheory.T.conclusion41_of_pAdicHodge_alt hP.artin hP.bs hP.font hP.bk hP.tate hP.euler D HW F Cm _ 40 le_rfl le_rfl hQ hA.1 hA.2.2.1
    hA.2.2.2.1 hA.2.2.2.2.2.2 hf.Conclusion1.1 hf.Conclusion2.1 hf.Conclusion2.2.1 hf.rhoBar hser hf.duties.2.2.2 hine hchi
end GlobalTheory.NormFromFacts
end
