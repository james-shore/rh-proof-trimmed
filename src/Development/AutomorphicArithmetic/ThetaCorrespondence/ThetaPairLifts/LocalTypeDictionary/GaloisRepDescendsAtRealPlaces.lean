import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.DiscreteSpectrumResidualClassification
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.HypothesesX
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsUniqueVec
import Formalism.LocalRingCardinality.SpanPowerMembership.NDLocE
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.MemFiniteCocyclesIffBcrisTensorCoboundary
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.ContinuousAdeleNorm
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisGeometry₂.IsTemperedGLOfIsUnitaryLSeg
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.GaloisSideTwistedSelmerAuxiliaryPrimes
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.DeRhamPotSemistable
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.RallisConvOfHypotheses
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LiftRowsInjectiveAndTypePropertiesOfNonvanishingStatement
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.PrinInf
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoublingSiegelWeilSectionMemDegeneratePrincipalSStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SiegelWeilSectionDoublingEqMatrixCoefficientStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoublingMapThetaIdentityAnyWeilDataStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoublingVectorFockPairIsCompactFiniteStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.CuspFormsArchimedeanKFiniteStarCompMemStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.BoxProductsOrthogonalSumTargetCartanFockStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoublingIntegralsVanishOfAllLiftsVanishStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LevelPlacesIntegralNonzeroConstantStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ZetaResidueNeZeroOfSimplePoleLiftLFunctionStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ThetaKillingImpliesVanishing
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.AdelicIwasawaDecompositionWittIsotropicStabilizeStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ThetaMajorantAverageIdentity
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsVacuumVectorPrincipalCongruenceSupportStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsSumHyperbolicPlanesOrthogonalWittDecomposiStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DefiniteRealGroupFixesSplitSpaceWeilVacuumStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ContAutRapidDecBoundedIntegrable
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoublingEulerProductFarRightOfRapidDecayUnramifiStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ThetaLiftNonvanishingOnStringOfDefiniteDownStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.UnramifiedThetaCorrespondenceAllGoodPrimesStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DownwardThetaLiftEigenformIsEigenformStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaLiftGenerationFinitePlacesStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaLiftGenerationAtRealPlacesStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DownwardThetaLiftPreservesGoodStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodTypesExcludeLevelCharacterStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.SimplePoleOfHecke
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.GeometricGaloisRepCompatibility
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.NonGaloisDownLiftNonvanishing

section
open Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Host
namespace GlobalTheory.DownLift.AtReal
theorem lift_splits_locally : GlobalTheory.Published.CuspRapidDecay → GlobalTheory.Hk3.HoweUnram → _root_.GlobalTheory.NRows.GeometricGaloisRepCompatibility → ∀ (D : D7) (cf : CharFrame D)
    (nch : NChoice D) (tp : TupTied D cf nch) (X : GlobalTheory.NJoin.RealAt D cf nch tp) j t, GlobalTheory.DownLift.TypeNZ X.R j t := by
  intro hP hH hX D cf nch tp X j t
  have hR : GlobalTheory.RawLift.RallisConv D := GlobalTheory.RawLift.Assembled.rallisConv_of_siegelWeil hP hX.sw D
  have hN : ∀ i t, GlobalTheory.DownLift.NonVan X.R i t := fun i t =>
    _root_.GlobalTheory.T.nonGalois_downLift_nonvanishing hP hX.dbl hX.udbl hX.hl hH D X.G X.Pl0 X.T X.A X.Ks X.R X.F X.given X.full i t
  exact ((GlobalTheory.T.liftInj_and_properties_of_rallis_of_nonVan hP hH D X.G X.Pl0 X.T X.A X.Ks X.R X.F X.given X.full hR hN).2 j t).1
end GlobalTheory.DownLift.AtReal
end

section
open Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Host
set_option maxHeartbeats 1000000 in
theorem _root_.GlobalTheory.T.galoisRep_descends_at_real_places : GlobalTheory.Published.CuspRapidDecay → GlobalTheory.Hk3.HoweUnram → _root_.GlobalTheory.NRows.GeometricGaloisRepCompatibility → ∀ (D : D7) (cf : CharFrame D) (nch : NChoice D) (tp : TupTied D cf nch) (X : GlobalTheory.NJoin.RealAt D cf nch tp) j t, GlobalTheory.DownLift.TypeNZ X.R j t := by
  first | exact @_root_.GlobalTheory.DownLift.AtReal.lift_splits_locally | exact _root_.GlobalTheory.DownLift.AtReal.lift_splits_locally | (intros; apply _root_.GlobalTheory.DownLift.AtReal.lift_splits_locally <;> assumption)
end
