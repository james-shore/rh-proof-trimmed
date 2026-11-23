import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CenUsedOfCenReal
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsReadingInMovedRowData
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsSideReadingLevelZeroMoved
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RowBasisCongruenceLengthsOtherLaterStages
import Formalism.SizeWindowBrackets.ChainSlopeWindows.LevelOfCongruence
import Formalism.ZetaNonvanishing.Assembly
import Formalism.ZetaNonvanishing.MeasurableGchi
import Formalism.ZetaNonvanishing.MellinSgen
import Formalism.ThickAverageLoss.ThickAverageProofs.ThickAverage
import Formalism.SharpRestriction.LevelLetterCocycles.AlignN
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
import Formalism.SharpRestriction.PageFix
import Formalism.SharpRestriction.Divisibility.SmallFirstModulusBelowScale
import Formalism.PeriodIntegrals.LpLower
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
import Formalism.YangianSpanCharacter.YangianRTTProofs.SpanCharacterIdentity
import Formalism.FormalDegreeBessel.FormalDegreeRatio.DSLowK
import Formalism.FormalDegreeBessel.FormalDegreeRatio.CapelliHighestWeightConjugated
import Formalism.SharpRestriction.CuspSpanNormBounds.AutLzFiniteOfLoop
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
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.FamilyFormalDegreeLowerBound
import Formalism.LatticeRigidity.HeightMinimum.PackingCountGeometricMean
import Formalism.LatticeRigidity.StatementA
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.LeadingMinorEqDetSubmatrix
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.SphericalL1StatementOfProjectors
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.FamilySeparationBound
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.CellInv
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.CellBru
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.CellMono
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.CellPt
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.IdScal
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.IdUnit
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.IdRoot
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.IdLift
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LocalisationTypedIndependentExponent
import Formalism.DoubleCosetMeasures.LowerUnipotentOrbits.DoubleCosetEqPreimage
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.NormAdditiveCharacterTypePrimeEqOne
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.DetMulEqSumProdMulDetSubmatrix
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.ExponentInequalityNondegenerateMid
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.FamilyPacketOfEquivalentStatement
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.IdealsOfNormEqIndexSet
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.MinkowskiDividesFactorialOfBound
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.GlobalConditionOfProductFormula
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SecondKernelPropertyKernel
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LagrangeExtraction
import Formalism.HermitianCurvature.HermitianCurvatureProofs.Block32EqZeroOfUnipotent
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PointwiseStabiliserParametrisationBijective
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SplitFrameTransitive
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictOrthogonalComplementNondeg
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CentreBlockStructure
import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.MapMulVolumeOfSubgroup
import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.LiftingTheory
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RaisingConstantEqNablaStar
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactlySupportedBanachModel
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CasimirEigenvalueCoefficients
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UsCompose
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SecondPolynomialClauses
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RootPushforwardDensity
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellVanishingOfCommute
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RealWeightedForms
import Formalism.HermitianCurvature.HermitianCurvatureProofs.JfCVUnderIntOfParts
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PsiNormalization
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PositionUpdateSums
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SecondExpansionIdentity
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ScalarInverseSimplification
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LeadingTermIdentity
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LeadingTermVectorIdentity
import Formalism.HermitianCurvature.HermitianCurvatureProofs.XiYZhatIdentity
import Formalism.HermitianCurvature.HermitianCurvatureProofs.OperatorsCommuteTranslations
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CellSmoothness
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapelliDetAdInvariant
import Formalism.HermitianCurvature.HermitianCurvatureProofs.FiniteSumLocalExpansion
import Formalism.HermitianCurvature.HermitianCurvatureProofs.JfBetaAdjCOfLemmaBNorm
import Formalism.HermitianCurvature.HermitianCurvatureProofs.Sq2UnitOfEqOneOfSq2EqDiv
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutoffIteratedFDerivBounded
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ComposeDifferentialOperators
import Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitalIntegralIdentities
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ChainRuleSmooth.ExpIntertwine
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ListSumSplittings
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirrorDecomposition.HpkRowEsI
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ExistsAuxiliaryXi
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelsOfBuiltSetting
import Formalism.HermitianCurvature.HermitianCurvatureProofs.NfRadOrder0OfRadRed
import Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedF
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftOfLocal
import Formalism.HermitianCurvature.HermitianCurvatureProofs.TopOfLocal
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LocalNormNonneg
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ThetaCompactSupport
import Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegralFormulaPassesToLimits
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBGHead
import Formalism.HermitianCurvature.HermitianCurvatureProofs.TopPSD
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBJoint
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.NilpotentSubgroup
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBTAsm
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBCFinal
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
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHDef
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantAlgebraComparison.InvAlgOfSteps
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantAlgebraComparison.BridgeHomFormula
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.FiniteNeighbourhoodSecond
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.CoordFin
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.LatticeOfEntriesIntegral
import Formalism.PadicSubsetSums.StableGradedCounts.IRRPrimeToPartEqIff
import Formalism.PadicSubsetSums.StableGradedCounts.FixedByAutomorphismInField
import Formalism.PadicSubsetSums.StableGradedCounts.IRRGoodDualStable
import Formalism.LocalToGlobal.Columns.GFamSEv
import Development.AbelianVarietyTheory.Proofs.HermitianTraceForms.ExistsGlIsometryCompEqOfNondegenerate
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsMulMemOfMemSpan
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ModuliUnivEtaKilled
import ReciprocityTheory.AnalyticForms.RegularLocalRings.LogResStC
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.InZhGeoInjStable
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsIsotropicGroupLatticeClassRepresentatives
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RePosOfIsMultIP
import Development.AbelianVarietyTheory.Counterexamples.LevelGroupExamples.OrthonormalBaseFrameNeg
import Development.AbelianVarietyTheory.Proofs.HeightProofs.HilbertSchurUnitaryIrreducibleScalar
import ReciprocityTheory.AnalyticForms.MaIntEmpty
import ReciprocityTheory.AnalyticForms.RegularLocalRings.WChartsC
import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.GramSt
import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.APrimeI
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeF
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LevelGoodAndSign
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.NegIndexTransposeOfHasSignature
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.IsSaturatedSubmoduleIffExistsIsComplOfValuationR
import ReciprocityTheory.DualLattices.TowerZeroSurjective
import ReciprocityTheory.DualLattices.LinPairStatement
import ReciprocityTheory.DualLattices.OneAddPowOfSq
import ReciprocityTheory.DualLattices.MapSmulOneMulVec
import ReciprocityTheory.DualLattices.ThmAFull
import ReciprocityTheory.DualLattices.SubMemOfCompat
import ReciprocityTheory.L2DbarEstimates.MinimalSolutions.CvxOfConvex
import ReciprocityTheory.L2DbarEstimates.MinimalSolutions.HormanderLemma
import ReciprocityTheory.L2DbarEstimates.LeviForms.BasicExpBound
import ReciprocityTheory.L2DbarEstimates.LeviForms.AddLogPosOfThreeQuartersLe
import ReciprocityTheory.L2DbarEstimates.LeviForms.Cutoff
import ReciprocityTheory.L2DbarEstimates.LeviForms.PolarBallReal
import ReciprocityTheory.L2DbarEstimates.LeviForms.ShellA
import ReciprocityTheory.L2DbarEstimates.LeviForms.Vanish
import ReciprocityTheory.L2DbarEstimates.LeviForms.FxExpNegWgtLeShell
import ReciprocityTheory.L2DbarEstimates.LeviForms.MacofFderivApplyContDiffOn
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
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.FiniteDimensionalCuspSectionsVanishingOffDomainStatement
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsFrameRingOverTestRingStatement
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.Rationality.FinCorePf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.Rationality.BasisChangePf
import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ValFinProdGen
import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExistsSecBGenerates
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ConstFamComponentsBasisExpansion
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.RelLengthSpanEqAddValDet
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.LengthCommensurableSpanSpanOfDetNeZero
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.CoeffEqZeroOfHasSumMFourierOrthonormalImage
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.UniformisationCompleteDvrOfLawsStatement
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.WickVanishing.HarmSecond
import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.ExistsIndexOfLocal
import ReciprocityTheory.SemistableReduction.FinrankRestrictTotalDegree
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.SemistableReductionPpavPadicFieldStatement
import Formalism.LocalToGlobal.ProjectiveLattices.DivFinOfLawA3
import Formalism.LocalToGlobal.ProjectiveLattices.AxHSup
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.FrTanAlg
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ThetaUniformisationComplexAbelianVarietyStatement
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SemiAbelianHomExtensionDvrStatement
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.TorusPin
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.SupGenTies
import Development.AbelianVarietyTheory.Proofs.GenericRegularity.NumericalConsequencesOfPins
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SpecialUnitaryHyperbolicPlaneMemTransvections
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.CmCurveBaseChangeComp
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.GenericFiberGluing.PlusConditionToZeroCondition
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.PrecompleteBases.IsPrecompleteOfBasis
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenFam
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenPf
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.NsmulApplyMemOfMemTensorLat
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.NonvanishingNearMaximum
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.HermCOrthonormalCoordinates
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.OrthogonalLatticeDecomposition
import ReciprocityTheory.SemistableReduction.Unipotent
import ReciprocityTheory.SemistableReduction.LatAll
import Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.RmulOneFrame
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.EqOfIsometricTrivShift
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.InterpStatementPfE
import Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.ContinuousOnOfCharts
import Development.AbelianVarietyTheory.PublishedTheorems.DefiniteCompactness.ExistsCompactOfDefinite
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsCompactOpenUnitsSubgroupContinuousSqrt
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsOpenIsCompactLevelOffFinEmpty
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsIsLatticeFrameIsMajorantFrame
import Development.AbelianVarietyTheory.Definitions.Foundations.ExistsGLSubmatrix
import Development.AbelianVarietyTheory.Statements.CuspFrameWeights.ConvolutionSmoothL2
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SpanHeisenbergTranslatesVacuumEqTop
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsIntertwinerHeisenbergCocycleOfFixedVector
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsQuadOfPlane
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NontrivialTwJacquetOfSurjective
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.ResidueInjectivityAt
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FiniteDimensionalFilDR
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMemNotMem
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MapMulScalar
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.FourierCoeffIntSt
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.HasSubstEv
import Development.AbelianVarietyTheory.Proofs.ThetaLawProofs.FamUnit
import Development.AbelianVarietyTheory.Proofs.ThetaLawProofs.FamHomogOfHomog
import Development.AbelianVarietyTheory.Proofs.ThetaLawProofs.ThetaKeyRuleValuationUnitOfFunctorialStatement
import Development.AbelianVarietyTheory.Proofs.ThetaLawProofs.NonemptyRingHomComplex
import Formalism.LocalToGlobal.CMDeterminantIdeals.CMIdealValuations.ValuationLeOfEqAlgebraMap
import Formalism.LocalToGlobal.CMDeterminantIdeals.CMIdealValuations.DetValuationLeOne
import Development.AbelianVarietyTheory.Proofs.ThetaLawProofs.KeyDatumConnectedFamilyOfPolarizedArithmeticFami
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.RigidifiedOfChart
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.SymplecticFormBasisChange
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ValuationPowApplyDivSubOneLt
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSplitPlOfNotIsConjPl
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsFixedOfMemISup
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PeriodComparisonProvisional
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ClosedPointGeometricFibresFinite
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ValAtAlgebraMap
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SumLogEmbeddingAddFinsumLogAdicAbvEqZero
import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.ArchimedeanUniqueness.MetricDef
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.ETPoint
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PullGenLBIsGen
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LocStOfLoc
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.GeoTiedPGraft
import Formalism.SharpRestriction.Divisibility.LocalNonemptiness.WeightFamilies
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SubRkOfPsiOfEqRkOfCEmb
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsProvisionalDivX
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.GenericFiniteMaps
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LevelMatchIff
import Formalism.LocalToGlobal.GroupLattices.StabilizerCount.StabiliserTrivialOfTiedChain
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SurjConj
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.WeilRos
import Formalism.SharpRestriction.LevelLetterCocycles.AutomorphicSideWildInertia
import Formalism.SharpRestriction.LevelLetterCocycles.WildPro
import Formalism.SharpRestriction.LevelLetterCocycles.QpowOfTw
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.BuiltEx
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TripleAtt
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsSstResToOfIsPst
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinPartEqOneOfLevel
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.GlobalCore
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.BlockSplitAll
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.EvalInjective
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.PinnedIntegrability
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnrOffOne
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsRationalUnitarySplitDenominatorStatement
import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.FiniteClassesSelfDualOfSelfDual
import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.CompletedTensorLatticeStrongApproxOpenCompact
import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.CMTypeEmbeddings
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LabelOfParabolicVector
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SeriesEqProdOfParabolicInductionChainStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ClassPresExtMemExtBijIsom
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsRestrictedFrames

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr

noncomputable section

namespace GlobalTheory.Mem.R3.Rw.CopyRead

open GlobalTheory.Mem.R3.Rw.SideTie in

theorem rowSide_of_pk : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (F : Face D A) (y : Hd R), (∀ μ, Used0 D μ ↔ y.Us μ) → ∀ (b : Bool) (rep : D.what₂.FT → Formalism.L2.NG.FinTyp D.host.E D.R.r) (EE : Type) [NormedAddCommGroup EE] [InnerProductSpace ℂ EE] [FiniteDimensional ℂ EE] (S : RowSide D EE) (n : ℕ) (bs : OrthonormalBasis (Fin n) ℂ EE) (ty : Fin n → D.what₂.FT) (jA : ∀ t, (Fin (rDim D A (levP F b).1 (levP F b).2 t) → D.what₂.LL) → S.Amb (y.tup t)) (t : ChT y F b rep (Top := fun μ => ⟨S.Amb μ⟩) jA ⟨⟨EE⟩, fun μ j => ⟨S.Mult μ j⟩, S.multZero, S.multTop, S.io, n, bs, ty⟩), ∃ I : RowIds S (y.C F) b, RowSideReal S (y.C F) b I bs ty ∧ (∀ π, I.prt π = y.prtE F b (rep π)) ∧ (∀ x, (I.jE x).1 = t.jE x) ∧ ∀ μ h x, (I.jX μ h x).1 = t.jX μ (S.multTop μ x) := by
  intro D G _ _ Pl0 T A Ks _ _ _ R F y hU b rep EE _ _ _ S n bs ty jA t
  exact ⟨ids hU t, real hU t, fun _ => rfl, fun _ => rfl, fun _ _ _ => rfl⟩

theorem liftTie_of_pk : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (F : Face D A) (y : Hd R), (∀ μ, Used0 D μ ↔ y.Us μ) → DV.LamDef D → ∀ (rep : D.what₂.FT → Formalism.L2.NG.FinTyp D.host.E D.R.r) (jL : ∀ (i : Fin D.R.m) t, (Fin (lDim D A F.P0 F.ψ0 i t) → D.what₂.LL) → D.what₂.Mt (y.tup t) ((i : ℕ) + 1)) (t : LfT y F rep (Mt := fun μ j => ⟨D.what₂.Mt μ j⟩) jL ⟨fun j => ⟨D.what₂.Mj j⟩, D.what₂.MjLat, D.what₂.thetaP, D.what₂.isot⟩), ∃ (I : LiftIds (y.L F)) (mj : GlobalTheory.RealGeo.MjTie R F), LiftTie (y.L F) I ∧ (∀ i π, I.prtW i π = y.prtW F i (rep π)) ∧ (∀ i x, (I.jMj i x).1 = t.jMj i x) ∧ (∀ μ h i x, (I.jMt μ h i x).1 = t.jMt μ i x) ∧ ∀ i x, mj.eW i x = t.eW i x := by
  intro D G _ _ Pl0 T A Ks _ _ _ R F y hU hLam rep jL t
  let I : LiftIds (y.L F) :=
    { jMj := fun i =>
        (LinearEquiv.ofInjective (t.jMj i) (t.jMj_inj i)).trans (LinearEquiv.ofEq _ _ (t.jMj_range i))
      jMt := fun μ hμ i =>
        (LinearEquiv.ofInjective (t.jMt μ i) (t.jMt_inj μ ((hU μ).1 hμ) i)).trans
          (LinearEquiv.ofEq _ _ (t.jMt_range μ ((hU μ).1 hμ) i))
      prtW := fun i π => y.prtW F i (rep π) }
  refine ⟨I, ⟨t.eW, t.eW_range, t.eW_norm, t.eW_lat⟩, ?_, fun _ _ => rfl, fun _ _ => rfl, fun _ _ _ _ => rfl,
    fun _ _ => rfl⟩
  refine ⟨fun i => GlobalTheory.HilbertLevels.holW R F y.tupT y.hm y.hTop y.hinj i, fun i x x' => t.jMj_ip i x x',
    fun μ hμ i x x' => t.jMt_ip μ ((hU μ).1 hμ) i x x', ?_, fun i π v => t.isot i π v,
    fun i π π' h => t.disj i π π' h, ?_⟩
  · intro μ hμ i x w _ hw hthC hgood
    exact t.theta μ ((hU μ).1 hμ) i x _ w hw hthC hgood
  · intro μ _ i π c h0 hc
    rw [hLam μ ((i : ℕ) + 1) (by omega) i.2 π h0]
    exact DV.lamTr_of_scalar D μ _ π c h0 hc

