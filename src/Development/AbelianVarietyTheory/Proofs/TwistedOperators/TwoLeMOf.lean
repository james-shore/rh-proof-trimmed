import Mathlib
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.TwistPlacesOffPrimeQZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonemptyVertices
import Formalism.LocalToGlobal.IndefiniteReal.HeckeNonvanishing.Imports
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
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsMulMemOfMemSpan
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.FiniteAlgebraLocalCompletion
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.QuadTie
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsUniqueFactorCompletedStalkOfMap
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PlaceDivisors.SiegelPullbackTransfer.AdelicGL2ExtOfLocalComponents
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.HasAlgebraicChartsOfIsStandardSmooth
import ReciprocityTheory.CommutativeAlgebra.SaturatedChains.IsSaturatedChain
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ModuliUnivEtaKilled
import ReciprocityTheory.AnalyticForms.RegularLocalRings.LogResStC
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.InZhGeoInjStable
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsIsotropicGroupLatticeClassRepresentatives
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
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsSignatureDecompositionDiagonal
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
import Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.ExistsJunkLiftNotVanishing
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsUnitaryMuZeroCharactersOfSplitTypePrimesAl
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.TensorLatSpan
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.PinnedIntegrability
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LamXEquivariant
import Development.AbelianVarietyTheory.Definitions.Divisors.MiddleNotMem
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsIsAddHaarMeasureIsAddFundamentalDomainPrei
import ReciprocityTheory.SemistableReduction.SemiContractA
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.VacuumUnderAdelicPairModulusOne
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemMulInvIff
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSpaceOfSignature
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StaircaseIdealConjugateInverse

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.RowClaim
open Formalism.L2.Host (HChar)
open GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle (Tri)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.RowEx

noncomputable section

namespace GlobalTheory.RowEx.CarryGrid

open scoped nonZeroDivisors

variable {D : D7} {T : Type}

theorem vtxOf_pos (L : LevCh D T) (Vs : ℕ → ℕ → LSp D) (i j : ℕ) (h : 1 ≤ i) : vtxOf L Vs i j = Vs i j := by
  cases i with
  | zero => omega
  | succ i => rfl

theorem xOf_pos (X₀ : LSp D) (Xs : ℕ → LSp D) (j : ℕ) (h : 1 ≤ j) : xOf X₀ Xs j = Xs j := by
  cases j with
  | zero => omega
  | succ j => rfl

def castDec {A A' B B' : HSp D} {c : ℕ} {ε : D.host.E} (ea : A = A') (eb : B = B') (d : HermitianOrthogonalExtensionData A B c ε) :
    HermitianOrthogonalExtensionData A' B' c ε := by
  subst ea eb; exact d

theorem castDec_ι {A A' B B' : HSp D} {c : ℕ} {ε : D.host.E} (ea : A = A') (eb : B = B') (d : HermitianOrthogonalExtensionData A B c ε) :
    HEq (castDec ea eb d).ι d.ι := by
  subst ea eb; rfl

theorem castDec_a {A A' B B' : HSp D} {c : ℕ} {ε : D.host.E} (ea : A = A') (eb : B = B') (d : HermitianOrthogonalExtensionData A B c ε) :
    HEq (castDec ea eb d).a d.a := by
  subst ea eb; rfl

theorem castDec_lat {Y Y' Z Z' : LSp D} {c : ℕ} {ε : D.host.E} (ey : Y = Y') (ez : Z = Z') (d : HermitianOrthogonalExtensionData Y.sp Z.sp c ε)
    (𝔟 : Fin c → FractionalIdeal (𝓞 D.host.E)⁰ D.host.E) (h : Z.lat = d.lat Y.lat 𝔟) :
    Z'.lat = (castDec (congrArg LSp.sp ey) (congrArg LSp.sp ez) d).lat Y'.lat 𝔟 := by
  subst ey ez; exact h

theorem two_le_m_of (L : LevCh D T) : 2 ≤ D.R.m := D.R.two_le_m

