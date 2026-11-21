import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbsLgOfLnSymUpdateSubLe
import Development.AbelianVarietyTheory.Definitions.Divisors.SemiposAtOfPositive
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormsAtOfNorms
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsLinearMapMultilinearMapBaseChange
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RingKrullDimLeOfIsAlgebraic
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.InducedMetricPullback
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CommonRefinementCoversStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormsPullbackAlongCover
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoverRefinementGenericDegree
import Development.AbelianVarietyTheory.Definitions.Divisors.ChernOn
import Development.AbelianVarietyTheory.Definitions.Divisors.NefFibOfIsNef
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ArakelovTopUnique
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsIsHodgeFrameIff
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.DegFrame
import Development.AbelianVarietyTheory.Statements.HeightBoundStatement.HTBoundSt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LineModel
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ArBirational
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.EqOfIsometricTrivShift
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.AmpleOnAbelianBase
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.InducedMetricPullbackStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.InducedMetricPowStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LocalSystemModelMap
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RingHomExtValuationSubring
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CorrespondenceDiagonal
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.MultiplicationLatticeSecond
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
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverIffIsProperAndExistsIsAmpleLB
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
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsProperToroidalModelStructureMap
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
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsUniqueLiesUnder
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormsOfInduces
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.JGenSpecializes
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FromModelNeg
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoverFunctionFieldMapEq
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IoOfLeOneIff
import Development.AbelianVarietyTheory.Definitions.Divisors.ReferenceMetricMulDualEqOne
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormsDualBundle
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormsTensorPower
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CommonRefinementOfCoverAndModel
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemConeOfMem
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NontrivialIsomClassInt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsCompModel
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TopologicalKrullDimEqSucc
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RingKrullDimIntegers
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NefFibPullback
import Development.AbelianVarietyTheory.Definitions.Divisors.EqOfSpecializesOfFinite
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMemChart
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IntersectionNumberFinitePushforward
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ResidueDegreeOfIsOpenImmersion
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalHeightBoundedByPrimeWeights
import Development.AutomorphicArithmetic.LocalEmbeddings.PairMain
import Development.AutomorphicArithmetic.LocalEmbeddings.CovCmpMain
import Development.AutomorphicArithmetic.DivisorFrames.NormsGiveRationalSections

open CategoryTheory Limits AlgebraicGeometry IsLocalRing MvPolynomial NumberField IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.DV Formalism.DegreeFormula Formalism.MainNotions.LatticeTransfer Formalism.MainNotions.WeightThresholdDefs
open GlobalTheory GlobalTheory.QCoh GlobalTheory.CechPic GlobalTheory.Vert GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.Mean4O GlobalTheory.MixedLocalChains GlobalTheory.LocM
open GlobalTheory.Cartier GlobalTheory.ArInt GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.CoverNorm GlobalTheory.VertForm GlobalTheory.TrivFlag GlobalTheory.CovTop GlobalTheory.CovHt GlobalTheory.TrueCx
open GlobalTheory.PairTerm
open Classical

open private place from Development.AutomorphicArithmetic.LocalEmbeddings.PairMain

private theorem vertNum_eq {F : Type} [Field F] [NumberField F] {Y : Var F} (p : ℕ) [Fact p.Prime] (V : Cover Y) (n : ℕ)
    (N : Fin n → HermLB V.p) (z : V.X) : vertNum p V n N z = (VertCmp.pdeg p (fun j => (N j).B) z : ℝ) := by
  rw [vertNum]
  split_ifs with h
  · rw [UpperTheory.pdeg_eq_of_isDeg p V.X n _ (fun j => (N j).isLB) z _
      ⟨h.some.Z, h.some.i, h.some.imm, h.some.int, h.some.alg, h.some.gen, h.some.dim, rfl⟩]
  · rw [VertCmp.pdeg, dif_neg fun ⟨_, Z, i, a₁, a₂, a₃, a₄, a₅, _⟩ => h ⟨⟨Z, i, a₁, a₂, a₃, a₄, a₅⟩⟩, Int.cast_zero]

