import Mathlib
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SameSetup
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsBasisAtTransport
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.WeylLeDual
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.DualWeylDominanceOf
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ComplexifiedDerivativeCommutator
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.TrPowSumFilterZero
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.CharId
import Formalism.RealPlaceAnalysis.QuotientSettingHolds
import Formalism.StatementU
import Formalism.ProductFormula.StatementOCCM
import Formalism.RankGapBounds.RankGapProofs.WeightedMeanData
import Formalism.ThickAverageLoss.ThickAverageProofs.Balance
import Formalism.SizeWindowBrackets.ChainSlopeWindows.SubThreeMulLogTwoLe
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Ipindep
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
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.NablaLTwist
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.HeckeActionLevelMemHolds
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.RationalPointsLeHolds
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.AutomorphicFormsDecompositionHolds
import Formalism.SatakeDualWeyl.StatementG
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Transport
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Levelvsplit
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.LocalAlgebraInertPrime
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Levelv
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Upqcpt
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
import Development.AbelianVarietyTheory.Definitions.Foundations.RayPrimes
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.UniversalCharts.ChartLawPf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RigidArc
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj
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
import Formalism.BranchSandwichDivisors.BranchIsometryProofs.BranchScale
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
import Formalism.LocalToGlobal.BesselHermitianTheta.LemmasChr
import Formalism.LocalToGlobal.BesselHermitianTheta.TiedDef
import Formalism.LocalToGlobal.BesselHermitianTheta.TiedLocW
import Formalism.DoubleCosetMeasures.StatementV
import Formalism.SharpRestriction.CuspSpanNormBounds.CayleySignature
import Formalism.LocalToGlobal.Divisibility.TrivialExtensionSideWellFormed
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
import Formalism.GL3MeanSquares.InvariantSeriesBidegreeOneOne
import Formalism.GL3MeanSquares.HookFormulaTorsion.OneAddInvPowLeExpOne
import Formalism.LocalToGlobal.IndefiniteReal.EqZeroOfMemRangeAdjoint
import Formalism.LocalToGlobal.IndefiniteReal.EqZeroOfRangeAdjoint
import Formalism.LocalToGlobal.IndefiniteReal.FinrankISupLeSum
import Formalism.LocalToGlobal.IndefiniteReal.CxCutPO
import Formalism.LocalToGlobal.LatticeGeometry.OperatorNormFibers.FormData
import Formalism.LocalToGlobal.IndefiniteReal.ArithLemmas
import Formalism.LocalToGlobal.IndefiniteReal.CxCoreRG
import Formalism.MeanHeightDescent.DivisionInequalityWithCovolume
import Development.AbelianVarietyTheory.Proofs.HermitianTraceForms.ExistsOrthogonalBasisDotProductApplyEq
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.QuadTie
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.WeightedChartPullback.WchartPullLe
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsUniqueFactorCompletedStalkOfMap
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PlaceDivisors.SiegelPullbackTransfer.AdelicGL2ExtOfLocalComponents
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.HasAlgebraicChartsOfIsStandardSmooth
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.UnifUniqSt
import ReciprocityTheory.CommutativeAlgebra.SaturatedChains.IsSaturatedChain
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.PullFEPf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RankLin
import ReciprocityTheory.AnalyticForms.RegularLocalRings.LogResStC
import Formalism.LocalToGlobal.IndefiniteForms.IndefiniteTree.ExampleSatisfiesConditionsAtFive
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam
import Development.AbelianVarietyTheory.Proofs.HeightProofs.IsLieDataCircle
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LayerProd
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsSelfDualCoordLatticeOfSelfDualFrame
import Formalism.LocalToGlobal.ProjectiveLattices.CuspFDOf
import Development.AbelianVarietyTheory.BlockTheory.HeightDefect.IsotypicSignedParameters
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsBlockOrd
import ReciprocityTheory.DualLattices.SeriesState
import ReciprocityTheory.DualLattices.TangentPairingStatement
import ReciprocityTheory.DualLattices.NsetExpInjectiveSurjective
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CanonicalAcrisToBdRPlusUniqueEquivariantApproxStatement
import Development.AbelianVarietyTheory.CrystallinePeriods.CrisIncl
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
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.WitMove
import Formalism.MeanHeightDescent.AverageDegreeBounds.GlobalBoundRefinements
import Formalism.LocalToGlobal.ProjectiveLattices.SpMapAlgHomId
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RegularLocalRegularSequence.ExistsIsRegularOfListEqMaximalIdeal
import Formalism.PeriodIntegrals.EagonNorthcottZ
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.EagonNorthcottIntegral.BasisZeroEqSingle
import Formalism.LocalToGlobal.IndefiniteForms.IndefiniteTree.SlopeBoundOfConditionsWithErrorForFrames
import Formalism.LocalToGlobal.ProjectiveLattices.CuspMulOf
import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsHeatZero
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsSignatureDecompositionDiagonal
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroupStatement
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsHyperbolicCompletion
import Formalism.PairingDivisors.StatementA
import Formalism.PairingDivisors.StatementN
import Formalism.PairingDivisors.PairingDivisorProofs.ValAdd
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsThetaFunNeZero
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.FourierCoeffIntSt
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.HasSubstEv
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ValuationPowApplyDivSubOneLt
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSplitPlOfNotIsConjPl
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsEquivOfMapEq
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SurjConj
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.WeilRos
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PolarizedGaloisRep
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.TupPrimeEmpty
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsHolRepOfIsTau
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.WeilDeligneParamMonodromyEqZeroIff

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.TwInputs GlobalTheory.TwInputs.Move
open Formalism.MainNotions.IntegralHeckeForms (TwOK ClsQ HkIdx V0 Fm0 FullRk SgJ BasisOf)
open Formalism.L2.Host (embLL0 CharFrame)
open GlobalTheory.TwSys GlobalTheory.TwAll GlobalTheory.SupLaw GlobalTheory.LiftLeaf
open scoped TensorProduct
set_option synthInstance.maxHeartbeats 400000
set_option maxHeartbeats 800000
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

