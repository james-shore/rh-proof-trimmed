module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenScaledInt
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentApproximation.AddDense
public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
public import Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff
public import Mathlib.Basic.Complex.Basic
public import GroundTheory.AutomorphicForms.StrongApproximationSLDense
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardAdelicCharacterNontrivialAtPlaces
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsNeZeroAdeleCharEqCompMulTotallyReal
public import Mathlib.Algebra.Module.ZLattice.Basic
public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.Distribution.SchwartzSpace.Basic
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsSmoothPeriodicPartitionOfUnity
public import GroundTheory.GlobalFields.TateThesis.LatticePoisson
public import Mathlib.Algebra.Module.ZLattice.Summable
public import Mathlib.Analysis.InnerProductSpace.EuclideanDist
public import Mathlib.Analysis.Calculus.ContDiff.Bounds
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormIteratedFDerivRemCompLe
public import Mathlib.Analysis.Calculus.UniformLimitsDeriv
public import Mathlib.Analysis.Calculus.ContDiff.Operations
public import Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNatMulIntegralOfIsCompact
public import Mathlib.Analysis.Calculus.BumpFunction.Basic
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EigenIntertwinerGoodModels
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledCosetIndicatorSchwartz
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaTransformRationalTranslateQuasiInvariant
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.Foundations.NormEulerPolySubOneLe
import Mathlib.LinearAlgebra.FreeModule.IdealQuotient
import Mathlib.RingTheory.Henselian
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.RingTheory.TotallySplit
import Mathlib.Tactic.ReduceModChar
import Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension
import Mathlib.Geometry.Manifold.Algebra.Monoid
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Analysis.Distribution.SchwartzSpace.Fourier
import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Tactic.TypeStar
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Tactic.Polynomial.Basic
import GroundTheory.GlobalFields.TateThesis.AdelicChar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteAdeleApproxScaled, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledIndicatorCosetSum, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledLatticeCharacterTrivial, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledLatticeFourierInvariant, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSchwartzPartitionOfUnityLattice, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeDualFourierExpansionSchwartz, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeShiftedCutoffSummable, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeTranslatesCutoffSummable, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModulatedSchwartzSeminormPolynomial, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SummableSchwartzSeries, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeInvariantDistributionCharacters, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodicTemperedDistPoisson, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledLatticeTranslationInvariant, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSumIndicatorNonzero, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFunctionalArchimedeanFactor

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteAdeleApproxScaled =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteAdeleApproxScaled", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenScaledInt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentApproximation.AddDense\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff\nimport Development.AbelianVarietyTheory.Definitions.Foundations.NormEulerPolySubOneLe\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open scoped Matrix TensorProduct Classical

namespace GlobalTheory.EvAdm

theorem exists_rational_rep_scaledInt : ∀ (F : Type) [Field F] [NumberField F] (κ : Type) [Fintype κ] (a : F), a ≠ 0 →
    ∀ r : κ → FiniteAdeleRing (𝓞 F) F, ∃ ξ : κ → F,
      r - (fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i)) ∈ GlobalTheory.EvAdm.scaledInt F κ a := by
  intro F _ _ κ _ a _ r
  have hd : DenseRange (Pi.map fun (_ : κ) => algebraMap F (FiniteAdeleRing (𝓞 F) F)) :=
    DenseRange.piMap fun _ => PI.UnipApproxD.IntegersDenseFiniteAdeles.denseRange (R := 𝓞 F) (K := F)
  have hop : IsOpen {y : κ → FiniteAdeleRing (𝓞 F) F | r - y ∈ GlobalTheory.EvAdm.scaledInt F κ a} :=
    (GlobalTheory.EvAdm.isOpen_scaledInt a).preimage (continuous_const.sub continuous_id)
  have hr : r ∈ {y : κ → FiniteAdeleRing (𝓞 F) F | r - y ∈ GlobalTheory.EvAdm.scaledInt F κ a} := by
    show r - r ∈ GlobalTheory.EvAdm.scaledInt F κ a
    rw [sub_self]
    exact zero_mem _
  obtain ⟨ξ, hξ⟩ := hd.exists_mem_open hop ⟨r, hr⟩
  exact ⟨ξ, hξ⟩

end GlobalTheory.EvAdm
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteAdeleApproxScaled =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledIndicatorCosetSum =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledIndicatorCosetSum", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenScaledInt\npublic import Mathlib.Basic.Complex.Basic\npublic import GroundTheory.AutomorphicForms.StrongApproximationSLDense\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.FreeModule.IdealQuotient\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff\nimport Development.AbelianVarietyTheory.Definitions.Foundations.NormEulerPolySubOneLe\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open scoped Matrix TensorProduct Classical

noncomputable section

namespace GlobalTheory.EvAdm.CosetSum

variable {F : Type} [Field F] [NumberField F]

theorem finAdele_algebraMap_apply (x : F) (v : HeightOneSpectrum (𝓞 F)) :
    (algebraMap F (FiniteAdeleRing (𝓞 F) F) x) v = algebraMap F (v.adicCompletion F) x := rfl

