import Mathlib
import Development.AutomorphicArithmetic.LocalEmbeddings.VertCmp
import Development.AbelianVarietyTheory.Definitions.Divisors.SemiposAtOfPositive
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemConeOfMem
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormsOfInduces
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.EqOfIsometricTrivShift
import Development.AbelianVarietyTheory.Definitions.Divisors.GenericPointAsIdeal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NontrivialIsomClassInt
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsUniqueLiesUnder
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.JGenSpecializes
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FromModelNeg
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.MultiplicationLatticeSecond
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsProperToroidalModelStructureMap
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoverFunctionFieldMapEq
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IoOfLeOneIff
import Development.AbelianVarietyTheory.Definitions.Divisors.ReferenceMetricMulDualEqOne
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.InducedMetricPullback
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormsDualBundle
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalHeightBoundedByPrimeWeights
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralSubschemePrimeFibreStatement
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsLinearMapMultilinearMapBaseChange
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinsumLifts
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallSectionHeightLowerBound
import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsAmpleLBOfRelAmpleOfIsAffine
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.EventuallySectionAndRelAmplePowDiv
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ExistsSecNeObj
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsProjOverBaseChangeOfProperQuasiProjective
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverIffIsProperAndExistsIsAmpleLB
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsQProjOverBaseChangeAndFiniteRestrict
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedSubschemeModLProjectiveStatement
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.DegFrame
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AbsLogGrNormSubLe
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ScaleZeroComp
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormsAtOfNorms
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StepInclStepProj
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.RestrictPullbackIsoHomAppPullbackSections
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedSubschemeProjOverModL
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RingKrullDimLeOfIsAlgebraic
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CommonRefinementCoversStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormsPullbackAlongCover
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoverRefinementGenericDegree
import Development.AbelianVarietyTheory.Definitions.Divisors.ChernOn
import Development.AbelianVarietyTheory.Definitions.Divisors.NefFibOfIsNef
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ArakelovTopUnique
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsIsHodgeFrameIff
import Development.AbelianVarietyTheory.Statements.HeightBoundStatement.HTBoundSt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LineModel
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ArBirational
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.AmpleOnAbelianBase
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.InducedMetricPullbackStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.InducedMetricPowStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LocalSystemModelMap
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RingHomExtValuationSubring
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CorrespondenceDiagonal
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsFrameCover
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIntegralFlagCellOfValuedFieldStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SmoothBaseAndNormalCoordinateRing
import Development.AbelianVarietyTheory.Proofs.GenericRegularity.ExistsAffineLieBasisBaseChange
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.EigLatBasis
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CocycleTrivialOnProjectiveCover
import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.MemRangeCompIffOfIsClosedImmersion
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsAffineEigenframeNearImage
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.IsDiscreteValuationRingAndFiniteResidueFieldValu
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TangentCombinationEigenAction
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LetterConjugation
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.FiniteIntegralClosureOfEssFiniteTypeField
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsIsoNormalizationPullbackOfToIntegralClosure
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsProjOverCompFinite
import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.IsOpenOfMemIrreducibleComponentsOfFinite
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsPluckerFlagEmbeddingOfProjectiveBaseStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FlagCellsGlueLocallyClosedPluckerProductStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CompactNormalNoetherianOfFlagCellCoverStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PreimageIUnionOpensEqRangeFlagCellsStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemSpanOfPluckerProportional
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PluckerVectorBlockTriangularFrameChange
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PreModelChartFrame
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SInfMulNormPlk
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AffineOpenChartCompStructureEqSpMap
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NonemptyAdaptedOfIntStep
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AdaptedNextStepType
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AdaptedSubstepClosure
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NonemptyClosureOfEmbedding
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverCompOfIsClosedImmersion
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AtlasLocalRingPoints
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsStalkFactor
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsFrameBaseChangeRingHom
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LineModelTrueOfFalse
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GrNormPush
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsFlagFrame
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsSectionOfIsIsoRestrict
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIdealSheafAwayFromP
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsTanBasisOfUniqueCombination
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsTrans
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.PadicValNatAbsNormEqZero
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TangentBasisOfSplitTorsion
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FrameCombinationCoeffUnique
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GradedLineBundleExists
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SuccessiveMinimaPositiveNorms
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FromModelOfLocMax
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsModelPresentingDivisor
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsConjFsBasisOfUnitary
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.DualGramInterpGram
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsAffineEigenframeFlag
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsLocalEquationComplexPoints
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EigenMetricOnSet
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ConjSmoothOnPreimageCharts
import Development.AbelianVarietyTheory.Definitions.Divisors.FirstChernIntegralEqDegree
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UniformizedFamilyChartIndex
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PeriodFamilyChartDomain
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsFramedComplexPointOfEigenFrameOffBoundaryStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GramSmoothOfHolomorphicFrames
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsExponentialModelFiberOfUniformisationExp
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExpCoordinatesTangentFieldHolomorphicPeriodMapStatement
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ResidueDegreeOfIsClosedImmersion
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormsTensorPower
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CommonRefinementOfCoverAndModel
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsCompModel
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TopologicalKrullDimEqSucc
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RingKrullDimIntegers
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NefFibPullback
import Development.AbelianVarietyTheory.Definitions.Divisors.EqOfSpecializesOfFinite
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMemChart
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IntersectionNumberFinitePushforward
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ResidueDegreeOfIsOpenImmersion