local macro:max "kc% " e:term:max : term => `((by kexactB $e))

namespace GlobalTheory.TwInputs.Move.TieUp

variable {D : D7} (r : Rest D)

theorem placeModel_up {mm nn : ℕ} {ψ B hs e Λ c f₀ T} (h : @IsPlaceModel D mm nn ψ B hs e Λ c f₀ T) :
    @IsPlaceModel (overD D r) mm nn ((ψ)) ((B)) ((hs)) ((e)) ((Λ)) c ((f₀)) ((T)) :=
  @IsPlaceModel.mk (_) (_) (_) (_) (_) (_) (_) (_) (_) (_) (_) (trans := (by with_unfolding_all exact (h.trans :))) (modul := (by with_unfolding_all exact (h.modul :)))
    (vac := (by with_unfolding_all exact (h.vac :)))

theorem placeModel_dn {mm nn : ℕ} {ψ B hs e Λ c f₀ T} (h : @IsPlaceModel (overD D r) mm nn ψ B hs e Λ c f₀ T) :
    @IsPlaceModel D mm nn ((ψ)) ((B)) ((hs)) ((e)) ((Λ)) c ((f₀)) ((T)) :=
  @IsPlaceModel.mk (_) (_) (_) (_) (_) (_) (_) (_) (_) (_) (_) (trans := (by with_unfolding_all exact (h.trans :))) (modul := (by with_unfolding_all exact (h.modul :)))
    (vac := (by with_unfolding_all exact (h.vac :)))

theorem placeMap_up {S T : HSp D} (B : Base S T) (a : AE D) :
    (baseUp r B).F.placeMap ((a)) = (B.F.placeMap a) := by
  have hP : (fun L : (WO (D := overD D r) ((by with_unfolding_all exact (S :))) ((by with_unfolding_all exact (T :))) → ℂ) →ₗ[ℂ] (WO (D := overD D r) ((by with_unfolding_all exact (S :))) ((by with_unfolding_all exact (T :))) → ℂ) =>
      IsPlaceModel (baseUp r B).F.ψ (symplO ((by with_unfolding_all exact (S :))) ((by with_unfolding_all exact (T :))))
        (heisO (baseUp r B).F.ψ ((by with_unfolding_all exact (S :))) ((by with_unfolding_all exact (T :)))) ((by with_unfolding_all exact (a :))) (baseUp r B).F.lat 1 (baseUp r B).F.f₀ L) =
      (by with_unfolding_all exact ((fun L : (WO S T → ℂ) →ₗ[ℂ] (WO S T → ℂ) =>
        IsPlaceModel B.F.ψ (symplO S T) (heisO B.F.ψ S T) a B.F.lat 1 B.F.f₀ L) :)) :=
    funext fun L => propext ⟨fun h => (by with_unfolding_all exact ((placeModel_dn r h) :)), fun h => (by with_unfolding_all exact ((placeModel_up r h) :))⟩
  unfold Frame.placeMap
  exact (by with_unfolding_all exact ((congrArg Classical.epsilon hP) :))

theorem vec_up {S T : HSp D} (B : Base S T) (Q ω) :
    (baseUp r B).F.vec (baseUp r B).G (kc% Q) (kc% ω) = kc% (B.F.vec B.G Q ω) := by
  have e := placeMap_up r B (halfIdem B.G.Pg Q)
  show (baseUp r B).F.placeMap (kc% (halfIdem B.G.Pg Q)) (kc% (B.F.datumFn B.G Q ω)) = _
  rw [e]
  exact kc% rfl

open Classical in

theorem vecAt_up {S T : HSp D} (B : Base S T) (Q φ) :
    (baseUp r B).vecAt (kc% Q) (kc% φ) = kc% (B.vecAt Q φ) := by
  show (baseUp r B).F.vec (baseUp r B).G (kc% (B.de.Q ∪ Q)) (kc% (B.locFn Q φ)) = _
  exact vec_up r B _ _

theorem series_up {S T : HSp D} (B : Base S T) (ω : PairRep S T) (Q φ h) :
    series (baseUp r B).F (kc% ω) ((baseUp r B).vecAt (kc% Q) (kc% φ)) (kc% h) = kc% (series B.F ω (B.vecAt Q φ) h) := by
  rw [vecAt_up r B]
  exact kc% rfl

theorem theta_up {S T : HSp D} (B : Base S T) (ω : PairRep S T) (h : GA D S) :
    (baseUp r B).theta ((ω)) ((h)) = (B.theta ω h) :=
  series_up r B ω ∅ (fun _ _ => 1) h

theorem vecFlat_up {S T : HSp D} (B : Base S T) (ψ : Twist D Circle) :
    (baseUp r B).vecFlat (twistUp r ψ) = (B.vecFlat ψ) :=
  vecAt_up r B ψ.Q _

theorem gen_up {S T : HSp D} (B : Base S T) (ω : PairRep S T) (ψ : Twist D Circle) :
    (baseUp r B).gen ((ω)) (twistUp r ψ) = (B.gen ω ψ) := by
  unfold Base.gen
  rw [vecFlat_up]
  exact (by with_unfolding_all exact (rfl :))

theorem genSet_up {S T : HSp D} (B : Base S T) (ω : PairRep S T) (ψ : Twist D Circle) (h P) :
    (baseUp r B).genSet ((by with_unfolding_all exact (ω :))) (twistUp r ψ) (kc% h) (kc% P) = kc% (B.genSet ω ψ h P) := by
  unfold Base.genSet
  rw [gen_up]
  exact kc% rfl

def univUp {C : Type} [AddCommGroup C] (u : UnivTwist D C) : UnivTwist (overD D r) C := ⟨(by with_unfolding_all exact (u.del :)), (by with_unfolding_all exact (u.kap :))⟩

theorem vecFam_up {S T : HSp D} (B : Base S T) {C : Type} (Q : Finset (Pl D.host.E))
    (Φ : ∀ PP : Pl D.host.E, C → Matrix (Fin T.rank) (Fin S.rank) (kP PP) → ℚ) :
    (baseUp r B).vecFam (C := C) ((by with_unfolding_all exact (Q :))) ((by with_unfolding_all exact (Φ :))) = (by with_unfolding_all exact ((B.vecFam (C := C) Q Φ) :)) :=
  funext fun a => vecAt_up r B Q _

theorem xiCoef_up {S T : HSp D} (B : Base S T) {C : Type} [AddCommGroup C] [Fintype C] (ω : PairRep S T) (u : UnivTwist D C)
    (Q : Finset (Pl D.host.E)) (Φ : ∀ PP : Pl D.host.E, C → Matrix (Fin T.rank) (Fin S.rank) (kP PP) → ℚ) (h : GA D S)
    (P : PolF D T.rank S.rank) :
    (baseUp r B).xiCoef ((ω)) (univUp r u) ((Q)) ((Φ)) ((h)) ((P)) = (B.xiCoef ω u Q Φ h P) := by
  unfold Base.xiCoef Base.xi
  rw [vecFam_up]
  exact (by with_unfolding_all exact (rfl :))

theorem classSum_up {S T : HSp D} (B : Base S T) (ω : PairRep S T) (ψ : Twist D Circle) {I : Type} [Fintype I] (h : I → GA D S) :
    (baseUp r B).classSum (I := I) ((by with_unfolding_all exact (ω :))) (twistUp r ψ) ((by with_unfolding_all exact (h :))) = (by with_unfolding_all exact ((B.classSum ω ψ h) :)) := by
  unfold Base.classSum
  rw [vecFlat_up]
  exact (by with_unfolding_all exact (rfl :))

theorem coefLat_of_equiv {S T : HSp D} (B : Base S T) {K : Type} [Field K] [NumberField K] (e : K ≃+* ↥D.LL0) (σ : K →+* ℂ)
    (emb : D.what₂.Tau → (D.host.E →+* K)) (hσ : ∀ x, embLL0 D (e x) = σ x) (hemb : ∀ τ, σ.comp (emb τ) = tauE D τ)
    (O : Subring ℂ) : B.coefLat σ emb O = B.coefLat (embLL0 D) (labLL0 D) O := by
  obtain rfl : (embLL0 D).comp e.toRingHom = σ := RingHom.ext hσ
  have h : (fun τ => e.toRingHom.comp (emb τ)) = labLL0 D := funext fun τ => RingHom.ext fun x => (embLL0 D).injective
    ((DFunLike.congr_fun (hemb τ) x).trans (DFunLike.congr_fun (embLL0_labLL0 τ) x).symm)
  funext x
  rw [Base.coefLat, Base.coefLat, harmLat, harmLat, GlobalTheory.CoefLatIso.coefLatFn_ringEquiv, h]

theorem mtLat_of_equiv {S T : HSp D} (B : Base S T) {K : Type} [Field K] [NumberField K] (e : K ≃+* ↥D.LL0) (σ : K →+* ℂ)
    (emb : D.what₂.Tau → (D.host.E →+* K)) (hσ : ∀ x, embLL0 D (e x) = σ x) (hemb : ∀ τ, σ.comp (emb τ) = tauE D τ)
    (O : Subring ℂ) (t : Twist D Circle) : B.mtLat σ emb O t = B.mtLat (embLL0 D) (labLL0 D) O t := by
  rw [Base.mtLat, Base.mtLat, coefLat_of_equiv B e σ emb hσ hemb]

section Setup

variable (ρ : Setup D.ntw) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool)

theorem liftSetupOverExtendedData_theta_eq : (setupUp r ρ).theta ((i)) ((j)) b = (ρ.theta i j b) :=
  (by with_unfolding_all exact ((funext fun h => congrArg DFunLike.coe (theta_up r (ρ.B i j b) (ρ.om i j b 1) h)) :))

theorem liftSetupOverExtendedData_gens_eq : (setupUp r ρ).gens ((i)) ((j)) b = (ρ.gens i j b) :=
  (by with_unfolding_all exact ((funext fun k => funext fun Q => funext fun ψ => funext fun h => funext fun P =>
    genSet_up r (ρ.B i j b) (ρ.om i j b 1) (ρ.tw i b k Q ψ) h P) :))

theorem liftSetupOverExtendedData_classSum_eq : (setupUp r ρ).sum ((i)) ((j)) b = (ρ.sum i j b) :=
  (by with_unfolding_all exact ((funext fun k => funext fun Q => funext fun ψ =>
    classSum_up r (ρ.B i j b) (ρ.om i j b (ρ.tw i b k Q ψ).chi) (ρ.tw i b k Q ψ) (ρ.rep i j b (ρ.tw i b k Q ψ))) :))

theorem liftSetupOverExtendedData_xi_eq : (setupUp r ρ).xi ((i)) ((j)) b (overD D r).nexp = (ρ.xi i j b D.nexp) :=
  (by with_unfolding_all exact ((funext fun Q => funext fun M => funext fun h => funext fun P =>
    xiCoef_up r (ρ.B i j b) (ρ.om i j b 1) (univOf D.nexp i (admissibleConjugatePairPlaces D.ntw i Q M) M ρ.rc)
      (half (ρ.ch i) (admissibleConjugatePairPlaces D.ntw i Q M)) (Base.univFam (univOf D.nexp i (admissibleConjugatePairPlaces D.ntw i Q M) M ρ.rc) (ρ.β j)) h P) :))

variable {r} {ι : D.what₂.LL →+* (overD D r).what₂.LL} {e : ↥(overD D r).LL0 ≃+* ↥D.LL0} (hc : CopyTw D (overD D r) ι e)
include hc

theorem liftSetupOverExtendedData_lat_eq : (setupUp r ρ).lat ((i)) ((j)) b = (ρ.lat i j b) := by
  funext O x
  have := coefLat_of_equiv (ρ.B i j b) e (embLL0 (overD D r)) ((by with_unfolding_all exact ((labLL0 (overD D r)) :))) hc.embLL0_eq
    ((by with_unfolding_all exact ((embLL0_labLL0 (D := overD D r)) :))) O
  exact (by with_unfolding_all exact ((congrFun this (finPt _ x)) :))

theorem liftSetupOverExtendedData_integralForms_eq : (setupUp r ρ).mt ((i)) ((j)) b = (ρ.mt i j b) := by
  have H := mtLat_of_equiv (ρ.B i j b) e (embLL0 (overD D r)) ((by with_unfolding_all exact ((labLL0 (overD D r)) :))) hc.embLL0_eq
    ((by with_unfolding_all exact ((embLL0_labLL0 (D := overD D r)) :)))
  have H' := fun (k : ℕ) (Q : Finset (Pl D.host.E)) (ψ : G D.host.E D.nd.Om →* (D.ntw.Ok i k)ˣ) =>
    H (ρ.eOk i b k).range (ρ.tw i b k Q ψ)
  funext k Q ψ
  exact (by with_unfolding_all exact ((H' k ((Q)) ((ψ))) : _))

theorem liftSetupOverExtendedData_isDatum_eq : (setupUp r ρ).IsDatum ((i)) ((j)) b = (ρ.IsDatum i j b) := by
  funext s x P
  have hl := liftSetupOverExtendedData_lat_eq ρ i j b hc
  refine propext ⟨fun d => ?_, fun d => ?_⟩
  · have m := d.mem
    rw [hl] at m
    exact (⟨(by with_unfolding_all exact (d.split :)), (by with_unfolding_all exact (d.off :)), (by with_unfolding_all exact (d.fin :)), (by with_unfolding_all exact (d.supp :)), (by with_unfolding_all exact (m :))⟩ : ρ.IsDatum i j b ((by with_unfolding_all exact (s :))) ((by with_unfolding_all exact (x :))) ((by with_unfolding_all exact (P :))))
  · have d' : ρ.IsDatum i j b ((by with_unfolding_all exact (s :))) ((by with_unfolding_all exact (x :))) ((by with_unfolding_all exact (P :))) := d
    refine ⟨(by with_unfolding_all exact (d'.split :)), (by with_unfolding_all exact (d'.off :)), (by with_unfolding_all exact (d'.fin :)), (by with_unfolding_all exact (d'.supp :)), ?_⟩
    rewrite [hl]
    exact (by with_unfolding_all exact (d'.mem :))

end Setup

section Cell

variable {ι : D.what₂.LL →+* (overD D r).what₂.LL} {e : ↥(overD D r).LL0 ≃+* ↥D.LL0} (hc : CopyTw D (overD D r) ι e)
  {ρ : Setup D.ntw} {i : D.ntw.Tw} {j : Fin D.R.m} {b : Bool}

def cellUp {hρ : ρ.Good} (hρ' : (setupUp r ρ).Good) {rd : Rd ρ D.nexp i j b} (t : CellTie hρ D.nexp rd) :
    CellTie hρ' (overD D r).nexp (i := (by with_unfolding_all exact (i :))) (j := (by with_unfolding_all exact (j :))) (b := b) ((by with_unfolding_all exact (rd :))) where
  supp := (by with_unfolding_all exact (t.supp :))
  cls := (by with_unfolding_all exact (t.cls :))
  coef := (by with_unfolding_all exact (t.coef :))
  rdV := (by with_unfolding_all exact (t.rdV :))
  U_eq := (by with_unfolding_all exact (t.U_eq :))
  psiU_eq := (by with_unfolding_all exact (t.psiU_eq :))
  dat := by rewrite [liftSetupOverExtendedData_isDatum_eq ρ i j b hc]; exact (by with_unfolding_all exact (t.dat :))
  dat_onto := by rewrite [liftSetupOverExtendedData_isDatum_eq ρ i j b hc, liftSetupOverExtendedData_theta_eq r ρ i j b]; exact (by with_unfolding_all exact (t.dat_onto :))
  lev_iff := (by with_unfolding_all exact (t.lev_iff :))
  th_eq := by rewrite [liftSetupOverExtendedData_theta_eq r ρ i j b]; exact (by with_unfolding_all exact (t.th_eq :))
  thPsi_iff := by rewrite [liftSetupOverExtendedData_gens_eq r ρ i j b]; exact (by with_unfolding_all exact (t.thPsi_iff :))
  thU_eq := by rewrite [liftSetupOverExtendedData_xi_eq r ρ i j b]; exact (by with_unfolding_all exact (t.thU_eq :))
  thU_off := by rewrite [liftSetupOverExtendedData_xi_eq r ρ i j b]; exact (by with_unfolding_all exact (t.thU_off :))
  rdV_inj := (by with_unfolding_all exact (t.rdV_inj :))
  mtLat_iff := by rewrite [liftSetupOverExtendedData_integralForms_eq ρ i j b hc]; exact (by with_unfolding_all exact (t.mtLat_iff :))
  thP_eq := by rewrite [liftSetupOverExtendedData_classSum_eq r ρ i j b]; exact (by with_unfolding_all exact (t.thP_eq :))

theorem cellUp_rdV {hρ : ρ.Good} (hρ' : (setupUp r ρ).Good) {rd : Rd ρ D.nexp i j b} (t : CellTie hρ D.nexp rd) :
    HEq t.rdV (cellUp r hc hρ' t).rdV := HEq.rfl

end Cell

end GlobalTheory.TwInputs.Move.TieUp

end
