import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SemiposAtOfPositive
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormalProjectiveModel
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.JGenSpecializes
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemConeOfMem
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormsOfInduces
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsFlagFrame
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsProperToroidalModelStructureMap
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.GoodChi
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormsPullbackAlongCover
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoverNormsPullbackPower
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ExistsGenVal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NontrivialIsomClassInt
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SplitTorsAlgClosedFractionField
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsFrameCover
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TorsionCharEqOfEqOnTorsionStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TorsionCharacterCocycleDescentStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsDlogUniqueModuloPStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsTangentPresentationPrime
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FrameCombinationCoeffUnique
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsFrameComposeRingHomBaseChangeStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MapPairDetCovec
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExtensionPropertyPi
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RankOneBaseWeightEqCmTheta
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PushInvertibleModelOfIso
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ScaledTwistingSheafSpec
import Formalism.SharpRestriction.Divisibility.LocalNonemptiness.SubsingletonRankIndicatorIff
import Formalism.LocalToGlobal.LatticeGeometry.GeoTiedP
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.PointGlobalSectionsNeBot
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.NonemptyRingHomComplexOfLeContinuum
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ChiLenPicPushforwardOfIsClosedImmersion
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsClosedImmersionBaseChange
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.FinitePartLePreimageOfClosedFibreSubset
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DerivationDivisibleOfCocomm
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.AdmissibleStageOfPackage
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GrNormPush
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LocalSystemModelMap
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DividesOfNormBoundedPoints
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAdicColimitOfIsNilpotent
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsNnrealValuationOfAddValuation
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.WickVanishing.DofComm
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.WickVanishing.ActLin
import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ConstantCoeffEv
import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.FormalGroupLawCompMulNZero
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.HasChartsOfForallIsAffineOpen
import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.IsFormalGroupLawOfChartOfJetChart
import Development.AbelianVarietyTheory.BlockTheory.PoincareCuspForms.FormalGroupTorsionCharts
import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.MvPowerSeriesEvalOfPowMem
import Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.ZmodPrimeSqLocal
import ReciprocityTheory.DualLattices.IsFibreSq
import ReciprocityTheory.DualLattices.IsPairingValueAddRight
import ReciprocityTheory.DualLattices.NilSurjOfSqZero
import Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.UniversalDerivation
import ReciprocityTheory.DualLattices.SubMemSpan
import Development.AbelianVarietyTheory.Counterexamples.AbelianLawCounterexamples.HomExtendsOverDVRHolds
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.FrameLawsOfModuli
import Formalism.LocalToGlobal.ProjectiveLattices.LocFld
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SecondChernDegreeVanishesTrueSurfaces
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemBasicOpenOfMemClosure
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpecialFibreNotInClosure
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPolarizationTorsionTower
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.QuasiCompactZeroSec
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoToBidualOfLocalFrames
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentSurjective
import Development.AbelianVarietyTheory.Definitions.Divisors.IotaScalarOne
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TateTorusLeLieSpan
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsTorusAndQuotientHom
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsTrans
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AffineOpenChartCompStructureEqSpMap
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NonemptyClosureOfEmbedding
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LineModelTrueOfFalse
import Development.AbelianVarietyTheory.Definitions.ArchimedeanThetaValues.NonemptyGtAnOfToric
import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExistsCdvrFiniteExtension
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PtMapDualBCLeft
import Development.AbelianVarietyTheory.Definitions.TeichmullerDepth.PsJetEqToJetOfNonempty
import Formalism.LocalToGlobal.CharacterGerms.RowTieVal
import Formalism.LocalToGlobal.CharacterGerms.PlugUP
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.BddGood
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.MemMaximalIdealBall
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsFramedPointBaseChangeAlgHom
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.LieLatticeLocalBasisDescriptionStatement
import Development.AbelianVarietyTheory.Definitions.Divisors.NonemptyCuspFrame
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.TopRankPowers
import Development.AbelianVarietyTheory.Definitions.CMLattices.IntegralOf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.PairUnfoldPfA
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.FramedFlatCoordinates
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.AdelicDegreeTameRamification
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.VecMulMapEqZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModelExistsAfterBaseChange
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsQProjOverOfIsIso
import Formalism.LocalToGlobal.IndefiniteForms.IndefiniteTree.FunctionalLowerBoundOfConditionsNumeric
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PerValNeZero
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsLatBasisZero
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PointDerivationAffineOpenEqFderivEtaleChart
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.DiscreteTopologySpanOfLinearIndependent
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsGlobalHolomorphicLatticeBasisConvex
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.ExpRowsPf
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsAffineStableLieEigenspaceFrame
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SmoothOfAlgClosedUnif
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FramesExist
import Development.AbelianVarietyTheory.Proofs.HeightProofs.IsValLineLogNormAtIffEmbedding
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ModuliPointIntegralFrameAfterFiniteExtension
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.ChartTransportSt
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.ExistsTruncatedIntegralChart
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.ChartPrimTrPfA
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.FBMapPf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.JetSubstPCompJetBC
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsRawChartFramesBaseChange
import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.RigidificationAtOriginBaseChange
import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.RigidificationAtOriginIffPullback
import Development.AbelianVarietyTheory.Definitions.Divisors.WedgeNrmLeOfWedgeNormLe
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.ThValDescIn
import Development.AbelianVarietyTheory.CrystallinePeriods.RingBasics
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitChartAt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUnitNatCastRes
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.IsVtOverIsUUOverBaseChange
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ConnectionLinearInSection
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ThetaValueWeightTriangularFrame
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.TripleProductTorusPeriodicBounded
import Development.AbelianVarietyTheory.Proofs.TorusSplitting.TorusAtExistsOfParts
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.TorusAtPf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.SplitO
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.HfRsmulRight
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.PropASt
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.CardSupportLeAndSumTwoPowLe
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.PropAC
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.DifferentiableZeroModeLiftOf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ContinuousPointNormSqQuotient
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorusC
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.TiledBoundaries.TileIntegral
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.ChartValJ
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.MemSuppOnIffIdemMulOfNatural
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsUniqueHomogeneousIdealFixedSubalgebra
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.SumBoundStatementPfA
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.RhGradFPf
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsBlockOrderedSumEquivTrueIndex
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ShortValTotOfPinned
import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.CuspFormsVanishingOffFramesLeSpanShortThetaStatement
import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.ChartIndependenceUnconditional
import Development.AbelianVarietyTheory.Definitions.Divisors.TupleReadBaseTupleEqFamily
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsPullbackSectionToLevelCover
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsFiniteQCHomModOfExact
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LinearIndependentFlagVec
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CoefSetNonemptyOfNonneg
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PullbackAndTensorModule
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RestrictionPoincareBundle
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CmHostUnitAddConjEqOne
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsGrpPullbackPtC
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ApolarMonomial
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NatToBEquivariant
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CoeIntEmbEmbP
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsTangentEquiv
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FibLatPreSubSpanSubLe
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsExtendResidue
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LatAtOmPHtEval
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UniMatBlockTriangular
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DiagMatLower
import Development.AbelianVarietyTheory.BlockTheory.JetGauges.SplitUnramifiedPlaces
import Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt

set_option autoImplicit false

noncomputable section

open CategoryTheory AlgebraicGeometry TopologicalSpace NumberField IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory GlobalTheory.CechPic
open Formalism.BasicNotions GlobalTheory.Cartier GlobalTheory.CxPts GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.Mean4O GlobalTheory.CoverNorm GlobalTheory.VertForm

namespace GlobalTheory.NefHodgeTateAt

section Curves

variable {k : Type} [CommRing k] [Module.Finite ℤ k] {X : Scheme.{0}} {p : X ⟶ Sp k}

theorem topSelf_of_cls_eq_add (hp : IsProjOver p) {N A B : LB X} (hN : N.IsLB) (hA : A.IsLB) (hB : B.IsLB)
    (h : cls N hN = cls A hA + cls B hB) (Z : Scheme.{0}) (i : Z ⟶ X) [IsClosedImmersion i] (κ : Type) [Field κ] [Finite κ]
    [Algebra κ Γ(Z, ⊤)] (hd : topologicalKrullDim Z = 1) :
    topSelfIntersection κ (N.pull i) 1 = topSelfIntersection κ (A.pull i) 1 + topSelfIntersection κ (B.pull i) 1 := by
  obtain ⟨hpr, H, hH⟩ := (isProjOver_iff_isProper_and_exists_isAmpleLB p).1 hp
  have : IsFinite (spMap (Int.castRingHom k)) := by
    rw [spMap, IsFinite.SpecMap_iff]
    exact (RingHom.finite_algebraMap (A := ℤ) (B := k)).2 inferInstance
  have e : strHom κ Z ≫ spMap (Int.castRingHom κ) = i ≫ p ≫ spMap (Int.castRingHom k) :=
    specZIsTerminal.hom_ext _ _
  have : IsProper (strHom κ Z ≫ spMap (Int.castRingHom κ)) := by rw [e]; infer_instance
  have : IsProper (strHom κ Z) := IsProper.of_comp _ (spMap (Int.castRingHom κ))
  have e2 (L : LB X) : topSelfIntersection κ (L.pull i) 1 = interNum κ (structureModule Z) ![L.pull i] := by
    rw [topSelf_def]
    congr 1
    funext j
    fin_cases j
    rfl
  rw [e2, e2, e2]
  refine interNum_one_of_cls_eq_add (hH.pull_of_isClosedImmersion i) hd (LB.isLB_pull hN i) (LB.isLB_pull hA i)
    (LB.isLB_pull hB i) ?_
  rw [cls_pull hN, cls_pull hA, cls_pull hB, h, map_add]

theorem topSelf_pow (hp : IsProjOver p) (L : HermLB p) (m : ℕ) (Z : Scheme.{0}) (i : Z ⟶ X) [IsClosedImmersion i]
    (κ : Type) [Field κ] [Finite κ] [Algebra κ Γ(Z, ⊤)] (hd : topologicalKrullDim Z = 1) :
    topSelfIntersection κ ((L.pow m).B.pull i) 1 = m * topSelfIntersection κ (L.B.pull i) 1 := by
  have c (n : ℕ) : cls (L.pow n).B (L.pow n).isLB = n • cls L.B L.isLB := cls_lbPow L.isLB n _
  induction m with
  | zero =>
    have := topSelf_of_cls_eq_add hp (L.pow 0).isLB (L.pow 0).isLB (L.pow 0).isLB (by rw [c]; simp) Z i κ hd
    simp only [Nat.cast_zero, zero_mul]
    linarith
  | succ n ih =>
    rw [topSelf_of_cls_eq_add hp (L.pow (n + 1)).isLB (L.pow n).isLB L.isLB (by rw [c, c, succ_nsmul]) Z i κ hd, ih]
    push_cast
    ring

end Curves

open Formalism.MainNotions Formalism.L2.Pj Formalism.BasicNotions.TH Formalism.L2.Theta ReciprocityTheory.ChartRestriction.G.FD GlobalTheory.AllWt GlobalTheory.CompHt GlobalTheory.CovTop GlobalTheory.CovHt GlobalTheory.Mean4
open scoped ENNReal Classical

end GlobalTheory.NefHodgeTateAt
