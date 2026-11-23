import Mathlib
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.TwistPlacesOffPrimeQZero
import Formalism.LocalToGlobal.IndefiniteReal.HeckeNonvanishing.Imports
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeCharacterIdeleCharacterMatchUnique
import Development.AbelianVarietyTheory.Definitions.Divisors.DiscreteSeriesHermitianUnique
import Development.AbelianVarietyTheory.Statements.PlaceShiftStatements.NormSmall
import Development.AbelianVarietyTheory.Statements.PlaceShiftStatements.DictAt
import Development.AbelianVarietyTheory.Statements.HeckeThetaIntegrals.ThetaIntegralsAgree
import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.CuspAlongSmoothRows
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.ToricSymbols
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
import Formalism.HermitianLattices.HermitianLatticesProofs.DualOrthSum
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
import Formalism.FlagUnipotentLattices.CardSubmodulesAndLinearEquivBounds
import Formalism.NormUnitaryBounds.Statement
import Formalism.HyperbolicPlaceProducts.SubgroupIndexCounts.SubgroupCount
import Formalism.SizeWindowBrackets.SlopeHypothesesRounded
import Formalism.RankGapBounds.RankAndGapBounds
import Formalism.SizeWindowBrackets.WindowSettingSatisfiable
import Formalism.SharpRestriction.Divisibility.PlaceRankTwoOne
import Formalism.LocalToGlobal.UnitaryNorms.PowValCast
import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HilbertClassFieldA
import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA
import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.LogCondLeThree
import Formalism.FockGram.StatementFock
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsRanksRankValFrame
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.MPowFiveMulFMulLLe
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.BadCharacterBound
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.WeightRequirementOfValid
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsWeightsInWindows
import Formalism.GL3MeanSquares.PrimeCountAsymptoticInProgressions
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RigidArc
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RigidSys
import Formalism.SharpRestriction.GrowthBounds.ObjPol
import Development.AutomorphicArithmetic.OrbitLabellings.NotIsCsOfGIdx
import Formalism.SharpRestriction.GrowthBounds.WeilJacquetShalikaLaw
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.IsIntegralOfAll
import Formalism.DegreeFormula.PointDegree.PermExpInj
import Formalism.DegreeFormula.PointDegree.PowSum
import Formalism.LocalToGlobal.LatticeGeometry.ShimuraSheafOfIndefiniteSubspace
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
import Formalism.GL3MeanSquares.HookFormulaTorsion.DoubleCosetDecompositionAll
import Formalism.GL3MeanSquares.HookFormulaTorsion.FourierCommutesHeckeScalar
import Formalism.LocalToGlobal.Columns.DecorationStabilizerTrivialUnipotent
import Formalism.ThetaSupremumBounds.LiftOperatorBoundOfFockJet
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.Legendre
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.ThetaLine
import Formalism.LocalToGlobal.PairingIndexBounds.ModelLatticeMoves.IsBichar
import Formalism.LocalToGlobal.BesselHermitianTheta.Joints
import Formalism.LocalToGlobal.BesselHermitianTheta.TiedDef
import Formalism.CyclotomicNorms.NonsquarefreeBounds.NonsquarefreeMonicBoundHolds
import Formalism.DoubleCosetMeasures.StatementV
import Formalism.SharpRestriction.CuspSpanNormBounds.CayleySignature
import Formalism.LogVandermondeBounds.LogVandermondeProofs.FourierIsometryOnNormKernel
import Formalism.GL3MeanSquares.HookFormulaTorsion.ConditionIffDualEqFunctional
import Formalism.FormalGroupWitt.Statement
import Formalism.SizeWindowBrackets.ChainSlopeWindows.GaloisMapComplexConjugation
import Formalism.SharpRestriction.GlobalSchurBounds.LocalCountingBounds
import Formalism.LogVandermondeBounds.LogVandermondeProofs.PrimePowerSubgroupTrivial
import Formalism.LogVandermondeBounds.LogVandermondeProofs.MulSingleMulApplySelf
import Formalism.LogVandermondeBounds.LogVandermondeProofs.UpperPlaceHolds
import Formalism.LogVandermondeBounds.HookGammaAmgmMultinomialBounds
import Formalism.GL3MeanSquares.ConcavityEquidistribution
import Formalism.FormalDegreeBessel.FormalDegreeRatio.GBasic
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.RightDerivativeZeroOutsideSupport
import Formalism.RealPlaceAnalysis.FinalF
import Formalism.GL3MeanSquares.InvariantSeriesBidegreeOneOne
import Formalism.GL3MeanSquares.HookFormulaTorsion.OneAddInvPowLeExpOne
import Formalism.LocalToGlobal.IndefiniteReal.EqZeroOfMemRangeAdjoint
import Formalism.LocalToGlobal.IndefiniteReal.EqZeroOfRangeAdjoint
import Formalism.LocalToGlobal.IndefiniteReal.FinrankISupLeSum
import Formalism.LocalToGlobal.IndefiniteReal.CutPassage
import Formalism.LocalToGlobal.IndefiniteReal.CxCutPO
import Formalism.LocalToGlobal.LatticeGeometry.OperatorNormFibers.FormData
import Formalism.LocalToGlobal.IndefiniteReal.ArithLemmas
import Formalism.MeanHeightDescent.DivisionInequalityWithCovolume
import Development.AbelianVarietyTheory.Proofs.HermitianTraceForms.ExistsGlIsometryCompEqOfNondegenerate
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.FiniteAlgebraLocalCompletion
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.QuadTie
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsUniqueFactorCompletedStalkOfMap
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PlaceDivisors.SiegelPullbackTransfer.AdelicGL2ExtOfLocalComponents
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.HasAlgebraicChartsOfIsStandardSmooth
import ReciprocityTheory.CommutativeAlgebra.SaturatedChains.IsSaturatedChain
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RePosOfIsMultIP
import Formalism.LocalToGlobal.ProjectiveLattices.CuspFDOf
import Formalism.LocalToGlobal.ProjectiveLattices.CuspFormsFiniteDimensionalOf
import Development.AbelianVarietyTheory.BlockTheory.HeightDefect.IsotypicSignedParameters
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RayClassPartialZetaContinuation
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.InfinitelyManyPrimesInRayClass
import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.GramSt
import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.GROWCountStatement
import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.ArakelovDegreeEqDegreeOfFamily
import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.InhabSt
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ProdFam
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.FirstMinimumPos
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.SumBoundStatement
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.HasGen
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.IsSaturatedSubmoduleIffExistsIsComplOfValuationR
import ReciprocityTheory.L2DbarEstimates.LeviForms.OfRealNormSqSumMul
import ReciprocityTheory.L2DbarEstimates.WeakHolomorphy.ImportsAlt
import ReciprocityTheory.L2DbarEstimates.MinimalSolutions.MinimalSolutionStatement
import ReciprocityTheory.L2DbarEstimates.ChartDerivatives.CommFderivApply
import ReciprocityTheory.L2DbarEstimates.ChartDerivatives.IntegralFderivApplyEqZero
import ReciprocityTheory.L2DbarEstimates.ChartDerivatives.IsLocalHomeomorphCompFst
import ReciprocityTheory.L2DbarEstimates.LeviForms.BergmanExistsStatement
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.M3bNormHolds
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.LogDOfPosBound
import ReciprocityTheory.ReducedBases.ExistsBoundedBasis
import Formalism.LocalToGlobal.ProjectiveLattices.IntAllProofFree
import Formalism.LocalToGlobal.ProjectiveLattices.RealPtGeo
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsFrameRingOverTestRingStatement
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.CardTorsionPointsAbelianVarietyStatement
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.WitMove
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.FlowCoefficientBounds
import ReciprocityTheory.SemistableReduction.CauchyInequalityOnTorus
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsSmoothPeriodicPartitionOfUnity
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.ThExprUniqOfChartIndep2
import ReciprocityTheory.SemistableReduction.FinrankRestrictTotalDegree
import Formalism.MeanHeightDescent.AverageDegreeBounds.GlobalBoundRefinements
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RegularLocalRegularSequence.ExistsIsRegularOfListEqMaximalIdeal
import Formalism.PeriodIntegrals.EagonNorthcottZ
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.EagonNorthcottIntegral.BasisZeroEqSingle
import Formalism.LocalToGlobal.IndefiniteForms.IndefiniteTree.SlopeBoundOfConditionsWithErrorForFrames
import Formalism.LocalToGlobal.ProjectiveLattices.CuspMulOf
import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsHeatZero
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.OrthogonalLatticeDecomposition
import ReciprocityTheory.SemistableReduction.Unipotent
import Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.RmulOneFrame
import Development.AbelianVarietyTheory.Statements.CuspFrameWeights.SameKindIsometric
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroupStatement
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.LintegralFintypeProdEqProd
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.MeasurableEmbeddingEquiv
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsMulCommutativeCentRealUJ
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.IsIsotropicFlagUnitaryOneOne
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsMapMulRightEqSmul
import Development.AbelianVarietyTheory.Statements.CuspFrameWeights.ConvolutionSmoothL2
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.NormPosOfIsUnit
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ChainCompatibleTwistTransport
import Development.AbelianVarietyTheory.BlockTheory.TorsionBlocks.FlatZetaIntegral
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SummableAbsNormInvSq
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittHyperbolicAnisotropicCommuteLevi
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DiscreteSeriesModelUnitaryIrreducibleOrthonormal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeOfIsotropicSignature
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.MulMemRiemannRochSpaceAdd
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.IdealCharacterLContinuationNeZeroOne
import Formalism.PairingDivisors.StatementA
import Formalism.PairingDivisors.PairingDivisorProofs.ValAdd
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SetAverageProdFundamentalDomainPlaneLatticePow
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsIntertwinerHeisenbergCocycleOfFixedVector
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsWeilOfVacuum
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsQuadOfPlane
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.TwistedLevelValues
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsUnitaryMuZeroCharactersOfSplitTypePrimesAl
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.TensorLatSpan
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AdelicUnitaryUnimodularExistsFundamentalDomain
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsUniqueNormalizedHaarMeasureAdelicUnitary
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeCharacterInfinityExponentGroupLaws
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsRefill
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.PinnedIntegrability
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LamXEquivariant
import Development.AbelianVarietyTheory.Definitions.Divisors.MiddleNotMem
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsIsAddHaarMeasureIsAddFundamentalDomainPrei
import ReciprocityTheory.SemistableReduction.SemiContractA
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.VacuumUnderAdelicPairModulusOne

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.RowClaim
open Formalism.L2.Host (HChar)
open GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle (Tri)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.RowEx

