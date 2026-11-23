import Mathlib
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.HypothesesX
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CenUsedOfCenReal
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FirstCharacterTrivialWildInertiaTypePrimeStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.TendstoOneOfSummable
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ThetaEigenCompatibilityFirst
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ThetaEigenCompatibilitySecond
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsParamDefinite
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ThetaEigenCompatibilityEighth
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.BaseChangeTwistedCuspParts
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.InvariantFormBoundedCongruence
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsCanonicalModuleSuccessor
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ThetaLiftAutomorphicForm
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.LiftedCharactersAgree
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsGaloisRepBaseChange
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.Adm2OfHyp
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.GaloisCompatibilityOfJumps
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.IsIrreducibleTwist
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SphericalRepGLExistsSatakeParametersStatement
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.Adm4OfRowsA
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.AlgebraicModularFormsStrongMultiplicityOneStatement
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivChar
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NoFormsOff
import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.APerTw
import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.DivRows3GIff
import Formalism.LocalToGlobal.FiniteTOf
import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.IsLinked
import Development.AbelianVarietyTheory.Definitions.Divisors.MapBaseTiedSel
import Development.AbelianVarietyTheory.Definitions.Divisors.CovolXOfCovol
import Development.AbelianVarietyTheory.Statements.PlaceShiftStatements.SingleIndexPlacesAreTwisted
import Development.AbelianVarietyTheory.Definitions.Divisors.SlopeTestRemainingChoicesAlt
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FinrankIsotEqIsotL
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraceInputsImplyCuspidalTrace
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspidalSpectrumFinitenessOfDecayHarishChandraStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CentralizerTorusEllipticElementRealPlaceStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompactRealPlaceTorusClassesSignVectorsStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraceSeparationOfIwahoriTraceStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PseudoCoefficientSeparation
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.GlRelationsOnKFiniteVectors
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FiniteDimensionalInvariantSubspace
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.NonFieldTypeVanishing
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.EllipticPart
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspidalTraceMultiplicityGiven
import Development.AbelianVarietyTheory.Proofs.HeightProofs.EventuallyConstructedPointHostSizeNumerical
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SizeParametersNonempty
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PartsPositiveScalarsWithoutCongruenceLengthsStatement
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.RallisConvOfHypotheses
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LiftRowsInjectiveAndTypePropertiesOfNonvanishingStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoublingIntegralsVanishOfAllLiftsVanishStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsVacuumVectorPrincipalCongruenceSupportStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsSumHyperbolicPlanesOrthogonalWittDecomposiStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FittingLaterStagesRowIsConstructionStateStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsEigenReadThirdLocal
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.E0ReadOfEigenLabeling
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitaryOfLocalLanglands
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SeriesLocalOfHypothesis

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.L2 Formalism.L2.Host Formalism.IndefR.NX ReciprocityTheory.Aut Formalism.AUTREP NumberField IsDedekindDomain GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.HeightCounting GlobalTheory.HeightCounting.Up
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.HeightCounting.Up

namespace PointStatements

theorem allSt_mono {p q : ∀ (K : Ctx) (B : Base) (f : Fr B.toPre) (T : TwDat B) (w : ColW B f T) (P : Pre2 K w), St P → Prop}
    (h : ∀ K B f T w P x, p K B f T w P x → q K B f T w P x) (hp : AllSt p) : AllSt q :=
  hp.trans (StepW.of_all fun _ _ _ _ _ _ _ H P x => h _ _ _ _ _ P x (H P x))

theorem allSt_and {p q : ∀ (K : Ctx) (B : Base) (f : Fr B.toPre) (T : TwDat B) (w : ColW B f T) (P : Pre2 K w), St P → Prop}
    (hp : AllSt p) (hq : AllSt q) : AllSt fun K B f T w P x => p K B f T w P x ∧ q K B f T w P x :=
  (StepW.and hp hq).trans (StepW.of_all fun _ _ _ _ _ _ _ H P x => ⟨H.1 P x, H.2 P x⟩)

end PointStatements

end GlobalTheory.HeightCounting.Up

end
