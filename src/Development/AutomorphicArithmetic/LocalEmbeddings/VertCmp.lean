import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.GlobalHeightBoundIffAtGoodPrimes
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FiniteTwistingNotIsGenerator
import Development.AbelianVarietyTheory.Statements.HeightBoundStatement.HTBoundSt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LineModel
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
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.AmpleOnAbelianBase
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.PadicValNatAbsNormEqZero
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TangentBasisOfSplitTorsion
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FrameCombinationCoeffUnique
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GradedLineBundleExists
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SuccessiveMinimaPositiveNorms
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ScaleZeroComp
import Development.AbelianVarietyTheory.Definitions.Divisors.SemiposAtOfPositive
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemConeOfMem
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormsOfInduces
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.EqOfIsometricTrivShift
import Development.AbelianVarietyTheory.Definitions.Divisors.GenericPointAsIdeal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NontrivialIsomClassInt
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsUniqueLiesUnder
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.JGenSpecializes
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FromModelNeg
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
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsQProjOverBaseChangeAndFiniteRestrict
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedSubschemeModLProjectiveStatement
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.DegFrame
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AbsLogGrNormSubLe
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
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ArBirational
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.InducedMetricPullbackStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.InducedMetricPowStatement
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
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.InducedMetricPow
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FromModelAdd
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PolarizationOfHomogeneous
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.FlatBCSec
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineOpenPreimageOfIsPullback
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GenericallySmoothModel

set_option autoImplicit false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry IsLocalRing NumberField IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Pj
open GlobalTheory GlobalTheory.Cartier GlobalTheory.CechPic GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.Vert GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.LocM GlobalTheory.Toroidal

namespace GlobalTheory.VertCmp

section Deg

variable (p : ℕ) [Fact p.Prime] {X : Scheme.{0}} {d : ℕ}

def IsDeg (N : Fin d → LB X) (z : X) (a : ℤ) : Prop :=
  ∃ (Z : Scheme.{0}) (i : Z ⟶ X) (_ : IsClosedImmersion i) (_ : IsIntegral Z) (_ : Algebra (ZMod p) Γ(Z, ⊤)),
    i (genericPoint Z) = z ∧ topologicalKrullDim Z = d ∧ a = interNum (ZMod p) (structureModule Z) fun j => (N j).pull i

open Classical in

def pdeg (N : Fin d → LB X) (z : X) : ℤ := if h : ∃ a, IsDeg p N z a then h.choose else 0

end Deg

section Local

variable {F : Type} [Field F] [NumberField F]

def placeDeg (p : ℕ) (v : HeightOneSpectrum (𝓞 F)) : ℝ :=
  (eWL F v : ℝ) * Real.log (Ideal.absNorm v.asIdeal : ℝ) / Real.log (p : ℝ)

def resDeg (O : Type) [CommRing O] [IsLocalRing O] (p : ℕ) [CharP (ResidueField O) p] : ℕ :=
  letI := ZMod.algebra (ResidueField O) p
  Module.finrank (ZMod p) (ResidueField O)

