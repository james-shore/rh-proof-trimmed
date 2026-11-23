import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OneMapOfExt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMeasY
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ModelsWith
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.WeylLeDual
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.DualWeylDominanceOf
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.TrPowSumFilterZero
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.CharId
import Formalism.StatementU
import Formalism.ProductFormula.StatementOCCM
import Formalism.RankGapBounds.RankGapProofs.WeightedMeanData
import Formalism.ThickAverageLoss.ThickAverageProofs.Balance
import Formalism.SizeWindowBrackets.ChainSlopeWindows.SubThreeMulLogTwoLe
import Formalism.HermitianLattices.HermitianLatticesProofs.ThetaBasic
import Formalism.HermitianLattices.HermitianLatticesProofs.MajLattice
import Formalism.HermitianLattices.HermitianLatticesProofs.MajDual
import Formalism.HermitianLattices.HermitianLatticesProofs.MajBasic
import Formalism.HermitianLattices.DiscrFinite
import Formalism.ThetaLiftIndependence.ThetaOrbitSums.DetSwap
import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.OrderOfSignGroupDvdTwo
import Formalism.DirichletDensity.DirichletDensityProofs.APLogDensity
import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.ThickExists
import Formalism.HarderNarasimhan.HarderNarasimhanProofs.PiSumForallInsertOnly
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.HeckeActionLevelMemHolds
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.RationalPointsLeHolds
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.AutomorphicFormsDecompositionHolds
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Transport
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Levelvsplit
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.LocalAlgebraInertPrime
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Levelv
import Formalism.SatakeDualWeyl.NablaRepApply
import Formalism.SatakeDualWeyl.DualWeylRepApply
import Formalism.HyperbolicPlaceProducts.SubgroupIndexCounts.SubgroupCount
import Formalism.SizeWindowBrackets.SlopeHypothesesRounded
import Formalism.RankGapBounds.RankAndGapBounds
import Formalism.SizeWindowBrackets.WindowSettingSatisfiable
import Formalism.SharpRestriction.Divisibility.PlaceRankTwoOne
import Formalism.SharpRestriction.Divisibility.LocalQuadraticParts
import Formalism.LocalToGlobal.UnitaryNorms.PowValCast
import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HilbertClassFieldA
import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA
import Formalism.FockGram.StatementFock
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.AssembleLattice
import Formalism.GL3MeanSquares.PrimeCountAsymptoticInProgressions
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RigidArc
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.ChartChg
import Formalism.LocalToGlobal.ProjectiveLattices.PlaceBelow
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RigidSys
import Formalism.SharpRestriction.GrowthBounds.ObjPol
import Development.AutomorphicArithmetic.OrbitLabellings.NotIsCsOfGIdx
import Formalism.SharpRestriction.GrowthBounds.WeilJacquetShalikaLaw
import Formalism.FilteredPoleLength.ReducedBasisBounds.ReductionQuotient
import Formalism.IncomingBounds.IndexLastStep
import Formalism.FilteredPoleLength.ReducedBasisBounds.LengthBaseChangeLocal
import Formalism.FilteredPoleLength.ReducedBasisBounds.BetaSesquilinearity
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.IsIntegralOfAll
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.ThetaLeMsupOfSetC
import Formalism.LocalToGlobal.ProjectiveLattices.VolProofs
import Formalism.JacquetSubsetSums.JacquetSubsetSum
import Formalism.LocalToGlobal.IndefiniteForms.QuadraticExampleRankThreePackage
import Formalism.DivisorInequality.BaseLevelBoundsWithCovolume
import Formalism.BranchSandwichDivisors.BranchIsometryProofs.GoodDual
import Formalism.BranchSandwichDivisors.BranchIsometryProofs.GlobalBoundRefinements
import Formalism.LogVandermondeBounds.LogVandermondeProofs.RamifiedLatticeOperatorIdentity
import Formalism.GL3MeanSquares.HookFormulaTorsion.DoubleCosetDecompositionAll
import Formalism.GL3MeanSquares.HookFormulaTorsion.FourierCommutesHeckeScalar
import Formalism.LocalToGlobal.Columns.DecorationStabilizerTrivialUnipotent
import Formalism.ThetaSupremumBounds.LiftOperatorBoundOfFockJet
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.Legendre
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.ThetaLine
import Formalism.LocalToGlobal.PairingIndexBounds.ModelLatticeMoves.IsBichar
import Formalism.LocalToGlobal.BesselHermitianTheta.Joints
import Formalism.LocalToGlobal.Columns.AtTOwedS
import Formalism.LocalToGlobal.Columns.DiamondPreservesRamified
import Formalism.LocalToGlobal.Columns.AtTOwedU
import Formalism.LocalToGlobal.Columns.AtTOwedV
import Formalism.GL3MeanSquares.HookFormulaTorsion.ConditionIffDualEqFunctional
import Formalism.GL3MeanSquares.HookFormulaTorsion.LemmaCTwistRamified
import Formalism.LocalRingCardinality.CoeNeZeroOfNotMem
import Formalism.SizeWindowBrackets.ChainSlopeWindows.GaloisMapComplexConjugation
import Formalism.LogVandermondeBounds.LogVandermondeProofs.PrimePowerSubgroupTrivial
import Formalism.LogVandermondeBounds.LogVandermondeProofs.MulSingleMulApplySelf
import Formalism.LogVandermondeBounds.LogVandermondeProofs.UpperPlaceHolds
import Formalism.LogVandermondeBounds.HookGammaAmgmMultinomialBounds
import Formalism.GL3MeanSquares.ConcavityEquidistribution
import Formalism.SharpRestriction.CuspSpanNormBounds.FrobeniusCoefficientMemLp.BigCellConjI
import Formalism.YangianSpanCharacter.YangianRTTProofs.RttRelation
import Formalism.YangianSpanCharacter.YangianRTTProofs.SpanCharacterIdentity
import Formalism.YangianSpanCharacter.YangianRTTProofs.MinusFrameIdentity
import Formalism.YangianSpanCharacter.YangianRelationFirst
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
import Formalism.GL3MeanSquares.InvariantSeriesBidegreeOneOne
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.DegreeRatioFormulaStatement
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.FamilyFormalDegreeLowerBound
import Formalism.LatticeRigidity.HeightMinimum.PackingCountGeometricMean
import Formalism.LatticeRigidity.StatementA
import Formalism.LatticeRigidity.HeightMinimum.SqrtAbsNormLeProd
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
import Formalism.GL3MeanSquares.HookFormulaTorsion.OneAddInvPowLeExpOne
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.MinkowskiDividesFactorialOfBound
import Formalism.HermitianCurvature.StatementK
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.SmoothBigCellSectionsExist
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.GlobalConditionOfProductFormula
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GGMirabolicBase
import Formalism.HermitianCurvature.StatementU
import Formalism.HermitianCurvature.HermitianCurvatureProofs.AdjointnessPolynomiallyBounded
import Formalism.FormalDegreeBessel.FormalDegreeRatio.BesselUnipotentEquivHolds
import Formalism.FormalDegreeBessel.FormalDegreeRatio.BesselUnitaryEquivHolds
import Formalism.FormalDegreeBessel.FinalBF
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactGroupHaarExists
import Formalism.HermitianCurvature.StatementJF
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.UnitaryRepUnimodularOfFiniteVolume
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RrkbLeOneAddSq
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.CnDensNonneg
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.CndHsLeDist
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.PjFdegAllPos
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.ProjectionStatementOfEnd
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.AntisymmetrizedProductEqFactorialSmulQdet
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.ExistsTowerOfLocalSetting
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.OrderedAtRanksOfPositionElement
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.SmoothVectorsTranslateUnitary
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.SchurAverage
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CoveringRadius.CoverRad
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ResidueLatticeCount.UnitMulDetNeZero
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ResidueLatticeCount.NnrealOfEnnreal
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.BlockMinorAbsoluteOfExplicit
import Formalism.SharpRestriction.CuspSpanNormBounds.CayleyDegreeNondegeneracy.FamilyStatementOfAbsAndVandermonde
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.CovolumeIntegerLatticeEq
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.ExistsSqAbsNormOfInert
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.DifferentIdealEqTop
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.GramEqConjTransposeMul
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PoincareSeriesInner
import Formalism.LocalToGlobal.IndefiniteReal.EqZeroOfMemRangeAdjoint
import Formalism.LocalToGlobal.IndefiniteReal.EqZeroOfRangeAdjoint
import Formalism.LocalToGlobal.IndefiniteReal.FinrankISupLeSum
import Formalism.LocalToGlobal.IndefiniteReal.CxCutPO
import Formalism.LocalToGlobal.LatticeGeometry.OperatorNormFibers.FormData
import Formalism.LocalToGlobal.IndefiniteReal.ArithLemmas
import Formalism.LocalToGlobal.IndefiniteReal.CxCoreRG
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantAlgebraComparison.InvAlgOfSteps
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantAlgebraComparison.BridgeHomFormula
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.FiniteNeighbourhoodSecond
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.CoordFin
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.LatticeOfEntriesIntegral
import Formalism.LocalToGlobal.IndefiniteReal.OneMapEq
import Formalism.LocalToGlobal.IndefiniteReal.RhoGeo
import Formalism.PeriodIntegrals.VolFromSW
import Formalism.MeanHeightDescent.DivisionInequalityWithCovolume
import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.PlaceS
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.QuadTie
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsUniqueFactorCompletedStalkOfMap
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PlaceDivisors.SiegelPullbackTransfer.AdelicGL2ExtOfLocalComponents
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.HasAlgebraicChartsOfIsStandardSmooth
import ReciprocityTheory.CommutativeAlgebra.SaturatedChains.IsSaturatedChain
import ReciprocityTheory.AnalyticForms.RegularLocalRings.LogResStC
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RePosOfIsMultIP
import Formalism.LocalToGlobal.ProjectiveLattices.HeckeStabSet
import Formalism.LocalToGlobal.ProjectiveLattices.CuspFDOf
import Formalism.LocalToGlobal.ProjectiveLattices.CuspFormsFiniteDimensionalOf
import Development.AbelianVarietyTheory.Counterexamples.LevelGroupExamples.OrthonormalBaseFrameNeg
import Development.AbelianVarietyTheory.Proofs.HeightProofs.SchurOrthogonalityIndefiniteUnitaryGroupStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsCharpoly
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ConjugateEmbApply
import Formalism.SharpRestriction.RamificationFrobenius.TotientGaloisClasses.InertiaGaloisSymmetry.CycAll
import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.GramSt
import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.APrimeI
import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.ArakelovDegreeEqDegreeOfFamily
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ProdFam
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.FirstMinimumPos
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.SumBoundStatement
import Formalism.LocalToGlobal.ProjectiveLattices.RegQFree
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.HasGen
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllSixAbelianSchemeLawsHoldStatement
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.IsSaturatedSubmoduleIffExistsIsComplOfValuationR
import ReciprocityTheory.DualLattices.TowerZeroSurjective
import ReciprocityTheory.DualLattices.LinPairStatement
import ReciprocityTheory.DualLattices.OneAddPowOfSq
import ReciprocityTheory.DualLattices.MapSmulOneMulVec
import ReciprocityTheory.DualLattices.ThmAFull
import ReciprocityTheory.DualLattices.SubMemOfCompat
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.ExistsPicardGroup
import Development.AbelianVarietyTheory.Proofs.ToricGeometry.ExistsContraction
import ReciprocityTheory.L2DbarEstimates.MinimalSolutions.CvxOfConvex
import ReciprocityTheory.L2DbarEstimates.MinimalSolutions.HormanderLemma
import ReciprocityTheory.L2DbarEstimates.LeviForms.BasicExpBound
import ReciprocityTheory.L2DbarEstimates.LeviForms.AddLogPosOfThreeQuartersLe
import ReciprocityTheory.L2DbarEstimates.LeviForms.Cutoff
import ReciprocityTheory.L2DbarEstimates.LeviForms.PolarBallReal
import ReciprocityTheory.L2DbarEstimates.LeviForms.CovDet
import ReciprocityTheory.L2DbarEstimates.LeviForms.ShellA
import ReciprocityTheory.L2DbarEstimates.LeviForms.Vanish
import ReciprocityTheory.L2DbarEstimates.LeviForms.FxExpNegWgtLeShell
import ReciprocityTheory.L2DbarEstimates.LeviForms.MacofFderivApplyContDiffOn
import ReciprocityTheory.L2DbarEstimates.LeviForms.DetUpdateColEq
import ReciprocityTheory.L2DbarEstimates.NormFibrations.Hormander
import ReciprocityTheory.L2DbarEstimates.NormFibrations.LseSmoothRIffReal
import ReciprocityTheory.L2DbarEstimates.NormFibrations.ImportsAlt
import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.HyPhi
import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.AApproxE
import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.AApproxL
import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.APrimeLoc
import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.Imports
import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.ImportsAlt
import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.IndCount
import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.ZeroDimA
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.LogDOfPosBound
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.NormProdSignMulDetSubmatrixSubOneLe
import Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.NormBcharMulNfacRmul
import ReciprocityTheory.ReducedBases.ExistsBoundedBasis
import Formalism.LocalToGlobal.ProjectiveLattices.IntAllProofFree
import Formalism.LocalToGlobal.ProjectiveLattices.RealPtGeo
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsFrameRingOverTestRingStatement
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.CardTorsionPointsAbelianVarietyStatement
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.WitMove
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.FamilyUniformisationFibreTheta
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.ThExprUniqOfChartIndep2
import Formalism.LocalToGlobal.ProjectiveLattices.DivFinOfLawA3
import Formalism.LocalToGlobal.ProjectiveLattices.AxHSup
import Development.AbelianVarietyTheory.Definitions.RegularCharts.Reframe
import Formalism.LocalToGlobal.ProjectiveLattices.FnTrdegOf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LatOfLamSt
import Formalism.MeanHeightDescent.AverageDegreeBounds.GlobalBoundRefinements
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RegularLocalRegularSequence.ExistsIsRegularOfListEqMaximalIdeal
import Formalism.PeriodIntegrals.EagonNorthcottZ
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.EagonNorthcottIntegral.BasisZeroEqSingle
import Formalism.LocalToGlobal.IndefiniteForms.IndefiniteTree.SlopeBoundOfConditionsWithErrorForFrames
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.PrincipalLevelEqHalfMarkingStabilizer
import Formalism.LocalToGlobal.ProjectiveLattices.CuspMulOf
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.LbIsoCubeLBMulRightOf
import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsHeatZero
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.NonvanishingNearMaximum
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.HermCOrthonormalCoordinates
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.OrthogonalLatticeDecomposition
import ReciprocityTheory.SemistableReduction.Unipotent
import ReciprocityTheory.SemistableReduction.LatAll
import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.SchwartzBruhatInvariantIntegralMatrixMulStatement
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.SpanColsMul
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.FundamentalDomainTranslate
import Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.RmulOneFrame
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.HolJetF
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.AnChartX
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.ComposeLinearAction
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.AnChartAsm
import Development.AbelianVarietyTheory.Definitions.Divisors.IsFinSetSplitPlacesCoprimeConductor
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.ModelLatIn
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IdealPeriodLatticeOfCurveDatum
import Development.AbelianVarietyTheory.Counterexamples.LevelGroupExamples.LevelGroupEqTopOfCoprime
import Development.AbelianVarietyTheory.Statements.CuspFrameWeights.SameKindIsometric
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsSignatureDecompositionDiagonal
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroupStatement
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsHyperbolicCompletion
import Development.AbelianVarietyTheory.PublishedTheorems.DiscreteSeries₂.Poulsen
import Development.AbelianVarietyTheory.PublishedTheorems.DiscreteSeriesUnitary₂.SubmatrixMemUJsetIff
import Development.AbelianVarietyTheory.Definitions.Jets.SideFam
import Development.AbelianVarietyTheory.Definitions.Jets.SumIoPr
import Development.AbelianVarietyTheory.Statements.CuspFrameWeights.ConvolutionSmoothL2
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ChainCompatibleTwistTransport
import Formalism.PairingDivisors.StatementA
import Formalism.PairingDivisors.StatementN
import Formalism.PairingDivisors.PairingDivisorProofs.ValAdd
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SpanHeisenbergTranslatesVacuumEqTop
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsIntertwinerHeisenbergCocycleOfFixedVector
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.RderMemAutFormsCuspForms
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.ResidueInjectivityAt
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.MemUJsetOfKset
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.TwistedLevelValues
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MapMulScalar
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.TensorLatSpan
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.TupPrimeEmpty
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LevelGroupActionEqZeroOfNoLift
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TypePlacesNotPairwiseConjugate
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IpMSelfEqZero
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.PinnedIntegrability
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsRationalUnitarySplitDenominatorStatement
import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.FiniteClassesSelfDualOfSelfDual
import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ChainMatrices
import Development.AbelianVarietyTheory.Proofs.GenericRegularity.CabsDiagEqOne
import Formalism.UnipotentAdelicQuotients.ClassNumberFinite
import Development.AbelianVarietyTheory.Proofs.HeightProofs.IntegralTransport
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.SqrtNsqLeOfAbsLe
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ChainParIffStepGap
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FinPartAlgebraMap
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CompMemGinfC
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.InjectiveOfIndep
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLevelActionCuspFormRepresentation
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LevelActionPreservesIntegralCuspForms
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompletedLatticeStabilizerIffBasisIntegral
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralAdelicCoordinatesLatticeMod
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IdentityClassLatticeEqSelfDualFrameLattice
import ReciprocityTheory.DualLattices.WtGtRowSubstXSub

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.TupExt