theorem firstCore (L : LevCh D T) (μ0 : T) (h : L.Is μ0) : ∃ Z : LSp D, Z.IsV (rankP D 0) ((D.R.m - 0 + 1) / 2) ∧
    ∃ d : HermitianOrthogonalExtensionData (Yc D 0) Z.sp 1 1, Z.lat = d.lat (L.ΛY 0) fun _ => 1 := by
  have hY := colY_isV D T L μ0 h 0 (Nat.zero_le _)
  obtain ⟨μ, hμ⟩ := D.R.m_even
  have hk := D.R.m_add_three_le_k
  have hr : D.R.r = D.R.k + D.R.m - 1 := rfl
  obtain ⟨Z, hZ, d, hd⟩ := GlobalTheory.GridSpaces.exists_line _ hY (by unfold rankV; omega)
  refine ⟨Z, ?_, d, hd⟩
  have e1 : rankP D 0 = rankV D 0 0 + 1 := by simp [rankP, nRk, rankV]
  have e2 : (D.R.m - 0 + 1) / 2 = (D.R.m - 0) / 2 := by omega
  rw [e1, e2]; exact hZ

abbrev recOf (_L : LevCh D T) : D7 := D

local macro:max "kd% " e:term:max : term => `((by kexactB $e))

local macro "copyDec% " d:term:max : term =>
  `({ ι := ($d).ι, isom := (by kexactB ($d).isom), a := ($d).a, gram := (by kexactB ($d).gram),
      perp := (by kexactB ($d).perp), rank := (by kexactB ($d).rank) })

