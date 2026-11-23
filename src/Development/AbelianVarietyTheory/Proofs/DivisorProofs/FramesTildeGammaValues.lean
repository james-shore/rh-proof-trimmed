import Mathlib
import Formalism.LocalToGlobal.Divisibility.ColPins
import Development.AbelianVarietyTheory.Definitions.Divisors.FactorBounds
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClassSumLeFrameNormSqGoodPartStatement
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.WeylLeDual
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.DualWeylDominanceOf
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.TrPowSumFilterZero
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.CharId
import Formalism.ProductFormula.StatementOCCM
import Formalism.SizeWindowBrackets.ChainSlopeWindows.LevelOfCongruence
import Formalism.ZetaNonvanishing.Assembly
import Formalism.ZetaNonvanishing.MeasurableGchi
import Formalism.ThickAverageLoss.ThickAverageProofs.ThickAverage
import Formalism.SharpRestriction.LevelLetterCocycles.AlignN
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Ipindep
import Formalism.HermitianLattices.HermitianLatticesProofs.ThetaBasic
import Formalism.HermitianLattices.HermitianLatticesProofs.MajLattice
import Formalism.HermitianLattices.HermitianLatticesProofs.MajDual
import Formalism.HermitianLattices.HermitianLatticesProofs.MajBasic
import Formalism.HermitianLattices.DiscrFinite
import Formalism.ThetaLiftIndependence.ThetaOrbitSums.DetSwap
import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.OrderOfSignGroupDvdTwo
import Formalism.DirichletDensity.DirichletDensityProofs.APLogDensity
import Formalism.HarderNarasimhan.HarderNarasimhanProofs.PiSumForallInsertOnly
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.HeckeActionLevelMemHolds
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.AutomorphicFormsDecompositionHolds
import Formalism.SatakeDualWeyl.StatementG
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Levelvsplit
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.LocalAlgebraInertPrime
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Levelv
import Formalism.SatakeDualWeyl.NablaRepApply
import Formalism.SatakeDualWeyl.DualWeylRepApply
import Formalism.HyperbolicPlaceProducts.SubgroupIndexCounts.SubgroupCount
import Formalism.RankGapBounds.RankAndGapBounds
import Formalism.SharpRestriction.Divisibility.PlaceRankTwoOne
import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HilbertClassFieldA
import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA
import Formalism.FockGram.StatementFock
import Formalism.GL3MeanSquares.PrimeCountAsymptoticInProgressions
import Formalism.LocalRingCardinality.ConjSqrtMinusD
import Development.AutomorphicArithmetic.OrbitLabellings.NotIsCsOfGIdx
import Formalism.DegreeFormula.PointDegree.PermExpInj
import Formalism.DegreeFormula.PointDegree.PowSum
import Formalism.SharpRestriction.Divisibility.IntegralModelsLocalData
import Formalism.SharpRestriction.Divisibility.LatticeTransfer
import Formalism.LocalToGlobal.LatticeGeometry.ViewsB
import Formalism.IncomingBounds.FlowDegreeBounds.IndexLastReductionHolds
import Formalism.JacquetSubsetSums.JacquetSubsetSum
import Formalism.LocalToGlobal.IndefiniteForms.QuadraticExampleRankThreePackage
import Formalism.BranchSandwichDivisors.BranchIsometryProofs.GoodDual
import Formalism.BranchSandwichDivisors.BranchIsometryProofs.GlobalBoundRefinements
import Formalism.LogVandermondeBounds.LogVandermondeProofs.RamifiedLatticeOperatorIdentity
import Formalism.GL3MeanSquares.HookFormulaTorsion.DoubleCosetDecompositionAll
import Formalism.GL3MeanSquares.HookFormulaTorsion.FourierCommutesHeckeScalar
import Formalism.ThetaSupremumBounds.LiftOperatorBoundOfFockJet
import Formalism.LocalToGlobal.IndefiniteReal.HeckeTupleStatement
import Formalism.LocalToGlobal.IndefiniteReal.CutTuples2
import Formalism.LocalToGlobal.BesselHermitianTheta.Joints
import Formalism.LocalToGlobal.BesselHermitianTheta.LemmasChr
import Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil
import Formalism.LocalToGlobal.BesselHermitianTheta.LemmasSign
import Formalism.LocalToGlobal.BesselHermitianTheta.TiedDef
import Formalism.LocalToGlobal.BesselHermitianTheta.TiedLocW
import Formalism.LocalToGlobal.IndefiniteReal.BridgeTie
import Formalism.LocalToGlobal.IndefiniteReal.DatumVec
import Formalism.LocalToGlobal.Columns.AtTOwedU
import Formalism.LocalToGlobal.Columns.AtTOwedV
import Formalism.GL3MeanSquares.HookFormulaTorsion.ConditionIffDualEqFunctional
import Formalism.LocalToGlobal.Columns.PathCountSymmetricHolds
import Formalism.SharpRestriction.Divisibility.ClosedSizeLink.AdmissibleFamilyOfThreshold
import Formalism.LocalToGlobal.Divisibility.TiedLemmas
import Formalism.IncomingBounds.LevelTail
import Formalism.FormalGroupWitt.FormalGroupWittProofs.CongrV
import Formalism.FormalGroupWitt.FormalGroupWittProofs.WittTeichmullerRoot
import Formalism.IncomingBounds.StatementThmP
import Formalism.GaussJetBounds.ThmAGauss
import Formalism.GaussJetBounds.OneLetterGauss
import Formalism.GaussJetBounds.GaussJetProofs.OrbMul
import Formalism.GaussJetBounds.StatementQ
import Formalism.GaussJetBounds.GaussJetProofs.ConstantCoeffQuadSer
import Formalism.GaussJetBounds.OneLetterGaussJets.GainDominatesOddLevelSum
import Formalism.LocalToGlobal.ExponentGrids.ExponentGridsProofs.NormaliserValuationBound
import Formalism.LocalToGlobal.GroupLattices.JointServices.LevelOperatorFixesImage
import Formalism.SizeWindowBrackets.ChainSlopeWindows.SlopeInequalityOfLattices
import Formalism.LocalToGlobal.HermitianForms.TransportT
import Formalism.LocalToGlobal.PlaceMapInjectivity.MapPlInjective
import Formalism.ResultantValuation.ResultantAdjugateProofs.Window
import Formalism.ResultantValuation.ResultantAdjugateProofs.Parabolic
import Formalism.LocalToGlobal.GaloisLevelStructure.DefsLab
import Formalism.CyclotomicNorms.IrreducibilityOfGoodTuple
import Formalism.SharpRestriction.LevelLetterCocycles.ArcLiftingSetup
import Formalism.SharpRestriction.LevelLetterCocycles.LinearIndependentSmulOfNeZero
import Formalism.CharacterColumnKernels.IdempotentNormalForms.GlobalModuleOf
import Formalism.CharacterColumnKernels.IdempotentNormalForms.BlockChiOneFullOf
import Formalism.CharacterColumnKernels.IdempotentNormalForms.CharacterColumnKernelsOfBlockChiCOfBlockChiOne
import Formalism.TruncatedSeriesCounting.TruncatedSeriesProofs.LemmaDetPoly
import Formalism.TruncatedSeriesCounting.TruncatedSeriesProofs.BridgeDet
import Formalism.CharacterColumnKernels.IdempotentNormalForms.IsUnitDetOfConst
import Formalism.CharacterColumnKernels.IdempotentNormalForms.MemCcIdealIffForall
import Formalism.CharacterColumnKernels.IdempotentNormalForms.SplitFibre
import Formalism.CharacterColumnKernels.IdempotentNormalForms.IdemNormalForm
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
import Formalism.SharpRestriction.PageFix
import Formalism.SharpRestriction.Divisibility.SmallFirstModulusBelowScale
import Formalism.LocalRingCardinality.SpanPowerMembership.SizeData₂
import Formalism.LocalRingCardinality.SpanPowerMembership.DivXExample
import Formalism.PeriodIntegrals.LpLower
import Formalism.LogVandermondeBounds.LogVandermondeProofs.PrimePowerSubgroupTrivial
import Formalism.LocalToGlobal.HermitianForms.TiedBrInj
import Formalism.LocalToGlobal.HermitianForms.Interlace
import Development.AutomorphicArithmetic.ConductorsKronecker.kronecker
import Development.AutomorphicArithmetic.DedekindLFunctions.LandauZeroFreeCriterion
import Formalism.SharpRestriction.RamificationFrobenius.TotientGaloisClasses.Window
import Development.AutomorphicArithmetic.ConductorsKronecker.ChCond
import Development.AutomorphicArithmetic.DedekindLFunctions.LandauTheorems.ChBalance
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.StdSlopeLow
import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.UpperSlopeOfMaximalConstant
import Formalism.LocalToGlobal.GlobalTheory.GL4.PLemTLat
import Formalism.LocalToGlobal.GlobalTheory.GL4.CTEqConjTranspose
import Formalism.LocalToGlobal.GlobalTheory.GL4.PCoordH
import Formalism.LocalToGlobal.GlobalTheory.GL4.ColAddGenCastSuccRename
import Formalism.LocalToGlobal.GlobalTheory.GL4.BranchingNormalisedOfAdjoint
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.FockQRowAct
import Formalism.LocalToGlobal.GlobalTheory.GL4.MapIntRatComplex
import Formalism.SharpRestriction.CuspSpanNormBounds.FrobeniusCoefficientMemLp.BigCellConjI
import Formalism.YangianSpanCharacter.YangianRTTProofs.RttRelation
import Formalism.YangianSpanCharacter.YangianRTTProofs.SpanCharacterIdentity
import Formalism.YangianSpanCharacter.YangianRTTProofs.MinusFrameIdentity
import Formalism.FormalDegreeBessel.FinalWR
import Formalism.YangianSpanCharacter.YangianRelationFirst
import Formalism.FormalDegreeBessel.FormalDegreeRatio.DSLowK
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.RightDerivativeZeroOutsideSupport
import Formalism.RealPlaceAnalysis.FinalF
import Formalism.FormalDegreeBessel.FormalDegreeRatio.CapelliHighestWeightConjugated
import Formalism.SharpRestriction.CuspSpanNormBounds.NonemptyParameterModels.NumericSettingWithGapSatisfiable
import Formalism.SharpRestriction.CuspSpanNormBounds.AutLzFiniteOfLoop
import Formalism.HermitianCurvature.Statement
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.FamilyProjectorSectionLocal
import Formalism.LatticeRigidity.StatementD
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.CoefficientLeOperatorNorm
import Formalism.LatticeRigidity.HeightMinimum.PowFinrankEqZeroOfTracePow
import Formalism.LogSumExpBounds.StatementE
import Formalism.LogSumExpBounds.CharacterSumPhase.DescEquivLiftEquiv
import Formalism.LogSumExpBounds.CharacterSumPhase.LatSum
import Formalism.LogSumExpBounds.CharacterSumPhase.ZLiftAsm
import Formalism.LogSumExpBounds.IsoTransfer
import Formalism.NormUnitaryBounds.DetPolynomialWeights.ShearCoefficients
import Formalism.NormUnitaryBounds.DetPolynomialWeights.NormUnitary
import Formalism.NormUnitaryBounds.DetPolynomialWeights.ShortIndependentVectorsOfDualMinimum
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.ExtensionInterSubspace
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.SphericalFunctionConvolutionIdentity
import Formalism.HermitianCurvature.HermitianCurvatureProofs.VandermondeRatioHarmonic
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaBoundOnBoundary
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.DegreeRatioFormulaStatement
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.FamilyFormalDegreeLowerBound
import Formalism.LatticeRigidity.HeightMinimum.PackingCountGeometricMean
import Formalism.LatticeRigidity.StatementA
import Formalism.LatticeRigidity.HeightMinimum.SqrtAbsNormLeProd
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.DecayHypothesisOfLargeConstants
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.LeadingMinorEqDetSubmatrix
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.SphericalL1StatementOfProjectors
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CmRingIdempotentUnitRatioIdentity
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.FamilySeparationBound
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.CellInv
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.CellBru
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.CellMono
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.CellPt
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.IdScal
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.IdUnit
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.IdRoot
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.IdLift
import Formalism.HermitianCurvature.HermitianCurvatureProofs.FirstEmbeddingOne
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LocalisationTypedIndependentExponent
import Formalism.DoubleCosetMeasures.LowerUnipotentOrbits.DoubleCosetEqPreimage
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SecondVanishingOffRing
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.NormAdditiveCharacterTypePrimeEqOne
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.DetMulEqSumProdMulDetSubmatrix
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.ExponentInequalityNondegenerateMid
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.FamilyPacketOfEquivalentStatement
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.IdealsOfNormEqIndexSet
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.MinkowskiDividesFactorialOfBound
import Formalism.HermitianCurvature.StatementK
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.SmoothBigCellSectionsExist
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.GlobalConditionOfProductFormula
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.FamilyStatementOfItemsFourSeven
import Formalism.SharpRestriction.Divisibility.StatementFT.PeriodPointConditions
import Formalism.SharpRestriction.Divisibility.HookProducts.AdmPtTw
import Formalism.LocalToGlobal.Divisibility.LinkDef
import Formalism.LocalToGlobal.Columns.SliceIntegralDeltaNeBot
import Formalism.LocalToGlobal.Columns.BrzoPairAtZeroRight
import Formalism.LocalToGlobal.GlobalTheory.FamRecP
import Formalism.LocalToGlobal.GlobalTheory.ArithP
import Formalism.SizeWindowBrackets.ChainSlopeWindows.SecondPriceSumWeightsUncovered
import Formalism.LandauZeroFreeBounds.ExceptionalZeroBounds.SiegelWalfiszAPOf
import Formalism.LandauZeroFreeBounds.SiegelWalfiszAPOfSiegelLower
import Formalism.SizeWindowBrackets.ChainSlopeWindows.PrimeCongruenceConditions
import Formalism.SizeWindowBrackets.ChainSlopeWindows.PBrDiv
import Formalism.SizeWindowBrackets.ChainSlopeWindows.ExistsOrthonormalFrameComplement
import Formalism.SizeWindowBrackets.ChainSlopeWindows.PSmall
import Formalism.SizeWindowBrackets.ChainSlopeWindows.ChiEightNoRealZeroHypothesis
import Formalism.LocalToGlobal.UnitaryNorms.RealPl
import Formalism.PadicSubsetSums.StableGradedCounts.IRRPrimeToPartEqIff
import Formalism.TorsionNormIteration.InverseIntegralClasses.IsHomOfSubstEqSmul
import Formalism.TorsionNormIteration.InverseIntegralClasses.LTLemma
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.StatementGK
import Formalism.PadicSubsetSums.StableGradedCounts.FixedByAutomorphismInField
import Formalism.PadicSubsetSums.StableGradedCounts.IRRGoodDualStable
import Formalism.SharpRestriction.LevelLetterCocycles.PlaceLabelTeichmuller
import Formalism.MeanHeightDescent.DivisionInequalityWithCovolume
import Formalism.PadicSubsetSums.StableGradedCounts.IRRFrobOrbitIrred
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IrreducibleCharacterSeries.CharacterEqOfRepIso
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IrreducibleCharacterSeries.ConjugateCharacterFormula
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IrreducibleCharacterSeries.FrobeniusSumFormula
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GreenLabelSurjective.Simple
import Formalism.LocalToGlobal.Columns.ExistsUnitOfPowEqOne
import Formalism.LocalToGlobal.Columns.GFamEv
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
import Formalism.LocalToGlobal.Columns.StabMapRLInjective
import Formalism.LocalToGlobal.Columns.RefXi1Above
import Formalism.LocalToGlobal.Columns.RecChainYUnfPol
import Formalism.LocalToGlobal.IndefiniteForms.IndefiniteTree.ExampleSatisfiesConditionsAtFive
import Formalism.MeanHeightDescent.AverageDegreeBounds.GlobalBoundRefinements
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RegularLocalRegularSequence.ExistsIsRegularOfListEqMaximalIdeal
import Formalism.PeriodIntegrals.EagonNorthcottZ
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.EagonNorthcottIntegral.BasisZeroEqSingle
import Formalism.LocalToGlobal.IndefiniteForms.IndefiniteTree.SlopeBoundOfConditionsWithErrorForFrames
import Formalism.PairingDivisors.StatementA
import Formalism.PairingDivisors.StatementN
import Formalism.PairingDivisors.PairingDivisorProofs.ValAdd
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.TensorLatSpan
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.NablaDeltaOperatorLatticePreserved
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SumPairingGramMatrixValuesAndDefinite
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.OrthogonalSumCoefficientLatticeIsLatticeAndDual

