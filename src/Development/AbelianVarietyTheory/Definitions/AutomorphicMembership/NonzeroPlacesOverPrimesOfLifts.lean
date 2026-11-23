import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NonzeroPlacesOverPrimesLifts
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FinTypRepCast
import Development.AbelianVarietyTheory.Counterexamples.RotationExamples.IrrationalRotationBk
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.LevelHyperspecialTrivialCharacterSplitsOffPlaces
import Formalism.RankGapBounds.RankGapProofs.WeightedMeanData
import Formalism.ThickAverageLoss.ThickAverageProofs.Balance
import Formalism.SizeWindowBrackets.ChainSlopeWindows.SubThreeMulLogTwoLe
import Formalism.FlagUnipotentLattices.CardSubmodulesAndLinearEquivBounds
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsRanksRankValFrame
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.MPowFiveMulFMulLLe
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.BadCharacterBound
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.WeightRequirementOfValid
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsWeightsInWindows
import Formalism.GL3MeanSquares.PrimeCountAsymptoticInProgressions
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.UniversalCharts.ChartLawPf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RigidArc
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RigidSys
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.IsIntegralOfAll
import Formalism.DegreeFormula.PointDegree.PermExpInj
import Formalism.DegreeFormula.PointDegree.PowSum
import Formalism.SharpRestriction.Divisibility.IntegralModelsLocalData
import Formalism.SharpRestriction.Divisibility.LatticeTransfer
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.LocalFormOfWeakForm
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.ExistsGlobalFamilyZeroChoice
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.ExistsGlobalFamilyQuotientBounded
import Formalism.LocalToGlobal.ProjectiveLattices.RegXInst
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.InnerEuclideanEmbeddingEqAverage
import Formalism.LocalRingCardinality.NFLeTwoMulTSq
import Formalism.LocalToGlobal.ProjectiveLattices.XPlusWireT
import Development.AbelianVarietyTheory.Definitions.HeightFunctions.ConclOfInputs4
import Formalism.LocalToGlobal.ProjectiveLattices.UnifDom
import Formalism.LocalToGlobal.ProjectiveLattices.VolProofs
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.GaloisSideTwistedSelmerAuxiliaryPrimes
import Formalism.LocalToGlobal.Columns.AtTOwedU
import Formalism.LocalToGlobal.Columns.AtTOwedV
import Formalism.GL3MeanSquares.HookFormulaTorsion.ConditionIffDualEqFunctional
import Formalism.GL3MeanSquares.HookFormulaTorsion.LemmaCTwistRamified
import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices
import Formalism.SharpRestriction.Divisibility.ClosedSizeLink.AdmissibleFamilyOfThreshold
import Formalism.GaussJetBounds.StatementA
import Formalism.GaussJetBounds.StatementJ
import Formalism.GaussJetBounds.StatementK
import Formalism.IncomingBounds.LevelTail
import Formalism.TorsionNormIteration.InverseIntegralClasses.NormNatCastOfNotDvd
import Formalism.FormalGroupWitt.FormalGroupWittProofs.CongrV
import Formalism.FormalGroupWitt.FormalGroupWittProofs.WittTeichmullerRoot
import Formalism.SubspaceCounting.SubspaceCountingProofs.TopsChoicePartB
import Formalism.SubspaceCounting.SubspaceCountingProofs.DetDivides
import Formalism.GrowthSums.FactorialBaseGrowth.QuadraticExponentIdentity
import Formalism.GrowthSums.FactorialBaseGrowth.LogCoef
import Formalism.GrowthSums.FactorialBaseGrowth.PathBasisOfCount
import Formalism.SharpRestriction.GrowthBounds.RootWeights.FiltrationAdjointStable
import Formalism.ThetaLogCoordinates.DualWeylCoordinates.DualWeylProofs.QcEvGLDetUZpow
import Formalism.ThetaLogCoordinates.DualWeylCoordinates.DualWeylProofs.QcEvGLGenPtInt
import Formalism.ThetaLogCoordinates.DualWeylCoordinates.DualWeylProofs.QcColESymmVal
import Formalism.ThetaLogCoordinates.DualWeylCoordinates.DualWeylProofs.BCoreT
import Formalism.ThetaLogCoordinates.DualWeylCoordinates.DualWeylProofs.QbBasisApply
import Formalism.ThetaLogCoordinates.DualWeylCoordinates.DualWeylProofs.EqSmulCanonicalOfUnipotentInvariant
import Formalism.ThetaLogCoordinates.DualWeylCoordinates.DualWeylProofs.QxPhApply
import Formalism.ThetaLogCoordinates.DualWeylCoordinates.DualWeylProofs.QsSymDMatEq
import Formalism.ThetaLogCoordinates.DualWeylCoordinates.DualWeylProofs.HighestWeightIntegral
import Formalism.PolynomialDimension.MultinomialDepth.FockGaussComparisonHolds
import Formalism.PolynomialDimension.MultinomialDepth.FrameMultinomialBoundHolds
import Formalism.MahlerMeasure.GamLead
import Formalism.ThetaLogCoordinates.BihomogeneousPairs.FinalLL
import Formalism.PolynomialDimension.DigitClassSize
import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.CMFieldLemmas
import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.PlaceB
import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.RelativePresentationOfD7
import Formalism.LocalToGlobal.LatticeGeometry.GeometryDefinitions.ClsSum
import Formalism.SharpRestriction.GlobalSchurBounds.ShortIntervalPrimes
import Development.AutomorphicArithmetic.ConductorsKronecker.Imports
import Formalism.LocalRingCardinality.SpanPowerMembership.SizeData₂
import Formalism.LogVandermondeBounds.LogVandermondeProofs.PrimePowerSubgroupTrivial
import Formalism.LogVandermondeBounds.LogVandermondeProofs.MulSingleMulApplySelf
import Formalism.LogVandermondeBounds.LogVandermondeProofs.UpperPlaceHolds
import Formalism.GL3MeanSquares.ConcavityEquidistribution
import Formalism.GL3MeanSquares.HookFormulaTorsion.OneAddInvPowLeExpOne
import Formalism.LocalToGlobal.UnitaryNorms.RealPl
import Formalism.LocalToGlobal.IndefiniteReal.EigenDecomposition
import Formalism.LocalRingCardinality.IntCastDvdOfDvdIntegers
import Formalism.LocalRingCardinality.SpanPowerMembership.GatAdd
import Formalism.TorsionNormIteration.InverseIntegralClasses.IsHomOfSubstEqSmul
import Formalism.TorsionNormIteration.InverseIntegralClasses.LTLemma
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.StatementGK
import Formalism.LocalToGlobal.GroupLattices.LevelCharts.AtGLev
import Formalism.LocalRingCardinality.SpanPowerMembership.NZRowC
import Formalism.EllipticTorsion.EllipticTorsionProofs.PadicMult
import Formalism.EllipticTorsion.EllipticTorsionProofs.JetsCube
import Formalism.GL3MeanSquares.HookFormulaTorsion.FourFoldOrthogonalSum
import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.BiextensionHypothesesOfLevelOne
import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.RestrictSecondZeroInVarOne
import Formalism.LocalToGlobal.TorsionIntegrality.CMGoodModels.CM4
import Formalism.LocalToGlobal.TorsionIntegrality.TorsionTranslationPowers.NonsingularJetNorms.ScaledTorsionPointNonsingular
import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.StdOK
import Formalism.LocalToGlobal.GlobalTheory.GL3.PUnitBasis
import Formalism.LocalToGlobal.GlobalTheory.GL3.IsometryLinkageTrivialLevel
import Formalism.LocalToGlobal.GlobalTheory.GL3.IsometryLinkageAtSplitPrime
import Formalism.LocalToGlobal.PairingIndexBounds.ModelLatticeMoves.ModelMoves
import Formalism.LocalToGlobal.PairingIndexBounds.ModelLatticeMoves.GenModelXi
import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.KerEquivGen
import Formalism.LocalToGlobal.Columns.TiedCB
import Formalism.LocalToGlobal.Columns.TiedUpDnA
import Formalism.LocalToGlobal.Columns.WithTopLevGTop
import Formalism.LocalToGlobal.Columns.TiedGlCore
import Formalism.LocalToGlobal.Columns.TargetChF
import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.ComplexMultiplication.ExtEmbEquivComp
import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.RatKDeg
import Formalism.LocalToGlobal.Columns.ChainLawPhiPf
import Formalism.LocalToGlobal.Columns.ChainLawTw
import Formalism.LocalToGlobal.KernelLattices.KerMemPin
import Formalism.LocalToGlobal.KernelLattices.KerMtPin
import Formalism.LocalToGlobal.IndefiniteReal.PartsRow
import Formalism.LocalToGlobal.IndefiniteReal.ThetaFireRow
import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.PlaceS
import Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.CmpCMemFunMod
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.QuadTie
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.WeightedChartPullback.WchartPullLe
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsUniqueFactorCompletedStalkOfMap
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PlaceDivisors.SiegelPullbackTransfer.AdelicGL2ExtOfLocalComponents
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.HasAlgebraicChartsOfIsStandardSmooth
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.UnifUniqSt
import ReciprocityTheory.CommutativeAlgebra.SaturatedChains.IsSaturatedChain
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.InjPrimeTo
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.ExistsIrrCharAddStatement
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.ExistsIsCharEqAddOfPairNeZeroStatement
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.FiniteGroupFunctionPairingAddNatPosSymmStatement
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.IsCharOfIsPrimitiveRoot
import Development.AbelianVarietyTheory.Proofs.HeightProofs.IsLieDataCircle
import Formalism.LocalToGlobal.ProjectiveLattices.HeckeStabSet
import Formalism.LocalToGlobal.ProjectiveLattices.CuspFDOf
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.InnerProductPositiveDefinite
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsCharpoly
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsNonnegShaOK
import ReciprocityTheory.DualLattices.SeriesState
import ReciprocityTheory.DualLattices.TangentPairingStatement
import ReciprocityTheory.DualLattices.NsetExpInjectiveSurjective
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsAddValuationLeIffEqIff
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RayClassPartialZetaContinuation
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.InfinitelyManyPrimesInRayClass
import Development.AutomorphicArithmetic.PrimeDiscriminants.ExistsHost
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SpacesNormHasFrame
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ClassNumberLeAbsDiscrOfFinrankEqTwo
import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.GROWCountStatement
import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.ArakelovDegreeEqDegreeOfFamily
import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.InhabSt
import Formalism.LocalToGlobal.ProjectiveLattices.UnitIndepOfCharts
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.IsotropicOutsideLine
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.ProdCastLESucc
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.FirstMinimumPos
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.ArakelovInstances.PnormInvStatement
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.SumBoundStatement
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.CuspidalExponentialDecay
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditionalStatement
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.HomExtOfLocalRingPoints
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsRootNear
import Formalism.LocalToGlobal.ProjectiveLattices.CuspMulOf
import Development.AbelianVarietyTheory.Proofs.HeightProofs.PowClassNumberIntegral
import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsHeatZero
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HermitianCodeWordStagesRingOfIntegersFull
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HermitianCodeWordStagesHasRootOfUnity
import Development.AbelianVarietyTheory.Proofs.HeightProofs.HeckeIdealEqOfRay
import Development.AbelianVarietyTheory.PublishedTheorems.WeberRayClassFields.WeberRayFieldSt
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroupStatement
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsHyperbolicCompletion
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AdelicUnitaryTopology
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ChainCompatibleTwistTransport
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ResCharConj
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsResidueCharPow
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.LogClassNumberLeLogAbsDiscrDiv
import Development.AbelianVarietyTheory.Proofs.HeightProofs.FieldSizeAdjoinKthRoot
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsFieldIdealsPrincipal
import Development.AbelianVarietyTheory.Proofs.HeightProofs.SzAdjoinRootOfUnity
import Development.AbelianVarietyTheory.Proofs.HeightProofs.SzFieldRangeEmbedding
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsImagQuadraticHost
import Development.AbelianVarietyTheory.Proofs.HeightProofs.FieldSizeMonotone
import Development.AbelianVarietyTheory.Proofs.HeightProofs.HostXiOrderBounds
import Development.AbelianVarietyTheory.Proofs.HeightProofs.FieldSizeSupAdd
import Development.AbelianVarietyTheory.Proofs.HeightProofs.NatCastMulFinrankMemDifferentIdeal
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsRichSmall
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemFOAssembledIff
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HermitianCodeWordStagesTypeNormsPrincipal
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsStdLarge
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsFamPOfKits
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.SzRowNumAt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.HostPins
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelEqParahoricCategory
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.StepBoxIffStepSuppDeg
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AdelicUnitaryUnimodularExistsFundamentalDomain
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsUniqueNormalizedHaarMeasureAdelicUnitary
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeCharacterInfinityExponentGroupLaws
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsRefill
import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.SelfDualAtColLevel

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3.Tr

namespace GlobalTheory.Mem.R3.Rw.StateChecks

attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI

variable {K : Ctx} {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T} {Wt : Set B.places.Pl}

theorem realData_heq_self {C : Cols B} (a : Late B C) {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type}
   {Ks : Type} [Field Ks] [NumberField Ks] [iK : Algebra Ks a.D.what₂.LL] {A : FamIn3 a.D.what₂.LL G Pl0 I0 (List ℕ) T a.D.R.m} (R : RealDat3 a.D A Ks) :
   HEq R (real3 (a := a) a R) := by
  have eY : R.ioY = ((by with_unfolding_all exact ((@RealDat.ioY a.D G _ _ Pl0 T (famM a A.A) Ks _ _ (alg a iK) (real a R.toRealDat)) :)) : type_of% R.ioY) :=
    eq_of_heq ((by with_unfolding_all exact ((real_ioY (a := a) a R.toRealDat) :)))
  have eX : R.ioX = ((by with_unfolding_all exact ((@RealDat.ioX a.D G _ _ Pl0 T (famM a A.A) Ks _ _ (alg a iK) (real a R.toRealDat)) :)) : type_of% R.ioX) :=
    eq_of_heq ((by with_unfolding_all exact ((real_ioX (a := a) a R.toRealDat) :)))
  exact (by with_unfolding_all exact ((heq_of_eq (congrArg₂ (fun (y : type_of% R.ioY) (x : type_of% R.ioX) =>
    ({ R with toRealDat := { R.toRealDat with ioY := y, ioX := x } } : RealDat3 a.D A Ks)) eY eX)) :))