noncomputable section

namespace GlobalTheory.RowEx

local macro:max "kc% " e:term:max : term => `((by kexactB $e))

theorem triIs_congr {D : D7} {T : Type} {A A' WW : HSp D} {X : Tri T A A' WW} {ψ ψ' : AddChar (AF D.host.F) ℂ} {θ θ' : InfFam D}
    {α α' β β' : T → ((AE D)ˣ →* Circle)} {ν ν' : T → Formalism.L2.Host.HChar D.host.E} {S S' : T → Finset (Pl D.host.E)}
    (h : X.Is ψ θ α β ν S) (e1 : ψ' = ψ) (e2 : θ' = θ) (e3 : ∀ t, α' t = α t) (e4 : ∀ t, β' t = β t) (e5 : ∀ t, ν' t = ν t)
    (e6 : ∀ t, S' t = S t) : X.Is ψ' θ' α' β' ν' S' := by
  obtain rfl := e1
  obtain rfl := e2
  obtain rfl := funext e3
  obtain rfl := funext e4
  obtain rfl := funext e5
  obtain rfl := funext e6
  exact h

set_option maxHeartbeats 1000000 in

theorem trBot_holds : TrBot := by
  intro X X' T T' L L' sc G G' W W' S S' μ₀ μ₀' ι hA M σ hB
  obtain ⟨hl, hg, hw, -⟩ := hA
  have pre := hl.pre
  cases X with | mk B C Wr V Sg N Gj =>
  cases X' with | mk B' C' Wr' V' Sg' N' Gj' =>
  cases B
  cases B'
  dsimp only at pre
  subst pre
  let DX := GlobalTheory.Mem.Stages.toD7 ⟨_, C, Wr, V, Sg, N, Gj⟩
  let DX' := GlobalTheory.Mem.Stages.toD7 ⟨_, C', Wr', V', Sg', N', Gj'⟩
  obtain ⟨f, f', hff, hC, hC'⟩ := hl.C
  obtain rfl : f' = f := eq_of_heq hff
  have hψ : W'.ψ = (by with_unfolding_all exact (W.ψ :)) := eq_of_heq hw.ψ
  have hθ : W'.θ = (by with_unfolding_all exact (W.θ :)) := eq_of_heq hw.θ
  have hxiH : ∀ t, L'.xiH t = (by with_unfolding_all exact ((L.xiH (ι t)) :)) := fun t => eq_of_heq (hl.xi t)
  have hQ : ∀ t, L'.Q t = (by with_unfolding_all exact ((L.Q (ι t)) :)) := fun t => eq_of_heq (hl.Q t)
  have hchi : G'.ch.chi = (by with_unfolding_all exact (G.ch.chi :)) := eq_of_heq hg.chi
  have hchiH : G'.ch.chiH = (by with_unfolding_all exact (G.ch.chiH :)) := eq_of_heq hg.chiH
  have hv0 : G'.pl.v0 = (by with_unfolding_all exact (G.pl.v0 :)) := eq_of_heq hg.v0
  have hwp : G'.pl.w = (by with_unfolding_all exact (G.pl.w :)) := eq_of_heq hg.w
  have hCmu : ∀ j, L'.C.mu0 j = (by with_unfolding_all exact ((L.C.mu0 j) :)) := fun j => by
    have a : L.C.mu0 j = f'.mu0 j := by rw [hC]; rfl
    have b : L'.C.mu0 j = f'.mu0 j := by rw [hC']; rfl
    exact b.trans ((by with_unfolding_all exact (a.symm :)))
  have hCeta : L'.C.eta = (by with_unfolding_all exact (L.C.eta :)) := by
    have a : L.C.eta = f'.eta := by rw [hC]; rfl
    have b : L'.C.eta = f'.eta := by rw [hC']; rfl
    exact b.trans ((by with_unfolding_all exact (a.symm :)))
  have hmu0 : ∀ j : Fin DX'.R.m, L'.mu0 (↑j + 1) = (by with_unfolding_all exact ((L.mu0 (↑j + 1)) :)) := fun j => by
    have h1 : ChrEq ((by with_unfolding_all exact ((L.mu0 (↑j + 1)) :))) (L'.C.mu0 j) := by rw [hCmu j]; exact (by with_unfolding_all exact ((hl.is.mu0 j) :))
    exact (GlobalTheory.ChrEqUnique.chrEq_unique DX').2.1 _ _ _ (hl.is'.mu0 j) h1
  have heta : L'.eta = (by with_unfolding_all exact (L.eta :)) := by
    have h1 : ChrEq ((by with_unfolding_all exact (L.eta :))) L'.C.eta := by rw [hCeta]; exact (by with_unfolding_all exact (hl.is.eta :))
    exact (GlobalTheory.ChrEqUnique.chrEq_unique DX').2.1 _ _ _ hl.is'.eta h1
  have hxi : ∀ t, L'.xi t = (by with_unfolding_all exact ((L.xi (ι t)) :)) := fun t => by
    have h1 : ChrEq ((by with_unfolding_all exact ((L.xi (ι t)) :))) (L'.xiH t) := by rw [hxiH t]; exact (by with_unfolding_all exact ((hl.is.xi (ι t)) :))
    exact (GlobalTheory.ChrEqUnique.chrEq_unique DX').2.1 _ _ _ (hl.is'.xi t) h1

  have thImp : ∀ ψ S T f, @IsThetaFunO DX ψ S T f → @IsThetaFunO DX' ((by with_unfolding_all exact (ψ :))) ((by with_unfolding_all exact (S :))) ((by with_unfolding_all exact (T :))) ((by with_unfolding_all exact (f :))) :=
    fun ψ S T f h => ⟨(by with_unfolding_all exact (h.quasi :)), (by with_unfolding_all exact (h.level :)), (by with_unfolding_all exact (h.cont :)), (by with_unfolding_all exact (h.smooth :))⟩
  have thImp' : ∀ ψ S T f, @IsThetaFunO DX' ψ S T f → @IsThetaFunO DX ((by with_unfolding_all exact (ψ :))) ((by with_unfolding_all exact (S :))) ((by with_unfolding_all exact (T :))) ((by with_unfolding_all exact (f :))) :=
    fun ψ S T f h => ⟨(by with_unfolding_all exact (h.quasi :)), (by with_unfolding_all exact (h.level :)), (by with_unfolding_all exact (h.cont :)), (by with_unfolding_all exact (h.smooth :))⟩
  have thEq : @IsThetaFunO DX' = fun ψ S T f => @IsThetaFunO DX ((by with_unfolding_all exact (ψ :))) ((by with_unfolding_all exact (S :))) ((by with_unfolding_all exact (T :))) ((by with_unfolding_all exact (f :))) := by
    funext ψ S T f
    exact propext ⟨fun h => (by with_unfolding_all exact ((thImp' _ _ _ _ h) :)), fun h => (by with_unfolding_all exact ((thImp _ _ _ _ h) :))⟩
  have wImp : ∀ ψ S T x1 x2 ω, @IsWeilDatumO DX ψ S T x1 x2 ω →
      @IsWeilDatumO DX' ((by with_unfolding_all exact (ψ :))) ((by with_unfolding_all exact (S :))) ((by with_unfolding_all exact (T :))) ((by with_unfolding_all exact (x1 :))) ((by with_unfolding_all exact (x2 :))) ((by with_unfolding_all exact (ω :))) := fun ψ S T x1 x2 ω h =>
    { std := (by with_unfolding_all exact (h.std :))
      hecS := (by with_unfolding_all exact (h.hecS :))
      hecT := (by with_unfolding_all exact (h.hecT :))
      resS := (by with_unfolding_all exact (h.resS :))
      resT := (by with_unfolding_all exact (h.resT :))
      om_pres := by rewrite [thEq]; exact (by with_unfolding_all exact (h.om_pres :))
      om_heis := by rewrite [thEq]; exact (by with_unfolding_all exact (h.om_heis :))
      om_aut := by rewrite [thEq]; exact (by with_unfolding_all exact (h.om_aut :))
      om_cont := by rewrite [thEq]; exact (by with_unfolding_all exact (h.om_cont :))
      om_unit := by rewrite [thEq]; exact (by with_unfolding_all exact (h.om_unit :))
      om_split := by rewrite [thEq]; exact (by with_unfolding_all exact (h.om_split :)) }
  have vacImp : ∀ ψ θ S T sS sT LS LT f, @IsVacO DX ψ θ S T sS sT LS LT f →
      @IsVacO DX' ((by with_unfolding_all exact (ψ :))) ((by with_unfolding_all exact (θ :))) ((by with_unfolding_all exact (S :))) ((by with_unfolding_all exact (T :))) ((by with_unfolding_all exact (sS :))) ((by with_unfolding_all exact (sT :))) ((by with_unfolding_all exact (LS :))) ((by with_unfolding_all exact (LT :))) ((by with_unfolding_all exact (f :))) :=
    fun ψ θ S T sS sT LS LT f h => by
      unfold IsVacO
      rewrite [thEq]
      exact ⟨(by with_unfolding_all exact (h.1 :)), (by with_unfolding_all exact (h.2.inf :)), (by with_unfolding_all exact (h.2.theta :)), (by with_unfolding_all exact (h.2.lat :)), (by with_unfolding_all exact (h.2.fock :)), (by with_unfolding_all exact (h.2.norm :))⟩
  have pmImp : ∀ m n ψ B hs e Λ c f₀ T, @IsPlaceModel DX m n ψ B hs e Λ c f₀ T →
      @IsPlaceModel DX' m n ((by with_unfolding_all exact (ψ :))) ((by with_unfolding_all exact (B :))) ((by with_unfolding_all exact (hs :))) ((by with_unfolding_all exact (e :))) ((by with_unfolding_all exact (Λ :))) c ((by with_unfolding_all exact (f₀ :))) ((by with_unfolding_all exact (T :))) :=
    fun m n ψ B hs e Λ c f₀ T h => ⟨(by with_unfolding_all exact (h.trans :)), (by with_unfolding_all exact (h.modul :)), (by with_unfolding_all exact (h.vac :))⟩
  have pmImp' : ∀ m n ψ B hs e Λ c f₀ T, @IsPlaceModel DX' m n ψ B hs e Λ c f₀ T →
      @IsPlaceModel DX m n ((by with_unfolding_all exact (ψ :))) ((by with_unfolding_all exact (B :))) ((by with_unfolding_all exact (hs :))) ((by with_unfolding_all exact (e :))) ((by with_unfolding_all exact (Λ :))) c ((by with_unfolding_all exact (f₀ :))) ((by with_unfolding_all exact (T :))) :=
    fun m n ψ B hs e Λ c f₀ T h => ⟨(by with_unfolding_all exact (h.trans :)), (by with_unfolding_all exact (h.modul :)), (by with_unfolding_all exact (h.vac :))⟩
  have pmEq : @IsPlaceModel DX' = fun m n ψ B hs e Λ c f₀ T =>
      @IsPlaceModel DX m n ((by with_unfolding_all exact (ψ :))) ((by with_unfolding_all exact (B :))) ((by with_unfolding_all exact (hs :))) ((by with_unfolding_all exact (e :))) ((by with_unfolding_all exact (Λ :))) c ((by with_unfolding_all exact (f₀ :))) ((by with_unfolding_all exact (T :))) := by
    funext m n ψ B hs e Λ c f₀ T
    exact propext ⟨fun h => (by with_unfolding_all exact ((pmImp' _ _ _ _ _ _ _ _ _ _ h) :)), fun h => (by with_unfolding_all exact ((pmImp _ _ _ _ _ _ _ _ _ _ h) :))⟩
  intro i j
  obtain ⟨A, A', WW, Y, hb, hsum⟩ := hB i j
  have hmu : ∀ t, L'.mu t (↑j + 1) = (by with_unfolding_all exact ((L.mu (ι t) (↑j + 1)) :)) := fun t => by
    show L'.mu0 (↑j + 1) * L'.xi t = _
    rw [hmu0 j, hxi t]
    exact (by with_unfolding_all exact ((Eq.refl (L.mu (ι t) (↑j + 1))) :))
  have hnu : ∀ t, SqNum.nuH G' t i j = (by with_unfolding_all exact ((SqNum.nuH G (ι t) i j) :)) := fun t => by
    show L'.C.mu0 j * L'.xiH t / G'.ch.chiH (DX'.R.m - ↑i) = _
    rw [hCmu j, hxiH t, hchiH]
    exact (by with_unfolding_all exact ((Eq.refl (SqNum.nuH G (ι t) i j)) :))
  have hloc : ∀ t, locPl G' t = (by with_unfolding_all exact ((locPl G (ι t)) :)) := fun t => by
    unfold locPl GlobalTheory.ChiGrid.Places.W0 GlobalTheory.ChiGrid.Places.S0
    rw [hQ t, hv0, hwp]
    exact (by with_unfolding_all exact ((Eq.refl (locPl G (ι t))) :))
  refine ⟨A, A', WW,
    ⟨⟨(by with_unfolding_all exact (Y.rA.Λ :)), (by with_unfolding_all exact (Y.rA.β :)), (by with_unfolding_all exact (Y.rA.s :)), (by with_unfolding_all exact (Y.rA.B :))⟩, ⟨(by with_unfolding_all exact (Y.rA'.Λ :)), (by with_unfolding_all exact (Y.rA'.β :)), (by with_unfolding_all exact (Y.rA'.s :)), (by with_unfolding_all exact (Y.rA'.B :))⟩,
      ⟨(by with_unfolding_all exact (Y.rW.Λ :)), (by with_unfolding_all exact (Y.rW.β :)), (by with_unfolding_all exact (Y.rW.s :)), (by with_unfolding_all exact (Y.rW.B :))⟩, fun t => (by with_unfolding_all exact ((Y.ω (ι t)) :)), fun t => (by with_unfolding_all exact ((Y.ω' (ι t)) :)), (by with_unfolding_all exact (Y.vac :)),
      (by with_unfolding_all exact (Y.vac' :)), fun t => (by with_unfolding_all exact ((Y.e (ι t)) :)), fun t => (by with_unfolding_all exact ((Y.c (ι t)) :)), fun t => (by with_unfolding_all exact ((Y.f (ι t)) :)), fun t => (by with_unfolding_all exact ((Y.f' (ι t)) :)),
      (by with_unfolding_all exact (Y.m :)), (by with_unfolding_all exact (Y.fd :)), (by with_unfolding_all exact (Y.m' :)), (by with_unfolding_all exact (Y.fd' :))⟩, ⟨(by with_unfolding_all exact (hb.rank :)), (by with_unfolding_all exact (hb.rank' :)), (by with_unfolding_all exact (hb.std :)), (by with_unfolding_all exact (hb.std' :)), (by with_unfolding_all exact (hb.stdW :)), ?_⟩, ?_⟩
  · have e3 : ∀ t, L'.mu t (↑j + 1) * L'.eta ^ (rankV DX' i j % 2) =
        (by with_unfolding_all exact ((L.mu (ι t) (↑j + 1) * L.eta ^ (rankV DX i j % 2)) :)) := fun t => by
      rw [hmu t, heta]
      exact (by with_unfolding_all exact ((Eq.refl (L.mu (ι t) (↑j + 1) * L.eta ^ (rankV DX i j % 2))) :))
    have e4 : ∀ _ : T', G'.ch.chi (DX'.R.m - ↑i) * L'.eta ^ (rankV DX' i j % 2) =
        (by with_unfolding_all exact ((G.ch.chi (DX.R.m - ↑i) * L.eta ^ (rankV DX i j % 2)) :)) := fun _ => by
      rw [hchi, heta]
      exact (by with_unfolding_all exact ((Eq.refl (G.ch.chi (DX.R.m - ↑i) * L.eta ^ (rankV DX i j % 2))) :))
    refine triIs_congr ?_ hψ hθ e3 e4 hnu hloc
    exact ⟨(by with_unfolding_all exact (hb.is.rank :)), (by with_unfolding_all exact (hb.is.rigA :)), (by with_unfolding_all exact (hb.is.rigA' :)), (by with_unfolding_all exact (hb.is.rigW :)),
      fun t => by unfold GlobalTheory.Grid.IsWeil; exact (by with_unfolding_all exact ((wImp _ _ _ _ _ _ (hb.is.weil (ι t))) :)),
      fun t => by unfold GlobalTheory.Grid.IsWeil; exact (by with_unfolding_all exact ((wImp _ _ _ _ _ _ (hb.is.weil' (ι t))) :)),
      (by with_unfolding_all exact ((vacImp _ _ _ _ _ _ _ _ _ hb.is.isVac) :)), (by with_unfolding_all exact ((vacImp _ _ _ _ _ _ _ _ _ hb.is.isVac') :)),
      fun t => (by with_unfolding_all exact ((hb.is.idem (ι t)) :)), fun t => (by with_unfolding_all exact ((hb.is.expo (ι t)) :)),
      fun t => by unfold IsThetaAt; rewrite [pmEq]; exact (by with_unfolding_all exact ((hb.is.fst (ι t)) :)),
      fun t => by unfold IsThetaAt; rewrite [pmEq]; exact (by with_unfolding_all exact ((hb.is.snd (ι t)) :)),
      (by with_unfolding_all exact (hb.is.meas :)), (by with_unfolding_all exact (hb.is.meas' :))⟩
  · obtain ⟨Ω, Ω', h0, h0', H⟩ := hsum
    refine ⟨Ω, Ω', h0, h0', fun t h hh => ?_⟩
    rw [hψ, hθ]
    have H3 := H (ι t) ((by with_unfolding_all exact (h :))) ((by with_unfolding_all exact (hh :)))
    exact (by with_unfolding_all exact (H3 :))

end GlobalTheory.RowEx

end