open CategoryTheory Limits AlgebraicGeometry IsLocalRing NumberField IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Pj
open GlobalTheory GlobalTheory.Cartier GlobalTheory.CechPic GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.Vert GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.LocM GlobalTheory.Toroidal
open GlobalTheory.VertCmp
open scoped Classical

namespace UpperTheory.VertGlob

open GlobalTheory.Mean4O GlobalTheory.CoverNorm GlobalTheory.VertForm GlobalTheory.ArInt GlobalTheory.CovTop GlobalTheory.CovHt GlobalTheory.TrivFlag GlobalTheory.CoverNorm.Isom GlobalTheory.CompHt GlobalTheory.AllWt

variable {F : Type} [Field F] [NumberField F] {Y : Var F}

private def CReads (V : Mean4O.Cover Y) (L : LB V.X) (s : L.ι → V.X.functionFieldˣ) (f : Y.X → Y.Fn)
    (l : ∀ v : HeightOneSpectrum (𝓞 F), TrueGeo.Ext v → AlgPt Y → ℝ) : Prop :=
  ∀ (v : HeightOneSpectrum (𝓞 F)) (e : TrueGeo.Ext v) (y : AlgPt Y) (z : Sp (AlgebraicClosure F) ⟶ V.G)
    (yt : Sp e.O ⟶ V.X) (i : L.ι), z ≫ V.π = y.1 → spMap e.O.subtype ≫ yt = z ≫ V.j → ⊤ ≤ yt ⁻¹ᵁ L.U i →
    UnitAt (below z) (V.φ (f (below y.1)) * SmallSec.fnMap V.j (j_gen_specializes V) (s i)) ∧
      l v e y = Real.log (e.w (TrueGeo.valAt z
        (V.φ (f (below y.1)) * SmallSec.fnMap V.j (j_gen_specializes V) (s i))))

