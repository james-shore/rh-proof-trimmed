import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.GreenCuspidalIff
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasDRepIffHasDerivAt
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.HarishChandraModulesOn
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.AdmissibleDiscreteSeriesOfHasParam
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NonzeroPlacesOverPrimesLifts
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsIsBIffCoreB
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsNormLeHeightPow
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PositionMv
import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.IsLinked
import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.AllRows
import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.APerTw
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NotGeoClFalse
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.UpLReStage
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsHostDatumOfPlaceData
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HostPlacesRayField
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.StandardLatticesDiagonal
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LamPOfPart
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TwistedArgsColumnHeq
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.NormChoiceOfExtension
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.SameGaloisLevelExists
import Development.AutomorphicArithmetic.CharacterBoxes.TwistForm
import Formalism.LocalToGlobal.Divisibility.TiedLemmas
import Formalism.IncomingBounds.StatementThmP
import Formalism.GaussJetBounds.StatementQ
import Formalism.GaussJetBounds.GaussJetProofs.ConstantCoeffQuadSer
import Formalism.LocalToGlobal.ExponentGrids.ExponentGridsProofs.NormaliserValuationBound
import Formalism.LocalToGlobal.GroupLattices.JointServices.LevelOperatorFixesImage
import Formalism.SizeWindowBrackets.ChainSlopeWindows.SlopeInequalityOfLattices
import Formalism.LocalToGlobal.GlobalTheory.FamRecP
import Formalism.LocalToGlobal.GlobalTheory.ArithP
import Formalism.SizeWindowBrackets.ChainSlopeWindows.SecondPriceSumWeightsUncovered
import Formalism.SizeWindowBrackets.ChainSlopeWindows.PBrDiv
import Formalism.SizeWindowBrackets.ChainSlopeWindows.ExistsOrthonormalFrameComplement
import Formalism.SizeWindowBrackets.ChainSlopeWindows.PSmall
import Formalism.SizeWindowBrackets.ChainSlopeWindows.ChiEightNoRealZeroHypothesis
import Formalism.LocalToGlobal.NormalizedHeckeFactors.CoverLen
import Formalism.LocalToGlobal.NormalizedHeckeFactors.CoverEta
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
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ReductionExists
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.IdCellOffCHoldsOfVol
import Formalism.SharpRestriction.CuspSpanNormBounds.CayleyDegreeNondegeneracy.FibreCountOfPositions
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScGapBig
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LatExistsDiff
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.AtPtRel
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ActFrame
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
import Formalism.LocalToGlobal.GlobalTheory.GL6.DiamondPreservesRationalFormZero
import Formalism.LocalToGlobal.GlobalTheory.GL6.EqOneOfCoprimeTorsionTwoPrimes
import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ClearDenominatorsLattice
import Formalism.LocalToGlobal.GlobalTheory.GL6.PSplitT
import Formalism.LocalToGlobal.LatticeGeometry.OperatorNormFibers.PExtInvMuA
import Formalism.LocalToGlobal.GlobalTheory.NormSqLatticeFunctionEq
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.MassIntegralClass
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.ClassCountGenIn
import Formalism.LocalRingCardinality.SpanPowerMembership.NZColD
import Formalism.LocalRingCardinality.SpanPowerMembership.NZColF
import Formalism.LocalRingCardinality.SpanPowerMembership.NZTypeL
import Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.DeterminantTwistRowActionMem
import Formalism.SharpRestriction.GrowthBounds.TensorLatticeBounds.DataLPa
import Formalism.SharpRestriction.GrowthBounds.TensorLatticeBounds.DataLPb
import Formalism.LocalRingCardinality.SpanPowerMembership.NZColA
import Formalism.LocalRingCardinality.SpanPowerMembership.NZLevM
import Formalism.SharpRestriction.AdmissibleParameterJoins.GandSaj
import Formalism.PadicSubsetSums.StableGradedCounts.IRRFrobOrbitIrred
import Formalism.LocalToGlobal.Columns.ExistsUnitOfPowEqOne
import Formalism.LocalToGlobal.GroupLattices.ServiceOfTiedSelection
import Formalism.LocalToGlobal.Columns.GFamSEv
import Development.AbelianVarietyTheory.Proofs.HermitianTraceForms.ExistsGlIsometryCompEqOfNondegenerate
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsMulMemOfMemSpan
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ModuliUnivEtaKilled
import ReciprocityTheory.AnalyticForms.RegularLocalRings.LogResStC
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.InZhGeoInjStable
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsIsotropicGroupLatticeClassRepresentatives
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.MatrixTraceIffIsCharacterOverSubfieldComplexStatement
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.StarInvMulVecDotProductMulVecInvMulVec
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.RegularIffNatDegreeAndExistsEllipticGLStatement
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.ExistsTeichmullerMapAlgebraicClosureFiniteFieldStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TameLabelsOfGenerator
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OToSAlgebraMap
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodIdempotentCoefficientConjugate
import Formalism.LocalToGlobal.ProjectiveLattices.CuspFormsFiniteDimensionalOf
import Development.AbelianVarietyTheory.Proofs.HeightProofs.SchurOrthogonalityIndefiniteUnitaryGroupStatement
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
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.DiscreteSeriesUpqUniqueOfClassification
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.LintegralFintypeProdEqProd
import Development.AbelianVarietyTheory.Statements.CuspFrameWeights.ConvolutionSmoothL2
import Development.AbelianVarietyTheory.BlockTheory.TorsionBlocks.FlatZetaIntegral
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SummableAbsNormInvSq
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DiscreteSeriesModelUnitaryIrreducibleOrthonormal
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SpanHeisenbergTranslatesVacuumEqTop
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsIntertwinerHeisenbergCocycleOfFixedVector
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NontrivialTwJacquetOfSurjective
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.ResidueInjectivityAt
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.IsComplementaryProductOfIsCuspidal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MapMulScalar
import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.SphericalThetaInertPlace
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.IsCuspHom
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
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsLayerParametersAdmissible
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SurjConj
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.WeilRos
import Formalism.SharpRestriction.LevelLetterCocycles.AutomorphicSideWildInertia
import Formalism.SharpRestriction.LevelLetterCocycles.WildPro
import Formalism.SharpRestriction.LevelLetterCocycles.QpowOfTw
import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.UniNilp
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.BlockSplitAll
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsobaricDiscreteSelfDualStrongMultiplicityOne
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.EvalInjective
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.PinnedIntegrability
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnrOffOne
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsRationalUnitarySplitDenominatorStatement
import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.FiniteClassesSelfDualOfSelfDual
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LabelOfParabolicVector
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SeriesEqProdOfParabolicInductionChainStatement
import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.BaseChangeDistinctness
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EqOfNodupSumMultisetOfEq
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasSatAtConstOne
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ThetaSquareIntegrable
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnipLatIsOpenIsCompact
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIdealWeight
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.VacuumCharacterPositiveDefiniteSource
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ClassPresExtMemExtBijIsom
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IdentityClassLatticeEqSelfDualFrameLattice
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AutomorphicMultiplicityEqOfIsoStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsLocalComponentConjSplitPlaceStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FiniteHeckeDoubleCosetCosetsAtSplitPlaceStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsEqOfMemISup

set_option synthInstance.maxHeartbeats 200000

section
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.Inhab Formalism.L2.Host GlobalTheory.EX GlobalTheory.EX.OB GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl NumberField IsDedekindDomain
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.HeightCounting.Up GlobalTheory.Mem.SRe GlobalTheory.Mem.R3.Rw
open Formalism.L2 Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Cx Formalism.IndefR.Lev
open GlobalTheory.Mem.R3
set_option maxHeartbeats 4000000 in
private theorem logLam_of_part_pz : GlobalTheory.Published.WeilRepresentationUnitaryPair → GlobalTheory.Published.DiscreteSeriesExists → GlobalTheory.Published.HarishChandraFinite → GlobalTheory.Published.CuspRapidDecay → ∀ {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type}
    {A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m} {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]
    (R : RealDat3 D A3 Ks) (F : Face3 D A3) (cG : G0 R.Pg D.R.r ≃* G0g D.nd) (X0 : BaseLevelRowSide D)
    (Y : Read (A3 := A3) R.toRealDat F.lv2 X0) (Z : ReadL R F X0 Y), Pins R F cG → Holds R F → HostHyp D →
    ∀ (X : DivX D), LamAre Z X → ∀ (i : Fin D.R.m) π (c : A3.fam3.base3.Ix) (e : D.what₂.LL →+* ℂ), e ≠ D.what₂.embLL →
    D.what₂.isot ((i : ℕ) + 1) π ≠ ⊥ → D.what₂.isot ((i : ℕ) + 1) π ≤ (R.Wp3 i c).comap (Y.mj.eW i) →
    X.logLam ((i : ℕ) + 1) π e = Real.log (R.lam3 i A3.A.μ0 c (InfinitePlace.mk e)) ∧ R.EEp3 c ≠ ⊥ := by
  intro h1 h2 h3 h4 D G _ _ Pl0 I0 T A3 Ks _ _ _ R F cG X0 Y Z hP hH hHost X hX i π c e he hne hle
  have rat := GlobalTheory.T.complexSpan_rationalLiftForms_eq_basePart h1 h2 h3 h4 D G Pl0 I0 T A3 Ks R F cG X0 Y Z hP hH hHost
  obtain ⟨p, hp⟩ := GlobalTheory.T.exists_familyLabel_containing_finiteTypeParts h1 h2 h3 h4 D G Pl0 I0 T A3 Ks R F cG X0 Y Z hP hH hHost π
  obtain ⟨lab, hl, hv⟩ := hX
  have hov : OverIx Z π (lab π) := hl π ⟨p, fun j => by
    rw [rat j p]
    exact Submodule.map_le_iff_le_comap.1 (hp.1 j)⟩
  have hi := hov i
  rw [rat i (lab π)] at hi
  have hc : c = lab π := GlobalTheory.Mem.R3.ScalarComponentUnique.part_unique R F cG X0 Y hP hH i π c (lab π) hne hle hi
  refine ⟨?_, fun hb => ?_⟩
  · rw [(hv i π e he).1 hne, hc]
    rfl
  · have hW : R.Wp3 i c = ⊥ := by
      refine le_bot_iff.1 (iSup₂_le fun s hs => ?_)
      have hs' : R.EEc s ≤ R.EEp3 c := le_iSup₂_of_le (f := fun s (_ : R.Carries c s) => R.EEc s) s hs le_rfl
      rw [hb] at hs'
      exact absurd (le_bot_iff.1 hs') hs.1
    apply hne
    refine eq_bot_iff.2 fun x hx => ?_
    have h0 : Y.mj.eW i x ∈ R.Wp3 i c := hle hx
    rw [hW] at h0
    have hx0 : Y.mj.eW i x = 0 := (Submodule.mem_bot ℂ).1 h0
    have hn1 := Y.mj.eW_norm i x
    rw [hx0, norm_zero, zero_pow two_ne_zero] at hn1
    have hn : (0 : ℝ) < RealDat.nP F.lv2 false := RealDat.nP_pos (F := F.lv2) false
    have hn2 : ‖x‖ ^ 2 = 0 := (mul_eq_zero.1 hn1.symm).resolve_left hn.ne'
    exact (Submodule.mem_bot ℂ).2 (norm_eq_zero.1 (pow_eq_zero_iff two_ne_zero |>.1 hn2))
set_option maxHeartbeats 4000000 in
private theorem logLam_twArgs_pz : GlobalTheory.Published.WeilRepresentationUnitaryPair → GlobalTheory.Published.DiscreteSeriesExists → GlobalTheory.Published.HarishChandraFinite → GlobalTheory.Published.CuspRapidDecay → ∀ (K : Ctx) (B : Base) (f : Fr B.toPre) (T : TwDat B) (w : ColW B f T) (Z : w.Lt) (Wt : Set B.places.Pl) (L : SizeData₂ (w.st Z).toD7) (hT : GatTies (w.st Z).toD7) (Gi : Formalism.MainNotions.G.Inst (w.st Z).toD7 L) (Gl : Formalism.MainNotions.G.LatInst (w.st Z).toD7) (Kc : Formalism.MainNotions.G.Consts) (Yd : DivX (w.st Z).toD7) (cX : ExtraC) (ex : Extra (w.st Z).toD7 L hT Gi Gl Kc Yd cX) (t : RowsT K w Z Wt ex.p0) (a : TwArgs ex t), HostHyp (w.st Z).toD7 → ∀ (X : DivX (w.st Z).toD7), LamAre t.r.Z X →
    letI := a.x.grp; letI := a.x.fin; letI := a.x.alg; ∀ (i : Fin (w.st Z).toD7.R.m) π (c : a.x.A3.fam3.base3.Ix) (e : (w.st Z).toD7.what₂.LL →+* ℂ), e ≠ (w.st Z).toD7.what₂.embLL → (w.st Z).toD7.what₂.isot ((i : ℕ) + 1) π ≠ ⊥ → (w.st Z).toD7.what₂.isot ((i : ℕ) + 1) π ≤ (a.x.R.Wp3 i c).comap (a.x.Y.mj.eW i) → X.logLam ((i : ℕ) + 1) π e = Real.log (a.x.R.lam3 i a.x.A3.A.μ0 c (InfinitePlace.mk e)) := by
  intro h1 h2 h3 h4 K B f T w Z Wt L hT Gi Gl Kc Yd cX ex t a hHost X hX
  cases a with
  | mk Dc Sp Zsc lam err lam_eq x pack intersectionNumber_baseChange hκ hv hfw htup htupT hjA hjA0 heMt hPY hPW heFT hIL heE heW hjW heRR =>
  cases x with
  | mk G Pl0 I0 T' A3 core R F cG geo pins err' Y Z' C' sEE div JA amb0 JM mjH =>
  cases pack
  intro i π c e he hne hle
  have hW : Y.mj.eW = t.r.Y.mj.eW := by kexactB eq_of_heq heW
  have hle' : (w.st Z).toD7.what₂.isot ((i : ℕ) + 1) π ≤ (t.r.z.R.Wp3 i c).comap (t.r.Y.mj.eW i) := by
    rw [← hW]
    kexactB hle
  have h := logLam_of_part_pz h1 h2 h3 h4 t.r.z.R t.r.z.F t.r.z.cG _ t.r.Y t.r.Z t.r.z.pins t.r.intersectionNumber_baseChange hHost X hX i π c e he hne hle'
  kexactB h.1.trans (congrArg Real.log (lam_eq i _ c (InfinitePlace.mk e) h.2).symm)
set_option maxHeartbeats 4000000 in
theorem _root_.GlobalTheory.T.parameter_of_discrete_series_ray_alt : GlobalTheory.Published.GreenCuspidal → GlobalTheory.Published.DiscreteSeriesCover → GlobalTheory.Published.HarishChandraModules → GlobalTheory.Published.CasselmanWallach → GlobalTheory.Published.WeilRepresentationUnitaryPair → GlobalTheory.Published.DiscreteSeriesExists → GlobalTheory.Published.HarishChandraFinite → GlobalTheory.Published.CuspRapidDecay → GlobalTheory.Published.GlobalArtinReciprocity → GlobalTheory.NT.RayField → ∀ (hL : _root_.UpperTheory.Zero.LLC.RecTExists) (N : _root_.GlobalTheory.Mem.Top.Bl.NormChoiceExtension hL) (Γ : GeoP) (p : _root_.GlobalTheory.Mem.Top.Bl.Parameters hL), p = _root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N SExt.none Γ → (∀ K B f T w Z Wt p0 t nch n xd c, N K B f T w Z Wt p0 t nch n xd c → Nonempty (_root_.GlobalTheory.HeightCounting.Up.extensionWithLaw hL K B f T w Z Wt p0 t nch n xd c)) → ∀ (K : Ctx) (q : WPt p.s K), (∀ X : GlobalTheory.Mem.Stages, K.Over X.B.toPre → HostHyp X.toD7 ∧ X.toD7.host.F = maximalRealSubfield X.toD7.host.E ∧ (∀ i, IsFDiag (Wc X.toD7 i) ∧ IsFDiag (Vc X.toD7 i)) ∧ (∀ i, (Vc X.toD7 i).IsPosDef) ∧ (∀ j, Formalism.IndefR.Seed.FrmC.StdLat (X.toD7.sp.Y j) ∧ Formalism.IndefR.Seed.FrmC.StdLat (X.toD7.sp.V j) ∧ (1 ≤ j → j ≤ X.toD7.R.m → Formalism.IndefR.Seed.FrmC.StdLat (X.toD7.sp.W j))) ∧ Formalism.IndefR.Seed.FrmC.StdLat X.toD7.sp.X' ∧ (∀ i, (∀ a b, (Vc X.toD7 i).hT ((Vc X.toD7 i).frame a) ((Vc X.toD7 i).frame b) = if a = b then 1 else 0) ∧ (Vc X.toD7 i).L0 = Submodule.span (𝓞 X.toD7.host.E) (Set.range (Vc X.toD7 i).frame)) ∧ ((∀ a b, X.toD7.sp.X'.hT (X.toD7.sp.X'.frame a) (X.toD7.sp.X'.frame b) = if a = b then 1 else 0) ∧ X.toD7.sp.X'.L0 = Submodule.span (𝓞 X.toD7.host.E) (Set.range X.toD7.sp.X'.frame))) → GlobalTheory.CuspMult.MultEq q.x.what₂.r.z.R.toRealDat → ∀ (a : TwArgs q.O.ex q.x.what₂), letI := a.x.grp; letI := a.x.fin; letI := a.x.alg; ∀ (i : Fin (q.w.D q.Z).R.m) π (c : a.x.A3.fam3.base3.Ix) (e : (q.w.D q.Z).what₂.LL →+* ℂ), e ≠ (q.w.D q.Z).what₂.embLL → (q.w.D q.Z).what₂.isot ((i : ℕ) + 1) π ≠ ⊥ → (q.w.D q.Z).what₂.isot ((i : ℕ) + 1) π ≤ (a.x.R.Wp3 i c).comap (a.x.Y.mj.eW i) → q.O.X.logLam ((i : ℕ) + 1) π e = Real.log (a.x.R.lam3 i a.x.A3.A.μ0 c (InfinitePlace.mk e)) := by
  intro hGC h1 h2 h3 h4 h5 h6 hCRD h8 h9 hL N Γ p hp hNE K q hHost hMult a
  exact logLam_twArgs_pz h4 h5 h6 hCRD K q.B q.f q.T q.w q.Z q.x.Wt _ _ _ _ _ _ _ q.O.ex q.x.what₂ a
    (hHost (q.w.st q.Z) q.x.isOver).1 q.O.X q.x.ox.lam
end
