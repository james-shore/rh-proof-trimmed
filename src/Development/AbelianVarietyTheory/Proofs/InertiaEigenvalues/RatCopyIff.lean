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

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.TwInputs GlobalTheory.TwInputs.Move
open Formalism.MainNotions.IntegralHeckeForms (TwOK ClsQ HkIdx V0 Fm0 FullRk SgJ BasisOf)
open Formalism.L2.Host (embLL0 CharFrame)
open GlobalTheory.TwSys GlobalTheory.TwAll GlobalTheory.SupLaw GlobalTheory.LiftLeaf
open scoped TensorProduct
set_option synthInstance.maxHeartbeats 400000
set_option maxHeartbeats 1600000
attribute [local instance] Formalism.BasicNotions.Host.cmStar

local macro:max "kc% " e:term:max : term => `((by kexactB $e))

namespace GlobalTheory.TwInputs.Move.RatUp

variable {D : D7} (r : Rest D)

theorem placeMap_up {S T : HSp D} (B : Base S T) (a : AE D) :
    HEq ((baseUp r B).F.placeMap ((a))) (B.F.placeMap a) := by
  have h : (fun Tm : (WO S T → ℂ) →ₗ[ℂ] (WO S T → ℂ) =>
      (IsPlaceModel (baseUp r B).F.ψ (symplO _ _) (heisO (baseUp r B).F.ψ _ _) ((by with_unfolding_all exact (a :))) (baseUp r B).F.lat 1 (baseUp r B).F.f₀
        ((by with_unfolding_all exact (Tm :))))) = IsPlaceModel B.F.ψ (symplO S T) (heisO B.F.ψ S T) a B.F.lat 1 B.F.f₀ :=
    funext fun Tm => propext ⟨fun g => ⟨(by with_unfolding_all exact (g.1 :)), (by with_unfolding_all exact (g.2 :)), (by with_unfolding_all exact (g.3 :))⟩, fun g => ⟨(by with_unfolding_all exact (g.1 :)), (by with_unfolding_all exact (g.2 :)), (by with_unfolding_all exact (g.3 :))⟩⟩
  exact (by with_unfolding_all exact ((heq_of_eq (congrArg Classical.epsilon h)) :))

open Classical in
theorem vecAt_up {S T : HSp D} (B : Base S T) : (baseUp r B).vecAt = (B.vecAt) := by
  delta ExportSeries.Base.vecAt Frame.vec
  rewrite [show (baseUp r B).F.placeMap = ((by with_unfolding_all exact (B.F.placeMap :))) from (by with_unfolding_all exact ((funext fun a => eq_of_heq (placeMap_up r B a)) :))]
  exact (by with_unfolding_all exact ((Eq.refl B.vecAt) :))

theorem theta_up {S T : HSp D} (B : Base S T) : (baseUp r B).theta = (B.theta) := by
  delta ExportSeries.Base.theta ExportSeries.Base.vecBase
  rewrite [vecAt_up r B]
  exact (by with_unfolding_all exact ((Eq.refl B.theta) :))

theorem genSet_up {S T : HSp D} (B : Base S T) (ω) (t : Twist D Circle) :
    (baseUp r B).genSet (((ω : PairRep S T))) (twistUp r t) = ((B.genSet ω t : GA (overD D r) S → PolF (overD D r) T.rank S.rank → Set (GA (overD D r) T → ℂ))) := by
  delta ExportSeries.Base.genSet ExportSeries.Base.gen ExportSeries.Base.vecFlat
  rewrite [vecAt_up r B]
  exact (by with_unfolding_all exact ((Eq.refl (B.genSet ω t)) :))

def univUp {A : Type} [AddCommGroup A] (t : UnivTwist D A) : UnivTwist (overD D r) A := ⟨(by with_unfolding_all exact (t.del :)), (by with_unfolding_all exact (t.kap :))⟩

theorem xiCoef_up {S T : HSp D} {A : Type} [AddCommGroup A] [Fintype A] (B : Base S T) (ω) (u : UnivTwist D A) :
    (baseUp r B).xiCoef (((ω : PairRep S T))) (univUp r u) = ((B.xiCoef ω u : (Q : Finset (Pl (overD D r).host.E)) → ((PP : Pl (overD D r).host.E) → A → Matrix (Fin T.rank) (Fin S.rank) (kP PP) → ℚ) → GA (overD D r) S → PolF (overD D r) T.rank S.rank → (↥Q → A) → GA (overD D r) T → ℂ)) := by
  delta ExportSeries.Base.xiCoef ExportSeries.Base.xi ExportSeries.Base.vecFam
  rewrite [vecAt_up r B]
  exact (by with_unfolding_all exact ((Eq.refl (B.xiCoef ω u)) :))

section Lat

variable {r} {ι : D.what₂.LL →+* (overD D r).what₂.LL} {e : ↥(overD D r).LL0 ≃+* ↥D.LL0} (h : CopyTw D (overD D r) ι e)
include h

theorem embLL0_up : embLL0 (overD D r) = (embLL0 D).comp e.toRingHom := RingHom.ext fun x => (h.embLL0_eq x).symm

theorem labLL0_up (τ : D.what₂.Tau) : e.toRingHom.comp (labLL0 (overD D r) ((τ))) = (labLL0 D τ) := by
  refine RingHom.ext fun x => (embLL0 D).injective ((h.embLL0_eq _).trans ?_)
  have a := DFunLike.congr_fun (embLL0_labLL0 (D := overD D r) ((by with_unfolding_all exact (τ :)))) x
  have c := DFunLike.congr_fun (embLL0_labLL0 (D := D) τ) ((by with_unfolding_all exact (x :)))
  refine Eq.trans a ?_
  exact (by with_unfolding_all exact (c.symm :))

theorem coefLat_up {S T : HSp D} (B : Base S T) (O : Subring ℂ) (g : Bridge.Gf S) :
    (baseUp r B).coefLat (embLL0 (overD D r)) (labLL0 (overD D r)) O ((g)) = (B.coefLat (embLL0 D) (labLL0 D) O g) := by
  have a := GlobalTheory.CoefLatIso.coefLatFn_ringEquiv D S.rank _ _ e (embLL0 D) ((by with_unfolding_all exact ((labLL0 (overD D r)) :))) O B.w.lam (B.latAt g)
  have c : (fun τ : D.what₂.Tau => e.toRingHom.comp (((by with_unfolding_all exact ((labLL0 (overD D r)) :)) : D.what₂.Tau → (D.host.E →+* ↥(overD D r).LL0)) τ)) =
      labLL0 D := funext fun τ => (by with_unfolding_all exact ((labLL0_up h τ) :))
  rw [← embLL0_up h, c] at a
  exact (by with_unfolding_all exact ((congrArg (fun L : Submodule O (GLR D S.rank → ℂ) => (harm T.rank B.w B.F.BS).restrictScalars O ⊓
    L.comap ((harmFn T.rank B.w B.F.BS).restrictScalars O)) a) :))

end Lat

section Setup

variable (ρ : Setup D.ntw) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool)

theorem se_theta : (setupUp r ρ).theta ((i)) ((j)) b = (ρ.theta i j b) := by
  funext h P
  have e : @Eq (type_of% (ρ.B i j b).theta) ((by with_unfolding_all exact ((baseUp r (ρ.B i j b)).theta :))) (ρ.B i j b).theta :=
    (by with_unfolding_all exact ((theta_up r (ρ.B i j b)) :))
  exact (by with_unfolding_all exact ((congrArg (fun t : type_of% (ρ.B i j b).theta => t (ρ.om i j b 1) ((by with_unfolding_all exact (h :))) ((by with_unfolding_all exact (P :)))) e) :))

theorem se_gens : (setupUp r ρ).gens ((i)) ((j)) b = (ρ.gens i j b) := by
  funext k Q ψ
  exact (by with_unfolding_all exact ((genSet_up r (ρ.B i j b) (ρ.om i j b 1) (ρ.tw i b k ((by with_unfolding_all exact (Q :))) ((by with_unfolding_all exact (ψ :))))) :))

theorem se_xi : (setupUp r ρ).xi ((i)) ((j)) b (overD D r).nexp = (ρ.xi i j b D.nexp) := by
  funext Q M
  exact (by with_unfolding_all exact ((congrFun (congrFun (xiCoef_up r (ρ.B i j b) (ρ.om i j b 1) (univOf D.nexp i (admissibleConjugatePairPlaces D.ntw i ((by with_unfolding_all exact (Q :))) M) M ρ.rc))
    ((by with_unfolding_all exact ((half (ρ.ch i) (admissibleConjugatePairPlaces D.ntw i ((Q)) M)) : _))))
    ((by with_unfolding_all exact ((ExportSeries.Base.univFam (univOf D.nexp i (admissibleConjugatePairPlaces D.ntw i ((Q)) M) M ρ.rc) (ρ.β j)) : _)))) :))

variable {r ρ i j b} {ι : D.what₂.LL →+* (overD D r).what₂.LL} {e : ↥(overD D r).LL0 ≃+* ↥D.LL0} (h : CopyTw D (overD D r) ι e)
include h

theorem se_lat (O : Subring ℂ) (g : GA D (Vc D j)) : (setupUp r ρ).lat ((i)) ((j)) b O ((g)) = (ρ.lat i j b O g) :=
  (by with_unfolding_all exact ((coefLat_up h (ρ.B i j b) O (finPt _ g)) :))

theorem datum_up {s g P} (d : ρ.IsDatum i j b s g P) : (setupUp r ρ).IsDatum ((i)) ((j)) b ((s)) ((g)) ((P)) :=
  ⟨(by with_unfolding_all exact (d.split :)), (by with_unfolding_all exact (d.off :)), (by with_unfolding_all exact (d.fin :)), (by with_unfolding_all exact (d.supp :)), by
    have a := se_lat (ρ := ρ) (i := i) (j := j) (b := b) h (ρ.eO i b).range g
    have c := (le_of_eq a.symm) ((by with_unfolding_all exact (d.mem :)) : ((by with_unfolding_all exact (P :))) ∈ _)
    exact (by with_unfolding_all exact (c :))⟩

theorem datum_dn {s g P} (d : (setupUp r ρ).IsDatum ((i)) ((j)) b s g P) : ρ.IsDatum i j b ((s)) ((g)) ((P)) :=
  ⟨(by with_unfolding_all exact (d.split :)), (by with_unfolding_all exact (d.off :)), (by with_unfolding_all exact (d.fin :)), (by with_unfolding_all exact (d.supp :)), by
    have a := se_lat (ρ := ρ) (i := i) (j := j) (b := b) h (ρ.eO i b).range ((by with_unfolding_all exact (g :)))
    have c := (le_of_eq a) ((by with_unfolding_all exact (d.mem :)) : ((by with_unfolding_all exact (P :))) ∈ _)
    exact (by with_unfolding_all exact (c :))⟩

omit h in
variable (r) in

def rdUp (rd : Rd ρ D.nexp i j b) : Rd (setupUp r ρ) (overD D r).nexp ((i)) ((j)) b := (rd)

theorem rat_up {hρ : ρ.Good} {hρ' : (setupUp r ρ).Good} {rd : Rd ρ D.nexp i j b} (g : SeriesTie.Rat hρ rd) :
    SeriesTie.Rat hρ' (rdUp r rd) := by
  refine ⟨fun s x P d => ?_, fun k Q ψ h1 h2 s x P d => ?_, fun Q M h1 s x P d h2 a => ?_⟩
  · rewrite [se_theta r ρ i j b]
    exact (by with_unfolding_all exact ((g.1 _ _ _ (datum_dn h d)) :))
  · rewrite [se_gens r ρ i j b]
    exact (by with_unfolding_all exact ((g.2.1 k ((by with_unfolding_all exact (Q :))) ((by with_unfolding_all exact (ψ :))) ((by with_unfolding_all exact (h1 :))) ((by with_unfolding_all exact (h2 :))) _ _ _ (datum_dn h d)) :))
  · rewrite [se_xi r ρ i j b]
    exact (by with_unfolding_all exact ((g.2.2 ((by with_unfolding_all exact (Q :))) M ((by with_unfolding_all exact (h1 :))) _ _ _ (datum_dn h d) ((by with_unfolding_all exact (h2 :))) ((by with_unfolding_all exact (a :)))) :))

theorem rat_dn {hρ : ρ.Good} {hρ' : (setupUp r ρ).Good} {rd : Rd ρ D.nexp i j b} (g : SeriesTie.Rat hρ' (rdUp r rd)) :
    SeriesTie.Rat hρ rd := by
  refine ⟨fun s x P d => ?_, fun k Q ψ h1 h2 s x P d => ?_, fun Q M h1 s x P d h2 a => ?_⟩
  · have c := g.1 _ _ _ (datum_up h d)
    rewrite [se_theta r ρ i j b] at c
    exact (by with_unfolding_all exact (c :))
  · have c := g.2.1 k ((by with_unfolding_all exact (Q :))) ((by with_unfolding_all exact (ψ :))) ((by with_unfolding_all exact (h1 :))) ((by with_unfolding_all exact (h2 :))) _ _ _ (datum_up h d)
    rewrite [se_gens r ρ i j b] at c
    exact (by with_unfolding_all exact (c :))
  · have c := g.2.2 ((by with_unfolding_all exact (Q :))) M ((by with_unfolding_all exact (h1 :))) _ _ _ (datum_up h d) ((by with_unfolding_all exact (h2 :))) ((by with_unfolding_all exact (a :)))
    rewrite [se_xi r ρ i j b] at c
    exact (by with_unfolding_all exact (c :))

end Setup

theorem rat_copy_iff {D D' : D7} {ι : D.what₂.LL →+* D'.what₂.LL} {e : ↥D'.LL0 ≃+* ↥D.LL0} (h : CopyTw D D' ι e) {ρ : Setup D.ntw}
    {ρ' : Setup D'.ntw} (hs : SameSetup ρ ρ') (hρ : ρ.Good) (hρ' : ρ'.Good) (rd : Rds D.nexp ρ) (rd' : Rds D'.nexp ρ')
    (hrd : RdRel h rd rd') (i : D.ntw.Tw) (i' : D'.ntw.Tw) (hi : HEq i i') (j : Fin D.R.m) (b : Bool) :
    SeriesTie.Rat hρ (rd i j b) ↔ SeriesTie.Rat hρ' (rd' i' (h.cm j) b) := by
  obtain ⟨r, rfl⟩ := h.exists_rest
  obtain rfl := SameData.eq_up r hs
  have e0 : @Eq D.ntw.Tw ((by with_unfolding_all exact (i :))) ((by with_unfolding_all exact (i' :))) := (by with_unfolding_all exact ((@eq_of_heq D.ntw.Tw i ((by with_unfolding_all exact (i' :))) ((by with_unfolding_all exact (hi :)))) :))
  have e1 : ∀ (i' : (overD D r).ntw.Tw) (hi : HEq ((by with_unfolding_all exact (i' :)) : D.ntw.Tw) i') (j' : Fin (overD D r).R.m),
      rd' i' j' b = (by with_unfolding_all exact ((rdUp r (rd ((by with_unfolding_all exact (i' :))) ((by with_unfolding_all exact (j' :))) b)) :)) := fun i' hi j' => by
    refine LinearMap.ext fun f => ?_
    have a := hrd _ i' hi ((by with_unfolding_all exact (j' :))) b ((by with_unfolding_all exact (f :)))
    have c : h.fmCast hi ((j' : ℕ) + 1) b ((by with_unfolding_all exact (f :))) = (by with_unfolding_all exact (f :)) := (by with_unfolding_all exact ((eq_of_heq (h.fmCast_heq hi ((j' : ℕ) + 1) b ((by with_unfolding_all exact (f :))))) :))
    have a' : HEq (rd' i' j' b (h.fmCast hi ((j' : ℕ) + 1) b ((by with_unfolding_all exact (f :))))) (rd ((by with_unfolding_all exact (i' :))) ((by with_unfolding_all exact (j' :))) b ((by with_unfolding_all exact (f :)))) := (by with_unfolding_all exact (a :))
    rewrite [c] at a'
    exact (by with_unfolding_all exact ((@eq_of_heq (GA (overD D r) (Wc (overD D r) j') → ℂ) (rd' i' j' b f) ((by with_unfolding_all exact ((rd ((i')) ((j')) b ((f))) : _))) ((by with_unfolding_all exact (a' :)))) :))
  subst e0
  rewrite [e1 _ hi (h.cm j)]
  exact ⟨fun g => (by with_unfolding_all exact ((rat_up h (hρ' := hρ') g) :)), fun g => rat_dn h (hρ' := hρ') ((by with_unfolding_all exact (g :)))⟩

end GlobalTheory.TwInputs.Move.RatUp

end