open Module NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows GlobalTheory.ColRows
open scoped ComplexOrder

namespace GlobalTheory.ColEvNorm

open Formalism.L2.Col in
theorem rowCast_injective {X : Fields} {Pr : Primes X} {R : Ranks} (W : Wts X Pr.Word R)
    {SG' : Finset (HeightOneSpectrum (𝓞 X.E))} (e : Pr.vGs = SG') (A : LevFam X.E X.K (R.N R.m - 1) Pr.vGs)
    (Λ' : LevFam X.E X.K (R.N R.m - 1) SG') (hΛ : Λ' = e ▸ A) :
    Function.Injective (rowCast W e A Λ' hΛ) := by
  subst hΛ
  subst e
  intro F G h
  exact h

open Formalism.L2.Col in
theorem zOfRow_injective {X : Fields} {Pr : Primes X} {R : Ranks} (W : Wts X Pr.Word R) (Ch : Chars X Pr R.m)
    (sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)) {S : Set ℕ} (mu : Formalism.L2.DIV.Tup X.F X.E X.K S)
    (hQ : QE sel (mu : Formalism.L2.DIV.Chr X.F X.E X.K) = ∅) (P : LevFam X.E X.K R.r Pr.vGs) (σ₀ : X.K →+* ℂ)
    (hM : (rowGSD W (rowTyG Ch P).inv).Ok) :
    Function.Injective (zOfRow W Ch sel mu hQ P σ₀ hM) := by
  intro F G h
  apply rowCast_injective W (rcol_rowSG_eq sel mu hQ) (rowTyG Ch P).inv _ (rowTy_inv_cast Ch sel mu hQ P)
  apply ((rowGSD W (rowTyG Ch P).inv).hB hM).repr.injective
  ext a
  exact σ₀.injective (congrFun h a)

end GlobalTheory.ColEvNorm

namespace GlobalTheory.ColEvNorm

open Formalism.L2.Col in

theorem ipAt_le_of_ties {Xf : Fields} [IsTotallyComplex Xf.K]
    (Pr : Primes Xf) (Rk : Ranks) (W : Wts Xf Pr.Word Rk) (Ch : Chars Xf Pr Rk.m)
    (sel : HeightOneSpectrum (𝓞 Xf.F) → HeightOneSpectrum (𝓞 Xf.E)) {Sg : Set ℕ} (hX : Xf.Ok)
    (Lv : LevFam Xf.E Xf.K Rk.r Pr.vGs) (Xg : Finset (G0 Xf.E Pr.vGs Rk.r → Xf.K)) (v0 : InfinitePlace Xf.K)
    (TU : Finset (Formalism.L2.DIV.Tup Xf.F Xf.E Xf.K Sg))
    (xiVal : Formalism.L2.DIV.Tup Xf.F Xf.E Xf.K Sg → HeightOneSpectrum (𝓞 Xf.E) → Xf.Kˣ)
    (trIv : Fin Rk.m → (LevOffI ∅ Pr.vGs ∅ × List ℕ → Xf.K) → LevOffI ∅ Pr.vGs ∅ × List ℕ → Xf.K)
    {Gp : Type} [grp : Group Gp] [fin : Fintype Gp] {Pl0 I0 Tt : Type} {m : ℕ}
    (A3 : FamIn3 Xf.K Gp Pl0 I0 (List ℕ) Tt m) (Ps : Subgroup Gp) (ψs : Ps →* Xf.Kˣ) (Zs : DefSub A3.fam3.amb3)
    (mu : A3.fam3.base3.Tup → Formalism.L2.DIV.Tup Xf.F Xf.E Xf.K Sg) (hP : ∀ t, (mtildeGSD W Ch sel (mu t) Lv).Ok)
    (gEq : Gp = G0 Xf.E Pr.vGs Rk.r) (hgrp : HEq grp (Pi.group : Group (G0 Xf.E Pr.vGs Rk.r)))
    (hm3 : Rk.m = m) (plEq : Pl0 = LevOff ∅ Pr.vGs ∅) (i0Eq : I0 = LevOffI ∅ Pr.vGs ∅) (tEq : Tt = TupF TU)
    (famEq : HEq A3 (colIn3 W Ch sel hX v0 TU Xg ∅ xiVal trIv))
    (muTie : ∀ t, mu t = (cast tEq t).1) (ok1 : A3.fam3.Ok3 1)
    (hps1 : HEq Ps Lv.grp) (hps2 : HEq ψs Lv.chr)
    (X0 : InfinitePlace Xf.K → Matrix (Fin ((A3.side3 Ps ψs Zs).nV A3.fam3.base3.μ0))
      (Fin ((A3.side3 Ps ψs Zs).nV A3.fam3.base3.μ0)) ℂ)
    (hX0 : GlobalTheory.ColRows.IsFrames (A3.side3 Ps ψs Zs) X0) (v : InfinitePlace Xf.K)
    (F : Fin ((A3.side3 Ps ψs Zs).nV A3.fam3.base3.μ0) → Xf.K)
    (F' : (mtildeKGSD W Ch sel (mu A3.fam3.base3.μ0)).EqFun)
    (hm : F'.1 ∈ (mtildeGSD W Ch sel (mu A3.fam3.base3.μ0) Lv).EqFun)
    (hres : HEq ((mtildeKGSD W Ch sel (mu A3.fam3.base3.μ0)).res (mtildeKOk W Ch sel (mu A3.fam3.base3.μ0) hX) F')
      ((A3.A.fam.R A3.fam3.base3.μ0).S.basis.equivFun.symm
        (((A3.A.fam.R A3.fam3.base3.μ0).S.cutE (A3.A.fam.R A3.fam3.base3.μ0).r
          (lvlIdem (A3.A.fam.lvl Ps ψs).P (A3.A.fam.lvl Ps ψs).ψ)).mulVec
          (((A3.A.fam.R A3.fam3.base3.μ0).S.lvlPr (A3.A.fam.R A3.fam3.base3.μ0).r (A3.A.fam.lvl Ps ψs).P
            (A3.A.fam.lvl Ps ψs).ψ * (A3.A.fam.R A3.fam3.base3.μ0).vE (A3.A.fam.lvl Ps ψs)).mulVec F)))) :
    ((mtildeGSD W Ch sel (mu A3.fam3.base3.μ0) Lv).ipAt (hP A3.fam3.base3.μ0) v F'.1 F'.1).re ≤
      Formalism.HermitianLatticesTheory.normAt (Pi.basisFun Xf.K (Fin ((A3.side3 Ps ψs Zs).nV A3.fam3.base3.μ0))) X0 v F ^ 2 := by
  subst gEq
  have hg : grp = (Pi.group : Group (G0 Xf.E Pr.vGs Rk.r)) := eq_of_heq hgrp
  subst hg
  run_tac do
    let g ← Lean.Elab.Tactic.getMainGoal
    let g' ← g.withContext do
      let lctx ← Lean.getLCtx
      let some fe := lctx.findFromUserName? `famEq | throwError "famEq"
      let some fi := lctx.findFromUserName? `fin | throwError "fin"
      let t ← Lean.instantiateMVars fe.type
      let ty ← Lean.Meta.whnf (← Lean.Meta.inferType t.appArg!)
      let inst := ty.getAppArgs[6]!
      let pf ← Lean.Meta.mkAppM ``Subsingleton.elim #[fi.toExpr, inst]
      let (_, g') ← g.note `hfin pf
      pure g'
    Lean.Elab.Tactic.replaceMainGoal [g']
  subst hfin
  subst hm3
  subst plEq
  subst i0Eq
  subst tEq
  have hA := eq_of_heq famEq
  subst hA
  have hp1 := eq_of_heq hps1
  subst hp1
  have hp2 := eq_of_heq hps2
  subst hp2
  have hmuE : mu = fun t => t.1 := funext muTie
  subst hmuE
  exact GlobalTheory.T.classSum_le_frameNorm_sq_good_part Xf Pr Rk W Ch sel Sg hX v0 TU Xg ∅ xiVal trIv Lv Zs _ (hP _) ok1 F F' hm hres v X0
    (hX0 v).1 (hX0 v).2

end GlobalTheory.ColEvNorm