theorem rowsSame_refl {Z : w.Lt} {p0 : BaseLevelRowSide (w.D Z)} (t : RowsT K w Z Wt p0) : RowsSame t t where
  Xg := rfl
  tr := rfl
  core := (by with_unfolding_all exact ((HEq.refl t.r.z.core) :))
  R := (by with_unfolding_all exact ((realData_heq_self Z (iK := t.r.z.alg) t.r.z.R) :))
  cG := HEq.rfl
  tup := HEq.rfl
  tupT := HEq.rfl
  PY := HEq.rfl
  PW := HEq.rfl
  rep := HEq.rfl
  jE := HEq.rfl
  heq_eigen_embedding_zero := HEq.rfl
  eE := HEq.rfl
  jA := HEq.rfl
  jA0 := HEq.rfl
  eMt := HEq.rfl
  eW := HEq.rfl
  jW := HEq.rfl
  eRR := HEq.rfl
  eRR0 := HEq.rfl

def St.rowsAre {P : Pre2 K w} (x : St P) (h : ∀ j v, 1 ≤ j → j ≤ B.R.m → x.o.η j v = P.q.eta j v) :
    RowsAre (w.st x.o.Z) w.I P.hX T P.Wt (Equiv.refl _) x.s.p0 where
  z := x.m.z
  intersectionNumber_baseChange := x.m.intersectionNumber_baseChange
  Y := x.r.Y
  Z := x.r.Z.full fun j v a b => (h j v a b).trans (x.m.eta j v).symm
  tup_ix t := (congrFun x.r.tup t).trans (x.m.tup t)