open Formalism.IndefR.Lev Formalism.IndefR.Cx

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T N : Type} {A : FamIn D.what₂.LL G Pl0 T D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]

def ModC (R : RealDat D A Ks) : Prop :=
  R.models_HX ∧ R.models_HV ∧ R.models_jX ∧ R.models_jV ∧ R.models_νY ∧ R.models_νY' ∧ R.models_νX ∧ R.models_νV

def KerC (R : RealDat D A Ks) : Prop :=
  R.chain_ωY ∧ R.chain_ωX ∧ R.chain_vY ∧ R.chain_vX ∧ R.thP_ωP ∧ R.thP_vP

variable {R : RealDat D A Ks} {V : NewLev D N} {X : NewFam A N}

def FamC (Y : NewReal R V X) : Prop :=
  (extR R Y).grp_red_R ∧ (extR R Y).grp_red_L ∧ TieExt R Y ∧ (extR R Y).fam_roots ∧ RealDat.fam_degR (A := extA A X) ∧
    RealDat.fam_degL (A := extA A X) ∧ (extR R Y).fam_muVal

set_option maxHeartbeats 2000000 in

def updM (Y : NewReal R V X) (HX : type_of% Y.HX) (HV : type_of% Y.HV)
    (jX : ∀ n, (extA A X).fam.amb.FR (.inr n) →ₛₗ[D.what₂.embLL] (HX n).H)
    (jV : ∀ i n, (extA A X).fam.amb.FL i (.inr n) →ₛₗ[D.what₂.embLL] (HV i n).H)
    (νY : type_of% Y.νY) (fdY : type_of% Y.fdY) (νX : type_of% Y.νX) (fdX : type_of% Y.fdX) (νV : type_of% Y.νV)
    (fdV : type_of% Y.fdV) : NewReal R V X :=
  { Y with
    HX := HX, HV := HV, jX := jX, jV := jV, νY := νY, fdY := fdY, νX := νX, fdX := fdX, νV := νV, fdV := fdV,
    ioX := fun _ => 0, Th := fun _ => 0, thF := fun _ _ => 0, thG := fun _ _ => 0 }