private theorem exists_lift (V : Mean4O.Cover Y) (M : HermLB V.p) {f : Y.X → Y.Fn} {a : ∀ σ : F →+* ℂ, Pts Y σ → ℝ}
    {l : ∀ v : HeightOneSpectrum (𝓞 F), TrueGeo.Ext v → AlgPt Y → ℝ} (h : Norms V M f a l) :
    ∃ (s : M.B.ι → V.X.functionFieldˣ) (_ : IsRatSec M.B s), CReads V M.B s f l ∧
      ((∀ x, f x = 1) → (∀ σ y, a σ y = 0) → ∀ σ y, logNorm (M.φ σ) s y = 0) := by
  obtain ⟨r, hr, hu, hc, hf⟩ := h
  haveI := CoverHt.isPreimmersion_j V
  have hη := j_gen_specializes V
  let ρ : V.X.functionField ≃+* V.G.functionField := RingEquiv.ofBijective (SmallSec.fnMap V.j hη)
    ⟨(SmallSec.fnMap V.j hη).injective, SmallSec.fnMap_surjective V.j hη⟩
  have hρ : ∀ (U : V.X.Opens) (hU : genericPoint V.X ∈ U) (hU' : genericPoint V.G ∈ V.j ⁻¹ᵁ U)
      (s : Γ(V.X, U)), ρ (fnOf U hU s) = fnOf (V.j ⁻¹ᵁ U) hU' (V.j.app U s) :=
    fun U hU hU' s => SmallSec.fnMap_fnOf V.j hη hU hU' s
  have hj : V.j (genericPoint V.G) = genericPoint V.X := (hη.antisymm (genericPoint_specializes _)).eq
  have hv : ∀ {K : Type} [Field K] (y : Sp K ⟶ V.G) (g : V.X.functionField),
      TrueGeo.valAt (y ≫ V.j) g = TrueGeo.valAt y (ρ g) :=
    fun y g => ModelFn.valAt_comp V.j hη y g
  have hR := InducedIsom.isRatSec_lift V.j ρ hρ hj M.B hr
  have eρ : ∀ i, ρ ((Units.map ρ.symm.toMonoidHom (r fun _ => i) : V.X.functionFieldˣ) :
      V.X.functionField) = (r fun _ => i : V.G.functionField) := fun i => ρ.apply_symm_apply _
  refine ⟨_, hR, fun v e y z yt i e₁ e₂ hU => ?_, fun hf1 ha0 τ y => ?_⟩
  · have eρ' : SmallSec.fnMap V.j (j_gen_specializes V)
        ((Units.map ρ.symm.toMonoidHom (r fun _ => i) : V.X.functionFieldˣ) :
        V.X.functionField) = (r fun _ => i : V.G.functionField) := eρ i
    rw [eρ']
    have hpt : (z ≫ V.j) (IsLocalRing.closedPoint _) ∈ M.B.U i := by
      rw [← e₂]
      exact hU (Set.mem_univ _)
    have m₁ : below z ∈ (M.B.pull V.j).U (fun _ => i) := Set.mem_iInter.2 fun _ => hpt
    have hw := hu _ _ m₁
    have hb : V.π (below z) = below y.1 := by rw [← e₁]; rfl
    rw [hb] at hw
    exact ⟨hw, hf v e y z yt (fun _ => i) e₁ e₂ hU⟩
  · obtain ⟨σ, rfl, z, hz⟩ := cxPts_from_generic_fibre V τ y
    rw [logNorm]
    have hyj := CxPts.mem_pick (M.φ (σ.comp (algebraMap (𝓞 F) F))).isLB y
    generalize CxPts.pick (M.φ (σ.comp (algebraMap (𝓞 F) F))).isLB y = j at hyj ⊢
    let y₀ : Pts Y σ := ⟨z.1 ≫ V.π, by rw [Category.assoc]; exact z.2⟩
    have hun : under y = V.j (under z) := by
      change y.1 _ = _
      rw [hz]
      rfl
    have m₁ : under z ∈ (M.B.pull V.j).U fun _ => j := Set.mem_iInter.2 fun _ => by
      change V.j (under z) ∈ M.B.U j
      rw [← hun]
      exact CxPts.mem_ptsIn.1 hyj
    have H := hc σ z y₀ y (fun _ => j) rfl hz m₁
    have hq : ratVal ((Units.map ρ.symm.toMonoidHom (r fun _ => j) : V.X.functionFieldˣ) :
        V.X.functionField) y = ratVal (r fun _ => j : V.G.functionField) z := by
      rw [ModelFn.ratVal_eq, ModelFn.ratVal_eq, hz, hv, eρ]
    simp only [hf1, ha0, map_one, one_mul] at H
    rw [hq]
    linarith

end UpperTheory.VertGlob