def IsUp (v : HeightOneSpectrum (𝓞 F)) {F' : Type} [Field F'] (ε : F →+* F') (O : ValuationSubring F')
    (b : 𝓞 F →+* O) : Prop :=
  (∀ x : 𝓞 F, ((b x : O) : F') = ε (x : F)) ∧ ∀ x : 𝓞 F, x ∈ v.asIdeal ↔ b x ∈ maximalIdeal O

def lam {C : CxSt F} {Y : Var F} (A : Adl C Y) (v : HeightOneSpectrum (𝓞 F)) (e : Ext v) (y : AlgPt Y) : ℝ :=
  A.lg v e y + Real.log (e.w (valAt y.1 (eqn A.D (below y.1) : Y.Fn)))

def GReads {Y : Var F} (Q : TrueGeo.Model Y) [IsIntegral Q.X] (v : HeightOneSpectrum (𝓞 F)) (L : LB Q.X)
    (s : L.ι → Q.X.functionFieldˣ) (l : Ext v → AlgPt Y → ℝ) : Prop :=
  IsRatSec L s ∧ ∃ W : Y.X.Opens, genericPoint Y.X ∈ W ∧
    ∀ (e : Ext v) (y : AlgPt Y) (yt : Sp e.O ⟶ Q.X) (i : L.ι), below y.1 ∈ W → spMap e.O.subtype ≫ yt = y.1 ≫ Q.j →
      ⊤ ≤ yt ⁻¹ᵁ L.U i → UnitAt (below (y.1 ≫ Q.j)) (s i : Q.X.functionField) ∧
        Real.log (e.w (valAt (y.1 ≫ Q.j) (s i : Q.X.functionField))) = l e y

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]

def cst (B : Vert.Model O) : O →+* B.X.functionField :=
  (fnOf (⊤ : B.X.Opens) (TopologicalSpace.Opens.mem_top _)).comp (algebraMap O Γ(B.X, ⊤))

structure Match (Y : Var F) (b : 𝓞 F →+* O) (B : Vert.Model O) : Type where

  U : B.X.Opens

  mem : genericPoint B.X ∈ U

  h : U.toScheme ⟶ Y.X

  h_str : h ≫ Y.str ≫ spMap (algebraMap (𝓞 F) F) = U.ι ≫ B.str ≫ spMap b

  φ : Y.Fn →+* B.X.functionField

  φ_spec : U.fromSpecStalkOfMem _ mem ≫ h = spMap φ ≫ Y.X.fromSpecStalk (genericPoint Y.X)

variable {Y : Var F} {b : 𝓞 F →+* O}

def Reads {B : Vert.Model O} (μ : Match Y b B) (v : HeightOneSpectrum (𝓞 F)) (L : LB B.X)
    (s : L.ι → B.X.functionFieldˣ) (l : Ext v → AlgPt Y → ℝ) : Prop :=
  IsRatSec L s ∧ ∃ W : Y.X.Opens, genericPoint Y.X ∈ W ∧
    ∀ (e : Ext v) (y : AlgPt Y) (z : Sp (AlgebraicClosure F) ⟶ μ.U.toScheme) (zt : Sp e.O ⟶ B.X) (i : L.ι),
      below y.1 ∈ W → z ≫ μ.h = y.1 → spMap e.O.subtype ≫ zt = z ≫ μ.U.ι → ⊤ ≤ zt ⁻¹ᵁ L.U i →
      UnitAt (below (z ≫ μ.U.ι)) (s i : B.X.functionField) ∧
        Real.log (e.w (valAt (z ≫ μ.U.ι) (s i : B.X.functionField))) = l e y

def IsSecOf {B : Vert.Model O} (P : VertDiv B) (s : P.M.ι → B.X.functionFieldˣ) : Prop :=
  ∀ (i : P.M.ι) (h : genericPoint B.X ∈ B.gen ⊓ P.M.U i), (s i : B.X.functionField) = fnOf _ h (GlobalTheory.LB.coord P.t i)

def Extends {B : Vert.Model O} (μ : Match Y b B) (Q : TrueGeo.Model Y) (g : B.X ⟶ Q.X) : Prop :=
  μ.U.ι ≫ g = μ.h ≫ Q.j ∧ g ≫ Q.p = B.str ≫ spMap b

end Local

def Count {F F' : Type} [Field F] [NumberField F] [Field F'] {O : ValuationSubring F'} [IsDiscreteValuationRing O]
    {Y : Var F} {b : 𝓞 F →+* O} {J : Type} {B : J → Vert.Model O} (μ : ∀ j, Match Y b (B j)) (ε : F →+* F')
    (σ : F' →+* ℂ) (n : ℕ) : Prop :=
  ∀ ι : Y.Fn →+* ℂ, ι.comp (algebraMap F Y.Fn) = σ.comp ε →
    Nat.card {q : Σ j, ((B j).X.functionField →+* ℂ) //
      q.2.comp (μ q.1).φ = ι ∧ q.2.comp (cst (B q.1)) = σ.comp O.subtype} = n

section Moduli

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}

def Transp {l : Level H} {Xo : Moduli Dw l} {c : Coeff l} {O₁ O₂ : Type} [CommRing O₁] [CommRing O₂] {β₁ : O₁ →+* c.F}
    {β₂ : O₂ →+* c.F} (Z₁ : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Model Xo c β₁) (Z₂ : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Model Xo c β₂)
    {R : Type} [CommRing R] (y : Sp R ⟶ Xo.XF c) (v₁ : Sp (DualNumber R) ⟶ Z₁.t.G.left)
    (v₂ : Sp (DualNumber R) ⟶ Z₂.t.G.left) : Prop :=
  ∃ (w₁ : Sp (DualNumber R) ⟶ Z₁.oF.t.G.left) (w₂ : Sp (DualNumber R) ⟶ Z₂.oF.t.G.left),
    w₁ ≫ Z₁.oF.t.G.hom = spMap (algebraMap R (DualNumber R)) ≫ y ∧
    w₂ ≫ Z₂.oF.t.G.hom = spMap (algebraMap R (DualNumber R)) ≫ y ∧
    w₁ ≫ Z₁.m0.toSABMap.φ = w₂ ≫ Z₂.m0.toSABMap.φ ∧ w₁ ≫ Z₁.m.φ = v₁ ∧ w₂ ≫ Z₂.m.φ = v₂

variable {Xo : ∀ l : Level H, Moduli Dw l} {p : ℕ} {W : ValuationSubring ℂ} {Y : LocalSystem Xo p W} {i₀ : Idx H p}

def Link (Z : LocM.Mdl Y i₀) [IsDiscreteValuationRing (Z.i.c.V W)] (C : (nmodel Z).Comp) {O : Type} [CommRing O]
    {β : O →+* i₀.c.F} {T : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Model (Xo i₀.l) i₀.c β} {F : Type} [Field F] [NumberField F]
    {e : F ≃+* i₀.c.F} (Φ : FlagCpt T e) {b : 𝓞 F →+* Z.i.c.V W} (μ : Match Φ.Y b ((nmodel Z).comp C)) : Prop :=
  ∃ (a : Fin Z.m) (τ : (Y Z.i).X ⟶ (Y i₀).X) (mu : SABMap (Y Z.i).t (Y i₀).t τ)
    (y : μ.U.toScheme ⟶ (Xo i₀.l).XF i₀.c) (ψ : Γ(Z.X, (Z.U a).1) →+* ((nmodel Z).comp C).X.functionField)
    (f : i₀.c.F →+* ((nmodel Z).comp C).X.functionField)
    (g : EigFrame T f ((μ.U.fromSpecStalkOfMem _ μ.mem ≫ μ.h) ≫ Φ.π ≫ genι T)),
    μ.U ≤ (nmodel Z).compι C ⁻¹ᵁ (Z.U a).1 ∧ IsTrans i₀ Z.i τ mu ∧
    y ≫ (Y i₀).j = μ.U.ι ≫ (nmodel Z).compι C ≫ Z.π ≫ τ ∧ y ≫ T.jQ = μ.h ≫ Φ.π ∧
    spMap ψ ≫ Z.chart a = ((nmodel Z).comp C).X.fromSpecStalk (genericPoint _) ≫ (nmodel Z).compι C ∧
    (∀ σ i, Transp T (Y i₀) (μ.U.fromSpecStalkOfMem _ μ.mem ≫ y) (g.v σ i) ((Z.fr a).bc ψ σ i ≫ mu.φ)) ∧
    Φ.Carries (μ.U.fromSpecStalkOfMem _ μ.mem ≫ μ.h) g

end Moduli

end GlobalTheory.VertCmp

end