local macro "copyIsV% " h:term:max : term =>
  `(⟨(by kexactB ($h).rank), (by kexactB ($h).sigOK), (by kexactB ($h).sig), (by kexactB ($h).sd)⟩)

theorem carryG : CarryG := by
  intro X X' T T' L L' μ₀ μ₀' ι hA sc G
  obtain ⟨B, Cc, Wr, Vd, Ss, Nn, Gj⟩ := X
  obtain ⟨B', Cc', Wr', Vd', Ss', Nn', Gj'⟩ := X'
  cases B
  cases B'
  have hpre := hA.pre
  dsimp only at hpre
  subst hpre
  obtain ⟨f, f', hf, hC, hC'⟩ := hA.C
  have hf2 := eq_of_heq hf
  subst hf2
  have hPg : ∀ PP, PP ∈ L'.Pg ↔ PP ∈ L.Pg := by
    intro PP
    have h2 : PP ∈ L.Pg ↔ ∃ k, L.C.P.Div k PP := hA.is.Pg PP
    rw [hA.is'.Pg, h2, hC, hC']
    exact Iff.rfl
  have hQ : ∀ t, L'.Q t = L.Q (ι t) := fun t => eq_of_heq (hA.Q t)
  let pl' : Places L' :=
    { v0 := (by with_unfolding_all exact (G.pl.v0 :))
      basePlace_over_qZero := (by with_unfolding_all exact (G.pl.basePlace_over_qZero :))
      w := (by with_unfolding_all exact (G.pl.w :))
      w_over := (by with_unfolding_all exact (G.pl.w_over :))
      w_split := (by with_unfolding_all exact (G.pl.w_split :))
      w_g := fun v k h => (hPg _).2 ((by with_unfolding_all exact ((G.pl.w_g v k h) :)))
      w_de := (by with_unfolding_all exact (G.pl.w_de :))
      w_Q := fun t PP hPP h => (by with_unfolding_all exact ((G.pl.w_Q (ι t) PP (hQ t ▸ hPP) h) :))
      levelPlace_ne_basePlace := fun t PP hPP => (by with_unfolding_all exact ((G.pl.levelPlace_ne_basePlace (ι t) PP (hQ t ▸ hPP)) :)) }
  let ch' : Chars pl' sc.cGap :=
    { chiH := (by with_unfolding_all exact (G.ch.chiH :))
      chi := (by with_unfolding_all exact (G.ch.chi :))
      chi_eq := (by with_unfolding_all exact (G.ch.chi_eq :))
      triv := (by with_unfolding_all exact (G.ch.triv :))
      inf := (by with_unfolding_all exact (G.ch.inf :))
      unr := (by with_unfolding_all exact (G.ch.unr :))
      lev1 := (by with_unfolding_all exact (G.ch.lev1 :))
      wild := (by with_unfolding_all exact (G.ch.wild :))
      lev0 := (by with_unfolding_all exact (G.ch.lev0 :)) }
  have hmX := two_le_m_of L
  have hmX' := two_le_m_of L'
  have h1X := Nat.le_of_succ_le hmX
  have h1X' := Nat.le_of_succ_le hmX'
  obtain ⟨P₀, hP₀, d₀, hd₀⟩ := firstCore L' μ₀' hA.is'
  let Vs' : ℕ → ℕ → type_of% P₀ := fun i j => ⟨(by with_unfolding_all exact ((G.sp.Vs i j).sp :)), (by with_unfolding_all exact ((G.sp.Vs i j).lat :))⟩
  let Xs' : ℕ → type_of% P₀ := fun j => ⟨(by with_unfolding_all exact ((G.sp.Xs j).sp :)), (by with_unfolding_all exact ((G.sp.Xs j).lat :))⟩
  let P' : ℕ → type_of% P₀ := fun i => match i with
    | 0 => P₀
    | k + 1 => ⟨(by with_unfolding_all exact ((G.sp.P (k + 1)).sp :)), (by with_unfolding_all exact ((G.sp.P (k + 1)).lat :))⟩
  let sp' : Vertices L' (pl'.stA sc) (pl'.stAbar sc) :=
    { Vs := Vs'
      P := P'
      Xs := Xs'
      V_is := fun i j h1 h2 h3 => copyIsV% (G.sp.V_is i j h1 h2 h3)
      P_is := fun i hi => match i, hi with
        | 0, _ => hP₀
        | k + 1, hi => copyIsV% (G.sp.P_is (k + 1) hi)
      X_is := fun j h1 h2 => copyIsV% (G.sp.X_is j h1 h2)
      dec0 := d₀
      lat0 := hd₀
      colDec := fun i h h' => match i, h, h' with
        | 0, h, _ => absurd h (by omega)
        | k + 1, h, h' => copyDec% (G.sp.colDec (k + 1) h h')
      colLat := fun i h h' => match i, h, h' with
        | 0, h, _ => absurd h (by omega)
        | k + 1, h, h' => (by with_unfolding_all exact ((G.sp.colLat (k + 1) h h') :))
      rowDecS := fun j h => castDec rfl (congrArg LSp.sp (vtxOf_pos L' Vs' _ (j + 1) h1X').symm)
        (copyDec% (castDec rfl (congrArg LSp.sp (vtxOf_pos L G.sp.Vs _ (j + 1) h1X)) (G.sp.rowDecS j h)))
      rowLat := fun j h => castDec_lat rfl (vtxOf_pos L' Vs' _ (j + 1) h1X').symm _ _
        ((by with_unfolding_all exact ((castDec_lat rfl (vtxOf_pos L G.sp.Vs _ (j + 1) h1X) (G.sp.rowDecS j h) _ (G.sp.rowLat j h)) :)))
      topDec := castDec (congrArg LSp.sp (vtxOf_pos L' Vs' _ _ h1X').symm) (congrArg LSp.sp (xOf_pos (P' _) Xs' _ h1X').symm)
        (copyDec% (castDec (congrArg LSp.sp (vtxOf_pos L G.sp.Vs _ _ h1X)) (congrArg LSp.sp (xOf_pos (G.sp.P _) G.sp.Xs _ h1X))
          G.sp.topDec))
      topLat := castDec_lat (vtxOf_pos L' Vs' _ _ h1X').symm (xOf_pos (P' _) Xs' _ h1X').symm _ _
        ((by with_unfolding_all exact ((castDec_lat (vtxOf_pos L G.sp.Vs _ _ h1X) (xOf_pos (G.sp.P _) G.sp.Xs _ h1X) G.sp.topDec _ G.sp.topLat) :))) }
  refine ⟨⟨pl', ch', sp'⟩, (by with_unfolding_all exact ((HEq.refl G.pl.v0) :)), (by with_unfolding_all exact ((HEq.refl G.pl.w) :)), (by with_unfolding_all exact ((HEq.refl G.ch.chiH) :)), (by with_unfolding_all exact ((HEq.refl G.ch.chi) :)),
    fun i j => ⟨(by with_unfolding_all exact ((HEq.refl (G.V (.grid (i + 1) j))) :)), (by with_unfolding_all exact ((HEq.refl (G.Λ (.grid (i + 1) j))) :))⟩, ?_, ?_, ?_⟩
  · intro j
    cases j with
    | zero =>
      have hP : ∀ n, 1 ≤ n → HEq (P' n).sp (G.sp.P n).sp ∧ HEq (P' n).lat (G.sp.P n).lat := by
        intro n hn
        cases n with
        | zero => omega
        | succ n => exact ⟨(by with_unfolding_all exact ((HEq.refl (G.sp.P (n + 1)).sp) :)), (by with_unfolding_all exact ((HEq.refl (G.sp.P (n + 1)).lat) :))⟩
      exact (by with_unfolding_all exact ((hP _ h1X') :))
    | succ j => exact ⟨(by with_unfolding_all exact ((HEq.refl (G.V (.top (j + 1)))) :)), (by with_unfolding_all exact ((HEq.refl (G.Λ (.top (j + 1)))) :))⟩
  · intro j h h'
    cases j with
    | zero =>
      have hc : ∀ n (h1 : 1 ≤ n) (h2 : n ≤ (recOf L').R.m), HEq (sp'.colDec n h1 h2).ι (G.sp.colDec n h1 h2).ι ∧
          HEq (sp'.colDec n h1 h2).a (G.sp.colDec n h1 h2).a := by
        intro n h1 h2
        cases n with
        | zero => omega
        | succ n => exact ⟨(by with_unfolding_all exact ((HEq.refl (G.sp.colDec (n + 1) h1 h2).ι) :)), (by with_unfolding_all exact ((HEq.refl (G.sp.colDec (n + 1) h1 h2).a) :))⟩
      exact (by with_unfolding_all exact ((hc _ h' le_rfl) :))
    | succ j =>
      refine ⟨(castDec_ι _ _ _).trans ?_, (castDec_a _ _ _).trans ?_⟩
      · exact (by with_unfolding_all exact ((castDec_ι rfl (congrArg LSp.sp (vtxOf_pos L G.sp.Vs _ _ h1X)) (G.sp.rowDecS j h)) :))
      · exact (by with_unfolding_all exact ((castDec_a rfl (congrArg LSp.sp (vtxOf_pos L G.sp.Vs _ _ h1X)) (G.sp.rowDecS j h)) :))
  · refine ⟨(castDec_ι _ _ _).trans ?_, (castDec_a _ _ _).trans ?_⟩
    · exact (by with_unfolding_all exact ((castDec_ι (congrArg LSp.sp (vtxOf_pos L G.sp.Vs _ _ h1X))
        (congrArg LSp.sp (xOf_pos (G.sp.P _) G.sp.Xs _ h1X)) G.sp.topDec) :))
    · exact (by with_unfolding_all exact ((castDec_a (congrArg LSp.sp (vtxOf_pos L G.sp.Vs _ _ h1X))
        (congrArg LSp.sp (xOf_pos (G.sp.P _) G.sp.Xs _ h1X)) G.sp.topDec) :))

end GlobalTheory.RowEx.CarryGrid