section Std

variable {C : Cols B} {a : Late B C} (b : Late B C) {px : PreX B.toPre} {I : ColIn B px} {hX : B.fields.Ok}

def cpR (z : Dat a.st I hX T Wt) :
    @RealDat3 b.st.toD7 _ _ _ _ _ _ (famR b.st I hX (usedOf I T Wt) z.Xg z.tr) (coreJ b z.core).Q.c.F _ _ ((by exact @alg B C a b (↥(@ReciprocityTheory.ChartRestriction.G.Geo.Tor.Coeff.F (@Formalism.HC.HostRaw.E (@Late.st B C a).toD7.R.toFrame (@Formalism.HC.HostAx.toHostRaw (@Late.st B C a).toD7.R.toFrame (@Host.toHostAx (@Late.st B C a).toD7.R (@Late.st B C a).toD7.host))) (@Formalism.HC.HostRaw.instField (@Late.st B C a).toD7.R.toFrame (@Formalism.HC.HostAx.toHostRaw (@Late.st B C a).toD7.R.toFrame (@Host.toHostAx (@Late.st B C a).toD7.R (@Late.st B C a).toD7.host))) (@Formalism.HC.HostRaw.instNF (@Late.st B C a).toD7.R.toFrame (@Formalism.HC.HostAx.toHostRaw (@Late.st B C a).toD7.R.toFrame (@Host.toHostAx (@Late.st B C a).toD7.R (@Late.st B C a).toD7.host))) (Formalism.L2.Pj.instCMHost (@Late.st B C a).toD7) (@Formalism.L2.Pj.Par.H (@Late.st B C a).toD7 (@Formalism.L2.Pj.Core.Q (@Late.st B C a).toD7 (@Formalism.L2.Pj.CoreJ.toCore (@Late.st B C a).toD7 (@Dat.core (@Late.st B C a) px I hX T Wt z)))) (@Formalism.L2.Pj.Par.l (@Late.st B C a).toD7 (@Formalism.L2.Pj.Core.Q (@Late.st B C a).toD7 (@Formalism.L2.Pj.CoreJ.toCore (@Late.st B C a).toD7 (@Dat.core (@Late.st B C a) px I hX T Wt z)))) (@Formalism.L2.Pj.Par.c (@Late.st B C a).toD7 (@Formalism.L2.Pj.Core.Q (@Late.st B C a).toD7 (@Formalism.L2.Pj.CoreJ.toCore (@Late.st B C a).toD7 (@Dat.core (@Late.st B C a) px I hX T Wt z)))))) (@IntermediateField.toField Rat Complex Rat.instField Complex.instField (@DivisionRing.toRatAlgebra Complex (@Field.toDivisionRing Complex Complex.instField) Complex.instCharZero) (@ReciprocityTheory.ChartRestriction.G.Geo.Tor.Coeff.F (@Formalism.HC.HostRaw.E (@Late.st B C a).toD7.R.toFrame (@Formalism.HC.HostAx.toHostRaw (@Late.st B C a).toD7.R.toFrame (@Host.toHostAx (@Late.st B C a).toD7.R (@Late.st B C a).toD7.host))) (@Formalism.HC.HostRaw.instField (@Late.st B C a).toD7.R.toFrame (@Formalism.HC.HostAx.toHostRaw (@Late.st B C a).toD7.R.toFrame (@Host.toHostAx (@Late.st B C a).toD7.R (@Late.st B C a).toD7.host))) (@Formalism.HC.HostRaw.instNF (@Late.st B C a).toD7.R.toFrame (@Formalism.HC.HostAx.toHostRaw (@Late.st B C a).toD7.R.toFrame (@Host.toHostAx (@Late.st B C a).toD7.R (@Late.st B C a).toD7.host))) (Formalism.L2.Pj.instCMHost (@Late.st B C a).toD7) (@Formalism.L2.Pj.Par.H (@Late.st B C a).toD7 (@Formalism.L2.Pj.Core.Q (@Late.st B C a).toD7 (@Formalism.L2.Pj.CoreJ.toCore (@Late.st B C a).toD7 (@Dat.core (@Late.st B C a) px I hX T Wt z)))) (@Formalism.L2.Pj.Par.l (@Late.st B C a).toD7 (@Formalism.L2.Pj.Core.Q (@Late.st B C a).toD7 (@Formalism.L2.Pj.CoreJ.toCore (@Late.st B C a).toD7 (@Dat.core (@Late.st B C a) px I hX T Wt z)))) (@Formalism.L2.Pj.Par.c (@Late.st B C a).toD7 (@Formalism.L2.Pj.Core.Q (@Late.st B C a).toD7 (@Formalism.L2.Pj.CoreJ.toCore (@Late.st B C a).toD7 (@Dat.core (@Late.st B C a) px I hX T Wt z)))))) (@Dat.alg (@Late.st B C a) px I hX T Wt z))) :=
  (by with_unfolding_all exact ((real3 b (iK := z.alg) z.R) :))