set_option maxHeartbeats 4000000 in
open GlobalTheory.Mem.R3.Rw.ComplexificationCasts in

theorem read_of_fits : ∀ (B : Base) (f : Fr B.toPre) (T : TwDat B) (w : ColW B f T) (Z₀ : w.Lt) (hX : B.fields.Ok) (Wt : Set B.places.Pl) (z₀ : Dat (w.st Z₀) w.I hX T Wt), ∀ (q : RowPk w z₀) (o : q.Over), o.Fits → ∀ m : Moved o, ∀ s : Side0 o, ∃ Y : Read m.z.R.toRealDat m.z.F.lv2 s.p0, Y.tup = m.y.tup ∧ Y.tupT = m.y.tupT ∧ Y.PY = m.y.PY ∧ Y.PW = m.y.PW ∧ (∀ t, HEq (Y.jA t) ((m.t.tA true (m.y.tup t)).cast (m.t.hA true t)).j) ∧ (∀ t, HEq (Y.jA0 t) ((m.t.tA false (m.y.tup t)).cast (m.t.hA false t)).j) ∧ (∀ (i : Fin (w.D o.Z).R.m) t x, HEq (Y.eMt i t x) x) ∧ (∀ π, (principalLevelFrame.rowRepR m.z.R.θ (Y.eFT π)).Iso (m.t.rep π)) ∧ (∀ x, HEq (Y.Ish.jE x).1 ((m.t.ch true).jE x)) ∧ (∀ x, HEq (Y.Iz.jE x).1 ((m.t.ch false).jE x)) ∧ (∀ i x, HEq (Y.mj.eW i x) (m.t.lf.eW i x)) ∧ (∀ μ h i x, HEq (Y.IL.jMt μ h i x).1 (m.t.lf.jMt μ i x)) := by
  intro B f T w Z₀ hX Wt z₀ q o hfits m s
  have hB : m.z.R.toRealDat.BaseW m.z.F.lv2 := m.z.pins.char.base
  have hmu := muAt_eq m
  have hU : ∀ μ, Used0 (w.st o.Z).toD7 μ ↔ m.y.Us μ := by
    intro μ; unfold Used0 Hd.Us; simp only [hmu]
  have hN : NumOK (w.st o.Z).toD7 := q.num o.η o.hη o.V o.S o.N o.G
  have k1 := rowSide_of_pk _ _ _ _ _ _ m.z.R.toRealDat m.z.F.lv2 m.y hU true m.t.rep _ (RowSide.sharp (w.st o.Z).toD7) _
    (w.st o.Z).toD7.what₂.onb (w.st o.Z).toD7.what₂.ft (fun t x => ((m.t.tA true (m.y.tup t)).cast (m.t.hA true t)).j x) (m.t.ch true)
  obtain ⟨Ish, h1R, h1P, h1E, h1X⟩ := k1
  have k0 := rowSide_of_pk _ _ _ _ _ _ m.z.R.toRealDat m.z.F.lv2 m.y hU false m.t.rep _ s.p0.s _
    (w.st o.Z).toD7.what₂.onb0 (w.st o.Z).toD7.what₂.ft0 (fun t x => ((m.t.tA false (m.y.tup t)).cast (m.t.hA false t)).j x) (m.t.ch false)
  obtain ⟨Iz, h0R, h0P, h0E, h0X⟩ := k0
  have kL := liftTie_of_pk _ _ _ _ _ _ m.z.R.toRealDat m.z.F.lv2 m.y hU hN.lam m.t.rep _ m.t.lf
  obtain ⟨IL, mj, hLT, hPW, hMj, hMt, hEW⟩ := kL
  have kF := RepCls.reps_classes _ _ _ _ _ _ m.z.R.toRealDat m.z.F.lv2 m.y _ m.t.rep m.t.reps
  obtain ⟨eF, heF⟩ := kF
  have kE := exists_eE m.y hB true (m.t.ch true).jE (m.t.ch true).jE_range
  obtain ⟨eE, heE⟩ := kE
  have hocc : ∀ π, (∃ σ, (q.p.ch true).ty σ = π) ∨ ∃ σ, (q.p.ch false).ty σ = π := fun π => by
    have k := (heF π).2.2.2
    obtain ⟨b, h0, hle⟩ := k
    have k' := exists_type (q.p.ch b).bs (q.p.ch b).ty π (m.t.ch b).jE _ ((m.t.ch b).ft π) h0 (hle.trans (m.t.ch b).jE_range.ge)
    cases b
    · exact Or.inr k'
    · exact Or.inl k'
  refine ⟨{
    tup := m.y.tup
    tupT := m.y.tupT
    tupT_tup := m.y.tupT_tup
    tupTie := fun μ h => tupTie m.y ((hU μ).1 h)
    tup0 := m.y.tup0
    muAt := hmu
    hm := m.y.hm
    hTop := m.y.hTop
    hinj := m.y.hinj
    Ish := Ish
    Iz := Iz
    IL := IL
    Kc := ⟨fun μ => m.z.R.toLevCh.xi (m.y.tupT μ)⟩
    PY := m.y.PY
    PW := m.y.PW
    eFT := eF
    ιW := m.y.ιW
    tied := ⟨h1R, h0R, hLT, colTie m.y hB hN.bu⟩
    prtE := fun π => by kexactB (h1P π).trans ((heF π).2.1 true).symm
    prtE0 := fun π => by kexactB (h0P π).trans ((heF π).2.1 false).symm
    prtWE := fun i π => by kexactB (hPW i π).trans ((heF π).2.2.1 i).symm
    xi := fun _ _ => rfl
    isomFin := m.y.isomFin
    frameMatch := m.y.frameMatch
    hF := m.y.hF
    stdPsi := m.y.stdPsi
    jA := fun t => by kexactB ((m.t.tA true (m.y.tup t)).cast (m.t.hA true t)).j
    jA0 := fun t => by kexactB ((m.t.tA false (m.y.tup t)).cast (m.t.hA false t)).j
    eMt := fun i t => by kexactB (LinearEquiv.funCongrLeft B.LL B.LL (finCongr (congrArg Mat1.n (m.t.hL i t))))
    formsA := fun t => by kexactB ((m.t.tA true (m.y.tup t)).cast (m.t.hA true t)).forms
    latA := fun t => by kexactB ((m.t.tA true (m.y.tup t)).cast (m.t.hA true t)).latT
    formsAtBottomLevel := fun t => by kexactB ((m.t.tA false (m.y.tup t)).cast (m.t.hA false t)).forms
    latA0 := fun t => by kexactB ((m.t.tA false (m.y.tup t)).cast (m.t.hA false t)).latT
    formsL := fun i t => by kexactB (cast_forms (m.t.hL i t) (q.p.tL (m.y.tup t) ((i : ℕ) + 1)))
    latL := fun i t => by kexactB (cast_lat (m.t.hL i t) (q.p.tL (m.y.tup t) ((i : ℕ) + 1)))
    topRead := fun t h x => by
      kexactB ((h1X _ h _).trans ((congrArg ((m.t.ch true).jX (m.y.tup t))
        (((q.p.ch true).multTop (m.y.tup t)).apply_symm_apply _)).trans ((m.t.ch true).top t ((hU _).1 h) x)))
    topRead0 := fun t h x => by
      kexactB ((h0X _ h _).trans ((congrArg ((m.t.ch false).jX (m.y.tup t))
        (((q.p.ch false).multTop (m.y.tup t)).apply_symm_apply _)).trans ((m.t.ch false).top t ((hU _).1 h) x)))
    mtRead := fun i t h x => by
      kexactB ((hMt _ h i _).trans ((congrArg (m.t.lf.jMt (m.y.tup t) i)
        (cast_apply (m.t.hL i t) (q.p.tL (m.y.tup t) ((i : ℕ) + 1)) x)).trans (m.t.lf.read i t ((hU _).1 h) x)))
    mj := mj
    mjRead := fun i v => by
      kexactB ((hMj i v).trans ((m.t.lf.jMj_read i v).trans
        (congrArg (fun u => PiTensorProduct.lift ((m.z.R.HW i _).e u)) (hEW i v).symm)))
    stable := fun μ => by kexactB (m.t.tA true μ).stable
    stable0 := fun μ => by kexactB (m.t.tA false μ).stable
    eE := by kexactB eE
    eE_read := fun x => by kexactB ((h1E x).trans (heE x))
    dall := by kexactB m.t.dall
    junk := fun μ h => iota_eq_zero _ m.y.hm μ ((m.t.ch true).junk μ fun h' => h ((hU μ).2 h'))
    cen0 := fun cG hk t => by
      kexactB (cen_of_tie ((m.t.tA false (m.y.tup t)).cast (m.t.hA false t)) (m.z.R.eG.trans cG) (fun z x => s.cen (m.y.tup t) z x)
        (s.is _ (stdIso_of_keep m.z cG hk) (m.y.tup t)))
    cen1 := fun cG hk t => by
      kexactB (cen_of_tie ((m.t.tA true (m.y.tup t)).cast (m.t.hA true t)) (m.z.R.eG.trans cG)
        (fun z x => o.N.ntypes.cenAmb (m.y.tup t) z x) ((hfits.cen _ (stdIso_of_keep m.z cG hk)).amb (m.y.tup t)))
    lam := hN.lam
    occ := by kexactB hocc
    kap := q.kap o.η o.hη o.V o.S o.N o.G
    bu := hN.bu
    ze := hN.ze }, by kexactB (Eq.refl m.y.tup), by kexactB (Eq.refl m.y.tupT), by kexactB (Eq.refl m.y.PY), by kexactB (Eq.refl m.y.PW),
    fun t => by kexactB (HEq.refl ((m.t.tA true (m.y.tup t)).cast (m.t.hA true t)).j),
    fun t => by kexactB (HEq.refl ((m.t.tA false (m.y.tup t)).cast (m.t.hA false t)).j),
    fun i t x => by kexactB (heq_funCongr (K := B.LL) (congrArg Mat1.n (m.t.hL i t)) x),
    fun π => by kexactB (heF π).1,
    fun x => by kexactB (heq_of_eq (h1E x)), fun x => by kexactB (heq_of_eq (h0E x)),
    fun i x => by kexactB (heq_of_eq (hEW i x)), fun μ h i x => by kexactB (heq_of_eq (hMt μ h i x))⟩

end GlobalTheory.Mem.R3.Rw.CopyRead

end
