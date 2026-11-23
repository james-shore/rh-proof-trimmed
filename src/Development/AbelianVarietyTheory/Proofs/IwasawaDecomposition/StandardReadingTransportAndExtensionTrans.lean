import Mathlib
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.StdCopy
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIntermediateCoefficientPlaceBetweenStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CuspFormTypeEqAtCorrespondingLiftsStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TameCharactersTypePrimesEqOfExtensionStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ReferenceTupleLiftFormsPassToCoeffEnlargementStatement
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.AdmissibleDiscreteSeriesOfHasParam
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.HarishChandraModulesOn
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.DsExistsOfDiscreteSeriesExists
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
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.TwistedLevelValues
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
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TupTiedOfMuIs
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsLayerParametersAdmissible
import Formalism.LocalToGlobal.Columns.ColumnsProofs.HeckeFieldSplit

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr

namespace GlobalTheory.Mem.R3.Rw.StdTr

theorem heq_fin_apply {m m' : ℕ} {f : Fin m → ℕ} {g : Fin m' → ℕ} (h : HEq g f) (hm : m' = m) (i : Fin m) (i' : Fin m')
    (hi : (i : ℕ) = i') : g i' = f i := by
  subst hm
  cases h
  exact congrArg g (Fin.ext hi.symm)

theorem heq_fin_mid {m m' : ℕ} {f : Fin m → ℕ} {g : Fin m' → ℕ} (h : HEq g f) (hm : m' = m) (i : Fin m) (i' : Fin m')
    (hi : (i : ℕ) = i') (k : Fin (f i)) : ∃ k' : Fin (g i'), (k : ℕ) = k' :=
  ⟨⟨k, lt_of_lt_of_eq k.2 (heq_fin_apply h hm i i' hi).symm⟩, rfl⟩

theorem heq_mid {α β : Type} (h : β = α) (a : α) : ∃ b : β, HEq b a := ⟨cast h.symm a, cast_heq _ _⟩

set_option maxHeartbeats 1000000 in

theorem ext_trans {B₁ B₂ B₃ : Base} {f₁ f₂ f₃ T₁ T₂ T₃} {w₁ : ColW B₁ f₁ T₁} {w₂ : ColW B₂ f₂ T₂} {w₃ : ColW B₃ f₃ T₃} {Z₁ : w₁.Lt} {Z₂ : w₂.Lt} {Z₃ : w₃.Lt} {h₁ h₂ h₃ W₁ W₂ W₃} {z₁ : Dat (w₁.st Z₁) w₁.I h₁ T₁ W₁} {z₂ : Dat (w₂.st Z₂) w₂.I h₂ T₂ W₂} {z₃ : Dat (w₃.st Z₃) w₃.I h₃ T₃ W₃} (e₁₂ : Enl B₁ B₂) (e₂₃ : Enl B₂ B₃) (x : Ext z₁ z₂) (y : Ext z₂ z₃) :
    Ext z₁ z₃ := by
  have hmm : (w₂.st Z₂).toD7.R.m = (w₁.st Z₁).toD7.R.m := congrArg (fun P : Pre => P.R.m) e₁₂.1
  have hm : ∀ i : Fin (w₁.st Z₁).toD7.R.m, ∃ i' : Fin (w₂.st Z₂).toD7.R.m, (i : ℕ) = i' :=
    fun i => ⟨⟨i, lt_of_lt_of_eq i.2 hmm.symm⟩, rfl⟩
  refine @Ext.mk B₁ B₃ f₁ f₃ T₁ T₃ w₁ w₃ Z₁ Z₃ h₁ h₃ W₁ W₃ z₁ z₃ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_
  · kexactB HEq.trans y.H x.H
  · kexactB HEq.trans y.l x.l
  · kexactB HEq.trans y.c x.c
  · kexactB HEq.trans y.Dw x.Dw
  · kexactB HEq.trans y.Xo x.Xo
  · kexactB HEq.trans y.U x.U
  · kexactB HEq.trans y.V x.V
  · kexactB HEq.trans y.dict x.dict
  · kexactB HEq.trans y.mu x.mu
  · kexactB HEq.trans y.Kf x.Kf
  · kexactB HEq.trans y.cE x.cE
  · kexactB HEq.trans y.chiW x.chiW
  · kexactB HEq.trans y.x₀ x.x₀
  · kexactB HEq.trans y.iota x.iota
  · kexactB HEq.trans y.ψ x.ψ
  · kexactB HEq.trans y.θ x.θ
  · kexactB HEq.trans y.βW x.βW
  · kexactB HEq.trans y.βY x.βY
  · kexactB HEq.trans y.nW x.nW
  · kexactB HEq.trans y.βV x.βV
  · kexactB HEq.trans y.ΛV x.ΛV
  · kexactB HEq.trans y.ΛW x.ΛW
  · kexactB HEq.trans y.Pg x.Pg
  · kexactB HEq.trans y.eG x.eG
  · kexactB HEq.trans y.Sb x.Sb
  · intro i i'' h
    refine Exists.elim (hm i) fun i' hi' => ?_
    have a := x.BV i i' hi'
    have b := y.BV i' i'' (hi'.symm.trans h)
    refine And.intro ?_ ?_
    · kexactB HEq.trans b.1 a.1
    refine And.intro ?_ ?_
    · kexactB HEq.trans b.2.1 a.2.1
    refine And.intro ?_ ?_
    · kexactB HEq.trans b.2.2.1 a.2.2.1
    refine And.intro ?_ ?_
    · kexactB HEq.trans b.2.2.2.1 a.2.2.2.1
    refine And.intro ?_ ?_
    · kexactB HEq.trans b.2.2.2.2.1 a.2.2.2.2.1
    kexactB HEq.trans b.2.2.2.2.2 a.2.2.2.2.2
  · intro i i'' h
    refine Exists.elim (hm i) fun i' hi' => ?_
    have a := x.MW i i' hi'
    have b := y.MW i' i'' (hi'.symm.trans h)
    refine And.intro ?_ ?_
    · kexactB HEq.trans (b.1) (a.1)
    refine And.intro ?_ ?_
    · kexactB HEq.trans (b.2.1) (a.2.1)
    refine And.intro ?_ ?_
    · kexactB HEq.trans (b.2.2.1) (a.2.2.1)
    refine And.intro ?_ ?_
    · kexactB HEq.trans (b.2.2.2.1) (a.2.2.2.1)
    refine And.intro ?_ ?_
    · kexactB HEq.trans (b.2.2.2.2.1) (a.2.2.2.2.1)
    refine And.intro ?_ ?_
    · kexactB HEq.trans (b.2.2.2.2.2.1) (a.2.2.2.2.2.1)
    refine And.intro ?_ ?_
    · kexactB HEq.trans (b.2.2.2.2.2.2.1) (a.2.2.2.2.2.2.1)
    refine And.intro ?_ ?_
    · kexactB HEq.trans (b.2.2.2.2.2.2.2.1) (a.2.2.2.2.2.2.2.1)
    refine And.intro ?_ ?_
    · kexactB HEq.trans (b.2.2.2.2.2.2.2.2.1) (a.2.2.2.2.2.2.2.2.1)
    refine And.intro ?_ ?_
    · kexactB HEq.trans (b.2.2.2.2.2.2.2.2.2.1) (a.2.2.2.2.2.2.2.2.2.1)
    intro φ φ'' hφ
    refine Exists.elim (heq_mid (GlobalTheory.T.cuspFormType_eq_at_corresponding_lifts z₁ z₂ e₁₂ x i i' hi') φ) fun φ' hφ' => ?_
    kexactB HEq.trans (b.2.2.2.2.2.2.2.2.2.2 φ' φ'' (HEq.trans hφ hφ'.symm)) (a.2.2.2.2.2.2.2.2.2.2 φ φ' hφ')
  · intro i i'' h φ φ'' hφ k k'' hk
    refine Exists.elim (hm i) fun i' hi' => ?_
    refine Exists.elim (heq_mid (GlobalTheory.T.cuspFormType_eq_at_corresponding_lifts z₁ z₂ e₁₂ x i i' hi') φ) fun φ' hφ' => ?_
    refine Exists.elim (heq_fin_mid x.nW hmm i i' hi' k) fun k' hk' => ?_
    kexactB Eq.trans (y.forms i' i'' (hi'.symm.trans h) φ' φ'' (HEq.trans hφ hφ'.symm) k' k'' (hk'.symm.trans hk)) (x.forms i i' hi' φ φ' hφ' k k' hk')
  · intro v v'' hB
    refine Exists.elim (GlobalTheory.T.exists_intermediate_coefficientPlace_between (w₁.D Z₁) (w₂.D Z₂) (w₃.D Z₃) e₂₃.2.2.2 v v'' hB) fun v' h => ?_
    kexactB Iff.trans (x.W1 v v' h.1) (y.W1 v' v'' h.2)
  · intro i i'' h
    refine Exists.elim (hm i) fun i' hi' => ?_
    have a := x.cV i i' hi'
    have b := y.cV i' i'' (hi'.symm.trans h)
    refine And.intro ?_ ?_
    · kexactB HEq.trans b.1 a.1
    kexactB HEq.trans b.2 a.2
  · kexactB HEq.trans y.pb x.pb
  · kexactB HEq.trans y.ΛY x.ΛY
  · intro i i'' h
    refine Exists.elim (hm i) fun i' hi' => ?_
    have a := x.κ i i' hi'
    have b := y.κ i' i'' (hi'.symm.trans h)
    refine And.intro ?_ ?_
    · kexactB HEq.trans b.1 a.1
    refine And.intro ?_ ?_
    · kexactB HEq.trans b.2.1 a.2.1
    kexactB Eq.trans b.2.2 a.2.2
  · intro i i'' h
    refine Exists.elim (hm i) fun i' hi' => ?_
    have a := x.ref i i' hi'
    have b := y.ref i' i'' (hi'.symm.trans h)
    refine And.intro ?_ ?_
    · kexactB HEq.trans b.1 a.1
    refine And.intro ?_ ?_
    · kexactB HEq.trans b.2.1 a.2.1
    refine And.intro ?_ ?_
    · kexactB HEq.trans b.2.2.1 a.2.2.1
    refine And.intro ?_ ?_
    · kexactB HEq.trans b.2.2.2.1 a.2.2.2.1
    refine And.intro ?_ ?_
    · kexactB HEq.trans b.2.2.2.2.1 a.2.2.2.2.1
    refine And.intro ?_ ?_
    · kexactB HEq.trans b.2.2.2.2.2.1 a.2.2.2.2.2.1
    refine And.intro ?_ ?_
    · kexactB HEq.trans b.2.2.2.2.2.2.1 a.2.2.2.2.2.2.1
    kexactB HEq.trans b.2.2.2.2.2.2.2 a.2.2.2.2.2.2.2
  · intro i i'' h ok ok'' φ φ'' C
    refine Exists.elim (hm i) fun i' hi' => ?_
    have hv : HEq (B₂.primes w₂.px).vGs (B₁.primes w₁.px).vGs := by
      have a := heq_of_eq z₂.lev.Pg.symm
      have b := heq_of_eq z₁.lev.Pg
      kexactB HEq.trans (HEq.trans a x.Pg) b
    have L := GlobalTheory.T.referenceTupleLiftForms_pass_to_coeffEnlargement w₁ w₂ W₁ W₂ e₁₂ hv (GlobalTheory.T.tameCharacters_typePrimes_eq_of_extension z₁ z₂ e₁₂ x) ((i : ℕ) + 1) ((i' : ℕ) + 1) (congrArg (· + 1) hi')
    refine Exists.elim (L.2 φ) fun φ' C' => ?_
    have ok' : (Formalism.L2.Col.mtKGSD (Pr := B₂.primes w₂.px) B₂.wts w₂.I.Ch w₂.I.sel (mu0F (X := B₂.fields) (tuOf w₂.I (usedOf w₂.I T₂ W₂))).1 ((i' : ℕ) + 1)).Ok := Formalism.L2.Col.mtKOk _ _ _ _ h₂ _
    have a := x.jL i i' hi' ok ok' φ φ' C'
    have b := y.jL i' i'' (hi'.symm.trans h) ok' ok'' φ' φ'' fun d' d'' hd => by
      refine Exists.elim (heq_mid L.1.symm d') fun d hd' => ?_
      kexactB HEq.trans (C d d'' (HEq.trans hd hd'.symm)) (HEq.symm (C' d d' hd'.symm))
    kexactB HEq.trans b a

theorem std_copy_and_ext_trans : (∀ (B : Base) (f : Fr B.toPre) (T : TwDat B) (w : ColW B f T) (Z Z' : w.Lt) (hX : B.fields.Ok) (Wt : Set B.places.Pl) (z : Dat (w.st Z) w.I hX T Wt) (z' : Dat (w.st Z') w.I hX T Wt), z'.Xg = z.Xg → z'.tr = z.tr → HEq z'.R (real3 (a := ⟨Z.W, Z.V, Z.S, Z.N, Z.G⟩) ⟨Z'.W, Z'.V, Z'.S, Z'.N, Z'.G⟩ (iK := z.alg) z.R) → HEq z'.core (coreJ (a := ⟨Z.W, Z.V, Z.S, Z.N, Z.G⟩) ⟨Z'.W, Z'.V, Z'.S, Z'.N, Z'.G⟩ z.core) → z.Std → z'.Std) ∧ ∀ (B₁ B₂ B₃ : Base) f₁ f₂ f₃ T₁ T₂ T₃ (w₁ : ColW B₁ f₁ T₁) (w₂ : ColW B₂ f₂ T₂) (w₃ : ColW B₃ f₃ T₃) (Z₁ : w₁.Lt) (Z₂ : w₂.Lt) (Z₃ : w₃.Lt) h₁ h₂ h₃ W₁ W₂ W₃ (z₁ : Dat (w₁.st Z₁) w₁.I h₁ T₁ W₁) (z₂ : Dat (w₂.st Z₂) w₂.I h₂ T₂ W₂) (z₃ : Dat (w₃.st Z₃) w₃.I h₃ T₃ W₃), Enl B₁ B₂ → Enl B₂ B₃ → Ext z₁ z₂ → Ext z₂ z₃ → Ext z₁ z₃ :=
  ⟨std_copy, fun _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ e₁₂ e₂₃ x y => ext_trans e₁₂ e₂₃ x y⟩

end GlobalTheory.Mem.R3.Rw.StdTr