set_option maxHeartbeats 2000000 in

theorem std_cpR (z : Dat a.st I hX T Wt) (h : z.Std) :
    @BrgStd b.st px I hX (usedOf I T Wt) z.Xg z.tr (coreJ b z.core).Q.c.F _ _ ((by exact @alg B C a b (↥(@ReciprocityTheory.ChartRestriction.G.Geo.Tor.Coeff.F (@Formalism.HC.HostRaw.E (@Late.st B C a).toD7.R.toFrame (@Formalism.HC.HostAx.toHostRaw (@Late.st B C a).toD7.R.toFrame (@Host.toHostAx (@Late.st B C a).toD7.R (@Late.st B C a).toD7.host))) (@Formalism.HC.HostRaw.instField (@Late.st B C a).toD7.R.toFrame (@Formalism.HC.HostAx.toHostRaw (@Late.st B C a).toD7.R.toFrame (@Host.toHostAx (@Late.st B C a).toD7.R (@Late.st B C a).toD7.host))) (@Formalism.HC.HostRaw.instNF (@Late.st B C a).toD7.R.toFrame (@Formalism.HC.HostAx.toHostRaw (@Late.st B C a).toD7.R.toFrame (@Host.toHostAx (@Late.st B C a).toD7.R (@Late.st B C a).toD7.host))) (Formalism.L2.Pj.instCMHost (@Late.st B C a).toD7) (@Formalism.L2.Pj.Par.H (@Late.st B C a).toD7 (@Formalism.L2.Pj.Core.Q (@Late.st B C a).toD7 (@Formalism.L2.Pj.CoreJ.toCore (@Late.st B C a).toD7 (@Dat.core (@Late.st B C a) px I hX T Wt z)))) (@Formalism.L2.Pj.Par.l (@Late.st B C a).toD7 (@Formalism.L2.Pj.Core.Q (@Late.st B C a).toD7 (@Formalism.L2.Pj.CoreJ.toCore (@Late.st B C a).toD7 (@Dat.core (@Late.st B C a) px I hX T Wt z)))) (@Formalism.L2.Pj.Par.c (@Late.st B C a).toD7 (@Formalism.L2.Pj.Core.Q (@Late.st B C a).toD7 (@Formalism.L2.Pj.CoreJ.toCore (@Late.st B C a).toD7 (@Dat.core (@Late.st B C a) px I hX T Wt z)))))) (@IntermediateField.toField Rat Complex Rat.instField Complex.instField (@DivisionRing.toRatAlgebra Complex (@Field.toDivisionRing Complex Complex.instField) Complex.instCharZero) (@ReciprocityTheory.ChartRestriction.G.Geo.Tor.Coeff.F (@Formalism.HC.HostRaw.E (@Late.st B C a).toD7.R.toFrame (@Formalism.HC.HostAx.toHostRaw (@Late.st B C a).toD7.R.toFrame (@Host.toHostAx (@Late.st B C a).toD7.R (@Late.st B C a).toD7.host))) (@Formalism.HC.HostRaw.instField (@Late.st B C a).toD7.R.toFrame (@Formalism.HC.HostAx.toHostRaw (@Late.st B C a).toD7.R.toFrame (@Host.toHostAx (@Late.st B C a).toD7.R (@Late.st B C a).toD7.host))) (@Formalism.HC.HostRaw.instNF (@Late.st B C a).toD7.R.toFrame (@Formalism.HC.HostAx.toHostRaw (@Late.st B C a).toD7.R.toFrame (@Host.toHostAx (@Late.st B C a).toD7.R (@Late.st B C a).toD7.host))) (Formalism.L2.Pj.instCMHost (@Late.st B C a).toD7) (@Formalism.L2.Pj.Par.H (@Late.st B C a).toD7 (@Formalism.L2.Pj.Core.Q (@Late.st B C a).toD7 (@Formalism.L2.Pj.CoreJ.toCore (@Late.st B C a).toD7 (@Dat.core (@Late.st B C a) px I hX T Wt z)))) (@Formalism.L2.Pj.Par.l (@Late.st B C a).toD7 (@Formalism.L2.Pj.Core.Q (@Late.st B C a).toD7 (@Formalism.L2.Pj.CoreJ.toCore (@Late.st B C a).toD7 (@Dat.core (@Late.st B C a) px I hX T Wt z)))) (@Formalism.L2.Pj.Par.c (@Late.st B C a).toD7 (@Formalism.L2.Pj.Core.Q (@Late.st B C a).toD7 (@Formalism.L2.Pj.CoreJ.toCore (@Late.st B C a).toD7 (@Dat.core (@Late.st B C a) px I hX T Wt z)))))) (@Dat.alg (@Late.st B C a) px I hX T Wt z)))
      (@RealDat3.toRealDat _ _ _ _ _ _ _ _ _ _ _ (kc% (alg b z.alg)) (cpR b z)) := by
  kexactB h