theorem algebraMap_mem_iff (v : HeightOneSpectrum (𝓞 F)) (x : F) :
    algebraMap F (v.adicCompletion F) x ∈ v.adicCompletionIntegers F ↔ v.valuation F x ≤ 1 := by
  rw [HeightOneSpectrum.mem_adicCompletionIntegers]
  exact iff_of_eq (congrArg (· ≤ 1) (HeightOneSpectrum.valuedAdicCompletion_eq_valuation' v x))

theorem int_mem (v : HeightOneSpectrum (𝓞 F)) (x : 𝓞 F) :
    algebraMap F (v.adicCompletion F) (x : F) ∈ v.adicCompletionIntegers F := by
  rw [algebraMap_mem_iff]
  exact v.valuation_le_one x

variable {κ : Type}

theorem mul_int_mem {b : F} (hb : b ≠ 0) (x : κ → 𝓞 F) :
    (fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (b * (x i : F))) ∈ scaledInt F κ b := by
  rw [mem_scaledInt]
  intro i v
  rw [finAdele_algebraMap_apply, map_mul, ← mul_assoc,
    inv_mul_cancel₀ ((map_ne_zero (algebraMap F (v.adicCompletion F))).2 hb), one_mul]
  exact int_mem v (x i)

theorem scaledInt_mul_le {a : F} (ha : a ≠ 0) {m : 𝓞 F} (hm : m ≠ 0) :
    scaledInt F κ (a * m) ≤ scaledInt F κ a := by
  intro z hz
  rw [mem_scaledInt] at hz ⊢
  intro i v
  have hm' : algebraMap F (v.adicCompletion F) (m : F) ≠ 0 :=
    (map_ne_zero _).2 (by exact_mod_cast hm)
  have e : (algebraMap F (v.adicCompletion F) a)⁻¹ * (z i) v =
      algebraMap F (v.adicCompletion F) (m : F) *
        ((algebraMap F (v.adicCompletion F) (a * m))⁻¹ * (z i) v) := by
    set A := algebraMap F (v.adicCompletion F) a
    set M := algebraMap F (v.adicCompletion F) (m : F)
    rw [map_mul, mul_inv, ← mul_assoc, ← mul_assoc, mul_comm M A⁻¹, mul_assoc A⁻¹ M M⁻¹,
      mul_inv_cancel₀ hm', mul_one]
  rw [e]
  exact mul_mem (int_mem v m) (hz i v)

theorem rat_mem {b : F} (hb : b ≠ 0) (ξ : κ → F)
    (h : (fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i)) ∈ scaledInt F κ b) (i : κ) :
    ∃ x : 𝓞 F, (x : F) = ξ i / b := by
  rw [mem_scaledInt] at h
  have hv : ∀ v : HeightOneSpectrum (𝓞 F), v.valuation F (ξ i / b) ≤ 1 := fun v => by
    rw [← algebraMap_mem_iff, div_eq_inv_mul, map_mul, map_inv₀]
    exact h i v
  obtain ⟨x, hx⟩ := HeightOneSpectrum.mem_integers_of_valuation_le_one F (ξ i / b) hv
  exact ⟨x, hx⟩

theorem indicator_scaledInt_eq_sum : ∀ (F : Type) [Field F] [NumberField F] (κ : Type) [Fintype κ] (a : F), a ≠ 0 →
    ∀ m : 𝓞 F, m ≠ 0 →
    ∃ R : Finset (κ → F), (GlobalTheory.EvAdm.scaledInt F κ a : Set (κ → FiniteAdeleRing (𝓞 F) F)).indicator (fun _ => (1 : ℂ)) =
      ∑ ξ ∈ R, {y | y - (fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i)) ∈ GlobalTheory.EvAdm.scaledInt F κ (a * m)}.indicator
        (fun _ => (1 : ℂ)) := by
  intro F _ _ κ _ a ha m hm
  set I : Ideal (𝓞 F) := Ideal.span {m} with hIdef
  have hI : I ≠ ⊥ := by
    rw [hIdef, Ne, Ideal.span_singleton_eq_bot]; exact hm
  haveI : Finite (𝓞 F ⧸ I) := Ideal.finiteQuotientOfFreeOfNeBot I hI
  haveI : Fintype (κ → 𝓞 F ⧸ I) := Fintype.ofFinite _
  let out : 𝓞 F ⧸ I → 𝓞 F := fun q => (Ideal.Quotient.mk_surjective q).choose
  have hout : ∀ q, Ideal.Quotient.mk I (out q) = q := fun q => (Ideal.Quotient.mk_surjective q).choose_spec
  let rep : (κ → 𝓞 F ⧸ I) → (κ → F) := fun c i => a * ((out (c i) : 𝓞 F) : F)
  let ι : (κ → F) → (κ → FiniteAdeleRing (𝓞 F) F) := fun ξ i => algebraMap F _ (ξ i)
  have hrep_inj : Function.Injective rep := by
    intro c c' h
    funext i
    have h1 := congrFun h i
    simp only [rep, mul_right_inj' ha] at h1
    have h2 : out (c i) = out (c' i) := by exact_mod_cast h1
    rw [← hout (c i), ← hout (c' i), h2]
  have hrepS : ∀ c, ι (rep c) ∈ scaledInt F κ a := fun c => mul_int_mem ha (fun i => out (c i))
  have hsub := scaledInt_mul_le (κ := κ) ha hm
  have hm0 : (m : F) ≠ 0 := by exact_mod_cast hm
  have ham : a * (m : F) ≠ 0 := mul_ne_zero ha hm0
  have huniq : ∀ c c' (y : κ → FiniteAdeleRing (𝓞 F) F), y - ι (rep c) ∈ scaledInt F κ (a * m) →
      y - ι (rep c') ∈ scaledInt F κ (a * m) → c = c' := by
    intro c c' y h h'
    have hd : ι (fun i => rep c' i - rep c i) ∈ scaledInt F κ (a * m) := by
      have := sub_mem h h'
      convert this using 1
      funext i
      simp only [ι, Pi.sub_apply, map_sub]
      abel
    funext i
    obtain ⟨z, hz⟩ := rat_mem ham _ hd i
    have h3 : ((out (c' i) - out (c i) : 𝓞 F) : F) = ((z * m : 𝓞 F) : F) := by
      have hz' : (z : F) * (a * m) = rep c' i - rep c i := by rw [hz, div_mul_cancel₀ _ ham]
      simp only [rep] at hz'
      push_cast
      apply mul_left_cancel₀ ha
      linear_combination (-1 : F) * hz'
    have h4 : out (c' i) - out (c i) ∈ I := by
      rw [hIdef, Ideal.mem_span_singleton']
      exact ⟨z, by exact_mod_cast h3.symm⟩
    have h5 := (Ideal.Quotient.eq).2 h4
    rw [hout, hout] at h5
    exact h5.symm
  have hexist : ∀ y ∈ scaledInt F κ a, ∃ c, y - ι (rep c) ∈ scaledInt F κ (a * m) := by
    intro y hy
    have hd : DenseRange ι :=
      DenseRange.piMap (fun _ => GroundTheory.Automorphic.AdelicGLn.denseRange_algebraMap_finiteAdeleRing F)
    have hopen : IsOpen {z | y - z ∈ (scaledInt F κ (a * m) : Set (κ → FiniteAdeleRing (𝓞 F) F))} :=
      (isOpen_scaledInt (a * m)).preimage (continuous_const.sub continuous_id)
    obtain ⟨ξ, hξ⟩ := hd.exists_mem_open hopen ⟨y, by simp [zero_mem]⟩
    have hξ' : y - ι ξ ∈ scaledInt F κ (a * m) := hξ
    have hξa : ι ξ ∈ scaledInt F κ a := by
      have := sub_mem hy (hsub hξ')
      simpa using this
    choose x hx using fun i => rat_mem ha ξ hξa i
    have ht : ∀ i, ∃ t : 𝓞 F, t * m = out (Ideal.Quotient.mk I (x i)) - x i := fun i => by
      have := (Ideal.Quotient.eq).1 (hout (Ideal.Quotient.mk I (x i)))
      exact Ideal.mem_span_singleton'.1 this
    choose t htm using ht
    refine ⟨fun i => Ideal.Quotient.mk I (x i), ?_⟩
    have hF : ∀ i, rep (fun i => Ideal.Quotient.mk I (x i)) i = ξ i + a * m * (t i : F) := fun i => by
      have e1 : ((t i * m : 𝓞 F) : F) = ((out (Ideal.Quotient.mk I (x i)) - x i : 𝓞 F) : F) := by rw [htm i]
      push_cast at e1
      have e2 : ξ i = a * (x i : F) := by rw [hx i]; field_simp
      simp only [rep]
      rw [e2]
      linear_combination (-a) * e1
    have hw : ι (fun i => a * m * (t i : F)) ∈ scaledInt F κ (a * m) := mul_int_mem ham t
    have e : y - ι (rep (fun i => Ideal.Quotient.mk I (x i))) = (y - ι ξ) - ι (fun i => a * m * (t i : F)) := by
      funext i
      simp only [ι, Pi.sub_apply]
      rw [hF i, map_add (f := _)]
      abel
    rw [e]
    exact sub_mem hξ' hw
  refine ⟨Finset.univ.image rep, ?_⟩
  rw [Finset.sum_image (fun c _ c' _ h => hrep_inj h)]
  funext y
  rw [Finset.sum_apply]
  by_cases hy : y ∈ scaledInt F κ a
  · obtain ⟨c0, hc0⟩ := hexist y hy
    rw [Set.indicator_of_mem (by exact hy), Finset.sum_eq_single c0]
    · rw [Set.indicator_of_mem (by exact hc0)]
    · intro c _ hc
      rw [Set.indicator_of_notMem]
      intro h
      exact hc (huniq c c0 y h hc0)
    · intro h
      exact absurd (Finset.mem_univ c0) h
  · rw [Set.indicator_of_notMem (by exact hy)]
    symm
    apply Finset.sum_eq_zero
    intro c _
    rw [Set.indicator_of_notMem]
    intro h
    apply hy
    rw [show y = (y - ι (rep c)) + ι (rep c) from (sub_add_cancel _ _).symm]
    exact add_mem (hsub h) (hrepS c)

end GlobalTheory.EvAdm.CosetSum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledIndicatorCosetSum =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledLatticeCharacterTrivial =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledLatticeCharacterTrivial", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenScaledInt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardAdelicCharacterNontrivialAtPlaces\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsNeZeroAdeleCharEqCompMulTotallyReal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open scoped Matrix TensorProduct Classical

namespace GlobalTheory.TraceDualChar

theorem psi_trivial_on_scaledInt : ∀ (F : Type) [Field F] [NumberField F] (ψ : AddChar (AF F) ℂ), IsStd ψ → ∀ (κ : Type) [Fintype κ] (a : F), a ≠ 0 →
    ∀ b : κ → F, (∀ ξ : κ → F, (fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i)) ∈ GlobalTheory.EvAdm.scaledInt F κ a →
        ∃ k : ℤ, Algebra.trace ℚ F (∑ i, ξ i * b i) = k) →
    ∀ z ∈ GlobalTheory.EvAdm.scaledInt F κ a,
      ψ (((0 : InfiniteAdeleRing F), ∑ i, z i * algebraMap F (FiniteAdeleRing (𝓞 F) F) (b i)) : AF F) = 1 := by
  intro F _ _ ψ hψ κ _ a _ b hb z hz

  have hrat : ∀ ξ : κ → F, (fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i)) ∈ GlobalTheory.EvAdm.scaledInt F κ a →
      ψ (((0 : InfiniteAdeleRing F), ∑ i, algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i) *
        algebraMap F (FiniteAdeleRing (𝓞 F) F) (b i)) : AF F) = 1 := by
    intro ξ hξ
    obtain ⟨k, hk⟩ := hb ξ hξ
    set q : F := ∑ i, ξ i * b i with hq
    have e1 : (∑ i, algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i) * algebraMap F (FiniteAdeleRing (𝓞 F) F) (b i)) =
        algebraMap F (FiniteAdeleRing (𝓞 F) F) q := by
      set_option synthInstance.maxHeartbeats 100000 in
        rw [hq, map_sum]; simp only [map_mul]
    rw [e1]
    set y : AF F := (((algebraMap F (InfiniteAdeleRing F) q), (0 : FiniteAdeleRing (𝓞 F) F)) : AF F) with hy
    have e2 : (show AF F from ((0 : InfiniteAdeleRing F), algebraMap F (FiniteAdeleRing (𝓞 F) F) q)) + y =
        algebraMap F (AF F) q := by
      rw [hy]
      show (show AF F from ((0 : InfiniteAdeleRing F) + algebraMap F (InfiniteAdeleRing F) q,
        algebraMap F (FiniteAdeleRing (𝓞 F) F) q + 0)) = algebraMap F (AF F) q
      rw [zero_add, add_zero]
      rfl
    have hAt : At (evI F) y := by
      intro u hu
      have hu1 : u.1 = 0 := by
        have : InfiniteAdeleRing.ringEquiv_mixedSpace F u.1 = 0 := hu
        exact (map_eq_zero_iff _ (InfiniteAdeleRing.ringEquiv_mixedSpace F).injective).1 this
      show (u.1 * algebraMap F (InfiniteAdeleRing F) q, u.2 * 0) = ((0 : InfiniteAdeleRing F), (0 : FiniteAdeleRing (𝓞 F) F))
      rw [hu1, zero_mul, mul_zero]
    have hev : evI F y = mixedEmbedding F q := by
      rw [InfiniteAdeleRing.mixedEmbedding_eq_algebraMap_comp]
      rfl
    have hyv : ψ y = 1 := by
      rw [hψ.2.2 y hAt, hev, GlobalTheory.PsiNontriv.trace_mixedEmbedding, hk]
      rw [show ((((k : ℚ) : ℝ) : ℂ)) = (k : ℂ) by push_cast; ring]
      rw [show -(2 * (Real.pi : ℂ) * Complex.I) * (k : ℂ) = ((-k : ℤ) : ℂ) * (2 * Real.pi * Complex.I) by push_cast; ring]
      exact Complex.exp_int_mul_two_pi_mul_I (-k)
    have h3 := congrArg ψ e2
    rw [AddChar.map_add_eq_mul, hyv, mul_one, hψ.2.1] at h3
    exact h3

  by_contra hne
  set G : (κ → FiniteAdeleRing (𝓞 F) F) → ℂ := fun z =>
    ψ (((0 : InfiniteAdeleRing F), ∑ i, z i * algebraMap F (FiniteAdeleRing (𝓞 F) F) (b i)) : AF F) with hG
  have hGc : Continuous G := by
    refine hψ.1.comp ?_
    refine Continuous.prodMk continuous_const ?_
    exact continuous_finsetSum _ fun i _ => (continuous_apply i).mul continuous_const
  have hU : IsOpen ((GlobalTheory.EvAdm.scaledInt F κ a : Set (κ → FiniteAdeleRing (𝓞 F) F)) ∩ G ⁻¹' {1}ᶜ) :=
    (GlobalTheory.EvAdm.isOpen_scaledInt a).inter (isOpen_compl_singleton.preimage hGc)
  have hd : DenseRange (fun ξ : κ → F => fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i)) :=
    DenseRange.piMap fun _ => GlobalTheory.AdeleCharTwist.denseRange_fin
  obtain ⟨ξ, hξ1, hξ2⟩ := hd.exists_mem_open hU ⟨z, hz, hne⟩
  exact hξ2 (hrat ξ hξ1)

end GlobalTheory.TraceDualChar
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledLatticeCharacterTrivial =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledLatticeFourierInvariant =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledLatticeFourierInvariant", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenScaledInt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledLatticeCharacterTrivial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open scoped Matrix TensorProduct Classical
namespace GlobalTheory.SchrCharPure

theorem main : ∀ (F : Type) [Field F] [NumberField F] (ψ : AddChar (AF F) ℂ), IsStd ψ → ∀ (κ : Type) [Fintype κ] (a : F), a ≠ 0 →
    ∀ b : κ → F, (∀ ξ : κ → F, (fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i)) ∈ GlobalTheory.EvAdm.scaledInt F κ a →
        ∃ k : ℤ, Algebra.trace ℚ F (∑ i, ξ i * b i) = k) →
    ∀ f f' : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ,
      (∀ x, f' x = Complex.exp (-(2 * Real.pi * Complex.I) *
          ((Algebra.trace ℝ (mixedEmbedding.mixedSpace F) (∑ i, x i * mixedEmbedding F (b i)) : ℝ) : ℂ)) * f x) →
      schr ψ (0, fun i => algebraMap F (AF F) (b i))
          (pureA F f ((GlobalTheory.EvAdm.scaledInt F κ a : Set (κ → FiniteAdeleRing (𝓞 F) F)).indicator (fun _ => (1 : ℂ)))) =
        pureA F f' ((GlobalTheory.EvAdm.scaledInt F κ a : Set (κ → FiniteAdeleRing (𝓞 F) F)).indicator (fun _ => (1 : ℂ))) := by
  intro F _ _ ψ hψ κ _ a ha b hb f f' hf'
  funext x
  simp only [schr, pureA, add_zero, zero_dotProduct, mul_zero]
  rw [hf']
  by_cases hz : (fun i => (x i).2) ∈ GlobalTheory.EvAdm.scaledInt F κ a
  · rw [Set.indicator_of_mem (s := (GlobalTheory.EvAdm.scaledInt F κ a : Set (κ → FiniteAdeleRing (𝓞 F) F))) hz]
    set u : AF F := x ⬝ᵥ fun i => algebraMap F (AF F) (b i) with hu
    have hsplit : u = (show AF F from (u.1, 0)) + (show AF F from (0, u.2)) := by
      show u = ((u.1 + 0, 0 + u.2) : InfiniteAdeleRing F × FiniteAdeleRing (𝓞 F) F)
      rw [add_zero, zero_add]
      rfl
    have hu2 : u.2 = ∑ i, (x i).2 * algebraMap F (FiniteAdeleRing (𝓞 F) F) (b i) := by
      have e : u.2 = (RingHom.snd (InfiniteAdeleRing F) (FiniteAdeleRing (𝓞 F) F)) u := rfl
      rw [e, hu, dotProduct]
      exact (map_sum (RingHom.snd (InfiniteAdeleRing F) (FiniteAdeleRing (𝓞 F) F))
        (fun i => x i * algebraMap F (AF F) (b i)) Finset.univ).trans
        (Finset.sum_congr rfl fun i _ => rfl)
    have hu1 : u.1 = ∑ i, (x i).1 * algebraMap F (InfiniteAdeleRing F) (b i) := by
      have e : u.1 = (RingHom.fst (InfiniteAdeleRing F) (FiniteAdeleRing (𝓞 F) F)) u := rfl
      rw [e, hu, dotProduct]
      exact (map_sum (RingHom.fst (InfiniteAdeleRing F) (FiniteAdeleRing (𝓞 F) F))
        (fun i => x i * algebraMap F (AF F) (b i)) Finset.univ).trans
        (Finset.sum_congr rfl fun i _ => rfl)
    have hfin : ψ (show AF F from (0, u.2)) = 1 := by
      have := _root_.GlobalTheory.TraceDualChar.psi_trivial_on_scaledInt F ψ hψ κ a ha b hb _ hz
      rw [← hu2] at this
      exact this
    have hAt : At (evI F) (show AF F from (u.1, 0)) := by
      intro w hw
      have h1 : w.1 = 0 := by
        have : InfiniteAdeleRing.ringEquiv_mixedSpace F w.1 = 0 := hw
        exact (map_eq_zero_iff _ (InfiniteAdeleRing.ringEquiv_mixedSpace F).injective).mp this
      show ((w.1 * u.1, w.2 * 0) : InfiniteAdeleRing F × FiniteAdeleRing (𝓞 F) F) = (0, 0)
      rw [h1, zero_mul, mul_zero]
    have hinf := hψ.2.2 _ hAt
    have hev : evI F (show AF F from (u.1, 0)) = ∑ i, InfiniteAdeleRing.ringEquiv_mixedSpace F (x i).1 * mixedEmbedding F (b i) := by
      show InfiniteAdeleRing.ringEquiv_mixedSpace F u.1 = _

      rw [hu1, map_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [InfiniteAdeleRing.mixedEmbedding_eq_algebraMap_comp, map_mul]
    rw [hsplit, AddChar.map_add_eq_mul, hfin, hinf, hev]
    ring
  · rw [Set.indicator_of_notMem (s := (GlobalTheory.EvAdm.scaledInt F κ a : Set (κ → FiniteAdeleRing (𝓞 F) F))) hz]
    simp

end GlobalTheory.SchrCharPure
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledLatticeFourierInvariant =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSchwartzPartitionOfUnityLattice =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSchwartzPartitionOfUnityLattice", "h": "module\n\npublic import Mathlib.Algebra.Module.ZLattice.Basic\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsSmoothPeriodicPartitionOfUnity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.Geometry.Manifold.Algebra.Monoid\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped ContDiff Topology

namespace GlobalTheory.LatticeSumOne

variable {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V] [FiniteDimensional ℝ V]

theorem exists_radius (Λ : Submodule ℤ V) [DiscreteTopology Λ] [IsZLattice ℝ Λ] :
    ∃ R : ℝ, ∀ x : V, ∃ l : Λ, ‖x + l‖ ≤ R := by
  obtain ⟨t, ht⟩ := GlobalTheory.PeriodicPartition.exists_finite_subcover Λ
    (fun k : V => {z : V | ∃ l : Λ, z + l ∈ Metric.ball k 1})
    (fun k => by
      have : {z : V | ∃ l : Λ, z + l ∈ Metric.ball k 1} =
          ⋃ l : Λ, (fun z : V => z + l) ⁻¹' Metric.ball k 1 := by
        ext z; simp
      rw [this]
      exact isOpen_iUnion fun l => Metric.isOpen_ball.preimage (by fun_prop))
    (fun k l z hz => by
      obtain ⟨m, hm⟩ := hz
      refine ⟨m - l, ?_⟩
      simpa [add_sub_cancel, add_assoc, sub_eq_add_neg] using hm)
    (fun z => ⟨z, 0, by simp⟩)
  refine ⟨1 + ∑ k ∈ t, ‖k‖, fun x => ?_⟩
  obtain ⟨k, hk, l, hl⟩ := ht x
  refine ⟨l, ?_⟩
  rw [Metric.mem_ball, dist_eq_norm] at hl
  have h1 : ‖k‖ ≤ ∑ k ∈ t, ‖k‖ := Finset.single_le_sum (f := fun k => ‖k‖) (fun _ _ => norm_nonneg _) hk
  calc ‖x + l‖ = ‖(x + l - k) + k‖ := by abel_nf
    _ ≤ ‖x + l - k‖ + ‖k‖ := norm_add_le _ _
    _ ≤ 1 + ∑ k ∈ t, ‖k‖ := by linarith

theorem exists_schwartz_lattice_sum_one (Λ : Submodule ℤ V) [DiscreteTopology Λ] [IsZLattice ℝ Λ] :
    ∃ h : SchwartzMap V ℂ, HasCompactSupport h ∧ ∀ x : V, HasSum (fun l : Λ => h (x + l)) 1 := by
  obtain ⟨R, hR⟩ := exists_radius Λ
  set R' : ℝ := max R 1 with hR'
  let φ : ContDiffBump (0 : V) := ⟨R', R' + 1, lt_of_lt_of_le one_pos (le_max_right _ _), by linarith⟩
  have hφc : HasCompactSupport (φ : V → ℝ) := φ.hasCompactSupport
  have hφs : ContDiff ℝ ∞ (φ : V → ℝ) := φ.contDiff
  have hφ0 : ∀ z, 0 ≤ φ z := fun z => φ.nonneg
  have hlf := GlobalTheory.PeriodicPartition.locallyFinite_support_translate Λ (φ : V → ℝ) hφc
  set S : V → ℝ := fun z => ∑ᶠ l : Λ, φ (z + l) with hSdef
  have hSs : ContDiff ℝ ∞ S := by
    rw [← contMDiff_iff_contDiff]
    refine contMDiff_finsum (f := fun (l : Λ) (z : V) => φ (z + l)) (fun l => ?_) hlf
    rw [contMDiff_iff_contDiff]
    exact hφs.comp (contDiff_id.add contDiff_const)
  have hSper : ∀ (l : Λ) z, S (z + l) = S z := by
    intro l z
    show ∑ᶠ m : Λ, φ (z + l + m) = ∑ᶠ m : Λ, φ (z + m)
    rw [← finsum_comp_equiv (Equiv.addLeft l) (f := fun m : Λ => φ (z + m))]
    simp [add_assoc]
  have hSpos : ∀ z, 0 < S z := by
    intro z
    obtain ⟨l, hl⟩ := hR z
    have h1 := single_le_finsum (f := fun m : Λ => φ (z + m)) l (hlf.point_finite z)
      (fun m => hφ0 _)
    have h2 : φ (z + l) = 1 := φ.one_of_mem_closedBall (by
      rw [Metric.mem_closedBall, dist_zero_right]; exact hl.trans (le_max_left _ _))
    have : 1 ≤ S z := by rw [← h2]; exact h1
    linarith
  set g : V → ℂ := fun z => ((φ z * (S z)⁻¹ : ℝ) : ℂ) with hgdef
  have hgc : HasCompactSupport g := by
    have : HasCompactSupport (fun z => φ z * (S z)⁻¹) := hφc.mul_right
    exact this.comp_left (g := Complex.ofReal) (by simp)
  have hgs : ContDiff ℝ ∞ g :=
    Complex.ofRealCLM.contDiff.comp (hφs.mul (hSs.inv fun z => (hSpos z).ne'))
  refine ⟨hgc.toSchwartzMap hgs, hgc, fun x => ?_⟩
  have hfin := hlf.point_finite x
  have hval : ∀ l : Λ, (hgc.toSchwartzMap hgs) (x + l) = ((φ (x + l) : ℝ) : ℂ) * ((S x)⁻¹ : ℝ) := by
    intro l
    show g (x + l) = _
    simp only [hgdef, hSper, Complex.ofReal_mul]
  simp_rw [hval]
  have hsum : HasSum (fun l : Λ => ((φ (x + l) : ℝ) : ℂ) * (((S x)⁻¹ : ℝ) : ℂ))
      (∑ l ∈ hfin.toFinset, ((φ (x + l) : ℝ) : ℂ) * (((S x)⁻¹ : ℝ) : ℂ)) :=
    hasSum_sum_of_ne_finset_zero fun l hl => by
      have : φ (x + l) = 0 := by
        by_contra hne
        exact hl (hfin.mem_toFinset.2 hne)
      simp [this]
  convert hsum using 1
  have hS : S x = ∑ l ∈ hfin.toFinset, φ (x + l) :=
    finsum_eq_sum_of_support_subset (fun l : Λ => φ (x + l)) (fun l hl => hfin.mem_toFinset.2 hl)
  rw [← Finset.sum_mul, ← Complex.ofReal_sum, ← hS, ← Complex.ofReal_mul,
    mul_inv_cancel₀ (hSpos x).ne', Complex.ofReal_one]

end GlobalTheory.LatticeSumOne

namespace GlobalTheory

theorem exists_schwartz_hasCompactSupport_latticeTranslates_sum_one :
    ∀ {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V] [FiniteDimensional ℝ V]
    (Λ : Submodule ℤ V) [DiscreteTopology Λ] [IsZLattice ℝ Λ],
    ∃ h : SchwartzMap V ℂ, HasCompactSupport h ∧ ∀ x : V, HasSum (fun l : Λ => h (x + l)) 1 := by
  intro V _ _ _ Λ _ _
  exact LatticeSumOne.exists_schwartz_lattice_sum_one Λ

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSchwartzPartitionOfUnityLattice =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeDualFourierExpansionSchwartz =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeDualFourierExpansionSchwartz", "h": "module\n\npublic import Mathlib.Algebra.Module.ZLattice.Basic\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\npublic import GroundTheory.GlobalFields.TateThesis.LatticePoisson\nimport Mathlib.Algebra.Module.ZLattice.Summable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Distribution.SchwartzSpace.Fourier\npublic import Mathlib.Analysis.InnerProductSpace.EuclideanDist\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Module
open scoped RealInnerProductSpace FourierTransform SchwartzMap

namespace GlobalTheory

theorem schwartz_summable_norm_mul_one_add_pow {V : Type*} [NormedAddCommGroup V]
    [NormedSpace ℝ V] [FiniteDimensional ℝ V] (Λ : Submodule ℤ V) [DiscreteTopology Λ]
    (h : 𝓢(V, ℂ)) (N : ℕ) : Summable fun l : Λ => ‖h l‖ * (1 + ‖(l : V)‖) ^ N := by
  set k := finrank ℤ Λ + 1
  obtain ⟨C, hC, hg⟩ := GroundTheory.Global.exists_norm_le_inv_one_add_pow h (k + N)
  have hs : Summable fun l : Λ => C * ((1 + ‖l‖) ^ k)⁻¹ := by
    apply Summable.mul_left
    have hs := ZLattice.summable_norm_pow_inv (L := Λ) k (by omega)
    refine Summable.of_norm_bounded_eventually hs ?_
    filter_upwards [(Set.finite_singleton (0 : Λ)).compl_mem_cofinite] with l hl
    have hpos : 0 < ‖l‖ := norm_pos_iff.mpr hl
    rw [Real.norm_of_nonneg (by positivity), inv_pow]
    gcongr
    linarith
  refine hs.of_nonneg_of_le (fun _ => by positivity) fun l => ?_
  have hp : 0 < 1 + ‖(l : V)‖ := by positivity
  calc ‖h l‖ * (1 + ‖(l : V)‖) ^ N
      ≤ C * ((1 + ‖(l : V)‖) ^ (k + N))⁻¹ * (1 + ‖(l : V)‖) ^ N := by
        gcongr
        exact hg _
    _ = C * ((1 + ‖(l : V)‖) ^ k)⁻¹ := by
        rw [pow_add]
        field_simp
    _ = C * ((1 + ‖l‖) ^ k)⁻¹ := rfl

theorem periodisation_hasSum_fourier_bilinForm {V : Type} [NormedAddCommGroup V]
    [NormedSpace ℝ V] [FiniteDimensional ℝ V]
    (P : LinearMap.BilinForm ℝ V) (hP : P.Nondegenerate)
    (Λ : Submodule ℤ V) [DiscreteTopology Λ] [IsZLattice ℝ Λ] (f : SchwartzMap V ℂ) :
    ∃ c : V → ℂ, (∀ N : ℕ, Summable (fun μ : {μ : V // ∀ l ∈ Λ, ∃ k : ℤ, P l μ = k} =>
        ‖c μ‖ * (1 + ‖(μ : V)‖) ^ N)) ∧
      ∀ x : V, HasSum (fun μ : {μ : V // ∀ l ∈ Λ, ∃ k : ℤ, P l μ = k} =>
        c μ * Complex.exp (2 * Real.pi * Complex.I * (P x μ : ℂ))) (∑' l : Λ, f (x + l)) := by
  let E := EuclideanSpace ℝ (Fin (finrank ℝ V))
  let T : E ≃L[ℝ] V := (toEuclidean (E := V)).symm
  let A₀ : V ≃ₗ[ℝ] E := (P.flip.toDual hP.flip) ≪≫ₗ T.toLinearEquiv.dualMap ≪≫ₗ
    (LinearMap.BilinForm.toDual (innerₗ E) GroundTheory.Global.innerₗ_nondegenerate).symm
  let A : V ≃L[ℝ] E := A₀.toContinuousLinearEquiv
  have hA : ∀ μ y, ⟪A μ, y⟫ = P (T y) μ := by
    intro μ y
    have h := LinearMap.BilinForm.toDual_def (B := innerₗ E) GroundTheory.Global.innerₗ_nondegenerate
      (m := A₀ μ) (n := y)
    have h2 : ⟪A μ, y⟫ = (innerₗ E) (A₀ μ) y := rfl
    rw [h2, ← h]
    simp only [A₀, LinearEquiv.trans_apply, LinearEquiv.apply_symm_apply]
    rfl
  let L : Submodule ℤ E := ZLattice.comap ℝ Λ T.toLinearMap
  haveI : DiscreteTopology L := inferInstanceAs (DiscreteTopology (ZLattice.comap ℝ Λ T.toLinearMap))
  haveI : IsZLattice ℝ L := inferInstanceAs (IsZLattice ℝ (ZLattice.comap ℝ Λ T.toLinearMap))
  have hL : ∀ y, y ∈ L ↔ T y ∈ Λ := fun y => Iff.rfl
  let g : 𝓢(E, ℂ) := SchwartzMap.compCLMOfContinuousLinearEquiv ℝ T f
  have hg : ∀ y, g y = f (T y) := fun y => rfl
  let Λ' : Submodule ℤ V := ZLattice.comap ℝ (GroundTheory.Global.dualLattice L) A.toLinearMap
  haveI : DiscreteTopology Λ' :=
    inferInstanceAs (DiscreteTopology (ZLattice.comap ℝ (GroundTheory.Global.dualLattice L) A.toLinearMap))
  have hmem : ∀ μ : V, (∀ l ∈ Λ, ∃ k : ℤ, P l μ = k) ↔ A μ ∈ GroundTheory.Global.dualLattice L := by
    intro μ
    rw [GroundTheory.Global.mem_dualLattice]
    constructor
    · intro h y hy
      rw [hA]
      exact h _ ((hL y).mp hy)
    · intro h l hl
      have := h (T.symm l) ((hL _).mpr (by simpa using hl))
      rwa [hA, T.apply_symm_apply] at this
  let h : 𝓢(V, ℂ) := SchwartzMap.compCLMOfContinuousLinearEquiv ℝ A (𝓕 g)
  have hh : ∀ μ, h μ = 𝓕 (g : E → ℂ) (A μ) := fun μ => rfl
  refine ⟨fun μ => (ZLattice.covolume L)⁻¹ • h μ, fun N => ?_, fun x => ?_⟩
  · let e : {μ : V // ∀ l ∈ Λ, ∃ k : ℤ, P l μ = k} ≃ Λ' := Equiv.subtypeEquivRight hmem
    have hs := (e.summable_iff.mpr
      (schwartz_summable_norm_mul_one_add_pow Λ' h N)).mul_left ‖(ZLattice.covolume L)⁻¹‖
    refine hs.congr fun μ => ?_
    rw [norm_smul, mul_assoc]
    rfl
  · let e : {μ : V // ∀ l ∈ Λ, ∃ k : ℤ, P l μ = k} ≃ GroundTheory.Global.dualLattice L :=
      A.toEquiv.subtypeEquiv hmem
    let e' : L ≃ Λ := T.toEquiv.subtypeEquiv hL
    have hs := e.hasSum_iff.mpr
      (GroundTheory.Global.LatticePoisson.hasSum_smul_fourier (L := L) g (T.symm x))
    have hper : GroundTheory.Global.LatticePoisson.per L g (T.symm x) = ∑' l : Λ, f (x + l) := by
      rw [GroundTheory.Global.LatticePoisson.per, ← e'.tsum_eq]
      refine tsum_congr fun l => ?_
      rw [hg, map_add (f := _), T.apply_symm_apply]
      rfl
    rw [hper] at hs
    convert hs using 1
    funext μ
    have he : (e μ : E) = A μ := rfl
    simp only [Function.comp_apply, he, hA, T.apply_symm_apply, hh, Real.fourierChar_apply,
      smul_mul_assoc]
    congr 3
    push_cast
    ring

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeDualFourierExpansionSchwartz =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeShiftedCutoffSummable =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeShiftedCutoffSummable", "h": "module\n\npublic import Mathlib.Algebra.Module.ZLattice.Basic\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\npublic import Mathlib.Algebra.Module.ZLattice.Summable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\npublic import Mathlib.Analysis.Calculus.ContDiff.Bounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.LatticeSchwartz

theorem summable_one_add_norm_inv_pow' {E : Type} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [FiniteDimensional ℝ E] (L : Submodule ℤ E) [DiscreteTopology L] {k : ℕ}
    (hk : Module.finrank ℤ L < k) :
    Summable fun z : L => ((1 + ‖z‖)⁻¹) ^ k := by
  classical
  refine Summable.of_nonneg_of_le (fun z => by positivity) (fun z => ?_)
    ((ZLattice.summable_norm_pow_inv L k hk).add (hasSum_ite_eq (0 : L) (1 : ℝ)).summable)
  by_cases hz : z = 0
  · subst hz
    simp only [norm_zero, add_zero, inv_one, one_pow]
    exact le_add_of_nonneg_left (by positivity)
  · have h0 : 0 < ‖z‖ := norm_pos_iff.2 hz
    simp only [hz, if_false, add_zero]
    gcongr
    linarith

theorem term_le {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V]
    (h f : SchwartzMap V ℂ) (k N j m : ℕ) (x l : V) :
    ‖x‖ ^ k * ‖iteratedFDeriv ℝ j h x‖ * ‖iteratedFDeriv ℝ m f (x - l)‖ ≤
      (2 ^ (k + N) * (Finset.Iic (k + N, j)).sup (fun m => SchwartzMap.seminorm ℂ m.1 m.2) h) *
      (2 ^ N * (Finset.Iic (N, m)).sup (fun m => SchwartzMap.seminorm ℂ m.1 m.2) f) *
      ((1 + ‖l‖)⁻¹) ^ N := by
  have hA := SchwartzMap.one_add_le_sup_seminorm_apply (𝕜 := ℂ) (m := (k + N, j)) le_rfl le_rfl h x
  have hB := SchwartzMap.one_add_le_sup_seminorm_apply (𝕜 := ℂ) (m := (N, m)) le_rfl le_rfl f (x - l)
  have hc : 1 + ‖l‖ ≤ (1 + ‖x‖) * (1 + ‖x - l‖) := by
    have : ‖l‖ ≤ ‖x‖ + ‖x - l‖ := by
      calc ‖l‖ = ‖x - (x - l)‖ := by rw [sub_sub_cancel]
        _ ≤ ‖x‖ + ‖x - l‖ := norm_sub_le _ _
    nlinarith [norm_nonneg x, norm_nonneg (x - l)]
  have hc0 : 0 < 1 + ‖l‖ := by positivity
  have hxk : ‖x‖ ^ k ≤ (1 + ‖x‖) ^ k := by gcongr; linarith
  set P := ‖iteratedFDeriv ℝ j h x‖
  set Q := ‖iteratedFDeriv ℝ m f (x - l)‖
  have hP : 0 ≤ P := norm_nonneg _
  have hQ : 0 ≤ Q := norm_nonneg _
  rw [inv_pow, ← div_eq_mul_inv, le_div_iff₀ (by positivity)]
  calc ‖x‖ ^ k * P * Q * (1 + ‖l‖) ^ N
      ≤ (1 + ‖x‖) ^ k * P * Q * ((1 + ‖x‖) * (1 + ‖x - l‖)) ^ N := by gcongr
    _ = ((1 + ‖x‖) ^ (k + N) * P) * ((1 + ‖x - l‖) ^ N * Q) := by rw [mul_pow, pow_add]; ring
    _ ≤ _ := by gcongr

theorem summable_seminorm_mul_comp_sub : ∀ {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V] [FiniteDimensional ℝ V]
    (Λ : Submodule ℤ V) [DiscreteTopology Λ] [IsZLattice ℝ Λ] (h f : SchwartzMap V ℂ), HasCompactSupport h →
    ∀ u : Λ → SchwartzMap V ℂ, (∀ (l : Λ) (x : V), u l x = h x * f (x - l)) →
    ∀ k n : ℕ, Summable (fun l => SchwartzMap.seminorm ℂ k n (u l)) := by
  intro V _ _ _ Λ _ _ h f _ u hu k n
  set N := Module.finrank ℤ Λ + 1 with hN
  have hw : Summable fun l : Λ => ((1 + ‖l‖)⁻¹) ^ N :=
    summable_one_add_norm_inv_pow' Λ (Nat.lt_succ_self _)
  set D : ℕ → ℝ := fun j => (n.choose j : ℝ) *
      ((2 ^ (k + N) * (Finset.Iic (k + N, j)).sup (fun m => SchwartzMap.seminorm ℂ m.1 m.2) h) *
      (2 ^ N * (Finset.Iic (N, n - j)).sup (fun m => SchwartzMap.seminorm ℂ m.1 m.2) f)) with hD
  have hD0 : ∀ j, 0 ≤ D j := fun j => by
    have h1 : 0 ≤ (Finset.Iic (k + N, j)).sup (fun m => SchwartzMap.seminorm ℂ m.1 m.2) h := apply_nonneg _ _
    have h2 : 0 ≤ (Finset.Iic (N, n - j)).sup (fun m => SchwartzMap.seminorm ℂ m.1 m.2) f := apply_nonneg _ _
    positivity
  set C := ∑ j ∈ Finset.range (n + 1), D j with hC
  have hC0 : 0 ≤ C := Finset.sum_nonneg fun j _ => hD0 j
  refine Summable.of_nonneg_of_le (fun l => apply_nonneg _ _) (fun l => ?_) (hw.mul_left C)
  refine SchwartzMap.seminorm_le_bound ℂ k n (u l) (by positivity) fun x => ?_
  have hul : (u l : V → ℂ) = fun y => h y * f (y - l) := funext (hu l)
  rw [hul]
  have hg : ContDiff ℝ n (fun y : V => f (y - (l : V))) :=
    (f.smooth n).comp (contDiff_id.sub contDiff_const)
  have hL := norm_iteratedFDeriv_mul_le (𝕜 := ℝ) (h.smooth n) hg x (n := n) le_rfl
  simp_rw [iteratedFDeriv_comp_sub] at hL
  calc ‖x‖ ^ k * ‖iteratedFDeriv ℝ n (fun y => h y * f (y - l)) x‖
      ≤ ‖x‖ ^ k * ∑ j ∈ Finset.range (n + 1),
          (n.choose j : ℝ) * ‖iteratedFDeriv ℝ j h x‖ * ‖iteratedFDeriv ℝ (n - j) f (x - l)‖ := by
        gcongr
    _ = ∑ j ∈ Finset.range (n + 1), (n.choose j : ℝ) *
          (‖x‖ ^ k * ‖iteratedFDeriv ℝ j h x‖ * ‖iteratedFDeriv ℝ (n - j) f (x - l)‖) := by
        rw [Finset.mul_sum]; refine Finset.sum_congr rfl fun j _ => by ring
    _ ≤ ∑ j ∈ Finset.range (n + 1), D j * ((1 + ‖(l : V)‖)⁻¹) ^ N := by
        refine Finset.sum_le_sum fun j _ => ?_
        have ht := term_le h f k N j (n - j) x l
        have hch : (0 : ℝ) ≤ n.choose j := Nat.cast_nonneg _
        calc (n.choose j : ℝ) *
              (‖x‖ ^ k * ‖iteratedFDeriv ℝ j h x‖ * ‖iteratedFDeriv ℝ (n - j) f (x - l)‖)
            ≤ (n.choose j : ℝ) * ((2 ^ (k + N) * (Finset.Iic (k + N, j)).sup
                (fun m => SchwartzMap.seminorm ℂ m.1 m.2) h) *
              (2 ^ N * (Finset.Iic (N, n - j)).sup (fun m => SchwartzMap.seminorm ℂ m.1 m.2) f) *
              ((1 + ‖(l : V)‖)⁻¹) ^ N) := mul_le_mul_of_nonneg_left ht hch
          _ = D j * ((1 + ‖(l : V)‖)⁻¹) ^ N := by rw [hD]; ring
    _ = C * ((1 + ‖l‖)⁻¹) ^ N := by rw [hC, Finset.sum_mul]; rfl

end GlobalTheory.LatticeSchwartz
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeShiftedCutoffSummable =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeTranslatesCutoffSummable =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeTranslatesCutoffSummable", "h": "module\n\npublic import Mathlib.Algebra.Module.ZLattice.Basic\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\npublic import Mathlib.Algebra.Module.ZLattice.Summable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\npublic import Mathlib.Analysis.Calculus.ContDiff.Bounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open SchwartzMap

noncomputable section

namespace GlobalTheory.SchwartzTranslateSum

theorem summable_one_add_norm_inv_pow' {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V]
    [FiniteDimensional ℝ V] (Λ : Submodule ℤ V) [DiscreteTopology Λ] [IsZLattice ℝ Λ] {N : ℕ}
    (hN : Module.finrank ℤ Λ < N) : Summable fun z : Λ => ((1 + ‖z‖)⁻¹) ^ N := by
  classical
  refine Summable.of_nonneg_of_le (fun z => by positivity) (fun z => ?_)
    ((ZLattice.summable_norm_pow_inv Λ N hN).add (hasSum_ite_eq (0 : Λ) (1 : ℝ)).summable)
  by_cases hz : z = 0
  · subst hz
    simp
  · have h0 : 0 < ‖z‖ := norm_pos_iff.2 hz
    simp only [hz, if_false, add_zero]
    gcongr
    linarith

theorem summable_seminorm_mul_translate {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V]
    [FiniteDimensional ℝ V] (Λ : Submodule ℤ V) [DiscreteTopology Λ] [IsZLattice ℝ Λ]
    (h f : SchwartzMap V ℂ) (hh : HasCompactSupport h)
    (u : Λ → SchwartzMap V ℂ) (hu : ∀ (l : Λ) (x : V), u l x = h (x + l) * f x) (k n : ℕ) :
    Summable (fun l => SchwartzMap.seminorm ℂ k n (u l)) := by
  obtain ⟨R, hR⟩ := hh.isCompact.isBounded.subset_closedBall (0 : V)
  set N := Module.finrank ℤ Λ + 1 with hNdef
  have hw : Summable fun l : Λ => ((1 + ‖l‖)⁻¹) ^ N :=
    summable_one_add_norm_inv_pow' Λ (Nat.lt_succ_self _)
  set S := (Finset.Iic (k + N, n)).sup (fun m : ℕ × ℕ => SchwartzMap.seminorm ℂ m.1 m.2) f
    with hSdef
  set A := ∑ i ∈ Finset.range (n + 1), (n.choose i : ℝ) * SchwartzMap.seminorm ℂ 0 i h
    with hAdef
  set R' := max R 0 with hR'def
  have hR'0 : 0 ≤ R' := le_max_right _ _
  set D := (1 + R') ^ N * 2 ^ (k + N) * S with hDdef
  have hS0 : 0 ≤ S := apply_nonneg _ _
  have hA0 : 0 ≤ A := Finset.sum_nonneg fun i _ => by positivity
  have hD0 : 0 ≤ D := by positivity
  clear_value D A S R' N
  refine (hw.mul_left (A * D)).of_nonneg_of_le (fun l => apply_nonneg _ _) (fun l => ?_)
  refine SchwartzMap.seminorm_le_bound ℂ k n (u l) (by positivity) (fun x => ?_)
  have hfun : (u l : V → ℂ) = fun y => h (y + l) * f y := funext (hu l)
  rw [hfun]
  have hsh : ContDiff ℝ n (fun y => h (y + (l : V))) :=
    ((h.smooth ⊤).of_le (by exact_mod_cast le_top)).comp (contDiff_id.add contDiff_const)
  have hsf : ContDiff ℝ n (f : V → ℂ) := (f.smooth ⊤).of_le (by exact_mod_cast le_top)
  have hleib := norm_iteratedFDeriv_mul_le (𝕜 := ℝ) hsh hsf x (n := n) le_rfl
  simp_rw [iteratedFDeriv_comp_add_right] at hleib
  by_cases hx : x + (l : V) ∈ tsupport h
  · have hxl : ‖x + (l : V)‖ ≤ R' := by
      have := hR hx
      rw [Metric.mem_closedBall, dist_zero_right] at this
      exact this.trans (hR'def ▸ le_max_left _ _)
    have hl : 1 + ‖l‖ ≤ (1 + R') * (1 + ‖x‖) := by
      have : ‖(l : V)‖ ≤ ‖x + (l : V)‖ + ‖x‖ := by
        calc ‖(l : V)‖ = ‖(x + (l : V)) - x‖ := by simp
          _ ≤ ‖x + (l : V)‖ + ‖x‖ := norm_sub_le _ _
      have hn' : ‖l‖ = ‖(l : V)‖ := rfl
      nlinarith [norm_nonneg x]
    have hB : ∀ m ≤ n, ‖x‖ ^ k * ‖iteratedFDeriv ℝ m f x‖ ≤ D * ((1 + ‖l‖)⁻¹) ^ N := by
      intro m hm
      have h1 := one_add_le_sup_seminorm_apply (𝕜 := ℂ) (m := (k + N, n)) (k := k + N) (n := m)
        le_rfl hm f x
      have h1' : (1 + ‖x‖) ^ (k + N) * ‖iteratedFDeriv ℝ m f x‖ ≤ 2 ^ (k + N) * S := by rw [hSdef]; exact h1
      have hpos : 0 < (1 + ‖l‖) ^ N := by positivity
      rw [inv_pow, ← div_eq_mul_inv, le_div_iff₀ hpos]
      calc ‖x‖ ^ k * ‖iteratedFDeriv ℝ m f x‖ * (1 + ‖l‖) ^ N
          ≤ (1 + ‖x‖) ^ k * ‖iteratedFDeriv ℝ m f x‖ * ((1 + R') * (1 + ‖x‖)) ^ N := by
            gcongr
            linarith [norm_nonneg x]
        _ = (1 + R') ^ N * ((1 + ‖x‖) ^ (k + N) * ‖iteratedFDeriv ℝ m f x‖) := by
            rw [mul_pow, pow_add]; ring
        _ ≤ (1 + R') ^ N * (2 ^ (k + N) * S) := by gcongr
        _ = D := by rw [hDdef]; ring
    calc ‖x‖ ^ k * ‖iteratedFDeriv ℝ n (fun y => h (y + (l : V)) * f y) x‖
        ≤ ‖x‖ ^ k * ∑ i ∈ Finset.range (n + 1), (n.choose i : ℝ) *
            ‖iteratedFDeriv ℝ i h (x + l)‖ * ‖iteratedFDeriv ℝ (n - i) f x‖ := by gcongr
      _ = ∑ i ∈ Finset.range (n + 1), (n.choose i : ℝ) * ‖iteratedFDeriv ℝ i h (x + l)‖ *
            (‖x‖ ^ k * ‖iteratedFDeriv ℝ (n - i) f x‖) := by
            rw [Finset.mul_sum]; refine Finset.sum_congr rfl fun i _ => by ring
      _ ≤ ∑ i ∈ Finset.range (n + 1), (n.choose i : ℝ) * SchwartzMap.seminorm ℂ 0 i h *
            (D * ((1 + ‖l‖)⁻¹) ^ N) := by
            refine Finset.sum_le_sum fun i _ => ?_
            exact mul_le_mul (mul_le_mul_of_nonneg_left
              (SchwartzMap.norm_iteratedFDeriv_le_seminorm ℂ h i _) (by positivity))
              (hB _ (Nat.sub_le _ _)) (by positivity) (by positivity)
      _ = A * D * ((1 + ‖l‖)⁻¹) ^ N := by
            rw [hAdef, Finset.sum_mul, Finset.sum_mul]
            exact Finset.sum_congr rfl fun i _ => by ring
  · have hz : ∀ i, iteratedFDeriv ℝ i h (x + l) = 0 := fun i =>
      Function.notMem_support.1 fun hm => hx (support_iteratedFDeriv_subset i hm)
    simp only [hz, norm_zero, mul_zero, zero_mul, Finset.sum_const_zero] at hleib
    have : ‖iteratedFDeriv ℝ n (fun y => h (y + (l : V)) * f y) x‖ = 0 :=
      le_antisymm hleib (norm_nonneg _)
    rw [this, mul_zero]
    exact mul_nonneg (mul_nonneg hA0 hD0) (by positivity)

end GlobalTheory.SchwartzTranslateSum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeTranslatesCutoffSummable =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModulatedSchwartzSeminormPolynomial =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModulatedSchwartzSeminormPolynomial", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormIteratedFDerivRemCompLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Calculus.ContDiff.Bounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Complex

namespace GlobalTheory.CharModGrowth

theorem norm_iteratedFDeriv_char_le {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V]
    (L : V →L[ℝ] ℝ) (t : ℝ) (n : ℕ) (x : V) :
    ‖iteratedFDeriv ℝ n (fun x : V => Complex.exp ((I * t) * (L x : ℂ))) x‖ ≤ (|t| * ‖L‖) ^ n := by
  have ho : ContDiff ℝ (⊤ : ℕ∞) (fun y : ℝ => (y : ℂ)) := Complex.ofRealCLM.contDiff
  have hc : ContDiff ℝ (⊤ : ℕ∞) (fun y : ℝ => (1 : ℂ) * Complex.exp ((I * t) * (y : ℂ))) := by
    fun_prop
  have e : (fun x : V => Complex.exp ((I * t) * (L x : ℂ)))
      = (fun y : ℝ => (1 : ℂ) * Complex.exp ((I * t) * (y : ℂ))) ∘ ⇑L := by
    funext x; simp
  rw [e, L.iteratedFDeriv_comp_right hc x (i := n) (by exact_mod_cast le_top)]
  calc _ ≤ ‖iteratedFDeriv ℝ n (fun y : ℝ => (1 : ℂ) * Complex.exp ((I * t) * (y : ℂ))) (L x)‖
          * ∏ _j : Fin n, ‖L‖ :=
        ContinuousMultilinearMap.norm_compContinuousLinearMap_le _ _
    _ = (|t| * ‖L‖) ^ n := by
        rw [norm_iteratedFDeriv_eq_norm_iteratedDeriv,
          GlobalTheory.CharFormDeriv.iteratedDeriv_const_mul_cexp]
        have hexp : (I * t) * ((L x : ℝ) : ℂ) = ((t * L x : ℝ) : ℂ) * I := by push_cast; ring
        simp only [Finset.prod_const, Finset.card_univ, Fintype.card_fin]
        rw [norm_mul, hexp, Complex.norm_exp_ofReal_mul_I, norm_mul, norm_pow, norm_mul,
          Complex.norm_I, Complex.norm_real, Real.norm_eq_abs]
        simp [mul_pow]

theorem seminorm_char_mul_le {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V]
    (L : V →L[ℝ] ℝ) (t : ℝ) (f u : SchwartzMap V ℂ)
    (hu : ∀ x, u x = Complex.exp ((I * t) * (L x : ℂ)) * f x) {R : ℝ} (hR1 : 1 ≤ R)
    (hR : |t| * ‖L‖ ≤ R) (k n : ℕ) :
    SchwartzMap.seminorm ℂ k n u ≤
      (∑ i ∈ Finset.range (n + 1), (n.choose i : ℝ) * SchwartzMap.seminorm ℂ k (n - i) f)
        * R ^ n := by
  have hS0 : 0 ≤ ∑ i ∈ Finset.range (n + 1),
      (n.choose i : ℝ) * SchwartzMap.seminorm ℂ k (n - i) f :=
    Finset.sum_nonneg fun i _ => mul_nonneg (Nat.cast_nonneg _) (apply_nonneg _ _)
  have hR0 : 0 ≤ R := by linarith
  refine SchwartzMap.seminorm_le_bound ℂ k n u (by positivity) fun x => ?_
  have hu' : (⇑u) = fun x => Complex.exp ((I * t) * (L x : ℂ)) * f x := funext hu
  rw [hu']
  have hmul := norm_iteratedFDeriv_mul_le (N := ((⊤ : ℕ∞) : WithTop ℕ∞))
    (GlobalTheory.CharFormDeriv.hasTemperateGrowth_char L t).1 (f.smooth ⊤) x (n := n)
    (by exact_mod_cast le_top)
  calc _ ≤ ‖x‖ ^ k * ∑ i ∈ Finset.range (n + 1), (n.choose i : ℝ) *
          ‖iteratedFDeriv ℝ i (fun x : V => Complex.exp ((I * t) * (L x : ℂ))) x‖ *
          ‖iteratedFDeriv ℝ (n - i) f x‖ :=
        mul_le_mul_of_nonneg_left hmul (by positivity)
    _ ≤ _ := by
        rw [Finset.mul_sum, Finset.sum_mul]
        refine Finset.sum_le_sum fun i hi => ?_
        have hi' : i ≤ n := Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
        have h1 : ‖iteratedFDeriv ℝ i (fun x : V => Complex.exp ((I * t) * (L x : ℂ))) x‖
            ≤ R ^ n :=
          (norm_iteratedFDeriv_char_le L t i x).trans
            ((pow_le_pow_left₀ (by positivity) hR i).trans (pow_le_pow_right₀ hR1 hi'))
        have h2 : ‖x‖ ^ k * ‖iteratedFDeriv ℝ (n - i) f x‖ ≤ SchwartzMap.seminorm ℂ k (n - i) f :=
          SchwartzMap.le_seminorm ℂ k (n - i) f x
        calc _ = (n.choose i : ℝ) * (‖x‖ ^ k * ‖iteratedFDeriv ℝ (n - i) f x‖) *
              ‖iteratedFDeriv ℝ i (fun x : V => Complex.exp ((I * t) * (L x : ℂ))) x‖ := by ring
          _ ≤ _ := mul_le_mul (mul_le_mul_of_nonneg_left h2 (Nat.cast_nonneg _)) h1
              (norm_nonneg _) (mul_nonneg (Nat.cast_nonneg _) (apply_nonneg _ _))

theorem seminorm_char_mul_polynomial_growth :
    ∀ {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V] [FiniteDimensional ℝ V]
    (P : LinearMap.BilinForm ℝ V) (h : SchwartzMap V ℂ) (v : V → SchwartzMap V ℂ),
    (∀ μ x, v μ x = Complex.exp (2 * Real.pi * Complex.I * (P x μ : ℂ)) * h x) →
    ∀ k n : ℕ, ∃ C : ℝ, ∀ μ, SchwartzMap.seminorm ℂ k n (v μ) ≤ C * (1 + ‖μ‖) ^ n := by
  intro V _ _ _ P h v hv k n
  let Q : V →L[ℝ] (V →L[ℝ] ℝ) := LinearMap.toContinuousLinearMap
    ((LinearMap.toContinuousLinearMap : (V →ₗ[ℝ] ℝ) ≃ₗ[ℝ] (V →L[ℝ] ℝ)).toLinearMap ∘ₗ
      LinearMap.flip P)
  have hQ : ∀ μ x, Q μ x = P x μ := fun μ x => rfl
  set A : ℝ := |2 * Real.pi| * ‖Q‖ with hA
  have hA0 : 0 ≤ A := by positivity
  refine ⟨(∑ i ∈ Finset.range (n + 1), (n.choose i : ℝ) * SchwartzMap.seminorm ℂ k (n - i) h)
    * (1 + A) ^ n, fun μ => ?_⟩
  have hμ : 0 ≤ ‖μ‖ := norm_nonneg μ
  rw [mul_assoc, ← mul_pow]
  refine seminorm_char_mul_le (Q μ) (2 * Real.pi) h (v μ) (fun x => ?_) ?_ ?_ k n
  · rw [hv, hQ]; congr 2; push_cast; ring
  · nlinarith [mul_nonneg hA0 hμ]
  · calc |2 * Real.pi| * ‖Q μ‖ ≤ |2 * Real.pi| * (‖Q‖ * ‖μ‖) :=
          mul_le_mul_of_nonneg_left (Q.le_opNorm μ) (abs_nonneg _)
      _ = A * ‖μ‖ := by rw [hA]; ring
      _ ≤ _ := by nlinarith

end GlobalTheory.CharModGrowth
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModulatedSchwartzSeminormPolynomial =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SummableSchwartzSeries =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SummableSchwartzSeries", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Calculus.UniformLimitsDeriv\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.ContDiff.Operations\n\n"}
section -- clump:auto
@[expose] public section

open Filter
open scoped SchwartzMap Topology

namespace GlobalTheory
namespace SchwartzSum

theorem hasSum_of_summable_seminorms :
    ∀ {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V] [FiniteDimensional ℝ V] {ι : Type}
    (u : ι → SchwartzMap V ℂ), (∀ k n : ℕ, Summable (fun i => SchwartzMap.seminorm ℂ k n (u i))) →
    ∃ F : SchwartzMap V ℂ, (∀ x, HasSum (fun i => u i x) (F x)) ∧
      ∀ T : SchwartzMap V ℂ →L[ℂ] ℂ, HasSum (fun i => T (u i)) (T F) := by
  intro V _ _ _ ι u hu
  have iteratedFDeriv_sub' (f g : 𝓢(V, ℂ)) (n : ℕ) (x : V) :
      iteratedFDeriv ℝ n (⇑(f - g)) x = iteratedFDeriv ℝ n f x - iteratedFDeriv ℝ n g x := by
    have hf : ContDiff ℝ n f := f.smooth n
    have hg : ContDiff ℝ n g := g.smooth n
    rw [show (⇑(f - g) : V → ℂ) = ⇑f - ⇑g from rfl]
    exact iteratedFDeriv_sub_apply hf.contDiffAt hg.contDiffAt

  have cauchy_seminorm {u : ℕ → 𝓢(V, ℂ)} (hu : CauchySeq u) (k n : ℕ) {ε : ℝ} (hε : 0 < ε) :
      ∃ N, ∀ a ≥ N, ∀ b ≥ N, SchwartzMap.seminorm ℝ k n (u a - u b) < ε := by
    rw [cauchySeq_iff_tendsto, uniformity_eq_comap_nhds_zero, tendsto_comap_iff] at hu
    have h := ((schwartz_withSeminorms ℝ V ℂ).tendsto_nhds _ 0).1 hu (k, n) ε hε
    obtain ⟨⟨N₁, N₂⟩, hN⟩ := eventually_atTop.1 h
    refine ⟨max N₁ N₂, fun a ha b hb => ?_⟩
    have := hN (b, a) (Prod.mk_le_mk.2 ⟨le_of_max_le_left hb, le_of_max_le_right ha⟩)
    simpa [schwartzSeminormFamily] using this

  let limD (u : ℕ → 𝓢(V, ℂ)) (n : ℕ) (x : V) :
      ContinuousMultilinearMap ℝ (fun _ : Fin n => V) ℂ :=
    limUnder atTop fun j => iteratedFDeriv ℝ n (u j) x

  have tendsto_limD {u : ℕ → 𝓢(V, ℂ)} (hu : CauchySeq u) (n : ℕ) (x : V) :
      Tendsto (fun j => iteratedFDeriv ℝ n (u j) x) atTop (𝓝 (limD u n x)) := by
    refine tendsto_nhds_limUnder (cauchySeq_tendsto_of_complete ?_)
    rw [Metric.cauchySeq_iff]
    intro ε hε
    obtain ⟨N, hN⟩ := cauchy_seminorm hu 0 n hε
    refine ⟨N, fun a ha b hb => ?_⟩
    rw [dist_eq_norm, ← iteratedFDeriv_sub']
    have := SchwartzMap.le_seminorm ℝ 0 n (u a - u b) x
    simp only [pow_zero, one_mul] at this
    exact this.trans_lt (hN a ha b hb)

  have key {u : ℕ → 𝓢(V, ℂ)} (hu : CauchySeq u) (k n : ℕ) {ε : ℝ} (hε : 0 < ε) :
      ∃ N, ∀ j ≥ N, ∀ x, ‖x‖ ^ k * ‖iteratedFDeriv ℝ n (u j) x - limD u n x‖ ≤ ε := by
    obtain ⟨N, hN⟩ := cauchy_seminorm hu k n hε
    refine ⟨N, fun j hj x => ?_⟩
    have ht : Tendsto (fun b => ‖x‖ ^ k * ‖iteratedFDeriv ℝ n (u j) x - iteratedFDeriv ℝ n (u b) x‖)
        atTop (𝓝 (‖x‖ ^ k * ‖iteratedFDeriv ℝ n (u j) x - limD u n x‖)) :=
      ((tendsto_const_nhds.sub (tendsto_limD hu n x)).norm).const_mul _
    refine le_of_tendsto ht (eventually_atTop.2 ⟨N, fun b hb => ?_⟩)
    rw [← iteratedFDeriv_sub']
    exact (SchwartzMap.le_seminorm ℝ k n (u j - u b) x).trans (hN j hj b hb).le

  have tendstoUniformly_limD {u : ℕ → 𝓢(V, ℂ)} (hu : CauchySeq u) (n : ℕ) :
      TendstoUniformly (fun j => iteratedFDeriv ℝ n (u j)) (limD u n) atTop := by
    rw [Metric.tendstoUniformly_iff]
    intro ε hε
    obtain ⟨N, hN⟩ := key hu 0 n (half_pos hε)
    refine eventually_atTop.2 ⟨N, fun j hj x => ?_⟩
    have := hN j hj x
    rw [pow_zero, one_mul] at this
    rw [dist_eq_norm, norm_sub_rev]
    linarith

  have continuous_limD {u : ℕ → 𝓢(V, ℂ)} (hu : CauchySeq u) (n : ℕ) :
      Continuous (limD u n) :=
    (tendstoUniformly_limD hu n).continuous (Eventually.of_forall (f := atTop) fun j =>
      ((u j).smooth ⊤).continuous_iteratedFDeriv (m := n) (by exact_mod_cast le_top)).frequently

  have hasFDerivAt_limD {u : ℕ → 𝓢(V, ℂ)} (hu : CauchySeq u) (m : ℕ) (x : V) :
      HasFDerivAt (limD u m) ((limD u (m + 1) x).curryLeft) x := by
    refine hasFDerivAt_of_tendstoUniformly (f := fun j => iteratedFDeriv ℝ m (u j))
      (f' := fun j y => fderiv ℝ (iteratedFDeriv ℝ m (u j)) y)
      (g' := fun y => (limD u (m + 1) y).curryLeft) ?_ ?_ (fun y => tendsto_limD hu m y) x
    · exact (continuousMultilinearCurryLeftEquiv ℝ (fun _ : Fin (m + 1) => V) ℂ).isometry.uniformContinuous.comp_tendstoUniformly
        (tendstoUniformly_limD hu (m + 1))
    · intro j y
      exact ((((u j).smooth ⊤).differentiable_iteratedFDeriv
        (by exact_mod_cast WithTop.coe_lt_top (m : ℕ))) y).hasFDerivAt

  have hasFTaylorSeries {u : ℕ → 𝓢(V, ℂ)} (hu : CauchySeq u) :
      HasFTaylorSeriesUpTo ((⊤ : ℕ∞) : WithTop ℕ∞) (fun x => (limD u 0 x).curry0)
        (fun x => (fun m => limD u m x : FormalMultilinearSeries ℝ V ℂ)) :=
    { zero_eq := fun _ => rfl
      fderiv := fun m _ x => hasFDerivAt_limD hu m x
      cont := fun m _ => continuous_limD hu m }

  let limMap (u : ℕ → 𝓢(V, ℂ)) (hu : CauchySeq u) : 𝓢(V, ℂ) := {
    toFun x := (limD u 0 x).curry0
    smooth' := (hasFTaylorSeries hu).contDiff
    decay' k n := by
      obtain ⟨N, hN⟩ := key hu k n one_pos
      refine ⟨SchwartzMap.seminorm ℝ k n (u N) + 1, fun x => ?_⟩
      rw [← (hasFTaylorSeries hu).eq_iteratedFDeriv (m := n) (by exact_mod_cast le_top) x]
      have h1 := hN N le_rfl x
      have h2 := SchwartzMap.le_seminorm ℝ k n (u N) x
      have h3 : ‖limD u n x‖ ≤ ‖iteratedFDeriv ℝ n (u N) x‖ + ‖iteratedFDeriv ℝ n (u N) x - limD u n x‖ := by
        have := norm_sub_le (iteratedFDeriv ℝ n (u N) x) (iteratedFDeriv ℝ n (u N) x - limD u n x)
        simpa using this
      have h4 := mul_le_mul_of_nonneg_left h3 (by positivity : (0 : ℝ) ≤ ‖x‖ ^ k)
      change ‖x‖ ^ k * ‖limD u n x‖ ≤ _
      rw [mul_add] at h4
      linarith }

  have iteratedFDeriv_limMap {u : ℕ → 𝓢(V, ℂ)} (hu : CauchySeq u) (n : ℕ) (x : V) :
      iteratedFDeriv ℝ n (limMap u hu) x = limD u n x :=
    ((hasFTaylorSeries hu).eq_iteratedFDeriv (m := n) (by exact_mod_cast le_top) x).symm

  have tendsto_limMap {u : ℕ → 𝓢(V, ℂ)} (hu : CauchySeq u) :
      Tendsto u atTop (𝓝 (limMap u hu)) := by
    rw [(schwartz_withSeminorms ℝ V ℂ).tendsto_nhds]
    rintro ⟨k, n⟩ ε hε
    obtain ⟨N, hN⟩ := key hu k n (half_pos hε)
    refine eventually_atTop.2 ⟨N, fun j hj => ?_⟩
    refine lt_of_le_of_lt ?_ (half_lt_self hε)
    refine SchwartzMap.seminorm_le_bound ℝ k n _ (half_pos hε).le fun x => ?_
    rw [iteratedFDeriv_sub', iteratedFDeriv_limMap hu]
    exact hN j hj x

  haveI : CompleteSpace 𝓢(V, ℂ) := by
    haveI : (uniformity 𝓢(V, ℂ)).IsCountablyGenerated := IsUniformAddGroup.uniformity_countably_generated
    exact UniformSpace.complete_of_cauchySeq_tendsto fun u hu => ⟨limMap u hu, tendsto_limMap hu⟩

  have hS : Summable u := by
    rw [summable_iff_vanishing]
    intro e he
    obtain ⟨⟨S, r⟩, hr, hsub⟩ := (schwartz_withSeminorms ℂ V ℂ).hasBasis_zero_ball.mem_iff.1 he
    simp only at hr hsub
    have hg : Summable (fun i => ∑ kn ∈ S, schwartzSeminormFamily ℂ V ℂ kn (u i)) :=
      summable_sum fun kn _ => hu kn.1 kn.2
    obtain ⟨s, hs⟩ := (summable_iff_vanishing_norm.1 hg) r hr
    refine ⟨s, fun t ht => hsub ?_⟩
    rw [Seminorm.mem_ball_zero]
    have h1 := hs t ht
    calc (S.sup (schwartzSeminormFamily ℂ V ℂ)) (∑ i ∈ t, u i)
        ≤ ∑ kn ∈ S, schwartzSeminormFamily ℂ V ℂ kn (∑ i ∈ t, u i) :=
          Seminorm.finset_sup_apply_le (Finset.sum_nonneg fun _ _ => apply_nonneg _ _) fun kn hkn =>
            Finset.single_le_sum (f := fun kn => schwartzSeminormFamily ℂ V ℂ kn (∑ i ∈ t, u i))
              (fun _ _ => apply_nonneg _ _) hkn
      _ ≤ ∑ kn ∈ S, ∑ i ∈ t, schwartzSeminormFamily ℂ V ℂ kn (u i) :=
          Finset.sum_le_sum fun kn _ =>
            Finset.le_sum_of_subadditive _ (map_zero _).le (map_add_le_add _) _ _
      _ = ∑ i ∈ t, ∑ kn ∈ S, schwartzSeminormFamily ℂ V ℂ kn (u i) := Finset.sum_comm
      _ ≤ ‖∑ i ∈ t, ∑ kn ∈ S, schwartzSeminormFamily ℂ V ℂ kn (u i)‖ := Real.le_norm_self _
      _ < r := h1
  refine ⟨∑' i, u i, fun x => ?_, fun T => hS.hasSum.mapL T⟩
  have h := hS.hasSum.mapL ((BoundedContinuousFunction.evalCLM ℂ x).comp
    (SchwartzMap.toBoundedContinuousFunctionCLM ℂ V ℂ))
  simpa using h

end SchwartzSum
end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SummableSchwartzSeries =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeInvariantDistributionCharacters =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeInvariantDistributionCharacters", "h": "module\n\npublic import Mathlib.Algebra.Module.ZLattice.Basic\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSchwartzPartitionOfUnityLattice\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeDualFourierExpansionSchwartz\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeShiftedCutoffSummable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeTranslatesCutoffSummable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModulatedSchwartzSeminormPolynomial\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SummableSchwartzSeries\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormIteratedFDerivRemCompLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.LatticeComb
open scoped SchwartzMap

theorem comb_unique : ∀ (V : Type) [NormedAddCommGroup V] [NormedSpace ℝ V] [FiniteDimensional ℝ V]
    (P : LinearMap.BilinForm ℝ V), P.Nondegenerate →
    ∀ (Λ : Submodule ℤ V) [DiscreteTopology Λ] [IsZLattice ℝ Λ] (a : V) (T : SchwartzMap V ℂ →L[ℂ] ℂ),
    (∀ l ∈ Λ, ∀ f f' : SchwartzMap V ℂ, (∀ x, f' x = f (x + l)) → T f' = T f) →
    (∀ μ : V, (∀ l ∈ Λ, ∃ k : ℤ, P l μ = k) → ∀ f f' : SchwartzMap V ℂ,
      (∀ x, f' x = Complex.exp (2 * Real.pi * Complex.I * (P x μ : ℂ)) * f x) →
      T f' = Complex.exp (2 * Real.pi * Complex.I * (P a μ : ℂ)) * T f) →
    ∃ c : ℂ, ∀ f : SchwartzMap V ℂ, T f = c * ∑' l : Λ, f (a + l) := by
  intro V _ _ _ P hP Λ _ _ a T htr hmod
  obtain ⟨h, hhc, hh1⟩ := _root_.GlobalTheory.exists_schwartz_hasCompactSupport_latticeTranslates_sum_one Λ
  refine ⟨T h, fun f => ?_⟩
  have hth : ∀ l : Λ, (fun x => h (x + (l : V))).HasTemperateGrowth := fun l =>
    HasCompactSupport.hasTemperateGrowth (hhc.comp_homeomorph (Homeomorph.addRight (l : V)))
      ((h.smooth ⊤).comp (contDiff_id.add contDiff_const))
  have hh : (⇑h).HasTemperateGrowth := HasCompactSupport.hasTemperateGrowth hhc (h.smooth ⊤)
  let u : Λ → 𝓢(V, ℂ) := fun l => SchwartzMap.smulLeftCLM ℂ (fun x => h (x + (l : V))) f
  have hu : ∀ (l : Λ) (x : V), u l x = h (x + l) * f x := fun l x => by
    simp [u, SchwartzMap.smulLeftCLM_apply_apply (hth l)]
  obtain ⟨F1, hF1p, hF1T⟩ := _root_.GlobalTheory.SchwartzSum.hasSum_of_summable_seminorms u (_root_.GlobalTheory.SchwartzTranslateSum.summable_seminorm_mul_translate Λ h f hhc u hu)
  have hF1 : F1 = f := by
    ext x
    refine (hF1p x).unique ?_
    simpa [hu] using (hh1 x).mul_right (f x)
  let w : Λ → 𝓢(V, ℂ) := fun l => SchwartzMap.smulLeftCLM ℂ (⇑h) (SchwartzMap.compSubConstCLM ℂ (l : V) f)
  have hw : ∀ (l : Λ) (x : V), w l x = h x * f (x - l) := fun l x => by
    simp [w, SchwartzMap.smulLeftCLM_apply_apply hh]
  have huw : ∀ l, T (u l) = T (w l) := fun l =>
    htr l l.2 (w l) (u l) (fun x => by rw [hu, hw]; simp)
  obtain ⟨G, hGp, hGT⟩ := _root_.GlobalTheory.SchwartzSum.hasSum_of_summable_seminorms w (_root_.GlobalTheory.LatticeSchwartz.summable_seminorm_mul_comp_sub Λ h f hhc w hw)
  have h1 : T f = T G := by
    have := hF1T T
    rw [hF1] at this
    simp_rw [huw] at this
    exact this.unique (hGT T)
  obtain ⟨c, hcs, hcP⟩ := _root_.GlobalTheory.periodisation_hasSum_fourier_bilinForm P hP Λ f
  have hch : ∀ μ : V, (fun x : V => Complex.exp (2 * Real.pi * Complex.I * (P x μ : ℂ))).HasTemperateGrowth := by
    intro μ
    have e : (fun x : V => Complex.exp (2 * Real.pi * Complex.I * (P x μ : ℂ))) =
        fun x : V => Complex.exp ((Complex.I * ((2 * Real.pi : ℝ) : ℂ)) *
          ((LinearMap.toContinuousLinearMap (P.flip μ) x : ℝ) : ℂ)) := by
      funext x
      simp only [LinearMap.coe_toContinuousLinearMap']
      show _ = Complex.exp (Complex.I * ((2 * Real.pi : ℝ) : ℂ) * ((P x μ : ℝ) : ℂ))
      push_cast; ring_nf
    rw [e]
    exact GlobalTheory.CharFormDeriv.hasTemperateGrowth_char (LinearMap.toContinuousLinearMap (P.flip μ)) (2 * Real.pi)
  let v0 : V → 𝓢(V, ℂ) := fun μ => SchwartzMap.smulLeftCLM ℂ (fun x : V => Complex.exp (2 * Real.pi * Complex.I * (P x μ : ℂ))) h
  have hv0 : ∀ μ x, v0 μ x = Complex.exp (2 * Real.pi * Complex.I * (P x μ : ℂ)) * h x := fun μ x => by
    simp [v0, SchwartzMap.smulLeftCLM_apply_apply (hch μ)]
  let v : {μ : V // ∀ l ∈ Λ, ∃ k : ℤ, P l μ = k} → 𝓢(V, ℂ) := fun μ => c μ • v0 μ
  have hvs : ∀ k n : ℕ, Summable (fun μ => SchwartzMap.seminorm ℂ k n (v μ)) := by
    intro k n
    obtain ⟨C, hC⟩ := _root_.GlobalTheory.CharModGrowth.seminorm_char_mul_polynomial_growth P h v0 hv0 k n
    refine Summable.of_nonneg_of_le (fun μ => apply_nonneg _ _) (fun μ => ?_) ((hcs n).mul_left C)
    simp only [v, map_smul_eq_mul]
    calc ‖c μ‖ * SchwartzMap.seminorm ℂ k n (v0 μ) ≤ ‖c μ‖ * (C * (1 + ‖(μ : V)‖) ^ n) :=
          mul_le_mul_of_nonneg_left (hC μ) (norm_nonneg _)
      _ = C * (‖c μ‖ * (1 + ‖(μ : V)‖) ^ n) := by ring
  obtain ⟨G', hG'p, hG'T⟩ := _root_.GlobalTheory.SchwartzSum.hasSum_of_summable_seminorms v hvs
  have hGG : G = G' := by
    ext x
    refine (hGp x).unique ?_
    have e1 : HasSum (fun μ : {μ : V // ∀ l ∈ Λ, ∃ k : ℤ, P l μ = k} => v μ x)
        (h x * ∑' l : Λ, f (x + l)) := by
      have := (hcP x).mul_left (h x)
      have hfun : (fun μ : {μ : V // ∀ l ∈ Λ, ∃ k : ℤ, P l μ = k} => v μ x) =
          fun μ : {μ : V // ∀ l ∈ Λ, ∃ k : ℤ, P l μ = k} => h x * (c μ * Complex.exp (2 * Real.pi * Complex.I * (P x μ : ℂ))) := by
        funext μ
        simp only [v, SchwartzMap.smul_apply, hv0, smul_eq_mul]
        ring
      rw [hfun]; exact this
    have e2 : h x * ∑' l : Λ, f (x + l) = G' x := e1.unique (hG'p x)
    rw [← e2]
    have hsum : Summable (fun l : Λ => h x * f (x - l)) := by simpa [hw] using (hGp x).summable
    have e3 : ∑' l : Λ, f (x + l) = ∑' l : Λ, f (x - l) := by
      rw [← (Equiv.neg Λ).tsum_eq]
      simp [sub_eq_add_neg]
    rw [e3, ← tsum_mul_left]
    simpa [hw] using hsum.hasSum
  have hTv : ∀ μ, T (v μ) = c μ * Complex.exp (2 * Real.pi * Complex.I * (P a μ : ℂ)) * T h := by
    intro μ
    simp only [v, map_smul, smul_eq_mul]
    rw [hmod μ μ.2 h (v0 μ) (hv0 μ)]
    ring
  have h2 := hG'T T
  simp_rw [hTv] at h2
  rw [h1, hGG, ← h2.tsum_eq, tsum_mul_right, (hcP a).tsum_eq, mul_comm]

end GlobalTheory.LatticeComb
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeInvariantDistributionCharacters =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodicTemperedDistPoisson =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodicTemperedDistPoisson", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeInvariantDistributionCharacters\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped Classical

namespace GlobalTheory.IntComb

noncomputable def dotForm (n : ℕ) : LinearMap.BilinForm ℝ (Fin n → ℝ) :=
  LinearMap.mk₂ ℝ (fun x y => ∑ i, x i * y i)
    (fun x x' y => by simp [add_mul, Finset.sum_add_distrib])
    (fun c x y => by simp [Finset.mul_sum, mul_assoc])
    (fun x y y' => by simp [mul_add, Finset.sum_add_distrib])
    (fun c x y => by simp [Finset.mul_sum, mul_left_comm])

theorem dotForm_apply (n : ℕ) (x y : Fin n → ℝ) : dotForm n x y = ∑ i, x i * y i := rfl

theorem dotForm_nondegenerate (n : ℕ) : (dotForm n).Nondegenerate := by
  constructor
  · intro x hx
    funext i
    have := hx (Pi.single i 1)
    simpa [dotForm_apply, Pi.single_apply] using this
  · intro y hy
    funext i
    have := hy (Pi.single i 1)
    simpa [dotForm_apply, Pi.single_apply] using this

noncomputable abbrev intLat (n : ℕ) : Submodule ℤ (Fin n → ℝ) :=
  Submodule.span ℤ (Set.range (Pi.basisFun ℝ (Fin n)))

theorem mem_intLat {n : ℕ} (x : Fin n → ℝ) :
    x ∈ intLat n ↔ ∃ k : Fin n → ℤ, x = fun i => (k i : ℝ) := by
  rw [intLat, (Pi.basisFun ℝ (Fin n)).mem_span_iff_repr_mem ℤ x]
  simp only [Pi.basisFun_repr, Set.mem_range, eq_intCast]
  constructor
  · intro h
    choose k hk using h
    exact ⟨k, funext fun i => (hk i).symm⟩
  · rintro ⟨k, rfl⟩ i
    exact ⟨k i, rfl⟩

noncomputable def intLatEquiv (n : ℕ) : (Fin n → ℤ) ≃ intLat n :=
  Equiv.ofBijective (fun k => ⟨fun i => (k i : ℝ), (mem_intLat _).2 ⟨k, rfl⟩⟩)
    ⟨fun k k' h => by
      funext i
      have : ((k i : ℤ) : ℝ) = (k' i : ℝ) := congrFun (congrArg Subtype.val h) i
      exact_mod_cast this,
     fun l => by
      obtain ⟨k, hk⟩ := (mem_intLat l.1).1 l.2
      exact ⟨k, Subtype.ext hk.symm⟩⟩

theorem dirac_comb_unique : ∀ (n : ℕ) (T : SchwartzMap (Fin n → ℝ) ℂ →L[ℂ] ℂ),
    (∀ k : Fin n → ℤ, ∀ f f' : SchwartzMap (Fin n → ℝ) ℂ, (∀ x, f' x = f (x + fun i => (k i : ℝ))) → T f' = T f) →
    (∀ m : Fin n → ℤ, ∀ f f' : SchwartzMap (Fin n → ℝ) ℂ,
      (∀ x, f' x = Complex.exp (2 * Real.pi * Complex.I * ((∑ i, (m i : ℝ) * x i : ℝ) : ℂ)) * f x) → T f' = T f) →
    ∃ c : ℂ, ∀ f : SchwartzMap (Fin n → ℝ) ℂ, T f = c * ∑' k : Fin n → ℤ, f (fun i => (k i : ℝ)) := by
  intro n T htr hmod
  obtain ⟨c, hc⟩ := GlobalTheory.LatticeComb.comb_unique (Fin n → ℝ) (dotForm n) (dotForm_nondegenerate n)
    (intLat n) 0 T
    (fun l hl f f' hf => by
      obtain ⟨k, rfl⟩ := (mem_intLat l).1 hl
      exact htr k f f' hf)
    (fun μ hμ f f' hf => by
      have hi : ∀ i, ∃ z : ℤ, μ i = z := by
        intro i
        obtain ⟨z, hz⟩ := hμ (Pi.single i 1) ((mem_intLat _).2 ⟨Pi.single i 1, by
          funext j; by_cases h : j = i <;> simp [h]⟩)
        refine ⟨z, ?_⟩
        rw [← hz, dotForm_apply]
        simp [Pi.single_apply]
      choose m hm using hi
      have hμm : μ = fun i => (m i : ℝ) := funext hm
      subst hμm
      have h0 : dotForm n 0 (fun i => (m i : ℝ)) = 0 := by simp
      rw [h0]
      simp only [Complex.ofReal_zero, mul_zero, Complex.exp_zero, one_mul]
      refine hmod m f f' fun x => ?_
      rw [hf x, dotForm_apply]
      congr 3
      push_cast
      exact Finset.sum_congr rfl fun i _ => mul_comm _ _)
  refine ⟨c, fun f => ?_⟩
  rw [hc f, ← (intLatEquiv n).tsum_eq]
  simp only [zero_add]
  rfl

end GlobalTheory.IntComb
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodicTemperedDistPoisson =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledLatticeTranslationInvariant =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledLatticeTranslationInvariant", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenScaledInt\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\npublic import Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodicTemperedDistPoisson\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardAdelicCharacterNontrivialAtPlaces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open scoped Matrix TensorProduct Classical

noncomputable section

namespace GlobalTheory.LatUniq

theorem coe_mem_ints_iff {F : Type} [Field F] [NumberField F] (v : HeightOneSpectrum (𝓞 F)) (k : F) :
    (k : v.adicCompletion F) ∈ v.adicCompletionIntegers F ↔ v.valuation F k ≤ 1 := by
  rw [HeightOneSpectrum.mem_adicCompletionIntegers, HeightOneSpectrum.valuedAdicCompletion_eq_valuation']

theorem mem_scaledInt_iff {F : Type} [Field F] [NumberField F] {κ : Type} {a : F} (ha : a ≠ 0) (ξ : κ → F) :
    (fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i)) ∈ GlobalTheory.EvAdm.scaledInt F κ a ↔
      ∀ i, ∃ z : 𝓞 F, ξ i = a * (z : F) := by
  rw [GlobalTheory.EvAdm.mem_scaledInt]
  have key : ∀ (i : κ) (v : HeightOneSpectrum (𝓞 F)),
      (algebraMap F (v.adicCompletion F) a)⁻¹ * (algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i)) v =
        ((a⁻¹ * ξ i : F) : v.adicCompletion F) := by
    intro i v
    have h1 : (algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i)) v = algebraMap F (v.adicCompletion F) (ξ i) := rfl
    rw [h1, ← map_inv₀, ← map_mul]
    rfl
  constructor
  · intro h i
    have hv : ∀ v : HeightOneSpectrum (𝓞 F), v.valuation F (a⁻¹ * ξ i) ≤ 1 := fun v => by
      have := h i v
      rw [key] at this
      exact (coe_mem_ints_iff v _).mp this
    obtain ⟨z, hz⟩ := HeightOneSpectrum.mem_integers_of_valuation_le_one F _ hv
    refine ⟨z, ?_⟩
    have hz' : ((z : 𝓞 F) : F) = a⁻¹ * ξ i := hz
    rw [hz', ← mul_assoc, mul_inv_cancel₀ ha, one_mul]
  · intro h i v
    obtain ⟨z, hz⟩ := h i
    rw [key, hz, ← mul_assoc, inv_mul_cancel₀ ha, one_mul]
    exact (coe_mem_ints_iff v _).mpr (HeightOneSpectrum.valuation_le_one v z)

end GlobalTheory.LatUniq

namespace GlobalTheory.LatUniq

theorem transfer {E : Type} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E] {n : ℕ}
    (B : Module.Basis (Fin n) ℝ E) (T : SchwartzMap E ℂ →L[ℂ] ℂ)
    (h1 : ∀ k : Fin n → ℤ, ∀ f f' : SchwartzMap E ℂ,
      (∀ x, f' x = f (x + ∑ l, (k l : ℝ) • B l)) → T f' = T f)
    (h2 : ∀ m : Fin n → ℤ, ∀ f f' : SchwartzMap E ℂ,
      (∀ x, f' x = Complex.exp (2 * Real.pi * Complex.I * ((∑ l, (m l : ℝ) * B.repr x l : ℝ) : ℂ)) * f x) →
        T f' = T f) :
    ∃ c : ℂ, ∀ f : SchwartzMap E ℂ, T f = c * ∑' k : Fin n → ℤ, f (∑ l, (k l : ℝ) • B l) := by
  let Φ : (Fin n → ℝ) ≃L[ℝ] E := B.equivFun.symm.toContinuousLinearEquiv
  have hΦ : ∀ t, Φ t = ∑ l, t l • B l := fun t => B.equivFun_symm_apply t
  have hΦs : ∀ y l, Φ.symm y l = B.repr y l := fun y l => rfl
  let C : SchwartzMap (Fin n → ℝ) ℂ →L[ℂ] SchwartzMap E ℂ := SchwartzMap.compCLMOfContinuousLinearEquiv ℂ Φ.symm
  have hC : ∀ g y, C g y = g (Φ.symm y) := fun g y => rfl
  have t1 : ∀ k : Fin n → ℤ, ∀ g g' : SchwartzMap (Fin n → ℝ) ℂ,
      (∀ x, g' x = g (x + fun i => (k i : ℝ))) → (T.comp C) g' = (T.comp C) g := by
    intro k g g' hg
    show T (C g') = T (C g)
    apply h1 k
    intro y
    rw [hC, hC, hg]
    congr 1
    rw [ContinuousLinearEquiv.map_add (e := _), ← hΦ]
    simp
  have t2 : ∀ m : Fin n → ℤ, ∀ g g' : SchwartzMap (Fin n → ℝ) ℂ,
      (∀ x, g' x = Complex.exp (2 * Real.pi * Complex.I * ((∑ i, (m i : ℝ) * x i : ℝ) : ℂ)) * g x) →
        (T.comp C) g' = (T.comp C) g := by
    intro m g g' hg
    show T (C g') = T (C g)
    apply h2 m
    intro y
    rw [hC, hC, hg]
    simp only [hΦs]
  obtain ⟨c, hc⟩ := _root_.GlobalTheory.IntComb.dirac_comb_unique n (T.comp C) t1 t2
  refine ⟨c, fun f => ?_⟩
  have hf : C (SchwartzMap.compCLMOfContinuousLinearEquiv ℂ Φ f) = f := by
    ext y; rw [hC]; simp
  have := hc (SchwartzMap.compCLMOfContinuousLinearEquiv ℂ Φ f)
  rw [ContinuousLinearMap.comp_apply, hf] at this
  rw [this]
  congr 1
  refine tsum_congr fun k => ?_
  simp [hΦ]

end GlobalTheory.LatUniq

namespace GlobalTheory.LatUniq

variable {F : Type} [Field F] [NumberField F] (κ : Type) [Fintype κ]

abbrev Idx (F : Type) [Field F] [NumberField F] := Σ _ : κ, Module.Free.ChooseBasisIndex ℤ (𝓞 F)

abbrev nn (F : Type) [Field F] [NumberField F] : ℕ := Fintype.card (Idx κ F)

def mulA (a : F) (ha : a ≠ 0) : mixedEmbedding.mixedSpace F ≃ₗ[ℝ] mixedEmbedding.mixedSpace F where
  toFun x := mixedEmbedding F a * x
  invFun x := mixedEmbedding F a⁻¹ * x
  map_add' x y := mul_add _ x y
  map_smul' r x := mul_smul_comm r _ x
  left_inv x := by simp only [← mul_assoc, ← map_mul, inv_mul_cancel₀ ha, map_one, one_mul]
  right_inv x := by simp only [← mul_assoc, ← map_mul, mul_inv_cancel₀ ha, map_one, one_mul]

def intBasis (F : Type) [Field F] [NumberField F] : Module.Basis (Fin (nn κ F)) ℤ (κ → 𝓞 F) :=
  (Pi.basis fun _ : κ => RingOfIntegers.basis F).reindex (Fintype.equivFin (Idx κ F))

def realBasis (a : F) (ha : a ≠ 0) : Module.Basis (Fin (nn κ F)) ℝ (κ → mixedEmbedding.mixedSpace F) :=
  (Pi.basis fun _ : κ => (mixedEmbedding.latticeBasis F).map (mulA a ha)).reindex (Fintype.equivFin (Idx κ F))

theorem realBasis_apply (a : F) (ha : a ≠ 0) (l : Fin (nn κ F)) (i : κ) :
    realBasis κ a ha l i = mixedEmbedding F (a * ((intBasis κ F l i : 𝓞 F) : F)) := by
  obtain ⟨p, rfl⟩ := (Fintype.equivFin (Idx κ F)).surjective l
  simp only [realBasis, intBasis, Module.Basis.reindex_apply, Equiv.symm_apply_apply, Pi.basis_apply,
    Module.Basis.map_apply]
  by_cases h : i = p.1
  · subst h
    simp [mulA, mixedEmbedding.latticeBasis_apply, integralBasis_apply]
  · simp [Pi.single_eq_of_ne h]

theorem sum_realBasis (a : F) (ha : a ≠ 0) (k : Fin (nn κ F) → ℤ) :
    ∑ l, (k l : ℝ) • realBasis κ a ha l =
      fun i => mixedEmbedding F (a * (((∑ l, k l • intBasis κ F l) i : 𝓞 F) : F)) := by
  funext i
  simp [Finset.sum_apply, realBasis_apply, Finset.mul_sum, Int.cast_smul_eq_zsmul]
  refine Finset.sum_congr rfl fun l _ => ?_
  exact mul_left_comm _ _ _

def dualVec (a : F) (m : Fin (nn κ F) → ℤ) : κ → F := fun i =>
  a⁻¹ * ∑ j, (-(m (Fintype.equivFin (Idx κ F) ⟨i, j⟩)) : ℚ) •
    (Algebra.traceForm ℚ F).dualBasis (traceForm_nondegenerate ℚ F) (integralBasis F) j

theorem trace_dualVec (a : F) (ha : a ≠ 0) (m : Fin (nn κ F) → ℤ) (l : Fin (nn κ F)) :
    Algebra.trace ℚ F (∑ i, (a * ((intBasis κ F l i : 𝓞 F) : F)) * dualVec κ a m i) = -(m l : ℚ) := by
  obtain ⟨⟨i₀, j₀⟩, rfl⟩ := (Fintype.equivFin (Idx κ F)).surjective l
  have hZ : ∀ i, intBasis κ F (Fintype.equivFin (Idx κ F) ⟨i₀, j₀⟩) i =
      Pi.single (M := fun _ : κ => 𝓞 F) i₀ (RingOfIntegers.basis F j₀) i := by
    intro i
    simp only [intBasis, Module.Basis.reindex_apply, Equiv.symm_apply_apply, Pi.basis_apply]
  rw [Finset.sum_eq_single i₀]
  · rw [hZ, Pi.single_eq_same]
    simp only [dualVec]
    have e1 : a * ((RingOfIntegers.basis F j₀ : 𝓞 F) : F) * (a⁻¹ * ∑ j, (-(m (Fintype.equivFin (Idx κ F) ⟨i₀, j⟩)) : ℚ) •
        (Algebra.traceForm ℚ F).dualBasis (traceForm_nondegenerate ℚ F) (integralBasis F) j) =
        ∑ j, (-(m (Fintype.equivFin (Idx κ F) ⟨i₀, j⟩)) : ℚ) •
        ((Algebra.traceForm ℚ F).dualBasis (traceForm_nondegenerate ℚ F) (integralBasis F) j *
          ((RingOfIntegers.basis F j₀ : 𝓞 F) : F)) := by
      rw [Finset.mul_sum, Finset.mul_sum]
      refine Finset.sum_congr rfl fun j _ => ?_
      rw [Algebra.smul_def, Algebra.smul_def]
      field_simp

    rw [e1, map_sum]
    have hd : ∀ j, Algebra.trace ℚ F ((Algebra.traceForm ℚ F).dualBasis (traceForm_nondegenerate ℚ F)
        (integralBasis F) j * ((RingOfIntegers.basis F j₀ : 𝓞 F) : F)) = if j₀ = j then 1 else 0 := by
      intro j
      have := (Algebra.traceForm ℚ F).apply_dualBasis_left (traceForm_nondegenerate ℚ F) (integralBasis F) j j₀
      rw [Algebra.traceForm_apply, integralBasis_apply] at this
      exact this
    simp only [map_smul, hd, smul_eq_mul, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq, Finset.mem_univ, if_true]
  · intro i _ hi
    rw [hZ, Pi.single_eq_of_ne hi]
    simp
  · simp

end GlobalTheory.LatUniq

namespace GlobalTheory.LatUniq

variable {F : Type} [Field F] [NumberField F] (κ : Type) [Fintype κ]

theorem char_identity (a : F) (ha : a ≠ 0) (m : Fin (nn κ F) → ℤ) (x : κ → mixedEmbedding.mixedSpace F) :
    ∑ l, (m l : ℝ) * (realBasis κ a ha).repr x l =
      -Algebra.trace ℝ (mixedEmbedding.mixedSpace F) (∑ i, x i * mixedEmbedding F (dualVec κ a m i)) := by
  have hl : ∀ l, Algebra.trace ℝ (mixedEmbedding.mixedSpace F)
      (∑ i, realBasis κ a ha l i * mixedEmbedding F (dualVec κ a m i)) = -(m l : ℝ) := by
    intro l
    have e : ∑ i, realBasis κ a ha l i * mixedEmbedding F (dualVec κ a m i) =
        mixedEmbedding F (∑ i, (a * ((intBasis κ F l i : 𝓞 F) : F)) * dualVec κ a m i) := by

      simp only [realBasis_apply, map_sum, map_mul]
    rw [e, GlobalTheory.PsiNontriv.trace_mixedEmbedding, trace_dualVec κ a ha m l]
    push_cast
    rfl
  conv_rhs => rw [← (realBasis κ a ha).sum_repr x]
  simp only [Finset.sum_apply, Pi.smul_apply, Finset.sum_mul, smul_mul_assoc]

  rw [Finset.sum_comm, map_sum, ← Finset.sum_neg_distrib]
  refine Finset.sum_congr rfl fun l _ => ?_
  rw [← Finset.smul_sum, map_smul, smul_eq_mul, hl]
  ring

theorem main_lat : ∀ (F : Type) [Field F] [NumberField F] (κ : Type) [Fintype κ] (a : F), a ≠ 0 →
    ∀ T : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ →L[ℂ] ℂ,
    (∀ ξ : κ → F, (fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i)) ∈ GlobalTheory.EvAdm.scaledInt F κ a →
      ∀ f f' : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ,
        (∀ x, f' x = f (x + fun i => mixedEmbedding F (ξ i))) → T f' = T f) →
    (∀ b : κ → F, (∀ ξ : κ → F, (fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i)) ∈ GlobalTheory.EvAdm.scaledInt F κ a →
        ∃ k : ℤ, Algebra.trace ℚ F (∑ i, ξ i * b i) = k) →
      ∀ f f' : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ,
        (∀ x, f' x = Complex.exp (-(2 * Real.pi * Complex.I) *
          ((Algebra.trace ℝ (mixedEmbedding.mixedSpace F) (∑ i, x i * mixedEmbedding F (b i)) : ℝ) : ℂ)) * f x) →
        T f' = T f) →
    ∃ c : ℂ, ∀ f : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ,
      T f = c * ∑' ξ : κ → F, {ξ : κ → F | (fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i)) ∈
        GlobalTheory.EvAdm.scaledInt F κ a}.indicator (fun ξ => f (fun i => mixedEmbedding F (ξ i))) ξ := by
  intro F _ _ κ _ a ha T hT hC
  have h1 : ∀ k : Fin (nn κ F) → ℤ, ∀ f f' : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ,
      (∀ x, f' x = f (x + ∑ l, (k l : ℝ) • realBasis κ a ha l)) → T f' = T f := by
    intro k f f' hf
    refine hT (fun i => a * (((∑ l, k l • intBasis κ F l) i : 𝓞 F) : F))
      ((mem_scaledInt_iff ha _).mpr fun i => ⟨_, rfl⟩) f f' fun x => ?_
    rw [hf, sum_realBasis]
  have h2 : ∀ m : Fin (nn κ F) → ℤ, ∀ f f' : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ,
      (∀ x, f' x = Complex.exp (2 * Real.pi * Complex.I *
        ((∑ l, (m l : ℝ) * (realBasis κ a ha).repr x l : ℝ) : ℂ)) * f x) → T f' = T f := by
    intro m f f' hf
    refine hC (dualVec κ a m) ?_ f f' fun x => ?_
    · intro ξ hξ
      choose z hz using (mem_scaledInt_iff ha ξ).mp hξ
      refine ⟨∑ l, (intBasis κ F).repr z l * (-(m l)), ?_⟩
      have hzs := (intBasis κ F).sum_repr z
      have hξ' : ξ = fun i => a * (((∑ l, (intBasis κ F).repr z l • intBasis κ F l) i : 𝓞 F) : F) := by
        funext i; rw [hzs, hz i]
      rw [hξ']
      have e : ∑ i, a * (((∑ l, (intBasis κ F).repr z l • intBasis κ F l) i : 𝓞 F) : F) * dualVec κ a m i =
          ∑ l, (intBasis κ F).repr z l • ∑ i, (a * ((intBasis κ F l i : 𝓞 F) : F)) * dualVec κ a m i := by

        simp only [Finset.sum_apply, Pi.smul_apply, map_sum, map_zsmul, Finset.mul_sum, Finset.sum_mul,
        Finset.smul_sum]
        rw [Finset.sum_comm]
        refine Finset.sum_congr rfl fun l _ => Finset.sum_congr rfl fun i _ => ?_
        rw [mul_smul_comm, smul_mul_assoc]

      rw [e, map_sum]
      push_cast
      refine Finset.sum_congr rfl fun l _ => ?_
      rw [map_zsmul, trace_dualVec κ a ha m l, zsmul_eq_mul]
    · rw [hf, char_identity]
      congr 1
      push_cast
      ring_nf
  obtain ⟨c, hc⟩ := transfer (realBasis κ a ha) T h1 h2
  refine ⟨c, fun f => ?_⟩
  rw [hc f]
  congr 1
  rw [← tsum_subtype]
  let S : Set (κ → F) := {ξ : κ → F | (fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i)) ∈
        GlobalTheory.EvAdm.scaledInt F κ a}
  let θ : (Fin (nn κ F) → ℤ) → S := fun k =>
    ⟨fun i => a * (((∑ l, k l • intBasis κ F l) i : 𝓞 F) : F), (mem_scaledInt_iff ha _).mpr fun i => ⟨_, rfl⟩⟩
  have hsum : ∀ k : Fin (nn κ F) → ℤ, ∑ l, k l • intBasis κ F l = (intBasis κ F).equivFun.symm k := fun k =>
    ((intBasis κ F).equivFun_symm_apply k).symm
  have hθ : Function.Bijective θ := by
    constructor
    · intro k k' hkk
      have h0 : ∀ i, a * (((∑ l, k l • intBasis κ F l) i : 𝓞 F) : F) =
          a * (((∑ l, k' l • intBasis κ F l) i : 𝓞 F) : F) := fun i => congrFun (congrArg Subtype.val hkk) i
      have h3 : ∑ l, k l • intBasis κ F l = ∑ l, k' l • intBasis κ F l := by
        funext i
        exact RingOfIntegers.coe_injective (mul_left_cancel₀ ha (h0 i))
      rw [hsum, hsum] at h3
      exact (intBasis κ F).equivFun.symm.injective h3
    · rintro ⟨ξ, hξ⟩
      choose z hz using (mem_scaledInt_iff ha ξ).mp hξ
      refine ⟨(intBasis κ F).equivFun z, Subtype.ext ?_⟩
      funext i
      show a * (((∑ l, _ • intBasis κ F l) i : 𝓞 F) : F) = ξ i
      rw [hsum, LinearEquiv.symm_apply_apply, hz i]
  rw [← (Equiv.ofBijective θ hθ).tsum_eq]
  refine tsum_congr fun k => ?_
  rw [sum_realBasis]
  rfl

end GlobalTheory.LatUniq
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledLatticeTranslationInvariant =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSumIndicatorNonzero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSumIndicatorNonzero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenScaledInt\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNatMulIntegralOfIsCompact\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\nimport Development.AbelianVarietyTheory.Definitions.Foundations.NormEulerPolySubOneLe\npublic import Mathlib.Analysis.Calculus.BumpFunction.Basic\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open scoped Matrix TensorProduct Classical

noncomputable section

namespace GlobalTheory.ThetaScaledNe

theorem normAtPlace_le_norm {F : Type} [Field F] [NumberField F] (w : InfinitePlace F)
    (y : mixedEmbedding.mixedSpace F) : mixedEmbedding.normAtPlace w y ≤ ‖y‖ := by
  by_cases hw : w.IsReal
  · rw [mixedEmbedding.normAtPlace_apply_of_isReal hw]
    exact (norm_le_pi_norm _ _).trans (norm_fst_le _)
  · have hc : w.IsComplex := InfinitePlace.not_isReal_iff_isComplex.mp hw
    rw [mixedEmbedding.normAtPlace_apply_of_isComplex hc]
    exact (norm_le_pi_norm _ _).trans (norm_snd_le _)

theorem one_le_norm_mixedEmbedding {F : Type} [Field F] [NumberField F] {y : 𝓞 F} (hy : y ≠ 0) :
    1 ≤ ‖mixedEmbedding F (y : F)‖ := by
  by_contra h
  push_neg at h
  have hlt : ∀ z : InfinitePlace F, z (y : F) < 1 := fun z => by
    have := normAtPlace_le_norm z (mixedEmbedding F (y : F))
    rw [mixedEmbedding.normAtPlace_apply] at this
    exact this.trans_lt h
  let w : InfinitePlace F := Classical.arbitrary _
  have := InfinitePlace.one_le_of_lt_one (w := w) hy (fun z _ => hlt z)
  exact absurd (hlt w) (not_lt.mpr this)

theorem exists_int_of_mem_scaledInt {F : Type} [Field F] [NumberField F] {κ : Type} {a : F} (ha : a ≠ 0)
    {ξ : κ → F} (h : (fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i)) ∈ GlobalTheory.EvAdm.scaledInt F κ a)
    (i : κ) : ∃ y : 𝓞 F, ξ i = a * (y : F) := by
  have hv : ∀ v : HeightOneSpectrum (𝓞 F), v.valuation F (a⁻¹ * ξ i) ≤ 1 := fun v => by
    have h1 := h i v
    have e : (algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i)) v = algebraMap F (v.adicCompletion F) (ξ i) := rfl
    rw [e, HeightOneSpectrum.mem_adicCompletionIntegers, Valuation.map_mul, map_inv₀] at h1
    rw [Valuation.map_mul, map_inv₀]
    have e1 : Valued.v (algebraMap F (v.adicCompletion F) a) = v.valuation F a :=
      HeightOneSpectrum.valuedAdicCompletion_eq_valuation' v a
    have e2 : Valued.v (algebraMap F (v.adicCompletion F) (ξ i)) = v.valuation F (ξ i) :=
      HeightOneSpectrum.valuedAdicCompletion_eq_valuation' v (ξ i)
    rw [e1, e2] at h1
    exact h1
  obtain ⟨y, hy⟩ := HeightOneSpectrum.mem_integers_of_valuation_le_one F _ hv
  refine ⟨y, ?_⟩
  have hy' : (y : F) = a⁻¹ * ξ i := hy
  rw [hy', mul_inv_cancel_left₀ ha]

theorem exists_thetaSum_scaledInt_ne_zero : ∀ (F : Type) [Field F] [NumberField F] (κ : Type) [Fintype κ] (a : F), a ≠ 0 →
    ∃ f : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ,
      thetaSum F (pureA F f ((GlobalTheory.EvAdm.scaledInt F κ a : Set (κ → FiniteAdeleRing (𝓞 F) F)).indicator
        (fun _ => (1 : ℂ)))) ≠ 0 := by
  intro F _ _ κ _ a ha
  let V := κ → mixedEmbedding.mixedSpace F
  set c : mixedEmbedding.mixedSpace F := mixedEmbedding F a⁻¹ with hc
  set ε : ℝ := 1 / (‖c‖ + 1) with hε
  have hε0 : 0 < ε := by positivity
  let b : ContDiffBump (0 : V) := ⟨ε / 2, ε, half_pos hε0, half_lt_self hε0⟩
  have h1 : HasCompactSupport (fun x => ((b x : ℝ) : ℂ)) :=
    b.hasCompactSupport.comp_left (g := fun r : ℝ => (r : ℂ)) (by simp)
  let f : SchwartzMap V ℂ := h1.toSchwartzMap (Complex.ofRealCLM.contDiff.comp b.contDiff)
  have hf : ∀ x, f x = ((b x : ℝ) : ℂ) := fun x => rfl
  refine ⟨f, ?_⟩
  set g : (κ → FiniteAdeleRing (𝓞 F) F) → ℂ :=
    (GlobalTheory.EvAdm.scaledInt F κ a : Set (κ → FiniteAdeleRing (𝓞 F) F)).indicator (fun _ => (1 : ℂ)) with hg
  have hzero : ∀ ξ : κ → F, ξ ≠ 0 → pureA F f g (fun i => algebraMap F (AdeleRing (𝓞 F) F) (ξ i)) = 0 := by
    intro ξ hξ
    rw [pureA_algebraMap]
    by_cases hm : (fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i)) ∈ GlobalTheory.EvAdm.scaledInt F κ a
    · refine mul_eq_zero_of_left ?_ _
      obtain ⟨i, hi⟩ : ∃ i, ξ i ≠ 0 := by
        by_contra h; push_neg at h; exact hξ (funext h)
      obtain ⟨y, hy⟩ := exists_int_of_mem_scaledInt ha hm i
      have hy0 : y ≠ 0 := by
        rintro rfl
        exact hi (by simpa using hy)
      have hn1 := one_le_norm_mixedEmbedding hy0
      have e : mixedEmbedding F (y : F) = c * mixedEmbedding F (ξ i) := by
        rw [hc, ← map_mul, hy, inv_mul_cancel_left₀ ha]
      have h2 : ‖mixedEmbedding F (ξ i)‖ ≤ ‖(fun j => mixedEmbedding F (ξ j) : V)‖ :=
        norm_le_pi_norm (fun j => mixedEmbedding F (ξ j)) i
      have h3 : 1 ≤ ‖c‖ * ‖(fun j => mixedEmbedding F (ξ j) : V)‖ := by
        rw [e] at hn1
        exact hn1.trans ((norm_mul_le _ _).trans (mul_le_mul_of_nonneg_left h2 (norm_nonneg _)))
      rw [hf, b.zero_of_le_dist, Complex.ofReal_zero]
      show ε ≤ dist (fun j => mixedEmbedding F (ξ j) : V) 0
      rw [dist_zero_right, hε, div_le_iff₀ (by positivity)]
      nlinarith [norm_nonneg c, norm_nonneg (fun j => mixedEmbedding F (ξ j) : V)]
    · refine mul_eq_zero_of_right _ ?_
      rw [hg]
      exact Set.indicator_of_notMem hm _
  have h0 : pureA F f g (fun i => algebraMap F (AdeleRing (𝓞 F) F) ((0 : κ → F) i)) = 1 := by
    rw [pureA_algebraMap]
    have hx : (fun i : κ => mixedEmbedding F ((0 : κ → F) i)) = 0 := by
      funext i; exact map_zero _
    have hm : (fun i : κ => algebraMap F (FiniteAdeleRing (𝓞 F) F) ((0 : κ → F) i)) ∈
        GlobalTheory.EvAdm.scaledInt F κ a := by
      have e : (fun i : κ => algebraMap F (FiniteAdeleRing (𝓞 F) F) ((0 : κ → F) i)) = 0 := by
        funext i; exact map_zero _
      rw [e]; exact zero_mem _
    rw [hx, hf, b.one_of_mem_closedBall (Metric.mem_closedBall_self (half_pos hε0).le), hg,
      Set.indicator_of_mem hm]
    simp
  show (∑' ξ : κ → F, pureA F f g (fun i => algebraMap F (AdeleRing (𝓞 F) F) (ξ i))) ≠ 0
  rw [tsum_eq_single 0 hzero, h0]
  exact one_ne_zero

end GlobalTheory.ThetaScaledNe

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSumIndicatorNonzero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFunctionalArchimedeanFactor =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFunctionalArchimedeanFactor", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenScaledInt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EigenIntertwinerGoodModels\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNatMulIntegralOfIsCompact\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteAdeleApproxScaled\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledCosetIndicatorSchwartz\npublic import Mathlib.Basic.Complex.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledIndicatorCosetSum\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledLatticeFourierInvariant\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\npublic import Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScaledLatticeTranslationInvariant\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSumIndicatorNonzero\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaTransformRationalTranslateQuasiInvariant\nimport GroundTheory.GlobalFields.TateThesis.AdelicChar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open scoped Matrix TensorProduct Classical

noncomputable section

namespace GlobalTheory.ThetaFunctionalUnique

variable {F : Type} [Field F] [NumberField F] {κ : Type} [Fintype κ]


variable (F κ) in
abbrev boxInd (a : F) : (κ → FiniteAdeleRing (𝓞 F) F) → ℂ :=
  (GlobalTheory.EvAdm.scaledInt F κ a : Set (κ → FiniteAdeleRing (𝓞 F) F)).indicator (fun _ => (1 : ℂ))


variable (F κ) in
abbrev cosInd (a : F) (r : κ → FiniteAdeleRing (𝓞 F) F) : (κ → FiniteAdeleRing (𝓞 F) F) → ℂ :=
  {y | y - r ∈ GlobalTheory.EvAdm.scaledInt F κ a}.indicator (fun _ => (1 : ℂ))

theorem inf_rat (q : F) :
    InfiniteAdeleRing.ringEquiv_mixedSpace F (algebraMap F (AF F) q).1 = mixedEmbedding F q := by
  simp [InfiniteAdeleRing.ringEquiv_mixedSpace]
  rfl

theorem boxInd_mem_SB {a : F} (ha : a ≠ 0) : boxInd F κ a ∈ SB (κ → FiniteAdeleRing (𝓞 F) F) := by
  have h := _root_.GlobalTheory.EvAdm.indicator_coset_scaledInt_mem_SB F κ a ha 0
  convert h using 2
  ext y
  simp

theorem pure_mem (f : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ) {g : (κ → FiniteAdeleRing (𝓞 F) F) → ℂ}
    (hg : g ∈ SB (κ → FiniteAdeleRing (𝓞 F) F)) : pureA F f g ∈ schA F κ :=
  Submodule.subset_span ⟨f, g, hg, rfl⟩

theorem schr_trans (ψ : AddChar (AF F) ℂ) (ξ : κ → F) (Φ : (κ → AF F) → ℂ) :
    schr ψ ((fun i => algebraMap F (AF F) (ξ i)), (fun i => algebraMap F (AF F) ((0 : κ → F) i))) Φ =
      fun x => Φ (x + fun i => algebraMap F (AF F) (ξ i)) := by
  funext x
  simp [schr, dotProduct]

theorem pure_shift (f f' : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ) (ξ : κ → F)
    (g g' : (κ → FiniteAdeleRing (𝓞 F) F) → ℂ) (hf : ∀ x, f' x = f (x + fun i => mixedEmbedding F (ξ i)))
    (hg : ∀ y, g' y = g (y + fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i))) :
    (fun x => pureA F f g (x + fun i => algebraMap F (AF F) (ξ i))) = pureA F f' g' := by
  funext x
  simp only [pureA, hf, hg]
  congr 2
  funext i
  show InfiniteAdeleRing.ringEquiv_mixedSpace F ((x i + algebraMap F (AF F) (ξ i)).1) =
    InfiniteAdeleRing.ringEquiv_mixedSpace F (x i).1 + mixedEmbedding F (ξ i)
  rw [← inf_rat]
  exact map_add _ _ _

theorem L_shift (ψ : AddChar (AF F) ℂ) (L : ((κ → AF F) → ℂ) → ℂ)
    (hinv : ∀ a b : κ → F, ∀ Φ ∈ schA F κ,
      L (schr ψ ((fun i => algebraMap F (AF F) (a i)), (fun i => algebraMap F (AF F) (b i))) Φ) = L Φ)
    (ξ : κ → F) {Φ : (κ → AF F) → ℂ} (hΦ : Φ ∈ schA F κ) :
    L (fun x => Φ (x + fun i => algebraMap F (AF F) (ξ i))) = L Φ := by
  have h := hinv ξ 0 Φ hΦ
  rwa [schr_trans] at h

theorem theta_shift (ψ : AddChar (AF F) ℂ) (hψ : IsStd ψ) (ξ : κ → F) (Φ : (κ → AF F) → ℂ) :
    thetaSum F (fun x => Φ (x + fun i => algebraMap F (AF F) (ξ i))) = thetaSum F Φ := by
  have h := GlobalTheory.ThetaQuasiRat.thetaSum_schr_rat F ψ hψ.2.1 ξ 0 Φ
  rwa [schr_trans] at h

theorem box_eq (ψ : AddChar (AF F) ℂ) (hψ : IsStd ψ) (L : ((κ → AF F) → ℂ) → ℂ)
    (hinv : ∀ a b : κ → F, ∀ Φ ∈ schA F κ,
      L (schr ψ ((fun i => algebraMap F (AF F) (a i)), (fun i => algebraMap F (AF F) (b i))) Φ) = L Φ)
    {a : F} (ha : a ≠ 0) (T : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ →L[ℂ] ℂ)
    (hT : ∀ f : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ, L (pureA F f (boxInd F κ a)) = T f) :
    ∃ c : ℂ, ∀ f : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ, L (pureA F f (boxInd F κ a)) = c * thetaSum F (pureA F f (boxInd F κ a)) := by
  obtain ⟨c, hc⟩ := _root_.GlobalTheory.LatUniq.main_lat F κ a ha T (fun ξ hξ f f' hf => by
      rw [← hT, ← hT]
      have e := pure_shift f f' ξ (boxInd F κ a) (boxInd F κ a) hf (fun y => by
        simp only [Set.indicator_apply, SetLike.mem_coe, AddSubgroup.add_mem_cancel_right _ hξ])
      rw [← e]
      exact L_shift ψ L hinv ξ (pure_mem f (boxInd_mem_SB ha)))
    (fun b hb f f' hf => by
      rw [← hT, ← hT, ← _root_.GlobalTheory.SchrCharPure.main F ψ hψ κ a ha b hb f f' hf]
      have h := hinv 0 b _ (pure_mem f (boxInd_mem_SB ha))
      have e0 : (fun i => algebraMap F (AF F) ((0 : κ → F) i)) = 0 := by funext i; simp
      rw [e0] at h
      exact h)
  refine ⟨c, fun f => ?_⟩
  rw [hT, hc f]
  congr 1
  unfold thetaSum
  refine tsum_congr fun ξ => ?_
  have e1 : (fun i => InfiniteAdeleRing.ringEquiv_mixedSpace F
      ((fun i => algebraMap F (AdeleRing (𝓞 F) F) (ξ i)) i).1) = fun i => mixedEmbedding F (ξ i) := by
    funext i; exact inf_rat (ξ i)
  have e2 : (fun i => ((fun i => algebraMap F (AdeleRing (𝓞 F) F) (ξ i)) i).2) =
      fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i) := rfl
  simp only [pureA, e1, e2, Set.indicator_apply, SetLike.mem_coe, Set.mem_setOf_eq]
  split_ifs <;> simp

end GlobalTheory.ThetaFunctionalUnique

namespace GlobalTheory.ThetaFunctionalUnique

variable {F : Type} [Field F] [NumberField F] {κ : Type} [Fintype κ]

theorem cosInd_mem_SB {a : F} (ha : a ≠ 0) (r : κ → FiniteAdeleRing (𝓞 F) F) :
    cosInd F κ a r ∈ SB (κ → FiniteAdeleRing (𝓞 F) F) :=
  _root_.GlobalTheory.EvAdm.indicator_coset_scaledInt_mem_SB F κ a ha r

theorem cos_eq (ψ : AddChar (AF F) ℂ) (hψ : IsStd ψ) (L : ((κ → AF F) → ℂ) → ℂ)
    (hinv : ∀ a b : κ → F, ∀ Φ ∈ schA F κ,
      L (schr ψ ((fun i => algebraMap F (AF F) (a i)), (fun i => algebraMap F (AF F) (b i))) Φ) = L Φ)
    {a : F} (ha : a ≠ 0) {c : ℂ}
    (hc : ∀ f : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ,
      L (pureA F f (boxInd F κ a)) = c * thetaSum F (pureA F f (boxInd F κ a)))
    (r : κ → FiniteAdeleRing (𝓞 F) F) (f : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ) :
    L (pureA F f (cosInd F κ a r)) = c * thetaSum F (pureA F f (cosInd F κ a r)) := by
  obtain ⟨ξ, hξ⟩ := _root_.GlobalTheory.EvAdm.exists_rational_rep_scaledInt F κ a ha r
  have hs : {y | y - r ∈ GlobalTheory.EvAdm.scaledInt F κ a} =
      {y | y - (fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i)) ∈ GlobalTheory.EvAdm.scaledInt F κ a} := by
    ext y
    simp only [Set.mem_setOf_eq]
    constructor
    · intro h
      have := add_mem h hξ
      rwa [sub_add_sub_cancel] at this
    · intro h
      have := sub_mem h hξ
      rwa [sub_sub_sub_cancel_right] at this
  have hr : cosInd F κ a r = cosInd F κ a (fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i)) := by
    simp only [cosInd, hs]
  rw [hr]
  set f' := SchwartzMap.compSubConstCLM ℂ (-(fun i => mixedEmbedding F (ξ i))) f with hf'def
  have hf' : ∀ x, f' x = f (x + fun i => mixedEmbedding F (ξ i)) := by
    intro x
    simp [hf'def, SchwartzMap.compSubConstCLM_apply, sub_neg_eq_add]
  have e := pure_shift f f' ξ (cosInd F κ a (fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i)))
    (boxInd F κ a) hf' (fun y => by simp only [Set.indicator_apply, SetLike.mem_coe, Set.mem_setOf_eq, add_sub_cancel_right])
  have hm := pure_mem f (cosInd_mem_SB ha (fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i)))
  rw [← L_shift ψ L hinv ξ hm, ← theta_shift ψ hψ ξ, e, hc f']

theorem L_sum (L : ((κ → AF F) → ℂ) → ℂ) (hadd : ∀ Φ ∈ schA F κ, ∀ Ψ ∈ schA F κ, L (Φ + Ψ) = L Φ + L Ψ)
    (hsmul : ∀ (c : ℂ), ∀ Φ ∈ schA F κ, L (c • Φ) = c * L Φ) {ι : Type} (s : Finset ι)
    (Φ : ι → (κ → AF F) → ℂ) (hΦ : ∀ j ∈ s, Φ j ∈ schA F κ) : L (∑ j ∈ s, Φ j) = ∑ j ∈ s, L (Φ j) := by
  have hL0 : L 0 = 0 := by
    have h := hsmul 0 0 (zero_mem _)
    simpa using h
  induction s using Finset.induction_on with
  | empty => simpa using hL0
  | insert j s hj ih =>
    rw [Finset.sum_insert hj, Finset.sum_insert hj,
      hadd _ (hΦ j (Finset.mem_insert_self _ _)) _ (Submodule.sum_mem _ fun k hk => hΦ k (Finset.mem_insert_of_mem hk)),
      ih fun k hk => hΦ k (Finset.mem_insert_of_mem hk)]

theorem theta_sum {ι : Type} (s : Finset ι) (Φ : ι → (κ → AF F) → ℂ) (hΦ : ∀ j ∈ s, Φ j ∈ schA F κ) :
    thetaSum F (∑ j ∈ s, Φ j) = ∑ j ∈ s, thetaSum F (Φ j) := by
  induction s using Finset.induction_on with
  | empty => simp [thetaSum]
  | insert j s hj ih =>
    rw [Finset.sum_insert hj, Finset.sum_insert hj,
      GlobalTheory.WeilM.thetaSum_add F (hΦ j (Finset.mem_insert_self _ _))
        (Submodule.sum_mem _ fun k hk => hΦ k (Finset.mem_insert_of_mem hk)),
      ih fun k hk => hΦ k (Finset.mem_insert_of_mem hk)]

theorem pure_sum (f : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ) {ι : Type} (s : Finset ι)
    (w : ι → ℂ) (g : ι → (κ → FiniteAdeleRing (𝓞 F) F) → ℂ) :
    pureA F f (∑ j ∈ s, w j • g j) = ∑ j ∈ s, w j • pureA F f (g j) := by
  funext x
  simp only [pureA, Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Finset.mul_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  ring

theorem const_mul (L : ((κ → AF F) → ℂ) → ℂ) (hadd : ∀ Φ ∈ schA F κ, ∀ Ψ ∈ schA F κ, L (Φ + Ψ) = L Φ + L Ψ)
    (hsmul : ∀ (c : ℂ), ∀ Φ ∈ schA F κ, L (c • Φ) = c * L Φ) (c : F → ℂ)
    (hc : ∀ a : F, a ≠ 0 → ∀ (r : κ → FiniteAdeleRing (𝓞 F) F) (f : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ),
      L (pureA F f (cosInd F κ a r)) = c a * thetaSum F (pureA F f (cosInd F κ a r)))
    {a : F} (ha : a ≠ 0) (m : 𝓞 F) (hm : m ≠ 0) : c a = c (a * m) := by
  obtain ⟨R, hR⟩ := _root_.GlobalTheory.EvAdm.CosetSum.indicator_scaledInt_eq_sum F κ a ha m hm
  obtain ⟨f, hf⟩ := _root_.GlobalTheory.ThetaScaledNe.exists_thetaSum_scaledInt_ne_zero F κ a ha
  have ham : a * (m : F) ≠ 0 := mul_ne_zero ha (by simpa using hm)
  have hb : boxInd F κ a = cosInd F κ a 0 := by
    unfold boxInd cosInd
    congr 1
    ext y
    simp
  have hsplit : pureA F f (boxInd F κ a) = ∑ ξ ∈ R, (1 : ℂ) •
      pureA F f (cosInd F κ (a * m) (fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i))) := by
    rw [← pure_sum]
    congr 1
    rw [show boxInd F κ a = _ from hR]
    simp
  have hmem : ∀ ξ ∈ R, (1 : ℂ) •
      pureA F f (cosInd F κ (a * m) (fun i => algebraMap F (FiniteAdeleRing (𝓞 F) F) (ξ i))) ∈ schA F κ :=
    fun ξ _ => Submodule.smul_mem _ _ (pure_mem f (cosInd_mem_SB ham _))
  have h1 := hc a ha 0 f
  rw [← hb] at h1
  have h2 : L (pureA F f (boxInd F κ a)) = c (a * m) * thetaSum F (pureA F f (boxInd F κ a)) := by
    rw [hsplit, L_sum L hadd hsmul R _ hmem, theta_sum R _ hmem, Finset.mul_sum]
    refine Finset.sum_congr rfl fun ξ _ => ?_
    rw [one_smul, hc _ ham]
  exact mul_right_cancel₀ hf (h1.symm.trans h2)

end GlobalTheory.ThetaFunctionalUnique

namespace GlobalTheory.ThetaFunctionalUnique

theorem main : ∀ (F : Type) [Field F] [NumberField F] (ψ : AddChar (AF F) ℂ), IsStd ψ → ∀ (κ : Type) [Fintype κ]
    (L : ((κ → AF F) → ℂ) → ℂ),
    (∀ Φ ∈ schA F κ, ∀ Ψ ∈ schA F κ, L (Φ + Ψ) = L Φ + L Ψ) →
    (∀ (c : ℂ), ∀ Φ ∈ schA F κ, L (c • Φ) = c * L Φ) →
    (∀ g ∈ SB (κ → FiniteAdeleRing (𝓞 F) F), ∃ T : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ →L[ℂ] ℂ,
      ∀ f : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ, L (pureA F f g) = T f) →
    (∀ a b : κ → F, ∀ Φ ∈ schA F κ,
      L (schr ψ ((fun i => algebraMap F (AF F) (a i)), (fun i => algebraMap F (AF F) (b i))) Φ) = L Φ) →
    ∃ c : ℂ, ∀ Φ ∈ schA F κ, L Φ = c * thetaSum F Φ := by
  intro F _ _ ψ hψ κ _ L hadd hsmul hadm hinv
  have hbox : ∀ a : F, ∃ c : ℂ, a ≠ 0 → ∀ f : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ,
      L (pureA F f (boxInd F κ a)) = c * thetaSum F (pureA F f (boxInd F κ a)) := by
    intro a
    by_cases ha : a = 0
    · exact ⟨0, fun h => absurd ha h⟩
    obtain ⟨T, hT⟩ := hadm _ (boxInd_mem_SB ha)
    obtain ⟨c, hc⟩ := box_eq ψ hψ L hinv ha T hT
    exact ⟨c, fun _ => hc⟩
  choose c hc using hbox
  have hcos : ∀ a : F, a ≠ 0 → ∀ (r : κ → FiniteAdeleRing (𝓞 F) F) (f : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ),
      L (pureA F f (cosInd F κ a r)) = c a * thetaSum F (pureA F f (cosInd F κ a r)) :=
    fun a ha r f => cos_eq ψ hψ L hinv ha (hc a ha) r f
  have hall : ∀ a : F, a ≠ 0 → c a = c 1 := by
    intro a ha
    obtain ⟨p, q, hq, hpq⟩ := IsFractionRing.div_surjective (A := 𝓞 F) a
    have hq0 : q ≠ 0 := nonZeroDivisors.ne_zero hq
    have hqF : (algebraMap (𝓞 F) F q) ≠ 0 := by simpa using hq0
    have hp0 : p ≠ 0 := by
      rintro rfl
      apply ha
      rw [← hpq]
      simp
    have e : a * (q : F) = 1 * (p : F) := by
      rw [← hpq]
      have : (algebraMap (𝓞 F) F q) = (q : F) := rfl
      have : (algebraMap (𝓞 F) F p) = (p : F) := rfl
      field_simp
    calc c a = c (a * q) := const_mul L hadd hsmul c hcos ha q hq0
      _ = c (1 * p) := by rw [e]
      _ = c 1 := (const_mul L hadd hsmul c hcos one_ne_zero p hp0).symm
  refine ⟨c 1, fun Φ hΦ => ?_⟩
  have hΦ' : Φ ∈ Submodule.span ℂ {Φ | ∃ (f : SchwartzMap (κ → mixedEmbedding.mixedSpace F) ℂ)
      (g : (κ → FiniteAdeleRing (𝓞 F) F) → ℂ), g ∈ SB (κ → FiniteAdeleRing (𝓞 F) F) ∧ Φ = pureA F f g} := hΦ
  induction hΦ' using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨f, g, hg, rfl⟩ := hx
    obtain ⟨a, ha, R, hR⟩ := GlobalTheory.EvAdm.exists_sum_cosets hg
    have hsplit : pureA F f g = ∑ r ∈ R, g r • pureA F f (cosInd F κ a r) := by
      rw [← pure_sum]
      congr 1
    have hmem : ∀ r ∈ R, g r • pureA F f (cosInd F κ a r) ∈ schA F κ :=
      fun r _ => Submodule.smul_mem _ _ (pure_mem f (cosInd_mem_SB ha r))
    rw [hsplit, L_sum L hadd hsmul R _ hmem, theta_sum R _ hmem, Finset.mul_sum]
    refine Finset.sum_congr rfl fun r _ => ?_
    rw [hsmul _ _ (pure_mem f (cosInd_mem_SB ha r)), GlobalTheory.WeilM.thetaSum_smul F, hcos a ha r f, hall a ha]
    ring
  | zero =>
    have h := hsmul 0 0 (zero_mem _)
    simp only [zero_smul, zero_mul] at h
    rw [h]
    simp [thetaSum]
  | add x y hx hy ihx ihy =>
    rw [hadd x hx y hy, GlobalTheory.WeilM.thetaSum_add F hx hy, ihx hx, ihy hy]
    ring
  | smul t x hx ih =>
    rw [hsmul t x hx, GlobalTheory.WeilM.thetaSum_smul F, ih hx]
    ring

end GlobalTheory.ThetaFunctionalUnique
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFunctionalArchimedeanFactor =====
