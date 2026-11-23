import Mathlib
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PeriodSingle
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsScaleWithBoundedGamma
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TwistedArgsColumnHeq
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LevTruePackOfPart
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemCutQGrp
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LevelReadingRationalAtTwistExtendsIntegralUnitarStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TwistedTupleReadingLevelCharacterStatement
import Formalism.LocalToGlobal.Divisibility.TiedLemmas
import Formalism.IncomingBounds.StatementThmP
import Formalism.GaussJetBounds.StatementQ
import Formalism.GaussJetBounds.GaussJetProofs.ConstantCoeffQuadSer
import Formalism.LocalToGlobal.ExponentGrids.ExponentGridsProofs.NormaliserValuationBound
import Formalism.LocalToGlobal.GroupLattices.JointServices.LevelOperatorFixesImage
import Formalism.SizeWindowBrackets.ChainSlopeWindows.SlopeInequalityOfLattices
import Formalism.LocalToGlobal.Columns.SliceIntegralDeltaNeBot
import Formalism.LocalToGlobal.Columns.BrzoPairAtZeroRight
import Formalism.LocalToGlobal.GlobalTheory.FamRecP
import Formalism.LocalToGlobal.GlobalTheory.ArithP
import Formalism.SizeWindowBrackets.ChainSlopeWindows.SecondPriceSumWeightsUncovered
import Formalism.SizeWindowBrackets.ChainSlopeWindows.PBrDiv
import Formalism.SizeWindowBrackets.ChainSlopeWindows.ExistsOrthonormalFrameComplement
import Formalism.SizeWindowBrackets.ChainSlopeWindows.PSmall
import Formalism.SizeWindowBrackets.ChainSlopeWindows.ChiEightNoRealZeroHypothesis
import Formalism.LocalToGlobal.NormalizedHeckeFactors.CoverLen
import Formalism.LocalToGlobal.NormalizedHeckeFactors.CoverEta
import Formalism.LocalToGlobal.Divisibility.LinkDefN
import Development.AutomorphicArithmetic.CyclotomicBounds.NotInert
import Formalism.ThetaLogCoordinates.ProductIdealMonotone.ParamDefs
import Formalism.LocalToGlobal.GroupLattices.PendingLemmas.OrbitSumStabilizer
import Formalism.SharpRestriction.SmoothDesignExistence.AdmissibleTopsMertens
import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.PairwiseIndependenceComplementHolds
import Formalism.SharpRestriction.Divisibility.LocalNonemptiness.OrbitPlaces
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SizeAbsorption.ExpPowEq
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.EnergyInst
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.DetUpMatSub
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.DetMulLeftCompMulRight
import Formalism.GL3MeanSquares.HookFormulaTorsion.WeightedVonMangoldtSumIdentity
import Formalism.GL3MeanSquares.HookFormulaTorsion.TwistIsPrimitiveCharacter
import Formalism.BehrendSets.BehrendVariance.MemWindowIff
import Formalism.BehrendSets.BehrendVariance.ProdDimVNeZero
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.TailContour
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.TailDiff
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.TailNum
import Formalism.LocalToGlobal.GlobalTheory.GL2.Statement
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.CountZAll
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.MSqPairs
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.MSqDiagA
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.MSqDiagB
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.MSqPage
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.MSqTwistB
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.MSqMainA
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.MSqMainB
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.MSqMain
import Formalism.GL3MeanSquares.HookFormulaTorsion.MeanSquareOfPrimeNumberTheorem
import Formalism.LocalToGlobal.GlobalTheory.AnalyticConclusionCompatibleMeanSquare
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.PNTFinal
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.PNTBridge
import Formalism.PadicSubsetSums.StableGradedCounts.FixedByAutomorphismInField
import Formalism.PadicSubsetSums.StableGradedCounts.IRRGoodDualStable
import Formalism.SharpRestriction.LevelLetterCocycles.StmtLocFOfCountsAll
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SquarefreeRootsInjective.CardLeSumOfCover
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SquarefreeRootShift.CountB
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SquarefreeDivisorDegree.CardMonicTwoRootsLe
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DyadicPrimeIntervals.ThetaDiff
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ChebyshevPrimeBounds.PsiLowerBoundHolds
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DyadicPrimeIntervals.SmallLoop
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DyadicPrimeIntervals.SmallNaturalNumbersBound
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SquarefreePrimeFactor.SquarefreeCountEstimate
import Formalism.SharpRestriction.LevelLetterCocycles.CylinderCountFamily
import Formalism.LocalToGlobal.GlobalTheory.ConcNP
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.KloostermanCosetSumLe
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ReductionExists
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.IdCellOffCHoldsOfVol
import Formalism.SharpRestriction.CuspSpanNormBounds.CayleyDegreeNondegeneracy.FibreCountOfPositions
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScGapBig
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LatExistsDiff
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.AtPtRel
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ActFrame
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DiagCLC
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.CovolumeSpans
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.IsIdentityOfEqualFlags
import Formalism.SharpRestriction.InertJacobiLevels.RayPrimes
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.MainEqPoints
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.MainEqFam
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DecompPhaseCOf
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SpanPreservation
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CMDegreeEquality.FinrankEqTwo
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiniteOrderReduction.EqOneOfIsOfFinOrder
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiniteOrderReduction.Bridge
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagScalarRelevance.XvMemLieN
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FixedDimensionCount.ExistsSemidirectDecomposition
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.Reduce
import Formalism.LocalToGlobal.UnitaryNorms.CharRat
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.GoodRDeltaC
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IsometryDeterminant.LidxAntisymm
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.NotIntAllOfLoc
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.TermsAtFiniteOf
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.DensAtD
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.LoopTieOfInhab
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.NormRepX
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LocJEqMeas
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LocUniqGen
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BesselDecayBounds.BesselUnitNorm.BesselNormSteps.BesselLine.Development
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BesselDecayBounds.BesselUnitNorm.BesselNormSteps.UnitNorm.UnitNormAllOfCore
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BesselDecayBounds.SchurDecayBounds.NormIdSm
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BesselDecayBounds.SchurDecayBounds.NormIdFixM
import Formalism.HermitianCurvature.HermitianCurvatureProofs.L2NormScaling
import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormTwoSidedTranslateGrowthBound
import Formalism.HermitianCurvature.HermitianCurvatureProofs.QuadInner1
import Formalism.HermitianCurvature.HermitianCurvatureProofs.AeSS
import Formalism.LocalToGlobal.SiegelLatticeTheory.BesselDiscreteSeries.DecLowPf
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.DatumEab
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.HighestWeights.PieriRules.PrhoEntryHasDerivAt
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.PSpecB
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.CFCore
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.TransposeUnitary
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.WeightedL1OfL2
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.PhiIntegrable
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JSchurG
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JRepro
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JHaarSF
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JDiagExists
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JInvGroupA
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.InhabRep
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.CoefIntCpt
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BoundarySlices.WbPartBvecEI
import Formalism.SharpRestriction.CuspSpanNormBounds.FrameFactorGe
import Formalism.SharpRestriction.CuspSpanNormBounds.FrobeniusCoefficientMemLp.SigmaFiniteAmplitudes.GapOfHypotheses
import Formalism.SharpRestriction.CuspSpanNormBounds.FrobeniusCoefficientMemLp.SigmaFiniteAmplitudes.NonzeroKFinite
import Formalism.SharpRestriction.CuspSpanNormBounds.FrobeniusCoefficientMemLp.SigmaFiniteAmplitudes.FlipOneTwo
import Formalism.SharpRestriction.CuspSpanNormBounds.KFinOfLowUnitH
import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.RowsFinalBetaInf
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeilQuotientMeasure.Bruhat
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QuotMeasUniq
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.DensGen
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.LocDensHSt
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.LocDensFF
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.DensVNA
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.LocDensHC
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.MeasureEqOfCos
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.EventuallySmulSub
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.DensVGlue
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.DensInfCo
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MassComputations.ContinuousCrdAllSymm
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.AdmCpt
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeilStabilizerVolume.TopoPolish
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeilStabilizerVolume.HformSmulLeft
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeilStabilizerVolume.TopoMuInv
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeilStabilizerVolume.EventuallyStruct
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeilStabilizerVolume.FibGlue
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeilStabilizerVolume.DensVCos
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeilStabilizerVolume.SdTestInf
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeilStabilizerVolume.RPGlue
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeilStabilizerVolume.LocDensFFT
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeilStabilizerVolume.LocDensFFHS
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeilStabilizerVolume.LocDensVolS
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeilStabilizerVolume.LocDensIdxC
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.DiffGenLoc
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ProdConvHoldsGen
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ProdExactHolds
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.NormalCount
import Formalism.SharpRestriction.CuspSpanNormBounds.BridgeLevelGenB
import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirVolumeRatios.VolumeClassRepresentatives.UnfoldingVolume
import Formalism.SharpRestriction.GlobalSchurBounds.TheoremThreeUnderScaleOfGeneral
import Formalism.SharpRestriction.CuspSpanNormBounds.BridgeLemV
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensPf
import Formalism.PadicSubsetSums.StableGradedCounts.IRRFrobOrbitIrred
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IrreducibleCharacterSeries.CharacterEqOfRepIso
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IrreducibleCharacterSeries.ConjugateCharacterFormula
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IrreducibleCharacterSeries.FrobeniusSumFormula
import Formalism.LocalToGlobal.Columns.ExistsUnitOfPowEqOne
import Formalism.LocalToGlobal.GroupLattices.ServiceOfTiedSelection
import Formalism.LocalToGlobal.Columns.GFamSEv
import Development.AbelianVarietyTheory.Proofs.HermitianTraceForms.ExistsGlIsometryCompEqOfNondegenerate
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsMulMemOfMemSpan
import ReciprocityTheory.AnalyticForms.RegularLocalRings.LogResStC
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisGeometry₂.HoweUnram
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.MatrixTraceIffIsCharacterOverSubfieldComplexStatement
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.StarInvMulVecDotProductMulVecInvMulVec
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.RegularIffNatDegreeAndExistsEllipticGLStatement
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.ExistsTeichmullerMapAlgebraicClosureFiniteFieldStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBlockDiagActEq
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockTriangularPrimitiveCharacters
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RePosOfIsMultIP
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TameLabelsOfGenerator
import Formalism.LocalToGlobal.ProjectiveLattices.BaseEmbeddingInclusion
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OToSAlgebraMap
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodIdempotentCoefficientConjugate
import Development.AbelianVarietyTheory.Proofs.HeightProofs.SchurOrthogonalityIndefiniteUnitaryGroupStatement
import Formalism.SharpRestriction.RamificationFrobenius.TotientGaloisClasses.InertiaGaloisSymmetry.CycAll
import ReciprocityTheory.AnalyticForms.MaIntEmpty
import ReciprocityTheory.AnalyticForms.RegularLocalRings.WChartsC
import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.GramSt
import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.APrimeI
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeF
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LevelGoodAndSign
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
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.PrincipalLevelEqHalfMarkingStabilizer
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.LbIsoCubeLBMulRightOf
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.NsmulApplyMemOfMemTensorLat
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.NonvanishingNearMaximum
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.HermCOrthonormalCoordinates
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.OrthogonalLatticeDecomposition
import ReciprocityTheory.SemistableReduction.Unipotent
import ReciprocityTheory.SemistableReduction.LatAll
import Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.RmulOneFrame
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.HolJetF
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.AnChartX
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.ComposeLinearAction
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.AnChartAsm
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.ModelLatIn
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.EqOfIsometricTrivShift
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.NotIsCompactUnivFv
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.InterpStatementPfE
import Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.ContinuousOnOfCharts
import Development.AbelianVarietyTheory.PublishedTheorems.DefiniteCompactness.ExistsCompactOfDefinite
import Development.AbelianVarietyTheory.Counterexamples.LevelGroupExamples.LevelGroupEqTopOfCoprime
import Development.AbelianVarietyTheory.Statements.CuspFrameWeights.SameKindIsometric
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.GaugeUnfold
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.LintegralFintypeProdEqProd
import Development.AbelianVarietyTheory.Statements.CuspFrameWeights.ConvolutionSmoothL2
import Development.AbelianVarietyTheory.BlockTheory.TorsionBlocks.FlatZetaIntegral
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SummableAbsNormInvSq
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DiscreteSeriesModelUnitaryIrreducibleOrthonormal
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SpanHeisenbergTranslatesVacuumEqTop
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsIntertwinerHeisenbergCocycleOfFixedVector
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsQuadOfPlane
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
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsFramesNormAtEqNorm
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsProvisionalDivX
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.GenericFiniteMaps
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LevelMatchIff
import Formalism.LocalToGlobal.GroupLattices.StabilizerCount.StabiliserTrivialOfTiedChain
import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.GoodPairSystems
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.RPfVal
import Formalism.LocalToGlobal.IndefiniteForms.IndefiniteTree.ONPage
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SurjConj
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotTeichTrivOfIsDelta
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.WeilRos
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HcParameterEAddHalfShiftLeBSucc
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LevelGroupActionEqZeroOfNoLift
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TypePlacesNotPairwiseConjugate
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IpMSelfEqZero
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.PinnedIntegrability
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsRationalUnitarySplitDenominatorStatement
import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.FiniteClassesSelfDualOfSelfDual
import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.CompletedTensorLatticeStrongApproxOpenCompact
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsIsAddHaarMeasureIsAddFundamentalDomainPrei
import Development.AbelianVarietyTheory.PublishedTheorems.DiscreteSeriesUnitary₂.MaxMass
import Development.AbelianVarietyTheory.Proofs.GenericRegularity.CabsDiagEqOne
import Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.ProdMemSpan
import Formalism.LocalToGlobal.GroupLattices.PendingLemmas.SysC
import Formalism.LocalToGlobal.GroupLattices.PendingLemmas.WittFractionToCoefficients
import Formalism.LocalToGlobal.GroupLattices.PendingLemmas.ExistsCoprimePowEqOne
import Formalism.LocalToGlobal.GroupLattices.PendingLemmas.InvarianceRepresentativesLaw
import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ConjugateAdjointDagger
import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.WeilDatumExistence
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.RealisedChainTorusEq
import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ClassFunctionSumIntegral
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsTameFinitePlaceHermitianAll
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.RapidVal
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ValLast
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ValueDoubleUnif
import Development.AbelianVarietyTheory.BlockTheory.GlobalSignature.LatticeTensorUnfolding
import Development.AbelianVarietyTheory.BlockTheory.GlobalSignature.ActionCoordinates
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.MiStarOfMid
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ValuationEqZeroOfRootOfSUnitRatio
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.TowerIsChain
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.InjectiveOfIndep
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLevelActionCuspFormRepresentation
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LevelActionPreservesIntegralCuspForms
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompletedLatticeStabilizerIffBasisIntegral
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralAdelicCoordinatesLatticeMod
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.XiEqXiOffMul
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.QLev
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.Placed
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IdentityClassLatticeEqSelfDualFrameLattice
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EasyInputs
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsMoveRight
import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.StatementK
import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.OrthShapeOne
import Formalism.LocalToGlobal.TorsionIntegrality.RamifiedCurveKernels.StatementV
import Formalism.LocalToGlobal.TorsionIntegrality.TorsionTranslationPowers.StatementS
import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.StatementI
import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.StatementL
import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.StatementH
import Development.AbelianVarietyTheory.Definitions.HeightFunctions.IntUnit
import Formalism.LocalToGlobal.ProjectiveLattices.FullXi
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.BaseMatrixGlApply
import Formalism.LocalToGlobal.TorsionIntegrality.GaussianEigenFrames.StatementA
import Formalism.LocalToGlobal.TorsionIntegrality.GaussianEigenFrames.StatementB
import Formalism.LocalToGlobal.AlgebraicTheory.StatementC
import Formalism.LocalToGlobal.AlgebraicTheory.StatementD
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.KerPerPair
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FourSquareQuaternions.OrthogonalDiagonal
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FourSquareQuaternions.QmapInjective
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorSpanning.TensSpans
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeIsomorphism.RpOfIsIntegral
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeIsomorphism.LatticeFromNormOneInduction
import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ExistsIntegralMulOrderElement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftFrLifts
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FiniteChart
import Formalism.LocalToGlobal.Columns.TwQBOpen
import Formalism.LocalToGlobal.Columns.TwQLat
import Formalism.LocalToGlobal.Columns.TwQExact
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsPointOfDecoratedLatticeSplicedAtPlace

noncomputable section

namespace GlobalTheory.TopVal.TwSet

section Gen

open scoped TensorProduct
open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.L2.Col Formalism.L2.DIV Formalism.UG GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Col2.TypeLev Matrix Formalism.L2.Forms GlobalTheory.SeeSaw.TwLev

theorem lev_set {F E K : Type} [Field F] [NumberField F] [Field E] [NumberField E] [StarRing E] [Algebra F E] [Field K]
    (hc : CMData F E) {n n' : ℕ} (e : n' = n) [NeZero n] {J' : Matrix (Fin n') (Fin n') E} {J : Matrix (Fin n) (Fin n) E}
    (hJ' : J' = 1) (hJ : J = 1) {T f : ℕ} {bad : Set (HeightOneSpectrum (𝓞 F))} (S : StepLevel F E hc.sig J T f bad)
    (hL : S.Lb = Formalism.L2.Col.stdLat E n) {r t s : ℕ} (h : r ≤ n) (h' : r ≤ n') (ht : 0 < t) (hn : n = r + s * t)
    {SG Q : Finset (Pl E)} (P : LevFam E K r SG) (χ : ∀ w : SG, ℕ → (𝓞 E ⧸ w.1.asIdeal)ˣ →* Kˣ)
    (hR : ∀ (z : GL (Fin n) (AfE F E)) (hz : z ∈ St (1 : GL (Fin n) (AfE F E))), z ∈ UAd hc n →
      (z ∈ S.U ↔ (∀ w : SG, redAt 1 w.1 ⟨z, hz⟩ ∈ (parFam h t s P χ w).H) ∧ ∀ P : Q, redAt 1 P.1 ⟨z, hz⟩ ∈ blockTri (blk2 r)))
    (P' : LevelP SG r ℂ) (cg : ℕ → ∀ PP : Pl E, (kP PP)ˣ →* ℂˣ) (xq : ∀ PP : Pl E, (kP PP)ˣ →* ℂˣ)
    (hH : ∀ g, g ∈ P'.H ↔ ∀ w, g w ∈ (P w).H)
    (g : GL (Fin n') (E ⊗[F] Formalism.L2.Herm.Af F)) (y : GL (Fin n) (E ⊗[F] Formalism.L2.Herm.Af F))
    (hgy : ∀ i j, g.1 i j = y.1 (finCongr e i) (finCongr e j)) :
    g ∈ lev hc J' 1 ⟨r, h', t, s, SG, Q, P', cg, xq⟩ ↔ y ∈ S.U := by
  classical
  subst e hJ' hJ
  obtain rfl : g = y := Units.ext (Matrix.ext hgy)
  have hred : ∀ (hz : g ∈ St (1 : GL (Fin n') (E ⊗[F] Formalism.L2.Herm.Af F))) (w : Pl E), redFn 1 w g = redAt 1 w ⟨g, hz⟩ :=
    fun hz w => extendOne_of_mem _ hz
  have hU : g ∈ S.U → g ∈ UAd hc n' ∧ g ∈ St (1 : GL (Fin n') (E ⊗[F] Formalism.L2.Herm.Af F)) := fun hy => by
    obtain ⟨h1, h2⟩ := (S.U_eq g).1 hy
    refine ⟨h1, rll_St_of_loc n' g fun v => ⟨_, rll_put_mem_St n' v ?_, rll_put_self n' v _⟩⟩
    have := (S.Uloc_lev v (h2 v)).2
    rw [hL] at this
    exact this
  have e0 : g ∈ lev hc 1 1 ⟨r, h', t, s, SG, Q, P', cg, xq⟩ ↔
      g ∈ lev hc 1 1 (parDat h t s P χ) ∧ ∀ PP ∈ Q, redFn 1 PP g ∈ blockTri (blk2 r) := by
    rw [mem_lev, mem_lev, mem_parLev, mem_parLev]
    constructor
    · rintro ⟨⟨a1, a2, a3, a4⟩, a5⟩
      exact ⟨⟨⟨a1, a2, a3, fun PP hP => absurd hP (Finset.notMem_empty PP)⟩, fun w _ => (hH _).1 a5 w⟩, a4⟩
    · rintro ⟨⟨⟨a1, a2, a3, -⟩, a5⟩, a4⟩
      exact ⟨⟨a1, a2, a3, a4⟩, (hH _).2 fun w => a5 w (Set.mem_univ w)⟩
  have e1 : g ∈ levU hc n' ∅ SG (parFam h t s P χ).grp ∧ (∀ PP ∈ Q, redFn 1 PP g ∈ blockTri (blk2 r)) ↔ g ∈ S.U := by
    rw [mem_levU_iff]
    constructor
    · rintro ⟨⟨h1, h2, -, h4⟩, hq⟩
      exact (hR g h2 h1).2 ⟨fun w => hred h2 w.1 ▸ h4 w (Set.mem_univ w), fun PP => hred h2 PP.1 ▸ hq PP.1 PP.2⟩
    · intro hy
      obtain ⟨h1, h2⟩ := hU hy
      obtain ⟨a, b⟩ := (hR g h2 h1).1 hy
      refine ⟨⟨h1, h2, fun P hP => absurd hP (Finset.notMem_empty P), fun w _ => ?_⟩, fun PP hP => ?_⟩
      · have := a w
        rwa [← hred h2] at this
      · have := b ⟨PP, hP⟩
        rwa [← hred h2] at this
  rw [e0, ← levU_parFam_eq_lev hc h ht hn, e1]

theorem set_univ {F E K : Type} [Field F] [NumberField F] [Field E] [NumberField E] [StarRing E] [Algebra F E] [Field K]
    (hc : CMData F E) {n : ℕ} [NeZero n] {SG Q : Finset (HeightOneSpectrum (𝓞 E))} {J : Matrix (Fin n) (Fin n) E} (hJ : J = 1)
    {T f : ℕ} {bad : Set (HeightOneSpectrum (𝓞 F))} (S : StepLevel F E hc.sig J T f bad)
    (Λ : LevFam E K n SG) (emb : K →+* ℂ) (HQ : ∀ P : Q, Subgroup (GL (Fin n) (𝓞 E ⧸ P.1.asIdeal))) (lamQ : ∀ P : Q, HQ P →* ℂˣ)
    (h1 : ∀ P : Q, conjPrime₂ P.1 ≠ P.1) (h2 : ∀ P P' : Q, underPl F P.1 = underPl F P'.1 → P = P')
    (hR : RdLevOn hc (RatAt Q) S.U S.chi Λ emb Q HQ lamQ)
    (z : GL (Fin n) (AfE F E)) (hz : z ∈ St (1 : GL (Fin n) (AfE F E))) (hu : z ∈ UAd hc n) :
    z ∈ S.U ↔ (∀ w : SG, redAt 1 w.1 ⟨z, hz⟩ ∈ (Λ w).H) ∧ ∀ P : Q, redAt 1 P.1 ⟨z, hz⟩ ∈ HQ P :=
  (GlobalTheory.T.levelReading_rationalAtTwist_extends_integralUnitary hc hJ { S with chi := 1, chi_triv := fun _ _ => rfl } (fun w => ⟨(Λ w).H, 1⟩) emb HQ (fun _ => 1) h1 h2
    (Filter.Eventually.of_forall fun _ _ _ => rfl)
    (fun x hx hs hv => ⟨(hR x hx hs hv).1, fun _ _ _ => by simp⟩) z (Set.mem_univ z) hz hu).1

open Formalism.IndefR Formalism.IndefR.Links GlobalTheory.SeeSaw.TopLevel
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem under_inj {B : Base} {X : PreX B.toPre} (I : TC B X) (hOk : I.Ok) (a : I.ι) :
    ∀ P P' : I.Q a, underPl B.host.F P.1 = underPl B.host.F P'.1 → P = P' := by
  classical
  intro P P' e
  rcases (GlobalTheory.Mem.Col2.under_eq_iff B.host P.1 P'.1).1 (HeightOneSpectrum.ext (congrArg HeightOneSpectrum.asIdeal e.symm)) with h | h
  · exact Subtype.ext h.symm
  · exact absurd (h ▸ Finset.mem_union_right _ (GlobalTheory.Mem.Col2.ChEx.q_sub_SQ I a P'.2))
      ((GlobalTheory.Mem.LevTwist.levOk_twists B X I hOk).1.split P.1 (Finset.mem_union_right _ (GlobalTheory.Mem.Col2.ChEx.q_sub_SQ I a P.2)))

set_option maxHeartbeats 2000000 in

theorem mem_levS_of_reads {B : Base} {X : PreX B.toPre} (I : TC B X) (hOk : I.Ok) (hPins : TC.Pins B X) (l : I.Laws)
    (Z : TC.Later B (I.cols l)) (a : I.ι) {bad : Set (HeightOneSpectrum (𝓞 (I.rec7 l Z).host.F))}
    (S : StepLevel (I.rec7 l Z).host.F (I.rec7 l Z).host.E (sigD (I.rec7 l Z)) (gramP (I.rec7 l Z)) 1 (I.rec7 l Z).R.f bad)
    {y lat st} (hK : I.ReadsP a S.Lb S.U S.chi y lat st)
    (β : GL (Fin (I.rec7 l Z).sp.X'.rank) (Lev.EAf (I.rec7 l Z))) (hβ : β = 1)
    (Pg Q : Finset (Pl (I.rec7 l Z).host.E)) (hPg : Pg = (B.primes X).vGs) (hQ : Q = I.Q a)
    (P' : LevelP Pg B.R.r ℂ) (hH : ∀ g, g ∈ P'.H ↔ ∀ PP (h : PP ∈ (B.primes X).vGs) (h' : PP ∈ Pg), g ⟨PP, h'⟩ ∈ (I.Ps ⟨PP, h⟩).H)
    (cg : ℕ → ∀ PP : Pl (I.rec7 l Z).host.E, (kP PP)ˣ →* ℂˣ) (ξ : ∀ PP : Pl (I.rec7 l Z).host.E, (kP PP)ˣ →* ℂˣ)
    (hr : B.R.r ≤ (I.rec7 l Z).sp.X'.rank) (g : Formalism.L2.Theta.GA (I.rec7 l Z) (I.rec7 l Z).sp.X') :
    g ∈ levS _ β (Lev.datY (I.rec7 l Z).sp.X'.rank B.R.r B.R.t B.R.m hr Pg Q P' cg ξ Lev.Frm.B) ↔
      ∃ κ : S.U, GlobalTheory.Core.Rk.Top.HasMat g κ.1 := by
  subst hβ hPg hQ
  obtain ⟨-, gP, -, -⟩ := GlobalTheory.Mem.Col2.TC.spaces_in_coordinates I hOk hPins l Z
  have gX : (I.rec7 l Z).sp.X'.gram = 1 := by
    have := congrArg (Matrix.reindex (finCongr (rankP (I.rec7 l Z))) (finCongr (rankP (I.rec7 l Z)))).symm gP
    rw [gramP, Equiv.symm_apply_apply] at this
    rw [this, Matrix.reindex_symm, Matrix.reindex_apply, Matrix.submatrix_one_equiv]
  haveI : NeZero (B.R.N B.R.m - 1) := ⟨by
    have := Formalism.L2.Col.rank_X'_eq B.R; have := B.R.m_add_three_le_k; unfold Ranks.r at *; omega⟩
  have hLb : S.Lb = Formalism.L2.Col.stdLat B.fields.E (B.R.N B.R.m - 1) := by
    ext x
    refine (hK.lb x).trans (Iff.trans ?_ (Formalism.L2.Col.mem_stdLat x).symm)
    exact forall_congr' fun j => ⟨fun ⟨r, h, _⟩ => ⟨r, h.symm⟩, fun ⟨r, h⟩ => ⟨r, h.symm, fun _ => one_dvd _⟩⟩
  let c : (I.stX a).Cl := ⟨(), Quotient.mk _ ⟨(DecoF.base _ _ _ _ _, ∅), Set.mem_singleton _⟩⟩
  have hR0 := GlobalTheory.T.twistedTuple_reading_level_character I hOk hPins l Z a S hK c
    (fun PP => (Units.map B.embLL.toMonoidHom).comp
      (Formalism.L2.DIV.resChar (I.tup a : Formalism.L2.DIV.Chr B.fields.F B.fields.E B.fields.K) PP)) (fun _ _ _ => rfl)
  have hR := set_univ (Q := I.Q a) B.sp.cm gP S (rowTyG I.Ch I.Ps) B.embLL _ _ (GlobalTheory.Mem.Col2.ChEx.q_conj I hOk a)
    (under_inj I hOk a) hR0
  have key := @lev_set B.fields.F B.fields.E B.fields.K _ _ _ _ (GlobalTheory.Mem.Col2.starE B) _ _ B.sp.cm (B.R.N B.R.m - 1) _
    (rankP (I.rec7 l Z)) _ _ _ gX gP _ _ _ S hLb B.R.r B.R.t B.R.m (Formalism.L2.Col.r_le_X' B.R) hr
    (Formalism.L2.Col.t_pos B.R) (Formalism.L2.Col.rank_X'_eq B.R) (B.primes X).vGs (I.Q a) I.Ps (Formalism.L2.Col.chiAt I.Ch) hR
    P' cg (fun PP => (ξ PP)⁻¹) (fun x => (hH x).trans ⟨fun h w => h w.1 w.2 w.2, fun h PP h1 _ => h ⟨PP, h1⟩⟩)
  refine ⟨fun hh => ?_, fun ⟨κ, h1, h2⟩ => ⟨h1, (key _ κ.1 h2).2 κ.2⟩⟩
  obtain ⟨y, hy⟩ := exists_copy (rankP (I.rec7 l Z)) (Lev.finE (I.rec7 l Z).sp.X' g)
  exact ⟨⟨y, (key _ y hy).1 hh.2⟩, hh.1, hy⟩

end Gen

open Formalism.BasicNotions Formalism.MainNotions GlobalTheory.EX GlobalTheory.EX.OB GlobalTheory.Mem GlobalTheory.Mem.Top GlobalTheory.Fc GlobalTheory.MiS GlobalTheory.Fam
open Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev
attribute [local instance] Formalism.BasicNotions.Host.cmStar

section Args

open GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Tr

set_option maxHeartbeats 1000000 in

theorem lev_twArgs {K : Ctx} {B : GlobalTheory.Mem.Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T} {Z : w.Lt} {Wt : Set B.places.Pl}
    {L : SizeData₂ (w.st Z).toD7} {hT : GatTies (w.st Z).toD7} {Gi : Formalism.MainNotions.G.Inst (w.st Z).toD7 L} {Gl : Formalism.MainNotions.G.LatInst (w.st Z).toD7}
    {Kc : Formalism.MainNotions.G.Consts} {Yd : DivX (w.st Z).toD7} {cX : ExtraC} {ex : Extra (w.st Z).toD7 L hT Gi Gl Kc Yd cX}
    {t : RowsT K w Z Wt ex.p0} (a : TwArgs ex t) (g : G0 a.x.R.Pg (w.st Z).toD7.R.r) :
    g ∈ (a.x.R.toRealDat.levR a.x.F.lv2 true).H ↔
      ∀ PP (h : PP ∈ (B.primes w.px).vGs) (h' : PP ∈ a.x.R.Pg), g ⟨PP, h'⟩ ∈ (TC.Ps w.I ⟨PP, h⟩).H := by
  cases a with
  | mk Dc Sp Zsc lam err lam_eq x pack intersectionNumber_baseChange hκ hv hfw htup htupT hjA hjA0 heMt hPY hPW heFT hIL heE heW hjW heRR =>
  cases x with
  | mk G Pl0 I0 T' A3 core R F cG geo pins err' Y Z' C' sEE div JA amb0 JM mjH =>
  cases pack
  have key : ∀ g : G0 t.r.z.R.Pg (w.st Z).toD7.R.r, t.r.z.R.eG.symm g ∈ lev1 w.I ↔
      ∀ PP (h : PP ∈ (B.primes w.px).vGs) (h' : PP ∈ t.r.z.R.Pg), g ⟨PP, h'⟩ ∈ (TC.Ps w.I ⟨PP, h⟩).H := by
    intro g
    have e := fun PP h h' => t.r.z.idG (t.r.z.R.eG.symm g) PP h h'
    simp only [MulEquiv.apply_symm_apply] at e
    refine ⟨fun hg PP h h' => ?_, fun hg PP _ => ?_⟩
    · rw [e PP h h']
      exact hg ⟨PP, h⟩ (Set.mem_univ _)
    · have h' : PP.1 ∈ t.r.z.R.Pg := by
        have := t.r.z.lev.Pg
        exact (congrArg (PP.1 ∈ ·) this).mpr PP.2
      have := hg PP.1 PP.2 h'
      rw [e PP.1 PP.2 h'] at this
      exact this
  kexactB key g

end Args

end GlobalTheory.TopVal.TwSet

end