set_option maxHeartbeats 2000000 in

theorem std_of_copy (z₀ : Dat a.st I hX T Wt) (z : Dat b.st I hX T Wt) (h1 : z.Xg = z₀.Xg) (h2 : z.tr = z₀.tr)
    (h3 : HEq z.core (coreJ b z₀.core)) (h4 : HEq z.R (real3 b (iK := z₀.alg) z₀.R)) (h : z₀.Std) : z.Std := by
  obtain @⟨Xg, tr, core, al, alg_eq, R, cG, geo, pins, lev, idG, good, mu, l1, l2⟩ := z
  dsimp only at h1 h2 h3 h4
  subst h1 h2
  obtain rfl : core = coreJ b z₀.core := eq_of_heq h3
  have e : al = (by with_unfolding_all exact ((alg b z₀.alg) :)) := by
    refine Algebra.algebra_ext _ _ fun y => B.embLL.injective ?_
    exact (alg_eq y).trans ((by with_unfolding_all exact ((z₀.alg_eq ((y))).symm : _)))
  subst e
  obtain rfl : R = cpR b z₀ := eq_of_heq (h4.trans ((by with_unfolding_all exact ((HEq.refl (cpR b z₀)) :))))
  exact std_cpR b z₀ h

end Std

section StdState

theorem St.std {P : Pre2 K w} (x : St P) : x.m.z.Std :=
  std_of_copy (B := B) (C := w.C) (a := P.Z₀) x.o.Z P.z x.m.z x.m.Xg x.m.tr ((by with_unfolding_all exact (x.copy.core :))) ((by with_unfolding_all exact (x.copy.R :))) P.std

end StdState

end GlobalTheory.Mem.R3.Rw.StateChecks

end
