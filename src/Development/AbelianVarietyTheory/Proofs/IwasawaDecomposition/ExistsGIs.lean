import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsTiedOfIsRecG
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsOkPins
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PinsCoordPre
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RayFieldLeAndExistsBase
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.HostPins
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder
import Development.AbelianVarietyTheory.PublishedTheorems.WeberRayClassFields.WeberRayFieldSt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.WithTrue
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsRecGOfIsLocalFamily
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsOrderThree
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ColumnLayerConditionsTrueColumnsLaterStages
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsFullHermitianColumnsTrueColumnsStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AdditiveCharacterTypePrimesValuesCoefficientFielStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.VolumesAgreeAdelicOfTrueVolumeStatement
import Formalism.LocalToGlobal.BesselHermitianTheta.Joints
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.TrPowSumFilterZero
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.CharId
import Formalism.ProductFormula.StatementOCCM
import Formalism.SizeWindowBrackets.ChainSlopeWindows.LevelOfCongruence
import Formalism.ZetaNonvanishing.Assembly
import Formalism.ZetaNonvanishing.MeasurableGchi
import Formalism.ThickAverageLoss.ThickAverageProofs.ThickAverage
import Formalism.HermitianLattices.HermitianLatticesProofs.ThetaBasic
import Formalism.HermitianLattices.HermitianLatticesProofs.MajLattice
import Formalism.HermitianLattices.HermitianLatticesProofs.MajBasic
import Formalism.HermitianLattices.DiscrFinite
import Formalism.ThetaLiftIndependence.ThetaOrbitSums.DetSwap
import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.OrderOfSignGroupDvdTwo
import Formalism.DirichletDensity.DirichletDensityProofs.APLogDensity
import Formalism.HarderNarasimhan.HarderNarasimhanProofs.PiSumForallInsertOnly
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.HeckeActionLevelMemHolds
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.AutomorphicFormsDecompositionHolds
import Formalism.SatakeDualWeyl.StatementG
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.LocalAlgebraInertPrime
import Formalism.SatakeDualWeyl.NablaRepApply
import Formalism.HyperbolicPlaceProducts.SubgroupIndexCounts.SubgroupCount
import Formalism.RankGapBounds.RankAndGapBounds
import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HilbertClassFieldA
import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA
import Formalism.FockGram.StatementFock
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsRanksRankValFrame
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.MPowFiveMulFMulLLe
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.BadCharacterBound
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.WeightRequirementOfValid
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsWeightsInWindows
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.UniversalCharts.ChartLawPf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RigidArc
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RigidSys
import Development.AutomorphicArithmetic.OrbitLabellings.NotIsCsOfGIdx
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
import Formalism.JacquetSubsetSums.JacquetSubsetSum
import Formalism.LocalToGlobal.IndefiniteForms.QuadraticExampleRankThreePackage
import Formalism.DivisorInequality.BaseLevelBoundsWithCovolume
import Formalism.BranchSandwichDivisors.BranchIsometryProofs.GoodDual
import Formalism.BranchSandwichDivisors.BranchIsometryProofs.GlobalBoundRefinements
import Formalism.LogVandermondeBounds.LogVandermondeProofs.RamifiedLatticeOperatorIdentity
import Formalism.ThetaSupremumBounds.LiftOperatorBoundOfFockJet
import Formalism.LocalToGlobal.IndefiniteReal.HeckeTupleStatement
import Formalism.LocalToGlobal.IndefiniteReal.CutTuples2
import Formalism.LocalToGlobal.BesselHermitianTheta.TiedLocW
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.GaloisSideTwistedSelmerAuxiliaryPrimes
import Formalism.SharpRestriction.SmoothDesignExistence.DGamSmooth
import Formalism.LocalToGlobal.Columns.RowFormsRat
import Formalism.LocalToGlobal.Columns.AtTOwedU
import Formalism.LocalToGlobal.Columns.AtTOwedV
import Formalism.GL3MeanSquares.HookFormulaTorsion.ConditionIffDualEqFunctional
import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices
import Formalism.GaussJetBounds.StatementK
import Formalism.IncomingBounds.LevelTail
import Formalism.FormalGroupWitt.FormalGroupWittProofs.CongrV
import Formalism.IncomingBounds.StatementThmP
import Formalism.SizeWindowBrackets.ChainSlopeWindows.SlopeInequalityOfLattices
import Formalism.CyclotomicNorms.NonsquarefreeBounds.IrreducibilityOfRestriction
import Formalism.LocalToGlobal.HilbertRowConditions.TiedEMt
import Formalism.SubspaceCounting.SubspaceCountingProofs.TopsChoicePartB
import Formalism.SubspaceCounting.SubspaceCountingProofs.DetDivides
import Formalism.ThetaLogCoordinates.DualWeylCoordinates.DualWeylProofs.QcEvGLDetUZpow
import Formalism.ThetaLogCoordinates.DualWeylCoordinates.DualWeylProofs.QcEvGLGenPtInt
import Formalism.ThetaLogCoordinates.DualWeylCoordinates.DualWeylProofs.QcColESymmVal
import Formalism.ThetaLogCoordinates.DualWeylCoordinates.DualWeylProofs.BCoreT
import Formalism.ThetaLogCoordinates.DualWeylCoordinates.DualWeylProofs.QbBasisApply
import Formalism.ThetaLogCoordinates.DualWeylCoordinates.DualWeylProofs.EqSmulCanonicalOfUnipotentInvariant
import Formalism.ThetaLogCoordinates.DualWeylCoordinates.DualWeylProofs.QxPhApply
import Formalism.ThetaLogCoordinates.DualWeylCoordinates.DualWeylProofs.QsSymDMatEq
import Formalism.ThetaLogCoordinates.DualWeylCoordinates.DualWeylProofs.HighestWeightIntegral
import Formalism.MahlerMeasure.GamLead
import Formalism.LocalRingCardinality.SpanPowerMembership.SizeData₂
import Formalism.LogVandermondeBounds.LogVandermondeProofs.PrimePowerSubgroupTrivial
import Development.AutomorphicArithmetic.ConductorsKronecker.kronecker
import Development.AutomorphicArithmetic.DedekindLFunctions.LandauZeroFreeCriterion
import Formalism.SharpRestriction.RamificationFrobenius.TotientGaloisClasses.Window
import Development.AutomorphicArithmetic.ConductorsKronecker.ChCond
import Development.AutomorphicArithmetic.DedekindLFunctions.LandauTheorems.ChBalance
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
import Formalism.LocalToGlobal.GlobalTheory.FamRec
import Formalism.SizeWindowBrackets.ChainSlopeWindows.SecondPriceSumWeightsUncovered
import Formalism.LandauZeroFreeBounds.ExceptionalZeroBounds.SiegelWalfiszAPOf
import Formalism.SizeWindowBrackets.ChainSlopeWindows.PBrDiv
import Formalism.SizeWindowBrackets.ChainSlopeWindows.ExistsOrthonormalFrameComplement
import Formalism.SizeWindowBrackets.ChainSlopeWindows.PSmall
import Formalism.SizeWindowBrackets.ChainSlopeWindows.ChiEightNoRealZeroHypothesis
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.HighestWeights.WeylBridge
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.GramEqConjTransposeMul
import Formalism.LocalToGlobal.UnitaryNorms.RealPl
import Formalism.SharpRestriction.InertJacobiLevels.ExtraTheta
import Formalism.SharpRestriction.InertJacobiLevels.ExtraRec
import Formalism.LocalRingCardinality.SpanPowerMembership.TwistRecordRowDimensionZero
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.ClassCountIdx
import Development.AutomorphicArithmetic.CyclotomicBounds.NotInert
import Formalism.ThetaLogCoordinates.ProductIdealMonotone.ParamDefs
import Formalism.TorsionNormIteration.InverseIntegralClasses.IsHomOfSubstEqSmul
import Formalism.TorsionNormIteration.InverseIntegralClasses.LTLemma
import Formalism.LocalToGlobal.GroupLattices.PendingLemmas.OrbitSumStabilizer
import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.PairwiseIndependenceComplementHolds
import Development.AutomorphicArithmetic.FrobeniusLocalisation.FrobGSpec
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.DetMulLeftCompMulRight
import Formalism.GL3MeanSquares.HookFormulaTorsion.WeightedVonMangoldtSumIdentity
import Formalism.GL3MeanSquares.HookFormulaTorsion.TwistIsPrimitiveCharacter
import Formalism.BehrendSets.BehrendVariance.MemWindowIff
import Formalism.BehrendSets.BehrendVariance.ProdDimVNeZero
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.TailContour
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.TailDiff
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.TailMertens
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.TailNum
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.CountSt
import Formalism.LocalToGlobal.GlobalTheory.GL2.Statement
import Formalism.SharpRestriction.GlobalSchurBounds.TheoremThreeUnderScaleOfGeneral
import Formalism.MeanHeightDescent.DivisionInequalityWithCovolume
import Formalism.LocalToGlobal.GlobalTheory.GL6.DiamondPreservesRationalFormZero
import Formalism.LocalToGlobal.GlobalTheory.GL6.EqOneOfCoprimeTorsionTwoPrimes
import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ClearDenominatorsLattice
import Formalism.LocalToGlobal.LatticeGeometry.OperatorNormFibers.PExtInvMuA
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.MassIntegralClass
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.ClassCountGenIn
import Formalism.LocalRingCardinality.SpanPowerMembership.NZColD
import Formalism.LocalRingCardinality.SpanPowerMembership.NZColF
import Formalism.LocalRingCardinality.SpanPowerMembership.NZTypeL
import Formalism.SharpRestriction.GrowthBounds.TensorLatticeBounds.DataLPa
import Formalism.SharpRestriction.GrowthBounds.TensorLatticeBounds.DataLPb
import Formalism.LocalRingCardinality.SpanPowerMembership.NZColA
import Formalism.LocalRingCardinality.SpanPowerMembership.NZLevM
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
import Formalism.LocalToGlobal.Columns.WithTopLevGTop
import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.ComplexMultiplication.ExtEmbEquivComp
import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.RatKDeg
import Formalism.LocalToGlobal.Columns.ChainLawPhiPf
import Formalism.LocalToGlobal.Columns.ChainLawTw
import Formalism.LocalToGlobal.KernelLattices.KerMemPin
import Formalism.LocalToGlobal.KernelLattices.KerMtPin
import Development.AbelianVarietyTheory.Proofs.HermitianTraceForms.ExistsGlIsometryCompEqOfNondegenerate
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.HasseNormTheoremQuadraticExtensionStatement
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.QuadTie
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.WeightedChartPullback.WchartPullLe
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsUniqueFactorCompletedStalkOfMap
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PlaceDivisors.SiegelPullbackTransfer.AdelicGL2ExtOfLocalComponents
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.HasAlgebraicChartsOfIsStandardSmooth
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.UnifUniqSt
import ReciprocityTheory.CommutativeAlgebra.SaturatedChains.IsSaturatedChain
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.PullFEPf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RankLin
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ModuliUnivEtaKilled
import ReciprocityTheory.AnalyticForms.RegularLocalRings.LogResStC
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.InZhGeoInjStable
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsIsotropicGroupLatticeClassRepresentatives
import Formalism.LocalToGlobal.ProjectiveLattices.HeckeStabSet
import Formalism.LocalToGlobal.ProjectiveLattices.CuspFDOf
import Development.AbelianVarietyTheory.BlockTheory.HeightDefect.IsotypicSignedParameters
import Development.AbelianVarietyTheory.Counterexamples.LevelGroupExamples.OrthonormalBaseFrameNeg
import ReciprocityTheory.DualLattices.SeriesState
import ReciprocityTheory.DualLattices.TangentPairingStatement
import ReciprocityTheory.DualLattices.NsetExpInjectiveSurjective
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsAddValuationLeIffEqIff
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RayClassPartialZetaContinuation
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.InfinitelyManyPrimesInRayClass
import Development.AutomorphicArithmetic.PrimeDiscriminants.ExistsHost
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ClassNumberLeAbsDiscrOfFinrankEqTwo
import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.GramSt
import ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.MeasurableEmbeddingRotAbout
import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.ArakelovDegreeEqDegreeOfFamily
import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.InhabSt
import Formalism.LocalToGlobal.ProjectiveLattices.UnitIndepOfCharts
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.FirstMinimumPos
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.ArakelovInstances.PnormInvStatement
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.SumBoundStatement
import ReciprocityTheory.ThetaQuasiPeriods.Change
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.UnipotentCoefficientShift
import ReciprocityTheory.L2DbarEstimates.LeviForms.OfRealNormSqSumMul
import ReciprocityTheory.L2DbarEstimates.MinimalSolutions.MinimalSolutionStatement
import ReciprocityTheory.L2DbarEstimates.ChartDerivatives.CommFderivApply
import ReciprocityTheory.L2DbarEstimates.ChartDerivatives.IntegralFderivApplyEqZero
import ReciprocityTheory.L2DbarEstimates.ChartDerivatives.IsLocalHomeomorphCompFst
import ReciprocityTheory.L2DbarEstimates.LeviForms.BergmanExistsStatement
import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.IndCount
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.M3bNormHolds
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.LogDOfPosBound
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.FourierCoefficientDomain
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.OntoStatementPfS
import ReciprocityTheory.ReducedBases.ExistsBoundedBasis
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.FlowCoefficientBounds
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.RelLengthSpanEqAddValDet
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditionalStatement
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.ThExprUniqOfChartIndep2
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.HomExtOfLocalRingPoints
import Formalism.MeanHeightDescent.AverageDegreeBounds.GlobalBoundRefinements
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RegularLocalRegularSequence.ExistsIsRegularOfListEqMaximalIdeal
import Formalism.PeriodIntegrals.EagonNorthcottZ
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.EagonNorthcottIntegral.BasisZeroEqSingle
import Formalism.LocalToGlobal.IndefiniteForms.IndefiniteTree.SlopeBoundOfConditionsWithErrorForFrames
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsRootNear
import Formalism.LocalToGlobal.ProjectiveLattices.CuspMulOf
import Development.AbelianVarietyTheory.Proofs.HeightProofs.PowClassNumberIntegral
import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsHeatZero
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HermitianCodeWordStagesRingOfIntegersFull
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HermitianCodeWordStagesHasRootOfUnity
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.IsGaugeAll
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroupStatement
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsHyperbolicCompletion
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AdelicUnitaryTopology
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ChainCompatibleTwistTransport
import Formalism.PairingDivisors.StatementA
import Formalism.PairingDivisors.StatementN
import Formalism.PairingDivisors.PairingDivisorProofs.ValAdd
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsIntertwinerHeisenbergCocycleOfFixedVector
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.FourierCoeffIntSt
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.HasSubstEv
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
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.TensorLatSpan
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.PaddedLastEntry
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeightedNormSquareRows
import Development.AbelianVarietyTheory.BlockTheory.GlobalSignature.MeanPeriodLogarithms
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.VacuumNormConjCmPointsAllEmbeddings
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelEqParahoricCategory
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AdelicUnitaryUnimodularExistsFundamentalDomain
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsUniqueNormalizedHaarMeasureAdelicUnitary
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeCharacterInfinityExponentGroupLaws
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsRefill
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsReframeVStdOfPosDef
import Development.AbelianVarietyTheory.PublishedTheorems.DiscreteSeriesUnitary₂.MaxMass
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IdentityClassLatticeEqSelfDualFrameLattice
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SumFibreEqSumOrbits
import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.LevelGroupNeTopNeBot
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.DatumPeriodicMulLatticeFinal
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsMoveRight
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.FormsStableOfTgtEq
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelChainUOperatorCommutationOfPointPairLaw
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelChainSharpColumnValuationOfStability
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.TupleChainSharpColumnValuationOfTwisted
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.WtBoundsOfNonneg
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ConjugatePrimeBoundPointKernelOfCoefficientKerne
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.TilLatticesOfLevel
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIntSmulMem
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FiniteChart
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LevelPrimeDataOkOfTrueColumnChoices
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.StepZeroClassesBijectiveSameDeco
import Development.AutomorphicArithmetic.FrobeniusLocalisation.MuSplitsCfacts
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PlaceProjectionZeroIntegralIffComponentsAboveStatement
import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.ExistsBranchingCoordinatesIff
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsForgetsFrames

noncomputable section

namespace GlobalTheory.Mem.Top.Bl.TrueLocal

open NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.TaylorLogMetric Formalism.MainNotions.StandardLatticesGL3 GlobalTheory.Mem.Per GlobalTheory.Glob GlobalTheory.Mem.TruePeriods GlobalTheory.Mem.PeriodTie

theorem omTied_retie_of_cube {D : D7} (hF : FieldOK D.host D.what₂.embLL D.embE) (h3 : ∀ z : ℂ, z ^ 3 = 1 → z ∈ coefM D) {δ : ℂ}
    (h : IsDiscriminantTwelfthRootOfIdealLattice D D.host.ccK δ) : Formalism.L2.GlobalTheoryTheory.OmegaCompatible (retie D) δ := by
  obtain ⟨δ', h', m2, m3⟩ := exists_delta_data D hF
  have h0 := delta_ne_zero h'
  have hu0 : δ / δ' ≠ 0 := div_ne_zero (delta_ne_zero h) h0
  have hu : (δ / δ') ^ 12 = 1 := by
    unfold IsDiscriminantTwelfthRootOfIdealLattice at h h'
    rw [div_pow, h, ← h', div_self (pow_ne_zero _ h0)]
  have hmap : lamOf D D.host.ccK δ = (lamOf D D.host.ccK δ').map (AddMonoidHom.mulLeft (δ / δ')) := by
    rw [lamOf_eq_map, lamOf_eq_map, AddSubgroup.map_map]
    congr 1
    ext; simp [← mul_assoc, div_mul_cancel₀ _ h0]
  generalize δ / δ' = u at hu0 hu hmap
  refine (ties_of_data hF h ?_ ?_).1
  · have e : g2 (lamOf D D.host.ccK δ) = (u ^ 4)⁻¹ * g2 (lamOf D D.host.ccK δ') := by
      unfold g2
      rw [hmap, Model.eisG_map _ _ hu0]; ring
    rw [e]
    exact mul_mem (inv_mem (h3 _ (by rw [← pow_mul, hu]))) m2
  · have e : g3 (lamOf D D.host.ccK δ) = (u ^ 6)⁻¹ * g3 (lamOf D D.host.ccK δ') := by
      unfold g3
      rw [hmap, Model.eisG_map _ _ hu0]; ring
    rw [e]
    refine mul_mem (inv_mem ?_) m3
    rcases sq_eq_one_iff.1 (show (u ^ 6) ^ 2 = 1 by rw [← pow_mul, hu]) with e | e <;> rw [e]
    · exact one_mem _
    · exact neg_mem (one_mem _)

open GlobalTheory.Mem.Top.ColOwe GlobalTheory.Mem.Col2 GlobalTheory.Mem.Col2.TC in
set_option maxHeartbeats 1000000 in
theorem omTied_withTrue {B : Base} {C : Cols B} (hF : FieldOK B.host B.embLL B.embE) (hc : B.host.ccK = ⊤) {δ : ℂ}
    (h : Th.IsDiscriminantTwelfthRootOfIdealLattice B.host ⊤ δ) (Z : Later B C) (hZ : Z.G.gx = Per.trueGx B.host B.embLL B.embE (Equiv.refl _)) :
    Formalism.L2.GlobalTheoryTheory.OmegaCompatible (recOf Z) δ := by
  have h1 : IsDiscriminantTwelfthRootOfIdealLattice (recOf Z) (recOf Z).host.ccK δ := by
    have : (recOf Z).host.ccK = ⊤ := hc
    rw [this]; exact h
  have h2 := omTied_retie_of_cube (D := recOf Z) hF (fun z hz => B.fixedField_le_coefficientField (B.KsC_le_LL0C (B.rootsField_le_KsC
    ((le_sup_right.trans le_sup_left : Fld.cycField (3 ^ 4) ≤ Fld.rootsField B.toPre)
      (Fld.mem_cycField (by norm_num) (by rw [show 3 ^ 4 = 3 * 27 by norm_num, pow_mul, hz, one_pow])))))) h1
  obtain ⟨W, V, S, N, G⟩ := Z
  obtain ⟨M, i, e, a, b, c⟩ := h2
  refine ⟨M, i, e, a, b, fun τ => ?_⟩
  obtain ⟨d, hd, hs⟩ := c τ
  refine ⟨d, hd, fun s => ?_⟩
  have : (recOf (⟨W, V, S, N, G⟩ : Later B C)).gx = G.gx := rfl
  rw [this, show G.gx = _ from hZ]
  exact hs s

section Stages

open Formalism.MainNotions.G Formalism.L2.G IsDedekindDomain Formalism.UG Formalism.L2.Forms GlobalTheory.Mem.ConcreteRecord GlobalTheory.Mem.Top.ColOwe GlobalTheory.Mem.Col2 GlobalTheory.Mem.Col2.TC

attribute [local instance] Formalism.BasicNotions.factResChar Formalism.BasicNotions.Host.cmStar

variable {B : Base} {C : Cols B}

set_option maxHeartbeats 4000000 in

theorem isLocalFamily_stages (sc : Scale) (Z Z' : Later B C) (L0 : LevelData (recOf Z)) (T : ∀ u, Forms0 (recOf Z) u) (g)
    (h : IsLocalFamily sc (recOf Z) L0 T g) : IsLocalFamily sc (recOf Z') L0 (fun u => forms0Re Z' (T u)) g := by
  run_tac do
    let m ← Lean.Elab.Tactic.getMainGoal
    m.withContext do m.assign (← Lean.Meta.getFVarFromUserName `h)

end Stages

section Main

open Formalism.MainNotions.G Formalism.L2.G IsDedekindDomain Formalism.UG Formalism.L2.Forms GlobalTheory.Mem.ConcreteRecord GlobalTheory.Mem.Top.ColOwe GlobalTheory.Mem.Col2 GlobalTheory.Mem.Col2.TC
open Formalism.MainNotions.Inhab Formalism.L2.Host GlobalTheory.EX GlobalTheory.EX.OB GlobalTheory.Mem.Top.GroupRetwisting

attribute [local instance] Formalism.BasicNotions.factResChar Formalism.BasicNotions.Host.cmStar

theorem companion_of_colsHermS {D : D7} (H : Formalism.L2.Herm.ColsHermS D) : Companion D H.base.lev0 := fun u =>
  have hi : IsIntegral ℤ (D.host.conj ((H.atT u).piU : D.host.E)) :=
    map_isIntegral_int D.host.conj (RingOfIntegers.isIntegral_coe _)
  ⟨Ideal.span {(⟨_, hi⟩ : 𝓞 D.host.E)}, (H.baseL u ⟨_, hi⟩ rfl).1⟩

theorem exists_gTiedS_heq {D : D7} (H : Formalism.L2.Herm.HermColsCh D) (H0 : Formalism.L2.Herm.Herm0 D) (h : H0.lev0 = H.lev0) :
    ∃ g : Formalism.L2.Herm.SymmetricGroupCompatibility D H, HEq g H0.g := by
  obtain ⟨l, g⟩ := H0
  dsimp only at h
  subst h
  exact ⟨g, HEq.rfl⟩

theorem herm0_eq_to0 {D : D7} (X : Formalism.L2.Herm.FullTiedS D) (H0 : Formalism.L2.Herm.Herm0 D) (h : X.base.lev0 = H0.lev0)
    (hg : HEq X.g H0.g) : H0 = X.to0 := by
  obtain ⟨l, g⟩ := H0
  dsimp only at h hg
  subst h
  obtain rfl := eq_of_heq hg
  rfl

variable {K : Ctx} {B : Base} {f : Fr B.toPre} {T : TwDat B}

theorem columnLocalData_of_levelZero_concreteData (w : ColW B f T) (Z : w.Lt) (C : ColsTiedSym (w.D Z)) (hC : TC.StdC w.I w.l Z C)
    (hL : ∀ u, TC.StdLvC w.I w.l Z u (C.forms u)) (hV : Formalism.L2.Herm.VolumeCompatible (w.D Z)) (hO : Formalism.L2.GlobalTheoryTheory.OmegaCompatible (w.D Z) w.I.J.δ)
    (Gt : GatTies (w.D Z)) (c : LatCmp (w.D Z)) (G : GroupCompatibilityAll (w.D Z) Gt c) (hR : IsRecG K.s (w.D Z) Gt c G.herm G.forms)
    (hl : G.herm.lev0 = C.herm.base.lev0) (hf : G.forms = fun u => (C.forms u).to0)
    (hpl : ∀ u v hg (a : Fin ((w.D Z).gat u v hg).P.nV) (s : Fin (((w.D Z).gat u v hg).P.n' a)) (x : 𝓞 (w.D Z).host.F),
      x ∈ ((G.herm.g u v hg).pl a).1.asIdeal ↔ (0 : WithTop ℤ) < (w.D Z).what₂.places.val v
        (tauLL (w.D Z) (Gt.gat_pos u v hg ⟨a, s⟩) (algebraMap (w.D Z).host.F (w.D Z).host.E (x : (w.D Z).host.F)))) :
    Nonempty (ColumnDataSplitPrimes K w Z) := by
  obtain ⟨g, hg⟩ := exists_gTiedS_heq C.herm.base G.herm hl
  obtain ⟨Fu, h1, h2⟩ := GlobalTheory.T.exists_fullHermitianColumns_trueColumns w.I w.ok w.pins w.l Z C g hC hV
  have e : Fu.1.base.lev0 = G.herm.lev0 :=
    (congrArg (fun H : Formalism.L2.Herm.ColsHermS (w.D Z) => H.base.lev0) Fu.2).trans hl.symm
  exact ⟨⟨⟨C, hC, hL, Fu, h2, Gt, c, G, herm0_eq_to0 Fu.1 G.herm e (h1.trans hg), hf,
    gPlTiedS_of G.herm hpl _ _ e (h1.trans hg)⟩, hR, hO⟩⟩

set_option maxHeartbeats 8000000 in

theorem nonempty_columnLocalData_of_standardConcreteFamily (w : ColW B f T) (Z : w.Lt) (C : ColsTiedSym (w.D Z)) (hC : TC.StdC w.I w.l Z C)
    (hL : ∀ u, TC.StdLvC w.I w.l Z u (C.forms u)) (g) (hd)
    (h : IsLocalFamily K.s (w.D Z) C.herm.base.lev0 (fun u => (C.forms u).to0) g)
    (hV : Formalism.L2.Herm.VolumeCompatible (w.D { Z with G := { Z.G with gat := g, gat_d := hd } }))
    (hO : Formalism.L2.GlobalTheoryTheory.OmegaCompatible (w.D { Z with G := { Z.G with gat := g, gat_d := hd } }) w.I.J.δ) :
    Nonempty (ColumnDataSplitPrimes K w { Z with G := { Z.G with gat := g, gat_d := hd } }) := by
  obtain ⟨Gt, c, G, hR, hl, hf, hpl⟩ := isRecG_of_isLocalFamily C.joint0
    (fun u => GlobalTheory.T.exists_psi0_eq_embLL w.I w.ok w.pins w.l Z (C.forms u).gl (hC u).gl) hd h
  exact columnLocalData_of_levelZero_concreteData w _ (colsRe _ C) (stdC_colsRe w.I w.l _ C hC) (fun u => stdLvC_colsRe w.I w.l _ C u (hL u)) hV hO Gt c G hR
    (funext hl) (funext fun u => (hf u).trans ((forms0Re_setGat g hd _).symm.trans (columnFormsAlongLaterStages_stageZero_eq _ C u).symm)) hpl

set_option maxHeartbeats 8000000 in

theorem exists_trueVolume_stage_of_any_column_choice (p : WP) : StepW p fun K B f T w => ∃ G : GJStage B w.C, GIs2 K w G := by
  refine StepW.of_all fun K B f T w hO _ _ => ?_
  obtain ⟨Z₀⟩ := TrueColsTest.later w.l (JetEx.hasLetters_of_over hO)
  obtain ⟨C, hC, hL⟩ := GlobalTheory.T.exists_standardColumnComparisons_trueColumns w.I w.ok w.pins w.l Z₀
  obtain ⟨g, hd, h⟩ := exists_isLocalFamily K.s (D := w.D Z₀) (fun u => (C.forms u).to0) C.herm.std (companion_of_colsHermS C.herm)
    C.joint0 fun u => GlobalTheory.T.exists_psi0_eq_embLL w.I w.ok w.pins w.l Z₀ (C.forms u).gl (hC u).gl
  refine ⟨{ Z₀.G.withTrue with gat := g, gat_d := hd }, (LayerTwoModel.gIs2_iff w _).2 fun W V S N => ?_⟩
  have hV : Formalism.L2.Theta.VolTieG (w.D ⟨W, V, S, N, { Z₀.G.withTrue with gat := g, gat_d := hd }⟩) :=
    GlobalTheory.T.volumesAgreeAdelic_of_trueVolume _ fun _ => rfl
  refine ⟨hV, nonempty_columnLocalData_of_standardConcreteFamily w ⟨W, V, S, N, Z₀.G.withTrue⟩ (colsRe _ C) (stdC_colsRe w.I w.l _ C hC)
    (fun u => stdLvC_colsRe w.I w.l _ C u (hL u)) g hd ?_ hV.hermVolTied
    (omTied_withTrue w.fld w.px.ccK_top w.ok.amb_ok.delta _ rfl)⟩
  have h' := isLocalFamily_stages K.s Z₀ ⟨W, V, S, N, Z₀.G.withTrue⟩ _ _ g h
  exact (congrArg (fun F => IsLocalFamily K.s (recOf ⟨W, V, S, N, Z₀.G.withTrue⟩) C.herm.base.lev0 F g)
    (funext (columnFormsAlongLaterStages_stageZero_eq ⟨W, V, S, N, Z₀.G.withTrue⟩ C))).mpr h'

theorem exists_trueVolumeStage_columnChoiceStep : StepW Pinned fun K B f T w => ∃ G : GJStage B w.C, GIs2 K w G := exists_trueVolume_stage_of_any_column_choice Pinned

end Main

end GlobalTheory.Mem.Top.Bl.TrueLocal

end