private theorem one_comp {F : Type} [Field F] [NumberField F] {Y : Var F} {C : CxSt F} (p : ℕ) [Fact p.Prime]
    (v : HeightOneSpectrum (𝓞 F)) (hp : (p : 𝓞 F) ∈ v.asIdeal) {d : ℕ} (hd : Y.dim = d) (A : Bool ⊕ Fin d → Adl C Y)
    (hD : (A (.inl true)).D = (A (.inl false)).D) (V : Cover Y) (L : Bool ⊕ Fin d → HermLB V.p) (m : ℕ) (hm : m ≠ 0)
    (hL : ∀ i, Norms V (L i) (fun y => genAt (A i).D y ^ m) (fun σ y => (m : ℝ) * lnAdl (A i) σ y)
      (fun v e y => (m : ℝ) * (A i).lg v e y))
    (r : ((L (.inl false)).tens (L (.inl true)).dual).B.ι → V.X.functionFieldˣ)
    (hr : IsRatSec ((L (.inl false)).tens (L (.inl true)).dual).B r)
    (hrn : RatNorms V ((L (.inl false)).tens (L (.inl true)).dual) r
      (fun v e y => (m : ℝ) * ((A (.inl false)).lg v e y - (A (.inl true)).lg v e y)))
    (Q : TrueGeo.Model Y) [IsIntegral Q.X] [IsLocallyNoetherian Q.X] (hQ : ReciprocityTheory.ChartRestriction.G.Geo.Tor.IsNormalScheme Q.X)
    (m' : ℕ) (hm' : m' ≠ 0) (N : Bool ⊕ Fin d → LB Q.X) (hN : ∀ k, (N k).IsLB)
    (t : ∀ k, (N k).ι → Q.X.functionFieldˣ)
    (ht : ∀ v k, VertCmp.GReads Q v (N k) (t k) fun e y => (m' : ℝ) * VertCmp.lam (A k) v e y)
    (M : LB Q.X) (hM : M.IsLB) (s : M.ι → Q.X.functionFieldˣ) (hs : IsRatSec M s)
    (hMs : ∀ v, VertCmp.GReads Q v M s fun e y =>
      (m' : ℝ) * (VertCmp.lam (A (.inl false)) v e y - VertCmp.lam (A (.inl true)) v e y)) :
    (∑ᶠ y, if LiesOverPl V v y then (haveI := V.ar.isLocallyNoetherian;
      ((((L (.inl false)).tens (L (.inl true)).dual).div hr).mult y : ℝ)) *
        vertNum p V d (fun j => L (.inr j)) y else 0) / ((V.deg : ℝ) * (m : ℝ) ^ (d + 1)) =
    (∑ᶠ y : Q.X, if (Q.p y).asIdeal = v.asIdeal then
      (((divOfRatSec hM hs).mult y * VertCmp.pdeg p (fun k => N (.inr k)) y : ℤ) : ℝ) else 0) / (m' : ℝ) ^ (d + 1) := by
  choose u hu using fun k => UpperTheory.norms_give_rational_sections F Y C (A (.inr k)) V (L (.inr k)) m _ (hL (.inr k))
  have key := CovCmp.vsum_cmp V (Cover.ofModel Q hQ) v p hp hd m m' hm hm'
    (fun v e y => VertCmp.lam (A (.inl false)) v e y - VertCmp.lam (A (.inl true)) v e y)
    (fun k => VertCmp.lam (A (.inr k))) (fun k => (L (.inr k)).isLB) u hu
    ((L (.inl false)).tens (L (.inl true)).dual).isLB hr
    (fun v => ⟨hr, ⊤, trivial, fun e y z yt i _ a₁ a₂ a₃ _ => by
      refine (hrn v e y z yt i a₁ a₂ a₃).symm.trans ?_
      simp only [VertCmp.lam, hD]
      ring⟩)
    (N₂ := fun k => N (.inr k)) (fun k => hN (.inr k)) (fun k => t (.inr k))
    (fun k v => CovCmp.cRead_of_gReads Q hQ (ht v (.inr k))) hM hs (fun v => CovCmp.cRead_of_gReads Q hQ (hMs v))
  rw [Cover.deg_ofModel, Nat.cast_one, one_mul] at key
  refine Eq.trans ?_ key
  congr 1
  refine finsum_congr fun y => ?_
  rw [vertNum_eq, Int.cast_mul]
  exact if_congr Iff.rfl rfl rfl