set_option maxHeartbeats 2000000 in

def updK (Y : NewReal R V X) (ωY : type_of% Y.ωY) (ωX : type_of% Y.ωX) (ωP : type_of% Y.ωP) (vY : type_of% Y.vY)
    (vX : type_of% Y.vX) (vP : type_of% Y.vP) : NewReal R V X :=
  { Y with ωY := ωY, ωX := ωX, ωP := ωP, vY := vY, vX := vX, vP := vP }

set_option maxHeartbeats 2000000 in

def updL (Y : NewReal R V X) (ioY : type_of% (extR R Y).ioY) (ioX : type_of% (extR R Y).ioX) (Th : type_of% (extR R Y).Th)
    (thF : type_of% (extR R Y).thF) (thG : type_of% (extR R Y).thG) : NewReal R V X :=
  { Y with
    ioY := fun n => ioY (.inr n), ioX := fun n => ioX (.inr n), Th := fun n => Th (.inr n),
    thF := fun i n => thF i (.inr n), thG := fun i n => thG i (.inr n) }

set_option maxHeartbeats 2000000 in
theorem isModels_ext (hM : R.IsModels) (Y : NewReal R V X) (h : ModC (extR R Y)) : (extR R Y).IsModels := by
  refine ⟨?_, hM.vpos, ?_, ?_, ?_, h.1, h.2.1, ?_, ?_, ?_, ?_, h.2.2.1, h.2.2.2.1, h.2.2.2.2.1, h.2.2.2.2.2.1, ?_, h.2.2.2.2.2.2.1,
    h.2.2.2.2.2.2.2, ?_, ?_, ?_⟩
  · exact (by with_unfolding_all exact (hM.inf :))
  · exact (by with_unfolding_all exact (hM.cX :))
  · exact (by with_unfolding_all exact (hM.cV :))
  · exact (by with_unfolding_all exact (hM.prX :))
  · exact (by with_unfolding_all exact (hM.HE :))
  · exact (by with_unfolding_all exact (hM.HW :))
  · exact (by with_unfolding_all exact (hM.gE :))
  · exact (by with_unfolding_all exact (hM.gW :))
  · exact (by with_unfolding_all exact (hM.ν0 :))
  · exact (by with_unfolding_all exact (hM.νW :))
  · exact (by with_unfolding_all exact (hM.BV :))
  · exact (by with_unfolding_all exact (hM.order :))

set_option maxHeartbeats 2000000 in
theorem isFam_ext (hF : R.IsFam) (Y : NewReal R V X) (h : FamC Y) : (extR R Y).IsFam := by
  refine ⟨?_, ?_, h.2.2.2.1, ?_, h.2.2.2.2.1, h.2.2.2.2.2.1, h.2.2.2.2.2.2, ?_⟩
  · obt ⟨g, c, c', ht⟩ := hF.tie
    have h1 := h.2.2.1 g c c' ht
    refine ⟨g, ?_, ?_, ?_⟩
    · exact (by with_unfolding_all exact (c :))
    · exact (by with_unfolding_all exact (c' :))
    · exact (by with_unfolding_all exact (h1 :))
  · exact (by with_unfolding_all exact (hF.Sb :))
  · exact (by with_unfolding_all exact (hF.pl_onto :))
  · exact (by with_unfolding_all exact (hF.etaVal :))

set_option maxHeartbeats 2000000 in
theorem isGrp_ext {F : Face D A} (hG : R.IsGrp F) (Y : NewReal R V X) (h : FamC Y) : (extR R Y).IsGrp (extF F X) := by
  refine ⟨h.1, h.2.1, ?_, ?_, ?_⟩
  · exact (by with_unfolding_all exact (hG.levels :))
  · exact (by with_unfolding_all exact (hG.record :))
  · exact (by with_unfolding_all exact (hG.chiW :))

set_option maxHeartbeats 2000000 in

theorem models_stage (hM : R.IsModels) (Y : NewReal R V X) (h : FamC Y) : ∃ Y' : NewReal R V X, FamC Y' ∧ ModC (extR R Y') := by
  choose HX jX h1 h2 using fun n => exists_modX (extR R Y) (.inr n)
  choose HV jV h3 h4 using fun i n => exists_modV (extR R Y) i (.inr n)
  choose νY fdY h5 h6 using fun n j => exists_measY (extR R Y) (.inr n) j
  choose νX fdX h7 using fun n => exists_measX (extR R Y) (.inr n)
  choose νV fdV h8 using fun i n => exists_measV (extR R Y) hM.vpos i (.inr n)
  refine ⟨updM Y HX HV jX jV νY fdY νX fdX νV fdV, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · kexactB h
  · rintro (t | n)
    · exact (by with_unfolding_all exact (hM.HX t :))
    · exact (by with_unfolding_all exact (h1 n :))
  · rintro i (t | n)
    · exact (by with_unfolding_all exact (hM.HV i t :))
    · exact (by with_unfolding_all exact (h3 i n :))
  · rintro (t | n)
    · exact (by with_unfolding_all exact (hM.jX t :))
    · exact (by with_unfolding_all exact (h2 n :))
  · rintro i (t | n)
    · exact (by with_unfolding_all exact (hM.jV i t :))
    · exact (by with_unfolding_all exact (h4 i n :))
  · rintro (t | n)
    · exact (by with_unfolding_all exact (hM.νY t :))
    · exact (by with_unfolding_all exact (h5 n :))
  · rintro (t | n)
    · exact (by with_unfolding_all exact (hM.νY' t :))
    · exact (by with_unfolding_all exact (h6 n _ rfl :))
  · rintro (t | n)
    · exact (by with_unfolding_all exact (hM.νX t :))
    · exact (by with_unfolding_all exact (h7 n :))
  · rintro i (t | n)
    · exact (by with_unfolding_all exact (hM.νV i t :))
    · exact (by with_unfolding_all exact (h8 i n :))

set_option maxHeartbeats 2000000 in

theorem ker_stage (hc : R.IsChain) (hp : R.IsThP) (hL : (extL R.toLevCh V).Is (.inl A.μ0)) (Y : NewReal R V X) (h : FamC Y)
    (hm : ModC (extR R Y)) : ∃ Y' : NewReal R V X, FamC Y' ∧ ModC (extR R Y') ∧ KerC (extR R Y') := by
  have hψ : IsStdChar D (extR R Y).ψ (-1) := (hc.ωX A.μ0).std
  choose ωY vY h1 using fun n k => exists_kerY (R := extR R Y) hL hψ (.inr n) k ((by with_unfolding_all exact (fun hk => (hc.vY A.μ0 k hk).1 :)))
  choose ωX vX h2 h3 using fun n => exists_kerX (R := extR R Y) hL hψ (.inr n) ((by with_unfolding_all exact ((hc.vX A.μ0).1 :)))
  choose ωP vP h4 h5 using fun i n => exists_kerP (R := extR R Y) hL hψ i (.inr n) ((by with_unfolding_all exact ((hp.vP i A.μ0).1 :)))
  refine ⟨updK Y ωY ωX ωP vY vX vP, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · exact (by with_unfolding_all exact (h :))
  · exact (by with_unfolding_all exact (hm :))
  · rintro (t | n)
    · exact (by with_unfolding_all exact (hc.ωY t :))
    · exact (by with_unfolding_all exact (fun k hk => (h1 n k hk).1 :))
  · rintro (t | n)
    · exact (by with_unfolding_all exact (hc.ωX t :))
    · exact (by with_unfolding_all exact (h2 n :))
  · rintro (t | n)
    · exact (by with_unfolding_all exact (hc.vY t :))
    · exact (by with_unfolding_all exact (fun k hk => (h1 n k hk).2 :))
  · rintro (t | n)
    · exact (by with_unfolding_all exact (hc.vX t :))
    · exact (by with_unfolding_all exact (h3 n :))
  · rintro i (t | n)
    · exact (by with_unfolding_all exact (hp.ωP i t :))
    · exact (by with_unfolding_all exact (h4 i n :))
  · rintro i (t | n)
    · exact (by with_unfolding_all exact (hp.vP i t :))
    · exact (by with_unfolding_all exact (h5 i n :))

set_option maxHeartbeats 2000000 in
theorem isChain_updL (hc : R.IsChain) (Y : NewReal R V X) (ioY ioX Th thF thG)
    (h : ({ extR R Y with ioY := ioY, ioX := ioX, Th := Th } : RealDat D (extA A X) Ks).IsChain) :
    (extR R (updL Y ioY ioX Th thF thG)).IsChain := by
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · kexactB h.ωY
  · exact (by with_unfolding_all exact (h.ωX :))
  · exact (by with_unfolding_all exact (h.vY :))
  · exact (by with_unfolding_all exact (h.vX :))
  · exact (by with_unfolding_all exact (h.ptY :))
  · exact (by with_unfolding_all exact (h.ptX :))
  · exact (by with_unfolding_all exact (h.ItY :))
  · exact (by with_unfolding_all exact (h.ItX :))
  · rintro (t | n)
    · exact (by with_unfolding_all exact (hc.ioY t :))
    · exact (by with_unfolding_all exact (h.ioY (.inr n) :))
  · rintro (t | n)
    · exact (by with_unfolding_all exact (hc.ioX t :))
    · exact (by with_unfolding_all exact (h.ioX (.inr n) :))
  · rintro (t | n)
    · exact (by with_unfolding_all exact (hc.Th t :))
    · exact (by with_unfolding_all exact (h.Th (.inr n) :))

set_option maxHeartbeats 2000000 in
theorem isThP_updL (hp : R.IsThP) (Y : NewReal R V X) (ioY ioX Th thF thG)
    (h : ({ extR R Y with thF := thF, thG := thG } : RealDat D (extA A X) Ks).IsThP) :
    (extR R (updL Y ioY ioX Th thF thG)).IsThP := by
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · exact (by with_unfolding_all exact (h.ωP :))
  · exact (by with_unfolding_all exact (h.vP :))
  · exact (by with_unfolding_all exact (h.pt_theta :))
  · exact (by with_unfolding_all exact (h.ioP :))
  · rintro i (t | n)
    · exact (by with_unfolding_all exact (hp.thF_mem i t :))
    · exact (by with_unfolding_all exact (h.thF_mem i (.inr n) :))
  · rintro i (t | n)
    · exact (by with_unfolding_all exact (hp.thF i t :))
    · exact (by with_unfolding_all exact (h.thF i (.inr n) :))
  · rintro i (t | n)
    · exact (by with_unfolding_all exact (hp.thG i t :))
    · exact (by with_unfolding_all exact (h.thG i (.inr n) :))

set_option maxHeartbeats 2000000 in

theorem core_ext (h₁ : GlobalTheory.Published.DiscreteSeriesCover) (h₂ : GlobalTheory.Published.HarishChandraModules) (h₃ : GlobalTheory.Published.CuspRapidDecay)
    (h₄ : GlobalTheory.Published.CasselmanWallach) (hP : ∀ k, GlobalTheory.Chain.ChainPar D k) {F : Face D A} (hC : GlobalTheory.Hk3.Core R F)
    (hL : (extL R.toLevCh V).Is (.inl A.μ0)) (Y : NewReal R V X) (h : FamC Y) :
    ∃ Y' : NewReal R V X, GlobalTheory.Hk3.Core (extR R Y') (extF F X) ∧ TieExt R Y' := by
  obt ⟨Y1, f1, m1⟩ := models_stage hC.models Y h
  obt ⟨Y2, f2, m2, k2⟩ := ker_stage hC.chain hC.thP hL Y1 f1 m1
  have hF := isFam_ext hC.fam Y2 f2
  have hM := isModels_ext hC.models Y2 m2
  have e1 := GlobalTheory.ConjExt.exists_chain (R := extR R Y2) h₁ h₂ h₃ h₄ hP hL (isGrp_ext hC.grp Y2 f2).record hF hM k2.1 k2.2.1 k2.2.2.1
    k2.2.2.2.1 (.inl A.μ0) ((by with_unfolding_all exact (hC.chain.ItY A.μ0 :))) ((by with_unfolding_all exact (hC.chain.ItX A.μ0 :)))
  have e2 := GlobalTheory.ConjExt.exists_thP (R := extR R Y2) h₃ hL hF hM k2.2.2.2.2.1 k2.2.2.2.2.2 (.inl A.μ0)
    ((by with_unfolding_all exact (fun i => hC.thP.ioP i A.μ0 :)))
  obt ⟨ioY, ioX, Th, c3⟩ := e1
  obt ⟨thF, thG, p3⟩ := e2
  have f3 : FamC (updL Y2 ioY ioX Th thF thG) := (by with_unfolding_all exact (f2 :))
  have m3 : ModC (extR R (updL Y2 ioY ioX Th thF thG)) := (by with_unfolding_all exact (m2 :))
  exact ⟨updL Y2 ioY ioX Th thF thG, ⟨hL, isGrp_ext hC.grp _ f3, isFam_ext hC.fam _ f3, isModels_ext hC.models _ m3,
    isChain_updL hC.chain Y2 _ _ _ _ _ c3, isThP_updL hC.thP Y2 _ _ _ _ _ p3⟩, f3.2.2.1⟩

end GlobalTheory.TupExt

end
