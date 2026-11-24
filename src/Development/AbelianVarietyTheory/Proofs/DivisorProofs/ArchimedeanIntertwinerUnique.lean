module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPairingStdP
public import Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension
public import Mathlib.Analysis.Calculus.BumpFunction.Basic
public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.Distribution.SchwartzSpace.Basic
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormIteratedFDerivRemCompLe
public import Mathlib.Analysis.Calculus.ContDiff.Bounds
public import Mathlib.Analysis.Normed.Lp.MeasurableSpace
public import Mathlib.MeasureTheory.Measure.Haar.OfBasis
public import Mathlib.Analysis.Distribution.SchwartzSpace.Fourier
public import Mathlib.Analysis.InnerProductSpace.EuclideanDist
public import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
public import Mathlib.Analysis.Normed.Module.HahnBanach
public import Mathlib.MeasureTheory.SpecificCodomains.Pi
public import Mathlib.Analysis.Calculus.ContDiff.Operations
public import Mathlib.Analysis.Calculus.ParametricIntegral
public import Mathlib.Analysis.SpecialFunctions.SmoothTransition
public import Mathlib.Algebra.Module.ZLattice.Summable
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzContinuousAtOfPointwiseOfBounded
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TrPApply
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationInvariantFunctionalRestrict
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzMapBarrelledSpace
public import Mathlib.Analysis.Calculus.BumpFunction.Normed
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MulRealAdEqZero
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.SchwartzEqZeroOfWrongSignGaussianRelation
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.LinearAlgebra.Matrix.FiniteDimensional
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
import Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.Tactic.TypeStar
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Topology.UniformSpace.Uniformizable
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Analysis.Distribution.SchwartzSpace.CompactSupport
import Mathlib.Algebra.Ring.IsFormallyReal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUSplittingTrRep

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzHadamardLemma, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFamilyPhaseBound, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFourierRepresentation, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzInnerProductContinuous, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzIntegralSuperposition, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationCharacterInvariantForm, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RealCompactPartitionUnity, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzDenseHasCompactSupport, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzCompactSupportDense, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzPairingContinuousFunctional, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFunctionalDependsOnValueAtZero, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationInvariantSchwartzUnique, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationIsometrySchwartzOperator, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationInvariantFormConstL2, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchimedeanIntertwinerUnique

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzHadamardLemma =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzHadamardLemma", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPairingStdP\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts\npublic import Mathlib.Analysis.Calculus.BumpFunction.Basic\n\n"}
section -- clump:auto
@[expose] public section

open scoped SchwartzMap Matrix TensorProduct Classical
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ArchUniq

noncomputable section

namespace GlobalTheory.ArchUniqStd

variable {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V]

def bil {P : V → V → ℝ} (h : IsPairing P) : LinearMap.BilinForm ℝ V :=
  LinearMap.mk₂ ℝ P h.addL (fun c x y => by simpa [smul_eq_mul] using h.smulL c x y) h.addR
    (fun c x y => by simpa [smul_eq_mul] using h.smulR c x y)

theorem bil_apply {P : V → V → ℝ} (h : IsPairing P) (x y : V) : bil h x y = P x y := rfl

theorem exists_right [FiniteDimensional ℝ V] {P : V → V → ℝ} (h : IsPairing P) (L : V →L[ℝ] ℝ) :
    ∃ b, ∀ y, P y b = L y := by
  have hinj : Function.Injective (bil h).flip := by
    rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
    intro b hb
    exact h.nondegR b fun x => by simpa [bil_apply] using LinearMap.congr_fun hb x
  have hsurj := (LinearMap.injective_iff_surjective_of_finrank_eq_finrank
    (Subspace.dual_finrank_eq (K := ℝ) (V := V)).symm).1 hinj
  obtain ⟨b, hb⟩ := hsurj (L : V →ₗ[ℝ] ℝ)
  exact ⟨b, fun y => by simpa [bil_apply] using LinearMap.congr_fun hb y⟩

theorem exists_one [FiniteDimensional ℝ V] : ∃ Φ : 𝓢(V, ℂ), Φ 0 = 1 := by
  let b : ContDiffBump (0 : V) := ⟨1, 2, one_pos, one_lt_two⟩
  have h1 : HasCompactSupport (fun x => ((b x : ℝ) : ℂ)) :=
    b.hasCompactSupport.comp_left (g := fun r : ℝ => (r : ℂ)) (by simp)
  refine ⟨h1.toSchwartzMap (Complex.ofRealCLM.contDiff.comp b.contDiff), ?_⟩
  change ((b 0 : ℝ) : ℂ) = 1
  rw [b.one_of_mem_closedBall (Metric.mem_closedBall_self zero_le_one)]
  simp

end GlobalTheory.ArchUniqStd

namespace GlobalTheory.ArchUniqStd

variable {V₁ : Type} [NormedAddCommGroup V₁] [NormedSpace ℝ V₁] [FiniteDimensional ℝ V₁]

end GlobalTheory.ArchUniqStd

namespace GlobalTheory.ArchUniqStd

variable {V₁ : Type} [NormedAddCommGroup V₁] [NormedSpace ℝ V₁] [FiniteDimensional ℝ V₁]

end GlobalTheory.ArchUniqStd
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzHadamardLemma =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFamilyPhaseBound =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFamilyPhaseBound", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormIteratedFDerivRemCompLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Calculus.ContDiff.Bounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Complex MeasureTheory

namespace GlobalTheory.CharFamily

variable {E : Type} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem seminorm_mul_le (c : E → ℂ) (hc : ContDiff ℝ (⊤ : ℕ∞) c) (h g : SchwartzMap E ℂ)
    (hg : ∀ x, g x = c x * h x) (k n m : ℕ) (M : ℝ) (hM : 0 ≤ M)
    (hcb : ∀ i ≤ n, ∀ x, ‖iteratedFDeriv ℝ i c x‖ ≤ M * (1 + ‖x‖) ^ m) :
    SchwartzMap.seminorm ℂ k n g ≤ 2 ^ n * M *
      (2 ^ (k + m) * ((Finset.Iic (k + m, n)).sup fun p => SchwartzMap.seminorm ℂ p.1 p.2) h) := by
  set S := 2 ^ (k + m) * ((Finset.Iic (k + m, n)).sup fun p => SchwartzMap.seminorm ℂ p.1 p.2) h
    with hS
  have hS0 : 0 ≤ S := mul_nonneg (by positivity) (apply_nonneg _ _)
  refine SchwartzMap.seminorm_le_bound ℂ k n g (by positivity) fun x => ?_
  have hg' : (⇑g) = fun x => c x * h x := funext hg
  rw [hg']
  have hmul := norm_iteratedFDeriv_mul_le (N := ((⊤ : ℕ∞) : WithTop ℕ∞)) hc (h.smooth ⊤) x
    (n := n) (by exact_mod_cast le_top)
  have hx0 : 0 ≤ ‖x‖ := norm_nonneg x
  have hterm : ∀ i ∈ Finset.range (n + 1),
      ‖x‖ ^ k * ((n.choose i : ℝ) * ‖iteratedFDeriv ℝ i c x‖ * ‖iteratedFDeriv ℝ (n - i) h x‖)
        ≤ (n.choose i : ℝ) * (M * S) := by
    intro i hi
    have hi' : i ≤ n := Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
    have h1 := hcb i hi' x
    have h2 : (1 + ‖x‖) ^ (k + m) * ‖iteratedFDeriv ℝ (n - i) h x‖ ≤ S :=
      SchwartzMap.one_add_le_sup_seminorm_apply (m := (k + m, n)) le_rfl (Nat.sub_le n i) h x
    have h5 : ‖x‖ ^ k ≤ (1 + ‖x‖) ^ k := by gcongr; linarith
    have hc0 : (0 : ℝ) ≤ n.choose i := Nat.cast_nonneg _
    calc ‖x‖ ^ k * ((n.choose i : ℝ) * ‖iteratedFDeriv ℝ i c x‖ * ‖iteratedFDeriv ℝ (n - i) h x‖)
        = (n.choose i : ℝ) * (‖x‖ ^ k * ‖iteratedFDeriv ℝ i c x‖ *
            ‖iteratedFDeriv ℝ (n - i) h x‖) := by ring
      _ ≤ (n.choose i : ℝ) * ((1 + ‖x‖) ^ k * (M * (1 + ‖x‖) ^ m) *
            ‖iteratedFDeriv ℝ (n - i) h x‖) := by gcongr
      _ = (n.choose i : ℝ) * (M * ((1 + ‖x‖) ^ (k + m) * ‖iteratedFDeriv ℝ (n - i) h x‖)) := by
            ring
      _ ≤ (n.choose i : ℝ) * (M * S) := by gcongr
  calc ‖x‖ ^ k * ‖iteratedFDeriv ℝ n (fun y => c y * h y) x‖
      ≤ ‖x‖ ^ k * ∑ i ∈ Finset.range (n + 1), (n.choose i : ℝ) *
          ‖iteratedFDeriv ℝ i c x‖ * ‖iteratedFDeriv ℝ (n - i) h x‖ := by gcongr
    _ = ∑ i ∈ Finset.range (n + 1), ‖x‖ ^ k * ((n.choose i : ℝ) *
          ‖iteratedFDeriv ℝ i c x‖ * ‖iteratedFDeriv ℝ (n - i) h x‖) := by rw [Finset.mul_sum]
    _ ≤ ∑ i ∈ Finset.range (n + 1), (n.choose i : ℝ) * (M * S) := Finset.sum_le_sum hterm
    _ = 2 ^ n * M * S := by
        rw [← Finset.sum_mul]
        have : (∑ i ∈ Finset.range (n + 1), (n.choose i : ℝ)) = 2 ^ n := by
          exact_mod_cast Nat.sum_range_choose n
        rw [this]; ring

theorem contDiff_char (L : E →L[ℝ] ℝ) :
    ContDiff ℝ (⊤ : ℕ∞) (fun x : E => Complex.exp (I * (L x : ℂ))) := by
  have ho : ContDiff ℝ (⊤ : ℕ∞) (fun y : ℝ => (y : ℂ)) := Complex.ofRealCLM.contDiff
  have hc : ContDiff ℝ (⊤ : ℕ∞) (fun y : ℝ => Complex.exp (I * (y : ℂ))) := by fun_prop
  exact hc.comp L.contDiff

theorem norm_iteratedFDeriv_char_le (L : E →L[ℝ] ℝ) (i : ℕ) (x : E) :
    ‖iteratedFDeriv ℝ i (fun x : E => Complex.exp (I * (L x : ℂ))) x‖ ≤ ‖L‖ ^ i := by
  have ho : ContDiff ℝ (⊤ : ℕ∞) (fun y : ℝ => (y : ℂ)) := Complex.ofRealCLM.contDiff
  have hc : ContDiff ℝ (⊤ : ℕ∞) (fun y : ℝ => (1 : ℂ) * Complex.exp (I * (y : ℂ))) := by
    fun_prop
  have e : (fun x : E => Complex.exp (I * (L x : ℂ)))
      = (fun y : ℝ => (1 : ℂ) * Complex.exp (I * (y : ℂ))) ∘ ⇑L := by
    funext x; simp
  rw [e, L.iteratedFDeriv_comp_right hc x (i := i) (by exact_mod_cast le_top)]
  calc _ ≤ ‖iteratedFDeriv ℝ i (fun y : ℝ => (1 : ℂ) * Complex.exp (I * (y : ℂ))) (L x)‖
          * ∏ _j : Fin i, ‖L‖ :=
        ContinuousMultilinearMap.norm_compContinuousLinearMap_le _ _
    _ = ‖L‖ ^ i := by
        rw [norm_iteratedFDeriv_eq_norm_iteratedDeriv, GlobalTheory.CharFormDeriv.iteratedDeriv_const_mul_cexp]
        have hexp : I * ((L x : ℝ) : ℂ) = ((L x : ℝ) : ℂ) * I := by ring
        simp only [Finset.prod_const, Finset.card_univ, Fintype.card_fin]
        rw [norm_mul, hexp, Complex.norm_exp_ofReal_mul_I, norm_mul, norm_pow, Complex.norm_I]
        simp

theorem norm_iteratedFDeriv_char_sub_one_le (L : E →L[ℝ] ℝ) (hL : ‖L‖ ≤ 1) (i : ℕ) (x : E) :
    ‖iteratedFDeriv ℝ i (fun x : E => Complex.exp (I * (L x : ℂ)) - 1) x‖
      ≤ 2 * ‖L‖ * (1 + ‖x‖) ^ 1 := by
  have hL0 : 0 ≤ ‖L‖ := norm_nonneg L
  have hx0 : 0 ≤ ‖x‖ := norm_nonneg x
  have ho : ContDiff ℝ (⊤ : ℕ∞) (fun y : ℝ => (y : ℂ)) := Complex.ofRealCLM.contDiff
  have hc : ContDiff ℝ (⊤ : ℕ∞)
      (fun y : ℝ => (1 : ℂ) * Complex.exp (I * y) + 0 * y + (-1)) := by fun_prop
  have e : (fun x : E => Complex.exp (I * (L x : ℂ)) - 1)
      = (fun y : ℝ => (1 : ℂ) * Complex.exp (I * y) + 0 * y + (-1)) ∘ ⇑L := by
    funext x; simp; ring
  rw [e, L.iteratedFDeriv_comp_right hc x (i := i) (by exact_mod_cast le_top)]
  refine (ContinuousMultilinearMap.norm_compContinuousLinearMap_le _ _).trans ?_
  rw [norm_iteratedFDeriv_eq_norm_iteratedDeriv]
  simp only [Finset.prod_const, Finset.card_univ, Fintype.card_fin]
  cases i with
  | zero =>
    rw [iteratedDeriv_zero, pow_zero, mul_one]
    have h0 : (1 : ℂ) * Complex.exp (I * ((L x : ℝ) : ℂ)) + 0 * ((L x : ℝ) : ℂ) + (-1)
        = Complex.exp (((L x : ℝ) : ℂ) * I) - 1 := by ring_nf
    simp only [h0]
    calc _ ≤ 2 * |L x| := GlobalTheory.CharFormDeriv.norm_cexp_mul_I_sub_one_le (L x)
      _ ≤ 2 * (‖L‖ * ‖x‖) := by gcongr; rw [← Real.norm_eq_abs]; exact L.le_opNorm x
      _ ≤ 2 * ‖L‖ * (1 + ‖x‖) ^ 1 := by nlinarith
  | succ j =>
    rw [iteratedDeriv_succ', GlobalTheory.CharFormDeriv.deriv_affine_cexp]
    have hd : (fun y : ℝ => (1 : ℂ) * I * Complex.exp (I * y) + 0)
        = fun y : ℝ => I * Complex.exp (I * y) := by funext y; ring
    rw [hd, GlobalTheory.CharFormDeriv.iteratedDeriv_const_mul_cexp]
    have hexp : I * ((L x : ℝ) : ℂ) = ((L x : ℝ) : ℂ) * I := by ring
    rw [norm_mul, norm_mul, hexp, Complex.norm_exp_ofReal_mul_I, norm_pow, Complex.norm_I]
    simp only [one_pow, mul_one, one_mul]
    calc ‖L‖ ^ (j + 1) ≤ ‖L‖ ^ 1 := pow_le_pow_of_le_one hL0 hL (by omega)
      _ ≤ 2 * ‖L‖ * (1 + ‖x‖) ^ 1 := by nlinarith

theorem one_add_pow_le (a : ℝ) (ha : 0 ≤ a) (n : ℕ) : (1 + a) ^ n ≤ 2 ^ n * (1 + a ^ n) := by
  have han : 0 ≤ a ^ n := pow_nonneg ha n
  rcases le_total a 1 with h | h
  · have : (1 + a) ^ n ≤ 2 ^ n := by gcongr; linarith
    nlinarith [pow_nonneg (show (0:ℝ) ≤ 2 by norm_num) n]
  · have : (1 + a) ^ n ≤ (2 * a) ^ n := by gcongr; linarith
    rw [mul_pow] at this
    nlinarith [pow_nonneg (show (0:ℝ) ≤ 2 by norm_num) n]

theorem charMul_family : ∀ (E P : Type) [NormedAddCommGroup E] [NormedSpace ℝ E]
    [NormedAddCommGroup P] [NormedSpace ℝ P]
    (A : P →L[ℝ] E →L[ℝ] ℝ) (f : SchwartzMap E ℂ), ∃ Φ : P → SchwartzMap E ℂ,
    (∀ ξ x, Φ ξ x = Complex.exp (Complex.I * (A ξ x : ℂ)) * f x) ∧ Continuous Φ ∧
    ∀ k n : ℕ, ∃ C : ℝ, ∀ ξ, SchwartzMap.seminorm ℂ k n (Φ ξ) ≤ C * (1 + ‖ξ‖ ^ n) := by
  intro E P _ _ _ _ A f
  have htg : ∀ L : E →L[ℝ] ℝ,
      Function.HasTemperateGrowth (fun x : E => Complex.exp (I * (L x : ℂ))) := fun L => by
    simpa using GlobalTheory.CharFormDeriv.hasTemperateGrowth_char L 1
  let Φ : P → SchwartzMap E ℂ := fun ξ =>
    SchwartzMap.smulLeftCLM ℂ (fun x : E => Complex.exp (I * (A ξ x : ℂ))) f
  have hΦ : ∀ ξ x, Φ ξ x = Complex.exp (Complex.I * (A ξ x : ℂ)) * f x := fun ξ x => by
    simp only [Φ, SchwartzMap.smulLeftCLM_apply_apply (htg (A ξ)), smul_eq_mul]
  refine ⟨Φ, hΦ, ?_, ?_⟩
  · refine continuous_iff_continuousAt.2 fun ζ => ?_
    unfold ContinuousAt
    rw [(schwartz_withSeminorms ℂ E ℂ).tendsto_nhds Φ (Φ ζ)]
    rintro ⟨k, n⟩ ε hε
    set K := 2 * 2 ^ n * (2 ^ (k + 1) *
      ((Finset.Iic (k + 1, n)).sup fun p => SchwartzMap.seminorm ℂ p.1 p.2) (Φ ζ)) with hK
    have hK0 : 0 ≤ K := mul_nonneg (by positivity) (mul_nonneg (by positivity) (apply_nonneg _ _))
    have hA0 : 0 ≤ ‖A‖ := norm_nonneg A
    set m := min 1 (ε / (K + 1)) with hm
    have hm0 : 0 < m := lt_min one_pos (div_pos hε (by linarith))
    have hδ : 0 < m / (‖A‖ + 1) := div_pos hm0 (by linarith)
    filter_upwards [Metric.ball_mem_nhds ζ hδ] with η hη
    rw [Metric.mem_ball, dist_eq_norm] at hη
    show SchwartzMap.seminorm ℂ k n (Φ η - Φ ζ) < ε
    set L := A (η - ζ) with hLdef
    have hLle : ‖L‖ ≤ ‖A‖ * ‖η - ζ‖ := A.le_opNorm _
    have hLm : ‖L‖ < m := by
      calc ‖L‖ ≤ ‖A‖ * ‖η - ζ‖ := hLle
        _ ≤ (‖A‖ + 1) * ‖η - ζ‖ := by gcongr; linarith
        _ < (‖A‖ + 1) * (m / (‖A‖ + 1)) := by gcongr
        _ = m := by field_simp
    have hL1 : ‖L‖ ≤ 1 := (lt_of_lt_of_le hLm (min_le_left _ _)).le
    have hLε : ‖L‖ < ε / (K + 1) := lt_of_lt_of_le hLm (min_le_right _ _)
    have hpt : ∀ x, (Φ η - Φ ζ) x = (Complex.exp (I * (L x : ℂ)) - 1) * Φ ζ x := fun x => by
      have hs : A η x = L x + A ζ x := by simp [hLdef, map_sub]
      rw [SchwartzMap.sub_apply, hΦ, hΦ, hs]
      push_cast
      rw [mul_add, Complex.exp_add]
      ring
    have hb := seminorm_mul_le (fun x : E => Complex.exp (I * (L x : ℂ)) - 1)
      ((contDiff_char L).sub contDiff_const) (Φ ζ) (Φ η - Φ ζ) hpt k n 1 (2 * ‖L‖)
      (by positivity) (fun i _ x => norm_iteratedFDeriv_char_sub_one_le L hL1 i x)
    calc SchwartzMap.seminorm ℂ k n (Φ η - Φ ζ) ≤ ‖L‖ * K := by rw [hK]; linarith [hb]
      _ ≤ ‖L‖ * (K + 1) := by gcongr; linarith
      _ < ε / (K + 1) * (K + 1) := by gcongr
      _ = ε := by field_simp
  · intro k n
    set S := 2 ^ (k + 0) * ((Finset.Iic (k + 0, n)).sup fun p => SchwartzMap.seminorm ℂ p.1 p.2) f
      with hS
    have hS0 : 0 ≤ S := mul_nonneg (by positivity) (apply_nonneg _ _)
    refine ⟨2 ^ n * ((1 + ‖A‖) ^ n * 2 ^ n) * S, fun ξ => ?_⟩
    have hA0 : 0 ≤ ‖A‖ := norm_nonneg A
    have hξ0 : 0 ≤ ‖ξ‖ := norm_nonneg ξ
    set L := A ξ with hLdef
    have hL0 : 0 ≤ ‖L‖ := norm_nonneg L
    have hb := seminorm_mul_le (fun x : E => Complex.exp (I * (L x : ℂ))) (contDiff_char L) f (Φ ξ)
      (hΦ ξ) k n 0 ((1 + ‖L‖) ^ n) (by positivity) (fun i hi x => by
        rw [pow_zero, mul_one]
        calc _ ≤ ‖L‖ ^ i := norm_iteratedFDeriv_char_le L i x
          _ ≤ (1 + ‖L‖) ^ i := by gcongr; linarith
          _ ≤ (1 + ‖L‖) ^ n := pow_le_pow_right₀ (by linarith) hi)
    have h1 : (1 + ‖L‖) ^ n ≤ (1 + ‖A‖) ^ n * (2 ^ n * (1 + ‖ξ‖ ^ n)) := by
      calc (1 + ‖L‖) ^ n ≤ ((1 + ‖A‖) * (1 + ‖ξ‖)) ^ n := by
            gcongr
            have := A.le_opNorm ξ
            nlinarith
        _ = (1 + ‖A‖) ^ n * (1 + ‖ξ‖) ^ n := mul_pow _ _ _
        _ ≤ (1 + ‖A‖) ^ n * (2 ^ n * (1 + ‖ξ‖ ^ n)) := by
            gcongr; exact one_add_pow_le _ hξ0 n
    calc SchwartzMap.seminorm ℂ k n (Φ ξ) ≤ 2 ^ n * (1 + ‖L‖) ^ n * S := hb
      _ ≤ 2 ^ n * ((1 + ‖A‖) ^ n * (2 ^ n * (1 + ‖ξ‖ ^ n))) * S := by gcongr
      _ = 2 ^ n * ((1 + ‖A‖) ^ n * 2 ^ n) * S * (1 + ‖ξ‖ ^ n) := by ring

end GlobalTheory.CharFamily
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFamilyPhaseBound =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFourierRepresentation =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFourierRepresentation", "h": "module\n\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\npublic import Mathlib.Analysis.Normed.Lp.MeasurableSpace\npublic import Mathlib.MeasureTheory.Measure.Haar.OfBasis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Fourier\npublic import Mathlib.Analysis.InnerProductSpace.EuclideanDist\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory

namespace GlobalTheory


open Real in
theorem schwartz_eq_fourier_synthesis :
    ∀ (V : Type) [NormedAddCommGroup V] [NormedSpace ℝ V] [FiniteDimensional ℝ V] (m : SchwartzMap V ℂ),
    ∃ (d : ℕ) (A : EuclideanSpace ℝ (Fin d) →L[ℝ] V →L[ℝ] ℝ) (h : SchwartzMap (EuclideanSpace ℝ (Fin d)) ℂ),
    ∀ x, m x = ∫ ξ, h ξ * Complex.exp (Complex.I * (A ξ x : ℂ)) := by
  intro V _ _ _ m
  let e : V ≃L[ℝ] EuclideanSpace ℝ (Fin (Module.finrank ℝ V)) := toEuclidean
  let m' : SchwartzMap (EuclideanSpace ℝ (Fin (Module.finrank ℝ V))) ℂ :=
    SchwartzMap.compCLMOfContinuousLinearEquiv ℂ e.symm m
  let A : EuclideanSpace ℝ (Fin (Module.finrank ℝ V)) →L[ℝ] V →L[ℝ] ℝ :=
    (2 * π) • (((ContinuousLinearMap.compL ℝ V _ ℝ).flip (e : V →L[ℝ] _)).comp (innerSL ℝ))
  have hA : ∀ ξ x, A ξ x = 2 * π * inner ℝ ξ (e x) := by
    intro ξ x
    simp [A]
  refine ⟨Module.finrank ℝ V, A, (FourierTransform.fourier m' : SchwartzMap (EuclideanSpace ℝ (Fin (Module.finrank ℝ V))) ℂ), fun x => ?_⟩
  have h1 : m x = m' (e x) := by
    simp [m']
  have h2 := congrArg (fun f : SchwartzMap _ ℂ => f (e x)) (FourierTransform.fourierInv_fourier_eq (F := SchwartzMap (EuclideanSpace ℝ (Fin (Module.finrank ℝ V))) ℂ) m')
  rw [h1, ← h2, SchwartzMap.fourierInv_coe, Real.fourierInv_eq']
  congr 1
  ext ξ
  rw [hA, smul_eq_mul, mul_comm]
  congr 2
  push_cast
  ring

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFourierRepresentation =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzInnerProductContinuous =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzInnerProductContinuous", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory

namespace GlobalTheory

theorem schwartz_pairing_conj_clm : ∀ (V : Type) [NormedAddCommGroup V] [NormedSpace ℝ V] [FiniteDimensional ℝ V]
    (μ : @MeasureTheory.Measure V (borel V)), @MeasureTheory.Measure.IsAddHaarMeasure V _ _ (borel V) μ →
    ∀ (w : SchwartzMap V ℂ), ∃ Λ : SchwartzMap V ℂ →L[ℂ] ℂ, ∀ u : SchwartzMap V ℂ,
      Λ u = @MeasureTheory.integral V ℂ _ _ (borel V) μ (fun x => u x * starRingEnd ℂ (w x)) := by
  intro V _ _ _ μ hμ w
  letI : MeasurableSpace V := borel V
  haveI : BorelSpace V := ⟨rfl⟩
  haveI : μ.IsAddHaarMeasure := hμ
  have hg : Function.HasTemperateGrowth (fun x => starRingEnd ℂ (w x)) :=
    (Complex.conjCLE.toContinuousLinearMap : ℂ →L[ℝ] ℂ).hasTemperateGrowth.comp w.hasTemperateGrowth
  refine ⟨(SchwartzMap.integralCLM ℂ μ).comp (SchwartzMap.smulLeftCLM ℂ (fun x => starRingEnd ℂ (w x))), ?_⟩
  intro u
  rw [ContinuousLinearMap.comp_apply, SchwartzMap.integralCLM_apply]
  congr 1
  funext x
  rw [SchwartzMap.smulLeftCLM_apply_apply hg, smul_eq_mul, mul_comm]

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzInnerProductContinuous =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzIntegralSuperposition =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzIntegralSuperposition", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\npublic import Mathlib.Analysis.Normed.Module.HahnBanach\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.SpecificCodomains.Pi\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.ContDiff.Operations\npublic import Mathlib.Analysis.Calculus.ParametricIntegral\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory

namespace GlobalTheory
namespace SchwartzIntegralExchange

theorem exists_factor {S X : Type*} [AddCommGroup S] [Module ℂ S] [NormedAddCommGroup X]
    [NormedSpace ℂ X] (J : S →ₗ[ℂ] X) (Λ : S →ₗ[ℂ] ℂ) (C : ℝ) (h : ∀ w, ‖Λ w‖ ≤ C * ‖J w‖) :
    ∃ g : X →L[ℂ] ℂ, ∀ w, g (J w) = Λ w := by
  obtain ⟨r, hr⟩ := LinearMap.exists_rightInverse_of_surjective J.rangeRestrict
    J.range_rangeRestrict
  have hr' : ∀ y : LinearMap.range J, J (r y) = y := fun y => by
    have := congrArg (fun φ : LinearMap.range J →ₗ[ℂ] LinearMap.range J => (φ y : X)) hr
    simpa using this
  let f : LinearMap.range J →L[ℂ] ℂ := (Λ ∘ₗ r).mkContinuous C (fun y => by
    have := h (r y)
    rw [hr'] at this
    simpa using this)
  obtain ⟨g, hg, -⟩ := exists_extension_norm_eq (LinearMap.range J) f
  refine ⟨g, fun w => ?_⟩
  have h1 := hg ⟨J w, w, rfl⟩
  have h2 := h (r ⟨J w, w, rfl⟩ - w)
  rw [map_sub J, hr'] at h2
  simp only [sub_self, norm_zero, mul_zero, norm_le_zero_iff, map_sub, sub_eq_zero] at h2
  rw [← h2]
  simpa [f] using h1

variable {E : Type} [NormedAddCommGroup E] [NormedSpace ℝ E]

noncomputable def wtFun (k n : ℕ) (w : SchwartzMap E ℂ) :
    BoundedContinuousFunction E (ContinuousMultilinearMap ℝ (fun _ : Fin n => E) ℂ) :=
  BoundedContinuousFunction.ofNormedAddCommGroup
    (fun x => (‖x‖ ^ k : ℝ) • iteratedFDeriv ℝ n w x)
    ((continuous_norm.pow k).smul ((w.smooth ⊤).continuous_iteratedFDeriv (by exact_mod_cast le_top)))
    (SchwartzMap.seminorm ℂ k n w)
    (fun x => by
      rw [norm_smul, Real.norm_of_nonneg (by positivity)]
      exact SchwartzMap.le_seminorm ℂ k n w x)

theorem wtFun_apply (k n : ℕ) (w : SchwartzMap E ℂ) (x : E) :
    wtFun k n w x = (‖x‖ ^ k : ℝ) • iteratedFDeriv ℝ n w x := rfl

theorem norm_wtFun_le (k n : ℕ) (w : SchwartzMap E ℂ) :
    ‖wtFun k n w‖ ≤ SchwartzMap.seminorm ℂ k n w :=
  BoundedContinuousFunction.norm_ofNormedAddCommGroup_le _ (apply_nonneg _ _) _

theorem le_norm_wtFun (k n : ℕ) (w : SchwartzMap E ℂ) :
    SchwartzMap.seminorm ℂ k n w ≤ ‖wtFun k n w‖ := by
  refine SchwartzMap.seminorm_le_bound ℂ k n w (norm_nonneg _) (fun x => ?_)
  have := (wtFun k n w).norm_coe_le_norm x
  rwa [wtFun_apply, norm_smul, Real.norm_of_nonneg (by positivity)] at this

noncomputable def wt (k n : ℕ) : SchwartzMap E ℂ →L[ℂ]
    BoundedContinuousFunction E (ContinuousMultilinearMap ℝ (fun _ : Fin n => E) ℂ) :=
  SchwartzMap.mkCLMtoNormedSpace (σ := RingHom.id ℂ) (wtFun k n)
    (fun f g => by
      ext1 x
      have hf : ContDiffAt ℝ n f x := ((f.smooth ⊤).of_le (by exact_mod_cast le_top)).contDiffAt
      have hg : ContDiffAt ℝ n g x := ((g.smooth ⊤).of_le (by exact_mod_cast le_top)).contDiffAt
      rw [BoundedContinuousFunction.add_apply, wtFun_apply, wtFun_apply, wtFun_apply, ← smul_add,
        ← iteratedFDeriv_add_apply hf hg]
      rfl)
    (fun a f => by
      ext1 x
      have hf : ContDiffAt ℝ n f x := ((f.smooth ⊤).of_le (by exact_mod_cast le_top)).contDiffAt
      rw [BoundedContinuousFunction.smul_apply, wtFun_apply, wtFun_apply, RingHom.id_apply,
        smul_comm a, ← iteratedFDeriv_const_smul_apply hf]
      rfl)
    ⟨{(k, n)}, 1, zero_le_one, fun f => by
      simpa using norm_wtFun_le k n f⟩

theorem wt_apply (k n : ℕ) (w : SchwartzMap E ℂ) (x : E) :
    wt k n w x = (‖x‖ ^ k : ℝ) • iteratedFDeriv ℝ n w x := rfl

theorem continuous_iteratedFDeriv_at (n : ℕ) (x : E) :
    Continuous (fun w : SchwartzMap E ℂ => iteratedFDeriv ℝ n w x) := by
  have : (fun w : SchwartzMap E ℂ => iteratedFDeriv ℝ n w x) = fun w => wt 0 n w x := by
    funext w; simp [wt_apply]
  rw [this]
  exact (continuous_eval_const x).comp (wt 0 n).continuous

variable {P : Type} [TopologicalSpace P] [SecondCountableTopology P] [MeasurableSpace P]
  [OpensMeasurableSpace P] {ν : Measure P} {Φ : P → SchwartzMap E ℂ} {c : P → ℂ}

theorem integrable_iteratedFDeriv (hΦ : Continuous Φ) (hc : AEStronglyMeasurable c ν)
    (hi : ∀ k n : ℕ, Integrable (fun ξ => ‖c ξ‖ * SchwartzMap.seminorm ℂ k n (Φ ξ)) ν)
    (n : ℕ) (x : E) : Integrable (fun ξ => c ξ • iteratedFDeriv ℝ n (Φ ξ) x) ν := by
  refine (hi 0 n).mono' (hc.smul
    ((continuous_iteratedFDeriv_at n x).comp hΦ).aestronglyMeasurable) (ae_of_all _ fun ξ => ?_)
  rw [norm_smul]
  exact mul_le_mul_of_nonneg_left (SchwartzMap.norm_iteratedFDeriv_le_seminorm ℂ _ n x)
    (norm_nonneg _)

theorem iteratedFDeriv_integral (hΦ : Continuous Φ) (hc : AEStronglyMeasurable c ν)
    (hi : ∀ k n : ℕ, Integrable (fun ξ => ‖c ξ‖ * SchwartzMap.seminorm ℂ k n (Φ ξ)) ν)
    (u : E → ℂ) (hu : ∀ x, u x = ∫ ξ, c ξ * Φ ξ x ∂ν) (n : ℕ) :
    ∀ x, iteratedFDeriv ℝ n u x = ∫ ξ, c ξ • iteratedFDeriv ℝ n (Φ ξ) x ∂ν := by
  induction n with
  | zero =>
    intro x
    ext m
    rw [ContinuousMultilinearMap.integral_apply (integrable_iteratedFDeriv hΦ hc hi 0 x)]
    simp [hu]
  | succ n ih =>
    intro x
    set L := continuousMultilinearCurryLeftEquiv ℝ (fun _ : Fin (n + 1) => E) ℂ with hL
    have hfun : iteratedFDeriv ℝ n u = fun x => ∫ ξ, c ξ • iteratedFDeriv ℝ n (Φ ξ) x ∂ν :=
      funext ih
    have hd : HasFDerivAt (fun x => ∫ ξ, c ξ • iteratedFDeriv ℝ n (Φ ξ) x ∂ν)
        (∫ ξ, L (c ξ • iteratedFDeriv ℝ (n + 1) (Φ ξ) x) ∂ν) x := by
      refine hasFDerivAt_integral_of_dominated_of_fderiv_le (𝕜 := ℝ) (s := Set.univ)
        (F := fun x ξ => c ξ • iteratedFDeriv ℝ n (Φ ξ) x)
        (F' := fun x ξ => L (c ξ • iteratedFDeriv ℝ (n + 1) (Φ ξ) x))
        (bound := fun ξ => ‖c ξ‖ * SchwartzMap.seminorm ℂ 0 (n + 1) (Φ ξ))
        Filter.univ_mem
        (Filter.Eventually.of_forall fun y =>
          (integrable_iteratedFDeriv hΦ hc hi n y).aestronglyMeasurable)
        (integrable_iteratedFDeriv hΦ hc hi n x)
        (L.continuous.comp_aestronglyMeasurable
          (integrable_iteratedFDeriv hΦ hc hi (n + 1) x).aestronglyMeasurable)
        (ae_of_all _ fun ξ y _ => ?_) (hi 0 (n + 1)) (ae_of_all _ fun ξ y _ => ?_)
      · rw [LinearIsometryEquiv.norm_map, norm_smul]
        exact mul_le_mul_of_nonneg_left (SchwartzMap.norm_iteratedFDeriv_le_seminorm ℂ _ _ y)
          (norm_nonneg _)
      · have h1 : DifferentiableAt ℝ (iteratedFDeriv ℝ n (Φ ξ)) y :=
          ((Φ ξ).smooth ⊤).differentiable_iteratedFDeriv
            (by exact_mod_cast ENat.coe_lt_top n) y
        have h2 := h1.hasFDerivAt.const_smul (c ξ)
        rw [fderiv_iteratedFDeriv] at h2
        exact h2
    have h3 := hd.fderiv
    rw [← hfun, fderiv_iteratedFDeriv] at h3
    apply L.injective
    exact h3.trans (L.toContinuousLinearEquiv.toContinuousLinearMap.integral_comp_comm
      (integrable_iteratedFDeriv hΦ hc hi (n + 1) x))

theorem integrable_wt (hΦ : Continuous Φ) (hc : AEStronglyMeasurable c ν)
    (hi : ∀ k n : ℕ, Integrable (fun ξ => ‖c ξ‖ * SchwartzMap.seminorm ℂ k n (Φ ξ)) ν)
    (k n : ℕ) : Integrable (fun ξ => c ξ • wt k n (Φ ξ)) ν := by
  refine (hi k n).mono' (hc.smul
    ((wt k n).continuous.comp hΦ).aestronglyMeasurable) (ae_of_all _ fun ξ => ?_)
  rw [norm_smul]
  exact mul_le_mul_of_nonneg_left (norm_wtFun_le k n _) (norm_nonneg _)

theorem wt_integral (hΦ : Continuous Φ) (hc : AEStronglyMeasurable c ν)
    (hi : ∀ k n : ℕ, Integrable (fun ξ => ‖c ξ‖ * SchwartzMap.seminorm ℂ k n (Φ ξ)) ν)
    (u : SchwartzMap E ℂ) (hu : ∀ x, u x = ∫ ξ, c ξ * Φ ξ x ∂ν) (k n : ℕ) :
    wt k n u = ∫ ξ, c ξ • wt k n (Φ ξ) ∂ν := by
  ext1 x
  have := (BoundedContinuousFunction.evalCLM ℂ x).integral_comp_comm
    (integrable_wt hΦ hc hi k n)
  simp only [BoundedContinuousFunction.evalCLM_apply] at this
  rw [← this, wt_apply, iteratedFDeriv_integral hΦ hc hi u hu n x, ← integral_smul]
  congr 1
  funext ξ
  rw [BoundedContinuousFunction.smul_apply, wt_apply, smul_comm]

end SchwartzIntegralExchange


open SchwartzIntegralExchange in
theorem schwartz_clm_integral_comm :
    ∀ (E : Type) [NormedAddCommGroup E] [NormedSpace ℝ E] (P : Type) [TopologicalSpace P]
    [SecondCountableTopology P] [MeasurableSpace P] [OpensMeasurableSpace P] (ν : Measure P)
    (Φ : P → SchwartzMap E ℂ), Continuous Φ → ∀ (c : P → ℂ), AEStronglyMeasurable c ν →
    (∀ k n : ℕ, Integrable (fun ξ => ‖c ξ‖ * SchwartzMap.seminorm ℂ k n (Φ ξ)) ν) →
    ∀ (u : SchwartzMap E ℂ), (∀ x, u x = ∫ ξ, c ξ * Φ ξ x ∂ν) →
    ∀ (Λ : SchwartzMap E ℂ →L[ℂ] ℂ), Λ u = ∫ ξ, c ξ * Λ (Φ ξ) ∂ν := by
  intro E _ _ P _ _ _ _ ν Φ hΦ c hc hi u hu Λ
  obtain ⟨s, C, -, hC⟩ := Seminorm.bound_of_continuous (schwartz_withSeminorms ℂ E ℂ)
    ((normSeminorm ℂ ℂ).comp Λ.toLinearMap) (continuous_norm.comp Λ.continuous)
  let J : SchwartzMap E ℂ →L[ℂ] (∀ i : s, BoundedContinuousFunction E
      (ContinuousMultilinearMap ℝ (fun _ : Fin i.1.2 => E) ℂ)) :=
    ContinuousLinearMap.pi fun i => wt i.1.1 i.1.2
  obtain ⟨g, hg⟩ := exists_factor J.toLinearMap Λ.toLinearMap C (fun w => by
    have h1 : ‖Λ w‖ ≤ C * (s.sup (schwartzSeminormFamily ℂ E ℂ)) w := hC w
    refine h1.trans (mul_le_mul_of_nonneg_left ?_ C.2)
    refine Seminorm.finset_sup_apply_le (norm_nonneg _) fun i hi => ?_
    exact (le_norm_wtFun i.1 i.2 w).trans (norm_le_pi_norm (J w) ⟨i, hi⟩))
  have hg' : ∀ w, g (J w) = Λ w := hg
  have hint : Integrable (fun ξ => c ξ • J (Φ ξ)) ν :=
    integrable_pi_iff.2 fun i => integrable_wt hΦ hc hi i.1.1 i.1.2
  have hJ : J u = ∫ ξ, c ξ • J (Φ ξ) ∂ν := by
    funext i
    rw [eval_integral (integrable_pi_iff.1 hint)]
    exact wt_integral hΦ hc hi u hu i.1.1 i.1.2
  rw [← hg', hJ, ← g.integral_comp_comm hint]
  simp [hg']

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzIntegralSuperposition =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationCharacterInvariantForm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationCharacterInvariantForm", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFamilyPhaseBound\npublic import Mathlib.Analysis.Normed.Lp.MeasurableSpace\npublic import Mathlib.MeasureTheory.Measure.Haar.OfBasis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFourierRepresentation\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzInnerProductContinuous\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzIntegralSuperposition\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory

namespace GlobalTheory.CharMult

theorem multiplier_symm : ∀ (V : Type) [NormedAddCommGroup V] [NormedSpace ℝ V] [FiniteDimensional ℝ V]
    (μ : @MeasureTheory.Measure V (borel V)), @MeasureTheory.Measure.IsAddHaarMeasure V _ _ (borel V) μ →
    ∀ (T : SchwartzMap V ℂ →L[ℂ] SchwartzMap V ℂ),
    (∀ (L : V →L[ℝ] ℝ) (f f' g g' : SchwartzMap V ℂ),
      (∀ x, f' x = Complex.exp (Complex.I * (L x : ℂ)) * f x) →
      (∀ x, g' x = Complex.exp (Complex.I * (L x : ℂ)) * g x) →
      @MeasureTheory.integral V ℂ _ _ (borel V) μ (fun x => T f' x * starRingEnd ℂ (T g' x)) =
        @MeasureTheory.integral V ℂ _ _ (borel V) μ (fun x => T f x * starRingEnd ℂ (T g x))) →
    ∀ (m f f' g g' : SchwartzMap V ℂ), (∀ x, f' x = m x * f x) → (∀ x, g' x = starRingEnd ℂ (m x) * g x) →
      @MeasureTheory.integral V ℂ _ _ (borel V) μ (fun x => T f' x * starRingEnd ℂ (T g x)) =
        @MeasureTheory.integral V ℂ _ _ (borel V) μ (fun x => T f x * starRingEnd ℂ (T g' x)) := by
  intro V _ _ _ μ hμ T hT m f f' g g' hf' hg'
  letI : MeasurableSpace V := borel V
  haveI : BorelSpace V := ⟨rfl⟩
  obtain ⟨d, A, h, hm⟩ := _root_.GlobalTheory.schwartz_eq_fourier_synthesis V m
  obtain ⟨Φf, hΦf, cΦf, bΦf⟩ := _root_.GlobalTheory.CharFamily.charMul_family V _ A f
  obtain ⟨Φg, hΦg, cΦg, bΦg⟩ := _root_.GlobalTheory.CharFamily.charMul_family V _ (-A) g
  obtain ⟨Λ1, hΛ1⟩ := _root_.GlobalTheory.schwartz_pairing_conj_clm V μ hμ (T g)
  obtain ⟨Λ2, hΛ2⟩ := _root_.GlobalTheory.schwartz_pairing_conj_clm V μ hμ (T f)
  have hint : ∀ (Φ : EuclideanSpace ℝ (Fin d) → SchwartzMap V ℂ), Continuous Φ →
      (∀ k n : ℕ, ∃ C : ℝ, ∀ ξ, SchwartzMap.seminorm ℂ k n (Φ ξ) ≤ C * (1 + ‖ξ‖ ^ n)) →
      ∀ (c : EuclideanSpace ℝ (Fin d) → ℂ), (∀ ξ, ‖c ξ‖ = ‖h ξ‖) →
      ∀ k n : ℕ, Integrable (fun ξ => ‖c ξ‖ * SchwartzMap.seminorm ℂ k n (Φ ξ)) := by
    intro Φ hΦ hb c hc k n
    obtain ⟨C, hC⟩ := hb k n
    have hcont : Continuous (fun ξ => SchwartzMap.seminorm ℂ k n (Φ ξ)) :=
      ((schwartz_withSeminorms ℂ V ℂ).continuous_seminorm (k, n)).comp hΦ
    have i1 : Integrable (fun ξ => ‖h ξ‖) := h.integrable.norm
    have i2 : Integrable (fun ξ => ‖ξ‖ ^ n * ‖h ξ‖) := h.integrable_pow_mul volume n
    refine Integrable.mono' ((i1.add i2).const_mul C) ?_ ?_
    · simp_rw [hc]
      exact (h.continuous.norm.mul hcont).aestronglyMeasurable
    · filter_upwards with ξ
      rw [hc, Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (norm_nonneg _) (apply_nonneg _ _))]
      calc ‖h ξ‖ * SchwartzMap.seminorm ℂ k n (Φ ξ) ≤ ‖h ξ‖ * (C * (1 + ‖ξ‖ ^ n)) :=
            mul_le_mul_of_nonneg_left (hC ξ) (norm_nonneg _)
        _ = C * (‖h ξ‖ + ‖ξ‖ ^ n * ‖h ξ‖) := by ring

  have hkey : ∀ ξ, Λ1 (T (Φf ξ)) = ∫ x, T f x * starRingEnd ℂ (T (Φg ξ) x) ∂μ := by
    intro ξ
    rw [hΛ1]
    refine hT (A ξ) f (Φf ξ) (Φg ξ) g (hΦf ξ) (fun x => ?_)
    rw [hΦg, ← mul_assoc, ← Complex.exp_add]
    simp
  have lhs : ∫ x, T f' x * starRingEnd ℂ (T g x) ∂μ = ∫ ξ, h ξ * ∫ x, T f x * starRingEnd ℂ (T (Φg ξ) x) ∂μ := by
    rw [← hΛ1]
    have := _root_.GlobalTheory.schwartz_clm_integral_comm V (EuclideanSpace ℝ (Fin d)) volume Φf cΦf h h.continuous.aestronglyMeasurable
      (hint Φf cΦf bΦf h (fun _ => rfl)) f' (fun x => by
        rw [hf', hm, ← integral_mul_const]
        congr 1; funext ξ; rw [hΦf]; ring) (Λ1.comp T)
    simp only [ContinuousLinearMap.comp_apply] at this
    rw [this]; simp_rw [hkey]
  have rhs : ∫ x, T f x * starRingEnd ℂ (T g' x) ∂μ = ∫ ξ, h ξ * ∫ x, T f x * starRingEnd ℂ (T (Φg ξ) x) ∂μ := by
    have e1 : ∫ x, T f x * starRingEnd ℂ (T g' x) ∂μ = starRingEnd ℂ (Λ2 (T g')) := by
      rw [hΛ2, ← integral_conj]; congr 1; funext x; simp [mul_comm]
    have := _root_.GlobalTheory.schwartz_clm_integral_comm V (EuclideanSpace ℝ (Fin d)) volume Φg cΦg (fun ξ => starRingEnd ℂ (h ξ))
      (Complex.continuous_conj.comp h.continuous).aestronglyMeasurable
      (hint Φg cΦg bΦg _ (fun _ => Complex.norm_conj _)) g' (fun x => by
        rw [hg', hm, ← integral_conj, ← integral_mul_const]
        congr 1; funext ξ; rw [hΦg]
        simp only [map_mul, ContinuousLinearMap.neg_apply, ← Complex.exp_conj]
        simp [Complex.ofReal_neg]; ring) (Λ2.comp T)
    simp only [ContinuousLinearMap.comp_apply] at this
    rw [e1, this, ← integral_conj]
    congr 1; funext ξ
    rw [map_mul, Complex.conj_conj, hΛ2, ← integral_conj]
    congr 2; funext x; simp [mul_comm]
  rw [lhs, rhs]

end GlobalTheory.CharMult
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationCharacterInvariantForm =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RealCompactPartitionUnity =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RealCompactPartitionUnity", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\npublic import Mathlib.Analysis.LocallyConvex.AbsConvexOpen\npublic import Mathlib.Analysis.SpecialFunctions.SmoothTransition\npublic import Mathlib.Algebra.Module.ZLattice.Summable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Uniformizable\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped SchwartzMap ContDiff

noncomputable section

namespace GlobalTheory.LatticePartition

def bump (t : ℝ) : ℝ := Real.smoothTransition (t + 1) - Real.smoothTransition t

theorem bump_contDiff : ContDiff ℝ ∞ bump :=
  (Real.smoothTransition.contDiff.comp (contDiff_id.add contDiff_const)).sub
    Real.smoothTransition.contDiff

theorem bump_eq_zero {t : ℝ} (h : 1 ≤ |t|) : bump t = 0 := by
  unfold bump
  rcases le_abs'.1 h with h | h
  · rw [Real.smoothTransition.zero_of_nonpos (by linarith),
      Real.smoothTransition.zero_of_nonpos (by linarith)]
    simp
  · rw [Real.smoothTransition.one_of_one_le (by linarith),
      Real.smoothTransition.one_of_one_le h]
    simp

theorem bump_local (y : ℝ) (k : ℤ) (hk : k ∉ ({⌊y⌋ - 1, ⌊y⌋, ⌊y⌋ + 1} : Finset ℤ)) :
    bump (y - k) = 0 := by
  apply bump_eq_zero
  simp only [Finset.mem_insert, Finset.mem_singleton, not_or] at hk
  have h1 := Int.floor_le y
  have h2 := Int.lt_floor_add_one y
  have : k ≤ ⌊y⌋ - 2 ∨ ⌊y⌋ + 2 ≤ k := by omega
  rcases this with h | h
  · have h' : (k : ℝ) ≤ (⌊y⌋ : ℝ) - 2 := by exact_mod_cast h
    rw [le_abs']; right; linarith
  · have h' : (⌊y⌋ : ℝ) + 2 ≤ (k : ℝ) := by exact_mod_cast h
    rw [le_abs']; left; linarith

theorem bump_sum (y : ℝ) : ∑ k ∈ ({⌊y⌋ - 1, ⌊y⌋, ⌊y⌋ + 1} : Finset ℤ), bump (y - k) = 1 := by
  rw [Finset.sum_insert (by simp; omega), Finset.sum_insert (by simp), Finset.sum_singleton]
  have h1 := Int.floor_le y
  have h2 := Int.lt_floor_add_one y
  have e1 : y - ((⌊y⌋ - 1 : ℤ) : ℝ) = y - (⌊y⌋ : ℝ) + 1 := by push_cast; ring
  have e2 : y - ((⌊y⌋ + 1 : ℤ) : ℝ) + 1 = y - (⌊y⌋ : ℝ) := by push_cast; ring
  have ha : Real.smoothTransition (y - (⌊y⌋ : ℝ) + 1 + 1) = 1 :=
    Real.smoothTransition.one_of_one_le (by linarith)
  have hb : Real.smoothTransition (y - ((⌊y⌋ + 1 : ℤ) : ℝ)) = 0 :=
    Real.smoothTransition.zero_of_nonpos (by push_cast; linarith)
  unfold bump
  rw [e1, e2, ha, hb]
  ring

theorem summable_lattice {E : Type} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
    (L : Submodule ℤ E) [DiscreteTopology L] :
    Summable fun z : L => ((1 + ‖z‖) ^ (Module.finrank ℤ L + 1))⁻¹ := by
  refine Summable.of_norm_bounded_eventually (ZLattice.summable_norm_pow_inv L _ (Nat.lt_succ_self _)) ?_
  refine (Set.finite_singleton (0 : L)).subset fun z hz => ?_
  by_contra h0
  apply hz
  have hz0 : 0 < ‖z‖ := norm_pos_iff.2 h0
  show ‖((1 + ‖z‖) ^ (Module.finrank ℤ L + 1))⁻¹‖ ≤ ‖z‖⁻¹ ^ (Module.finrank ℤ L + 1)
  rw [norm_inv, norm_pow, Real.norm_of_nonneg (by positivity), inv_pow]
  exact inv_anti₀ (pow_pos hz0 _) (pow_le_pow_left₀ hz0.le (by linarith) _)

section
variable {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V] {n : ℕ}

def bumpProd (e : V ≃L[ℝ] (Fin n → ℝ)) (x : V) : ℝ := ∏ i, bump (e x i)

def latPt (e : V ≃L[ℝ] (Fin n → ℝ)) (j : Fin n → ℤ) : V := e.symm (fun i => (j i : ℝ))

theorem bumpProd_contDiff (e : V ≃L[ℝ] (Fin n → ℝ)) : ContDiff ℝ ∞ (bumpProd e) := by
  unfold bumpProd
  refine contDiff_prod fun i _ => bump_contDiff.comp ?_
  exact (contDiff_apply ℝ (fun _ => ℝ) i).comp e.contDiff

theorem bumpProd_compact (e : V ≃L[ℝ] (Fin n → ℝ)) : HasCompactSupport (bumpProd e) := by
  have hK : IsCompact (Set.univ.pi fun _ : Fin n => Set.Icc (-1 : ℝ) 1) :=
    isCompact_univ_pi fun _ => isCompact_Icc
  refine HasCompactSupport.intro (hK.image e.symm.continuous) ?_
  intro x hx
  have : ∃ i, 1 ≤ |e x i| := by
    by_contra h
    simp only [not_exists, not_le] at h
    exact hx ⟨e x, Set.mem_univ_pi.2 fun i => ⟨(abs_lt.1 (h i)).1.le, (abs_lt.1 (h i)).2.le⟩,
      e.symm_apply_apply x⟩
  obtain ⟨i, hi⟩ := this
  exact Finset.prod_eq_zero (Finset.mem_univ i) (bump_eq_zero hi)

theorem bumpProd_sub (e : V ≃L[ℝ] (Fin n → ℝ)) (x : V) (j : Fin n → ℤ) :
    bumpProd e (x - latPt e j) = ∏ i, bump (e x i - j i) := by
  simp [bumpProd, latPt, map_sub]

theorem hasSum_bumpProd (e : V ≃L[ℝ] (Fin n → ℝ)) (x : V) :
    HasSum (fun j : Fin n → ℤ => bumpProd e (x - latPt e j)) 1 := by
  simp only [bumpProd_sub]
  generalize e x = y
  have hsum : ∑ j ∈ Fintype.piFinset (fun i => ({⌊y i⌋ - 1, ⌊y i⌋, ⌊y i⌋ + 1} : Finset ℤ)),
      ∏ i, bump (y i - j i) = 1 := by
    rw [← Finset.prod_univ_sum (t := fun i => ({⌊y i⌋ - 1, ⌊y i⌋, ⌊y i⌋ + 1} : Finset ℤ))
      (f := fun i k => bump (y i - k))]
    exact Finset.prod_eq_one fun i _ => bump_sum (y i)
  have h := hasSum_sum_of_ne_finset_zero (L := SummationFilter.unconditional _)
    (f := fun j : Fin n → ℤ => ∏ i, bump (y i - j i))
    (s := Fintype.piFinset (fun i => ({⌊y i⌋ - 1, ⌊y i⌋, ⌊y i⌋ + 1} : Finset ℤ))) (by
      intro j hj
      rw [Fintype.mem_piFinset, not_forall] at hj
      obtain ⟨i, hi⟩ := hj
      exact Finset.prod_eq_zero (Finset.mem_univ i) (bump_local _ _ hi))
  rwa [hsum] at h

theorem summable_latPt [FiniteDimensional ℝ V] (b : Module.Basis (Fin n) ℝ V) :
    ∃ M : ℕ, Summable (fun j : Fin n → ℤ => ((1 + ‖latPt b.equivFunL j‖) ^ M)⁻¹) := by
  have hmem : ∀ j, latPt b.equivFunL j ∈ Submodule.span ℤ (Set.range b) := fun j => by
    have : latPt b.equivFunL j = ∑ i, (j i : ℝ) • b i := b.equivFun_symm_apply _
    rw [this]
    refine Submodule.sum_mem _ fun i _ => ?_
    rw [Int.cast_smul_eq_zsmul]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩)
  have hinj : Function.Injective fun j : Fin n → ℤ =>
      (⟨latPt b.equivFunL j, hmem j⟩ : Submodule.span ℤ (Set.range b)) := by
    intro j k hjk
    have h1 : latPt b.equivFunL j = latPt b.equivFunL k := congrArg Subtype.val hjk
    have h2 : (fun i => (j i : ℝ)) = fun i => (k i : ℝ) := b.equivFunL.symm.injective h1
    funext i
    exact_mod_cast congrFun h2 i
  have h := (summable_lattice (Submodule.span ℤ (Set.range b))).comp_injective hinj
  refine ⟨Module.finrank ℤ (Submodule.span ℤ (Set.range b)) + 1, h.congr fun j => ?_⟩
  simp only [Function.comp_apply, Submodule.coe_norm]

theorem finite_of_summable {ι : Type} (a : ι → ℝ) (ha : ∀ j, 0 ≤ a j) (M : ℕ)
    (hS : Summable (fun j => ((1 + a j) ^ M)⁻¹)) (R : ℝ) : {j | a j ≤ R}.Finite := by
  have ht := hS.tendsto_cofinite_zero
  have hR : (0 : ℝ) ≤ max R 0 := le_max_right _ _
  have hε : (0 : ℝ) < ((1 + max R 0) ^ M)⁻¹ := by positivity
  have h3 := ht (Iio_mem_nhds hε)
  rw [Filter.mem_map, Filter.mem_cofinite] at h3
  refine h3.subset fun j hj => ?_
  simp only [Set.mem_setOf_eq] at hj
  simp only [Set.mem_compl_iff, Set.mem_preimage, Set.mem_Iio, not_lt]
  have hj' : a j ≤ max R 0 := le_trans hj (le_max_left _ _)
  have h0 := ha j
  exact inv_anti₀ (by positivity) (pow_le_pow_left₀ (by linarith) (by linarith) _)

end

theorem exists_lattice_partition :
    ∀ (V : Type) [NormedAddCommGroup V] [NormedSpace ℝ V] [FiniteDimensional ℝ V],
    ∃ ψ : SchwartzMap V ℂ, HasCompactSupport (ψ : V → ℂ) ∧ (∀ x, starRingEnd ℂ (ψ x) = ψ x) ∧
      ∃ v : (Fin (Module.finrank ℝ V) → ℤ) → V, (∀ x, HasSum (fun j => ψ (x - v j)) 1) ∧
        (∀ R : ℝ, {j | ‖v j‖ ≤ R}.Finite) ∧ ∃ M : ℕ, Summable (fun j => ((1 + ‖v j‖) ^ M)⁻¹) := by
  intro V _ _ _
  obtain ⟨M, hS⟩ := summable_latPt (Module.finBasis ℝ V)
  generalize (Module.finBasis ℝ V).equivFunL = e at hS
  have hc : HasCompactSupport (fun x => ((bumpProd e x : ℝ) : ℂ)) :=
    (bumpProd_compact e).comp_left (g := Complex.ofReal) Complex.ofReal_zero
  have hd : ContDiff ℝ ∞ (fun x => ((bumpProd e x : ℝ) : ℂ)) :=
    Complex.ofRealCLM.contDiff.comp (bumpProd_contDiff e)
  obtain ⟨ψ, hψ⟩ : ∃ ψ : SchwartzMap V ℂ, (ψ : V → ℂ) = fun x => ((bumpProd e x : ℝ) : ℂ) :=
    ⟨hc.toSchwartzMap hd, rfl⟩
  refine ⟨ψ, hψ ▸ hc, ?_, latPt e, ?_, ?_, M, hS⟩
  · intro x
    rw [hψ]
    exact Complex.conj_ofReal _
  · intro x
    rw [hψ]
    have h := Complex.hasSum_ofReal.2 (hasSum_bumpProd e x)
    rwa [Complex.ofReal_one] at h
  · exact finite_of_summable (fun j => ‖latPt e j‖) (fun _ => norm_nonneg _) M hS

end GlobalTheory.LatticePartition
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RealCompactPartitionUnity =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzDenseHasCompactSupport =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzDenseHasCompactSupport", "h": "module\n\nimport Mathlib.Analysis.Distribution.SchwartzSpace.CompactSupport\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzContinuousAtOfPointwiseOfBounded\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension\npublic import Mathlib.Analysis.Calculus.ContDiff.Bounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Filter Topology
open scoped ContDiff

namespace GlobalTheory

theorem schwartz_dense_hasCompactSupport :
    ∀ {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V] [FiniteDimensional ℝ V],
    Dense {f : SchwartzMap V ℂ | HasCompactSupport (f : V → ℂ)} := by
  intro V _ _ _
  exact SchwartzMap.dense_hasCompactSupport

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzDenseHasCompactSupport =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzCompactSupportDense =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzCompactSupportDense", "h": "module\n\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzDenseHasCompactSupport\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped SchwartzMap

namespace GlobalTheory

theorem schwartz_mem_closure_hasCompactSupport :
    ∀ (V : Type) [NormedAddCommGroup V] [NormedSpace ℝ V] [FiniteDimensional ℝ V] (f : SchwartzMap V ℂ),
    f ∈ closure {g : SchwartzMap V ℂ | HasCompactSupport (g : V → ℂ)} := by
  intro V _ _ _ f
  exact schwartz_dense_hasCompactSupport f

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzCompactSupportDense =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzPairingContinuousFunctional =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzPairingContinuousFunctional", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped SchwartzMap

namespace GlobalTheory

theorem schwartz_pairing_conj_clm_of_borelSpace (V : Type) [NormedAddCommGroup V] [NormedSpace ℝ V]
    [FiniteDimensional ℝ V] [MeasurableSpace V] [BorelSpace V]
    (μ : MeasureTheory.Measure V) [μ.IsAddHaarMeasure] (k : SchwartzMap V ℂ) :
    ∃ L : SchwartzMap V ℂ →L[ℂ] ℂ, ∀ u : SchwartzMap V ℂ,
      L u = ∫ x, u x * starRingEnd ℂ (k x) ∂μ := by
  let kc : 𝓢(V, ℂ) := SchwartzMap.postcompCLM (𝕜 := ℝ) (Complex.conjCLE : ℂ →L[ℝ] ℂ) k
  have hkc : ∀ x, kc x = starRingEnd ℂ (k x) := fun x => rfl
  have hg : Function.HasTemperateGrowth (fun x => starRingEnd ℂ (k x)) := by
    have := kc.hasTemperateGrowth
    simpa [funext hkc] using this
  refine ⟨(SchwartzMap.integralCLM ℂ μ).comp
    (SchwartzMap.smulLeftCLM ℂ (fun x => starRingEnd ℂ (k x))), fun u => ?_⟩
  rw [ContinuousLinearMap.comp_apply, SchwartzMap.integralCLM_apply,
    SchwartzMap.smulLeftCLM_apply hg]
  congr 1
  funext x
  simp [smul_eq_mul, mul_comm]

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzPairingContinuousFunctional =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFunctionalDependsOnValueAtZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFunctionalDependsOnValueAtZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TrPApply\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationInvariantFunctionalRestrict\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CharInvAtZero

theorem eq_of_eq_zero : ∀ {Y : Type} [NormedAddCommGroup Y] [NormedSpace ℝ Y] [FiniteDimensional ℝ Y]
    (ℓ : SchwartzMap Y ℂ →L[ℂ] ℂ),
    (∀ L : Y →ₗ[ℝ] ℝ, ∀ f g : SchwartzMap Y ℂ, ⇑g = (fun x => GlobalTheory.ArchSch.ech (L x) * f x) → ℓ g = ℓ f) →
    ∀ f g : SchwartzMap Y ℂ, f 0 = g 0 → ℓ f = ℓ g := by
  intro Y _ _ _ ℓ hinv f g h0
  refine GlobalTheory.SchwartzHadamard.eq_of_eqOn (⊥ : Submodule ℝ Y) ℓ (fun L _ => hinv L) f g ?_
  intro p hp
  rw [Submodule.mem_bot] at hp
  subst hp
  exact h0

end GlobalTheory.CharInvAtZero
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFunctionalDependsOnValueAtZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationInvariantSchwartzUnique =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationInvariantSchwartzUnique", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TrPApply\npublic import Mathlib.Analysis.InnerProductSpace.EuclideanDist\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFunctionalDependsOnValueAtZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped FourierTransform SchwartzMap InnerProductSpace
open MeasureTheory

namespace GlobalTheory.TransInvSchwartz

theorem fourier_compSubConst {n : ℕ} (h : 𝓢(EuclideanSpace ℝ (Fin n), ℂ)) (w ξ : EuclideanSpace ℝ (Fin n)) :
    𝓕 (SchwartzMap.compSubConstCLM ℂ w h) ξ = GlobalTheory.ArchSch.ech ⟪w, ξ⟫_ℝ * 𝓕 h ξ := by
  rw [SchwartzMap.fourier_coe, SchwartzMap.fourier_coe, Real.fourier_eq', Real.fourier_eq', ← integral_const_mul]
  simp only [SchwartzMap.compSubConstCLM_apply, smul_eq_mul]
  rw [← integral_add_right_eq_self (fun v => Complex.exp (↑(-2 * Real.pi * ⟪v, ξ⟫_ℝ) * Complex.I) * h (v - w)) w]
  refine integral_congr_ae (Filter.Eventually.of_forall fun v => ?_)
  simp only [add_sub_cancel_right, GlobalTheory.ArchSch.ech, inner_add_left]
  rw [← mul_assoc, ← Complex.exp_add]
  congr 2
  push_cast
  ring

theorem eq_of_fourier_zero {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V] [FiniteDimensional ℝ V]
    (μ : SchwartzMap V ℂ →L[ℂ] ℂ)
    (hμ : ∀ (a : V) (f g : SchwartzMap V ℂ), ⇑g = (fun x => f (x + a)) → μ g = μ f)
    (f g : SchwartzMap V ℂ)
    (hfg : 𝓕 (SchwartzMap.compCLMOfContinuousLinearEquiv ℂ (F := ℂ) (toEuclidean (E := V)).symm f) 0 =
      𝓕 (SchwartzMap.compCLMOfContinuousLinearEquiv ℂ (F := ℂ) (toEuclidean (E := V)).symm g) 0) :
    μ f = μ g := by
  set T := toEuclidean (E := V)
  set C := SchwartzMap.compCLMOfContinuousLinearEquiv ℂ (F := ℂ) T.symm with hC
  let Ci := SchwartzMap.compCLMOfContinuousLinearEquiv ℂ (F := ℂ) T
  have hCi : ∀ h, Ci (C h) = h := fun h => by ext x; simp [Ci, C]
  let Fe := FourierTransform.fourierCLE ℂ 𝓢(EuclideanSpace ℝ (Fin (Module.finrank ℝ V)), ℂ)
  have hFe : ∀ h, Fe h = 𝓕 h := fun h => rfl
  let ℓ : 𝓢(EuclideanSpace ℝ (Fin (Module.finrank ℝ V)), ℂ) →L[ℂ] ℂ :=
    μ.comp (Ci.comp (Fe.symm : _ →L[ℂ] _))
  have hℓ : ∀ h, ℓ (𝓕 (C h)) = μ h := fun h => by
    show μ (Ci (Fe.symm (Fe (C h)))) = μ h
    rw [ContinuousLinearEquiv.symm_apply_apply, hCi]
  have hinv : ∀ L : EuclideanSpace ℝ (Fin (Module.finrank ℝ V)) →ₗ[ℝ] ℝ, ∀ F G : 𝓢(EuclideanSpace ℝ (Fin (Module.finrank ℝ V)), ℂ),
      ⇑G = (fun x => GlobalTheory.ArchSch.ech (L x) * F x) → ℓ G = ℓ F := by
    intro L F G hG
    set w := (InnerProductSpace.toDual ℝ _).symm (LinearMap.toContinuousLinearMap L)
    have hw : ∀ x, L x = ⟪w, x⟫_ℝ := fun x => by
      rw [InnerProductSpace.toDual_symm_apply]; rfl
    set h := Fe.symm F
    have hF : 𝓕 h = F := Fe.apply_symm_apply F
    have hG' : Fe (SchwartzMap.compSubConstCLM ℂ w h) = G := by
      ext ξ
      rw [hFe, fourier_compSubConst, hG, ← hF]
      simp only [hw]
    show μ (Ci (Fe.symm G)) = μ (Ci (Fe.symm F))
    rw [← hG', ContinuousLinearEquiv.symm_apply_apply]
    apply hμ (-T.symm w)
    ext x
    simp only [Ci, SchwartzMap.compCLMOfContinuousLinearEquiv_apply, Function.comp_apply]
    rw [SchwartzMap.compSubConstCLM_apply, map_add (f := _), map_neg, ContinuousLinearEquiv.apply_symm_apply, sub_eq_add_neg]
  have := _root_.GlobalTheory.CharInvAtZero.eq_of_eq_zero ℓ hinv (𝓕 (C f)) (𝓕 (C g)) hfg
  rwa [hℓ, hℓ] at this

theorem dim_le_one : ∀ {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V] [FiniteDimensional ℝ V]
    (μ μ' : SchwartzMap V ℂ →L[ℂ] ℂ),
    (∀ (a : V) (f g : SchwartzMap V ℂ), ⇑g = (fun x => f (x + a)) → μ g = μ f) →
    (∀ (a : V) (f g : SchwartzMap V ℂ), ⇑g = (fun x => f (x + a)) → μ' g = μ' f) →
    μ ≠ 0 → ∃ c : ℂ, μ' = c • μ := by
  intro V _ _ _ μ μ' hμ hμ' h0
  set C := SchwartzMap.compCLMOfContinuousLinearEquiv ℂ (F := ℂ) (toEuclidean (E := V)).symm with hC
  let Fe := FourierTransform.fourierCLE ℂ 𝓢(EuclideanSpace ℝ (Fin (Module.finrank ℝ V)), ℂ)
  let Φ : SchwartzMap V ℂ → ℂ := fun f => Fe (C f) 0
  have hΦs : ∀ (c : ℂ) f, Φ (c • f) = c * Φ f := fun c f => by
    show Fe (C (c • f)) 0 = c * Fe (C f) 0
    rw [map_smul, map_smul]; rfl
  obtain ⟨f₀, hf₀⟩ : ∃ f₀, μ f₀ ≠ 0 := by
    by_contra hc; push_neg at hc; exact h0 (ContinuousLinearMap.ext hc)
  have hΦ0 : Φ f₀ ≠ 0 := by
    intro hz
    apply hf₀
    rw [eq_of_fourier_zero μ hμ f₀ 0 (by
      show Φ f₀ = Fe (C 0) 0
      rw [hz]; simp), map_zero]
  have hrep : ∀ ν : SchwartzMap V ℂ →L[ℂ] ℂ,
      (∀ (a : V) (f g : SchwartzMap V ℂ), ⇑g = (fun x => f (x + a)) → ν g = ν f) →
      ∀ f, ν f = (Φ f / Φ f₀) * ν f₀ := fun ν hν f => by
    rw [eq_of_fourier_zero ν hν f ((Φ f / Φ f₀) • f₀) (by
      show Φ f = Φ ((Φ f / Φ f₀) • f₀)
      rw [hΦs, div_mul_cancel₀ _ hΦ0]), map_smul, smul_eq_mul]
  refine ⟨μ' f₀ / μ f₀, ContinuousLinearMap.ext fun f => ?_⟩
  rw [ContinuousLinearMap.smul_apply, hrep μ' hμ' f, hrep μ hμ f, smul_eq_mul]
  field_simp

end GlobalTheory.TransInvSchwartz
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationInvariantSchwartzUnique =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationIsometrySchwartzOperator =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationIsometrySchwartzOperator", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\npublic import Mathlib.Analysis.Calculus.ContDiff.Bounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped SchwartzMap

namespace GlobalTheory.TransDecay

theorem seminorm_mul_shift_le {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V]
    (χ h : 𝓢(V, ℂ)) (hχ : HasCompactSupport (χ : V → ℂ)) (l m M : ℕ) :
    ∃ C : ℝ, ∀ (v : V) (k' : 𝓢(V, ℂ)), (∀ x, k' x = χ x * h (x + v)) →
      SchwartzMap.seminorm ℂ l m k' ≤ C * ((1 + ‖v‖) ^ M)⁻¹ := by
  obtain ⟨r, hr⟩ := hχ.isCompact.isBounded.subset_closedBall (0 : V)
  set R := max r 0
  have hR0 : 0 ≤ R := le_max_right _ _
  have hxR : ∀ x ∈ tsupport (χ : V → ℂ), ‖x‖ ≤ R := fun x hx => by
    have := hr hx
    rw [Metric.mem_closedBall, dist_zero_right] at this
    exact this.trans (le_max_left _ _)
  set S := ((Finset.Iic (M, m)).sup fun p : ℕ × ℕ => SchwartzMap.seminorm ℂ p.1 p.2) h
  have hS0 : 0 ≤ S := apply_nonneg _ _
  set A := ∑ i ∈ Finset.range (m + 1), (m.choose i : ℝ) * SchwartzMap.seminorm ℂ 0 i χ
  have hA0 : 0 ≤ A := Finset.sum_nonneg fun i _ => by positivity
  refine ⟨R ^ l * A * ((1 + R) ^ M * (2 ^ M * S)), fun v k' hk' => ?_⟩
  have hvpos : 0 < (1 + ‖v‖) ^ M := by positivity
  refine SchwartzMap.seminorm_le_bound ℂ l m k' (by positivity) fun x => ?_
  have hfun : (k' : V → ℂ) = fun y => χ y * h (y + v) := funext hk'
  rw [hfun]
  have hsh : ContDiff ℝ (⊤ : ℕ∞) (fun y => h (y + v)) :=
    (h.smooth ⊤).comp (contDiff_id.add contDiff_const)
  have hL := norm_iteratedFDeriv_mul_le (χ.smooth ⊤) hsh x (n := m) (by exact_mod_cast le_top)
  have hterm : ∀ i ∈ Finset.range (m + 1), ‖x‖ ^ l * ((m.choose i : ℝ) * ‖iteratedFDeriv ℝ i χ x‖ *
      ‖iteratedFDeriv ℝ (m - i) (fun y => h (y + v)) x‖) ≤
      R ^ l * ((m.choose i : ℝ) * SchwartzMap.seminorm ℂ 0 i χ) * ((1 + R) ^ M * (2 ^ M * S)) *
        ((1 + ‖v‖) ^ M)⁻¹ := by
    intro i _
    by_cases hx : x ∈ tsupport (χ : V → ℂ)
    · have hx1 := hxR x hx
      rw [iteratedFDeriv_comp_add_right]
      have hj : (1 + ‖x + v‖) ^ M * ‖iteratedFDeriv ℝ (m - i) h (x + v)‖ ≤ 2 ^ M * S :=
        SchwartzMap.one_add_le_sup_seminorm_apply (𝕜 := ℂ) (m := (M, m)) le_rfl (Nat.sub_le _ _) h (x + v)
      have hv : 1 + ‖v‖ ≤ (1 + R) * (1 + ‖x + v‖) := by
        have : ‖v‖ ≤ ‖x + v‖ + ‖x‖ := by
          calc ‖v‖ = ‖(x + v) - x‖ := by simp
            _ ≤ _ := norm_sub_le _ _
        nlinarith [norm_nonneg (x + v)]
      have hD : ‖iteratedFDeriv ℝ (m - i) h (x + v)‖ ≤
          (1 + R) ^ M * (2 ^ M * S) * ((1 + ‖v‖) ^ M)⁻¹ := by
        rw [← div_eq_mul_inv, le_div_iff₀ hvpos]
        calc ‖iteratedFDeriv ℝ (m - i) h (x + v)‖ * (1 + ‖v‖) ^ M
            ≤ ‖iteratedFDeriv ℝ (m - i) h (x + v)‖ * ((1 + R) * (1 + ‖x + v‖)) ^ M := by gcongr
          _ = (1 + R) ^ M * ((1 + ‖x + v‖) ^ M * ‖iteratedFDeriv ℝ (m - i) h (x + v)‖) := by
            rw [mul_pow]; ring
          _ ≤ (1 + R) ^ M * (2 ^ M * S) := by gcongr
      have hχi : ‖iteratedFDeriv ℝ i χ x‖ ≤ SchwartzMap.seminorm ℂ 0 i χ :=
        SchwartzMap.norm_iteratedFDeriv_le_seminorm ℂ χ i x
      calc ‖x‖ ^ l * ((m.choose i : ℝ) * ‖iteratedFDeriv ℝ i χ x‖ *
            ‖iteratedFDeriv ℝ (m - i) h (x + v)‖)
          ≤ R ^ l * ((m.choose i : ℝ) * SchwartzMap.seminorm ℂ 0 i χ *
            ((1 + R) ^ M * (2 ^ M * S) * ((1 + ‖v‖) ^ M)⁻¹)) := by gcongr
        _ = _ := by ring
    · have h0 : iteratedFDeriv ℝ i χ x = 0 := by
        by_contra hne
        exact hx (support_iteratedFDeriv_subset i (Function.mem_support.2 hne))
      rw [h0, norm_zero, mul_zero, zero_mul, mul_zero]
      positivity
  calc ‖x‖ ^ l * ‖iteratedFDeriv ℝ m (fun y => χ y * h (y + v)) x‖
      ≤ ‖x‖ ^ l * ∑ i ∈ Finset.range (m + 1), (m.choose i : ℝ) * ‖iteratedFDeriv ℝ i χ x‖ *
          ‖iteratedFDeriv ℝ (m - i) (fun y => h (y + v)) x‖ := by gcongr
    _ = ∑ i ∈ Finset.range (m + 1), ‖x‖ ^ l * ((m.choose i : ℝ) * ‖iteratedFDeriv ℝ i χ x‖ *
          ‖iteratedFDeriv ℝ (m - i) (fun y => h (y + v)) x‖) := Finset.mul_sum _ _ _
    _ ≤ ∑ i ∈ Finset.range (m + 1), R ^ l * ((m.choose i : ℝ) * SchwartzMap.seminorm ℂ 0 i χ) *
          ((1 + R) ^ M * (2 ^ M * S)) * ((1 + ‖v‖) ^ M)⁻¹ := Finset.sum_le_sum hterm
    _ = R ^ l * A * ((1 + R) ^ M * (2 ^ M * S)) * ((1 + ‖v‖) ^ M)⁻¹ := by
        rw [← Finset.sum_mul, ← Finset.sum_mul, ← Finset.mul_sum]

theorem decay : ∀ (V : Type) [NormedAddCommGroup V] [NormedSpace ℝ V] [FiniteDimensional ℝ V] [MeasurableSpace V] [BorelSpace V]
    (μ : MeasureTheory.Measure V) [μ.IsAddHaarMeasure] (T : SchwartzMap V ℂ →L[ℂ] SchwartzMap V ℂ),
    (∀ (a : V) (f f' g g' : SchwartzMap V ℂ), (∀ x, f' x = f (x + a)) → (∀ x, g' x = g (x + a)) →
      ∫ x, T f' x * starRingEnd ℂ (T g' x) ∂μ = ∫ x, T f x * starRingEnd ℂ (T g x) ∂μ) →
    ∀ (χ ψ h : SchwartzMap V ℂ), HasCompactSupport (χ : V → ℂ) → ∀ M : ℕ, ∃ C : ℝ,
      ∀ (v : V) (k ψv : SchwartzMap V ℂ), (∀ x, k x = χ (x - v) * h x) → (∀ x, ψv x = ψ (x - v)) →
        ‖∫ x, T k x * starRingEnd ℂ (T ψv x) ∂μ‖ ≤ C * ((1 + ‖v‖) ^ M)⁻¹ := by
  intro V _ _ _ _ _ μ _ T hinv χ ψ h hχ M
  have hp : Continuous ((SchwartzMap.seminorm ℂ 0 0 : Seminorm ℂ 𝓢(V, ℂ)).comp
      (T : 𝓢(V, ℂ) →ₗ[ℂ] 𝓢(V, ℂ))) :=
    ((schwartz_withSeminorms ℂ V ℂ).continuous_seminorm (0, 0)).comp T.continuous
  obtain ⟨s, C0, -, hC0⟩ := Seminorm.bound_of_continuous (schwartz_withSeminorms ℂ V ℂ) _ hp
  have hA : ∀ i : ℕ × ℕ, ∃ C : ℝ, ∀ (v : V) (k' : 𝓢(V, ℂ)), (∀ x, k' x = χ x * h (x + v)) →
      SchwartzMap.seminorm ℂ i.1 i.2 k' ≤ C * ((1 + ‖v‖) ^ M)⁻¹ :=
    fun i => seminorm_mul_shift_le χ h hχ i.1 i.2 M
  choose Cf hCf using hA
  set Cs := ∑ i ∈ s, |Cf i|
  have hCs : 0 ≤ Cs := Finset.sum_nonneg fun i _ => abs_nonneg _
  set I := ∫ x, ‖T ψ x‖ ∂μ
  have hint : Integrable (fun x => ‖T ψ x‖) μ := (SchwartzMap.integrable (T ψ)).norm
  refine ⟨(C0 : ℝ) * Cs * I, fun v k ψv hk hψv => ?_⟩
  set k' := SchwartzMap.compSubConstCLM ℂ (-v) k
  have hk' : ∀ x, k' x = k (x + v) := by
    intro x; simp [k', SchwartzMap.compSubConstCLM_apply, sub_neg_eq_add]
  have hk'' : ∀ x, k' x = χ x * h (x + v) := by intro x; rw [hk', hk]; simp
  have hψ : ∀ x, ψ x = ψv (x + v) := by intro x; rw [hψv]; simp
  rw [← hinv v k k' ψv ψ hk' hψ]
  have hsup : (s.sup (schwartzSeminormFamily ℂ V ℂ)) k' ≤ Cs * ((1 + ‖v‖) ^ M)⁻¹ := by
    refine Seminorm.finset_sup_apply_le (by positivity) fun i hi => ?_
    calc schwartzSeminormFamily ℂ V ℂ i k' ≤ Cf i * ((1 + ‖v‖) ^ M)⁻¹ := hCf i v k' hk''
      _ ≤ |Cf i| * ((1 + ‖v‖) ^ M)⁻¹ := by gcongr; exact le_abs_self _
      _ ≤ Cs * ((1 + ‖v‖) ^ M)⁻¹ := by
        gcongr
        exact Finset.single_le_sum (f := fun i => |Cf i|) (fun i _ => abs_nonneg _) hi
  have hTk : ∀ x, ‖T k' x‖ ≤ (C0 : ℝ) * (Cs * ((1 + ‖v‖) ^ M)⁻¹) := by
    intro x
    have h2 := hC0 k'
    rw [Seminorm.smul_apply, NNReal.smul_def, smul_eq_mul] at h2
    calc ‖T k' x‖ ≤ SchwartzMap.seminorm ℂ 0 0 (T k') := SchwartzMap.norm_le_seminorm ℂ _ x
      _ ≤ (C0 : ℝ) * (s.sup (schwartzSeminormFamily ℂ V ℂ)) k' := h2
      _ ≤ _ := by gcongr
  calc ‖∫ x, T k' x * starRingEnd ℂ (T ψ x) ∂μ‖
      ≤ ∫ x, ((C0 : ℝ) * (Cs * ((1 + ‖v‖) ^ M)⁻¹)) * ‖T ψ x‖ ∂μ := by
        refine norm_integral_le_of_norm_le (hint.const_mul _) (Eventually.of_forall fun x => ?_)
        rw [norm_mul, RCLike.norm_conj]
        gcongr
        exact hTk x
    _ = (C0 : ℝ) * Cs * I * ((1 + ‖v‖) ^ M)⁻¹ := by rw [integral_const_mul]; ring

end GlobalTheory.TransDecay
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationIsometrySchwartzOperator =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationInvariantFormConstL2 =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationInvariantFormConstL2", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RealCompactPartitionUnity\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzCompactSupportDense\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzMapBarrelledSpace\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzPairingContinuousFunctional\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationInvariantSchwartzUnique\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationIsometrySchwartzOperator\npublic import Mathlib.Analysis.Calculus.BumpFunction.Normed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped SchwartzMap

noncomputable section

namespace GlobalTheory.TransConstForm

variable {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V]

def conjS (f : 𝓢(V, ℂ)) : 𝓢(V, ℂ) where
  toFun x := starRingEnd ℂ (f x)
  smooth' := Complex.conjCLE.contDiff.comp f.smooth'
  decay' k n := by
    obtain ⟨C, hC⟩ := f.decay' k n
    refine ⟨C, fun x => ?_⟩
    have e : (fun x => starRingEnd ℂ (f x)) = (Complex.conjLIE : ℂ ≃ₗᵢ[ℝ] ℂ) ∘ f := by
      funext y; simp
    rw [e, LinearIsometryEquiv.norm_iteratedFDeriv_comp_left]
    exact hC x

theorem conjS_apply (f : 𝓢(V, ℂ)) (x : V) : conjS f x = starRingEnd ℂ (f x) := rfl

def mulS (m f : 𝓢(V, ℂ)) : 𝓢(V, ℂ) := SchwartzMap.smulLeftCLM ℂ (m : V → ℂ) f

theorem mulS_apply (m f : 𝓢(V, ℂ)) (x : V) : mulS m f x = m x * f x := by
  have := congrFun (SchwartzMap.smulLeftCLM_apply (F := ℂ) m.hasTemperateGrowth f) x
  simpa [mulS, smul_eq_mul] using this

def evS (x : V) : 𝓢(V, ℂ) →L[ℂ] ℂ :=
  (BoundedContinuousFunction.evalCLM ℂ x).comp (SchwartzMap.toBoundedContinuousFunctionCLM ℂ V ℂ)

theorem evS_apply (x : V) (f : 𝓢(V, ℂ)) : evS x f = f x := rfl

theorem sum_apply {ι : Type} (s : Finset ι) (F : ι → 𝓢(V, ℂ)) (x : V) : (∑ i ∈ s, F i) x = ∑ i ∈ s, F i x := by
  set_option synthInstance.maxHeartbeats 100000 in
    rw [← evS_apply x, map_sum]; rfl

theorem trans_apply (a : V) (f : 𝓢(V, ℂ)) (x : V) : SchwartzMap.compSubConstCLM ℂ a f x = f (x - a) := by
  simp

theorem exists_bump [FiniteDimensional ℝ V] (K : Set V) (hK : IsCompact K) :
    ∃ χ : 𝓢(V, ℂ), HasCompactSupport (χ : V → ℂ) ∧ (∀ x, starRingEnd ℂ (χ x) = χ x) ∧ ∀ x ∈ K, χ x = 1 := by
  obtain ⟨R, hR⟩ := hK.isBounded.subset_closedBall 0
  have h0 : (0 : ℝ) < max R 1 := lt_max_of_lt_right one_pos
  let b : ContDiffBump (0 : V) := ⟨max R 1, max R 1 + 1, h0, by linarith⟩
  have h1 : HasCompactSupport (fun x => ((b x : ℝ) : ℂ)) :=
    b.hasCompactSupport.comp_left (g := fun r : ℝ => (r : ℂ)) (by simp)
  refine ⟨h1.toSchwartzMap (Complex.ofRealCLM.contDiff.comp b.contDiff), h1, fun x => ?_, fun x hx => ?_⟩
  · change starRingEnd ℂ ((b x : ℝ) : ℂ) = ((b x : ℝ) : ℂ)
    simp
  · change ((b x : ℝ) : ℂ) = 1
    rw [b.one_of_mem_closedBall]
    · simp
    · exact Metric.closedBall_subset_closedBall (le_max_left _ _) (hR hx)

end GlobalTheory.TransConstForm

namespace GlobalTheory.TransConstForm

variable {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V]

theorem exists_lambda [FiniteDimensional ℝ V] [MeasurableSpace V] [BorelSpace V] (μ : Measure V) [μ.IsAddHaarMeasure]
    (T : 𝓢(V, ℂ) →L[ℂ] 𝓢(V, ℂ))
    (htr : ∀ (a : V) (f f' g g' : 𝓢(V, ℂ)), (∀ x, f' x = f (x + a)) → (∀ x, g' x = g (x + a)) →
      ∫ x, T f' x * starRingEnd ℂ (T g' x) ∂μ = ∫ x, T f x * starRingEnd ℂ (T g x) ∂μ)
    (hmul : ∀ (m f f' g g' : 𝓢(V, ℂ)), (∀ x, f' x = m x * f x) → (∀ x, g' x = starRingEnd ℂ (m x) * g x) →
      ∫ x, T f' x * starRingEnd ℂ (T g x) ∂μ = ∫ x, T f x * starRingEnd ℂ (T g' x) ∂μ) :
    ∃ Λ : 𝓢(V, ℂ) →L[ℂ] ℂ, ∀ f g h : 𝓢(V, ℂ), HasCompactSupport (f : V → ℂ) →
      (∀ x, h x = f x * starRingEnd ℂ (g x)) → ∫ x, T f x * starRingEnd ℂ (T g x) ∂μ = Λ h := by
  classical
  set B : 𝓢(V, ℂ) → 𝓢(V, ℂ) → ℂ := fun f g => ∫ x, T f x * starRingEnd ℂ (T g x) ∂μ with hB
  have hL : ∀ g, ∃ L : 𝓢(V, ℂ) →L[ℂ] ℂ, ∀ f, L f = B f g := fun g => by
    obtain ⟨L, hL⟩ := _root_.GlobalTheory.schwartz_pairing_conj_clm_of_borelSpace V μ (T g)
    exact ⟨L.comp T, fun f => by simp [hL, hB]⟩
  choose L hLB using hL
  obtain ⟨ψ, hψc, hψr, v, hsum1, hfin, M, hsumm⟩ := _root_.GlobalTheory.LatticePartition.exists_lattice_partition V
  obtain ⟨χ, hχc, hχr, hχ1⟩ := exists_bump (tsupport (ψ : V → ℂ)) hψc
  let tr : V → 𝓢(V, ℂ) → 𝓢(V, ℂ) := fun a f => SchwartzMap.compSubConstCLM ℂ a f
  have htr_apply : ∀ a f x, tr a f x = f (x - a) := fun a f x => trans_apply a f x
  have hχψ : ∀ y, starRingEnd ℂ (χ y) * ψ y = ψ y := by
    intro y
    by_cases hy : ψ y = 0
    · simp [hy]
    · rw [hχr, hχ1 y (subset_tsupport _ hy), one_mul]
  have hterm : ∀ h, ∃ C : ℝ, ∀ j, ‖B h (tr (v j) ψ)‖ ≤ C * ((1 + ‖v j‖) ^ M)⁻¹ := by
    intro h
    obtain ⟨C, hC⟩ := _root_.GlobalTheory.TransDecay.decay V μ T htr χ ψ h hχc M
    refine ⟨C, fun j => ?_⟩
    have e : B h (tr (v j) ψ) = B (mulS (tr (v j) χ) h) (tr (v j) ψ) :=
      (hmul (tr (v j) χ) h (mulS (tr (v j) χ) h) (tr (v j) ψ) (tr (v j) ψ)
        (fun x => mulS_apply _ _ x) (fun x => by simp only [htr_apply]; exact (hχψ _).symm)).symm
    rw [e]
    exact hC (v j) _ _ (fun x => by rw [mulS_apply, htr_apply]) (fun x => htr_apply _ _ x)
  have hsummable : ∀ h, Summable (fun j => L (tr (v j) ψ) h) := by
    intro h
    obtain ⟨C, hC⟩ := hterm h
    refine Summable.of_norm_bounded (hsumm.mul_left C) (fun j => ?_)
    rw [hLB]; exact hC j
  haveI : BarrelledSpace ℂ 𝓢(V, ℂ) := GlobalTheory.schwartzMap_barrelledSpace V
  obtain ⟨en, hen⟩ := exists_surjective_nat (Fin (Module.finrank ℝ V) → ℤ)
  let S : ℕ → Finset (Fin (Module.finrank ℝ V) → ℤ) := fun N => (Finset.range N).image en
  have hS : Tendsto S atTop atTop := by
    refine Filter.tendsto_atTop_finset_of_monotone (fun a b hab => ?_) (fun w => ?_)
    · exact Finset.image_subset_image (Finset.range_subset_range.2 hab)
    · obtain ⟨k, rfl⟩ := hen w
      exact ⟨k + 1, Finset.mem_image_of_mem _ (Finset.mem_range.2 (Nat.lt_succ_self k))⟩
  have hlim : Tendsto (fun N h => (∑ j ∈ S N, L (tr (v j) ψ)) h) atTop
      (𝓝 fun h : 𝓢(V, ℂ) => ∑' j, L (tr (v j) ψ) h) := by
    rw [tendsto_pi_nhds]
    intro h
    simp only [ContinuousLinearMap.sum_apply]
    exact (hsummable h).hasSum.comp hS
  refine ⟨continuousLinearMapOfTendsto (fun N => ∑ j ∈ S N, L (tr (v j) ψ)) hlim, fun f g h hf hh => ?_⟩
  show _ = linearMapOfTendsto _ _ hlim h
  rw [linearMapOfTendsto_apply]
  obtain ⟨R, hR⟩ := hf.isCompact.isBounded.subset_closedBall 0
  obtain ⟨r, hr⟩ := hψc.isCompact.isBounded.subset_closedBall 0
  set J := (hfin (R + r)).toFinset with hJ
  have hout : ∀ j, j ∉ J → ∀ x, ψ (x - v j) * f x = 0 := by
    intro j hj x
    by_contra hne
    have h1 : ψ (x - v j) ≠ 0 := left_ne_zero_of_mul hne
    have h2 : f x ≠ 0 := right_ne_zero_of_mul hne
    have hx : ‖x‖ ≤ R := by simpa using hR (subset_tsupport _ h2)
    have hy : ‖x - v j‖ ≤ r := by simpa using hr (subset_tsupport _ h1)
    apply hj
    rw [hJ, Set.Finite.mem_toFinset, Set.mem_setOf_eq]
    calc ‖v j‖ = ‖x - (x - v j)‖ := by rw [sub_sub_cancel]
      _ ≤ ‖x‖ + ‖x - v j‖ := norm_sub_le _ _
      _ ≤ R + r := add_le_add hx hy
  have hterm_eq : ∀ j, L (tr (v j) ψ) h = B (mulS (tr (v j) ψ) f) g := by
    intro j
    rw [hLB]
    have ea := hmul (conjS g) f h (tr (v j) ψ) (mulS (tr (v j) ψ) g)
      (fun x => by rw [hh, conjS_apply, mul_comm])
      (fun x => by rw [mulS_apply, conjS_apply, Complex.conj_conj, mul_comm])
    have eb := hmul (tr (v j) ψ) f (mulS (tr (v j) ψ) f) g (mulS (tr (v j) ψ) g)
      (fun x => mulS_apply _ _ x)
      (fun x => by rw [mulS_apply, htr_apply, hψr])
    exact ea.trans eb.symm
  have hzero : ∀ j, j ∉ J → mulS (tr (v j) ψ) f = 0 := by
    intro j hj
    ext x
    rw [mulS_apply, htr_apply]
    exact hout j hj x
  have hsumf : ∑ j ∈ J, mulS (tr (v j) ψ) f = f := by
    ext x
    rw [sum_apply]
    simp only [mulS_apply, htr_apply]
    rw [← Finset.sum_mul]
    by_cases hfx : f x = 0
    · simp [hfx]
    · have hs : HasSum (fun j => ψ (x - v j)) (∑ j ∈ J, ψ (x - v j)) := by
        refine hasSum_sum_of_ne_finset_zero (fun j hj => ?_)
        have := hout j hj x
        exact (mul_eq_zero.1 this).resolve_right hfx
      rw [← (hsum1 x).unique hs, one_mul]
  calc B f g = L g f := (hLB g f).symm
    _ = L g (∑ j ∈ J, mulS (tr (v j) ψ) f) := by rw [hsumf]
    _ = ∑ j ∈ J, B (mulS (tr (v j) ψ) f) g := by rw [map_sum]; simp only [hLB]
    _ = ∑ j ∈ J, L (tr (v j) ψ) h := Finset.sum_congr rfl (fun j _ => (hterm_eq j).symm)
    _ = ∑' j, L (tr (v j) ψ) h := by
      refine (tsum_eq_sum (fun j hj => ?_)).symm
      rw [hterm_eq, hzero j hj, ← hLB, map_zero]

end GlobalTheory.TransConstForm

namespace GlobalTheory.TransConstForm

variable {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V]

theorem main_of [FiniteDimensional ℝ V] [MeasurableSpace V] [BorelSpace V] (μ : Measure V) [μ.IsAddHaarMeasure]
    (T : 𝓢(V, ℂ) →L[ℂ] 𝓢(V, ℂ))
    (htr : ∀ (a : V) (f f' g g' : 𝓢(V, ℂ)), (∀ x, f' x = f (x + a)) → (∀ x, g' x = g (x + a)) →
      ∫ x, T f' x * starRingEnd ℂ (T g' x) ∂μ = ∫ x, T f x * starRingEnd ℂ (T g x) ∂μ)
    (hmul : ∀ (m f f' g g' : 𝓢(V, ℂ)), (∀ x, f' x = m x * f x) → (∀ x, g' x = starRingEnd ℂ (m x) * g x) →
      ∫ x, T f' x * starRingEnd ℂ (T g x) ∂μ = ∫ x, T f x * starRingEnd ℂ (T g' x) ∂μ) :
    ∃ c : ℂ, ∀ f g : 𝓢(V, ℂ),
      ∫ x, T f x * starRingEnd ℂ (T g x) ∂μ = c * ∫ x, f x * starRingEnd ℂ (g x) ∂μ := by
  classical
  obtain ⟨Λ, hΛ⟩ := exists_lambda μ T htr hmul
  set B : 𝓢(V, ℂ) → 𝓢(V, ℂ) → ℂ := fun f g => ∫ x, T f x * starRingEnd ℂ (T g x) ∂μ with hB
  have hL : ∀ g, ∃ L : 𝓢(V, ℂ) →L[ℂ] ℂ, ∀ f, L f = B f g := fun g => by
    obtain ⟨L, hL⟩ := _root_.GlobalTheory.schwartz_pairing_conj_clm_of_borelSpace V μ (T g)
    exact ⟨L.comp T, fun f => by simp [hL, hB]⟩
  choose L hLB using hL
  let tr : V → 𝓢(V, ℂ) → 𝓢(V, ℂ) := fun a f => SchwartzMap.compSubConstCLM ℂ a f
  have htr_apply : ∀ a f x, tr a f x = f (x - a) := fun a f x => trans_apply a f x
  have hΛc : ∀ h : 𝓢(V, ℂ), HasCompactSupport (h : V → ℂ) → ∀ a, Λ (tr a h) = Λ h := by
    intro h hh a
    obtain ⟨χ, hχc, hχr, hχ1⟩ := exists_bump (tsupport (h : V → ℂ)) hh
    have e1 : B h χ = Λ h := hΛ h χ h hh (fun x => by
      by_cases hx : h x = 0
      · simp [hx]
      · rw [hχr, hχ1 x (subset_tsupport _ hx), mul_one])
    have hh' : HasCompactSupport (tr a h : V → ℂ) := by
      have : (tr a h : V → ℂ) = (h : V → ℂ) ∘ (Homeomorph.subRight a) := by
        funext x; simp [htr_apply]
      rw [this]; exact hh.comp_homeomorph _
    have e2 : B (tr a h) (tr a χ) = Λ (tr a h) := hΛ _ _ _ hh' (fun x => by
      rw [htr_apply, htr_apply]
      by_cases hx : h (x - a) = 0
      · simp [hx]
      · rw [hχr, hχ1 _ (subset_tsupport _ hx), mul_one])
    have e3 : B h χ = B (tr a h) (tr a χ) :=
      htr a (tr a h) h (tr a χ) χ (fun x => by rw [htr_apply, add_sub_cancel_right])
        (fun x => by rw [htr_apply, add_sub_cancel_right])
    rw [← e2, ← e1, e3]
  have hΛt : ∀ a h, Λ (tr a h) = Λ h := by
    intro a h
    have hcl : IsClosed {h : 𝓢(V, ℂ) | Λ (tr a h) = Λ h} :=
      isClosed_eq (Λ.continuous.comp (SchwartzMap.compSubConstCLM ℂ a).continuous) Λ.continuous
    exact closure_minimal (fun h hh => hΛc h hh a) hcl (_root_.GlobalTheory.schwartz_mem_closure_hasCompactSupport V h)
  have hΛt' : ∀ (a : V) (f g : 𝓢(V, ℂ)), (⇑g = fun x => f (x + a)) → Λ g = Λ f := by
    intro a f g hg
    have : g = tr (-a) f := by
      ext x; rw [htr_apply, sub_neg_eq_add]; exact congrFun hg x
    rw [this, hΛt]
  let I : 𝓢(V, ℂ) →L[ℂ] ℂ := SchwartzMap.integralCLM ℂ μ
  have hIa : ∀ u, I u = ∫ x, u x ∂μ := fun u => SchwartzMap.integralCLM_apply ℂ u
  have hIt : ∀ (a : V) (f g : 𝓢(V, ℂ)), (⇑g = fun x => f (x + a)) → I g = I f := by
    intro a f g hg
    rw [hIa, hIa, hg]
    exact integral_add_right_eq_self (fun x => f x) a
  have hI0 : I ≠ 0 := by
    intro h0
    let b : ContDiffBump (0 : V) := ⟨1, 2, one_pos, one_lt_two⟩
    have h1 : HasCompactSupport (fun x => ((b x : ℝ) : ℂ)) :=
      b.hasCompactSupport.comp_left (g := fun r : ℝ => (r : ℂ)) (by simp)
    have := congrArg (fun F : 𝓢(V, ℂ) →L[ℂ] ℂ => F (h1.toSchwartzMap (Complex.ofRealCLM.contDiff.comp b.contDiff))) h0
    simp only [ContinuousLinearMap.zero_apply, hIa] at this
    change ∫ x, ((b x : ℝ) : ℂ) ∂μ = 0 at this
    rw [integral_complex_ofReal, Complex.ofReal_eq_zero] at this
    exact (ne_of_gt (b.integral_pos (μ := μ))) this
  obtain ⟨c, hc⟩ := GlobalTheory.TransInvSchwartz.dim_le_one I Λ hIt hΛt' hI0
  refine ⟨c, fun f g => ?_⟩
  obtain ⟨P, hP⟩ := _root_.GlobalTheory.schwartz_pairing_conj_clm_of_borelSpace V μ g
  have hcl : IsClosed {f : 𝓢(V, ℂ) | B f g = c * ∫ x, f x * starRingEnd ℂ (g x) ∂μ} := by
    have e : {f : 𝓢(V, ℂ) | B f g = c * ∫ x, f x * starRingEnd ℂ (g x) ∂μ} = {f | L g f = c * P f} := by
      ext f; simp only [Set.mem_setOf_eq, hLB, hP]
    rw [e]; exact isClosed_eq (L g).continuous (continuous_const.mul P.continuous)
  refine closure_minimal (fun f hf => ?_) hcl (_root_.GlobalTheory.schwartz_mem_closure_hasCompactSupport V f)
  have := hΛ f g (mulS f (conjS g)) hf (fun x => by rw [mulS_apply, conjS_apply])
  show B f g = _
  rw [show B f g = Λ (mulS f (conjS g)) from this, hc, ContinuousLinearMap.smul_apply, smul_eq_mul, hIa]
  congr 1
  refine integral_congr_ae (Filter.Eventually.of_forall fun x => ?_)
  simp only [mulS_apply, conjS_apply]

end GlobalTheory.TransConstForm

theorem GlobalTheory.TransConstForm.eq_const_mul_l2_of_translation_invariant : ∀ (V : Type) [NormedAddCommGroup V] [NormedSpace ℝ V] [FiniteDimensional ℝ V]
    (μ : @MeasureTheory.Measure V (borel V)), @MeasureTheory.Measure.IsAddHaarMeasure V _ _ (borel V) μ →
    ∀ (T : SchwartzMap V ℂ →L[ℂ] SchwartzMap V ℂ),
    (∀ (a : V) (f f' g g' : SchwartzMap V ℂ), (∀ x, f' x = f (x + a)) → (∀ x, g' x = g (x + a)) →
      @MeasureTheory.integral V ℂ _ _ (borel V) μ (fun x => T f' x * starRingEnd ℂ (T g' x)) =
        @MeasureTheory.integral V ℂ _ _ (borel V) μ (fun x => T f x * starRingEnd ℂ (T g x))) →
    (∀ (m f f' g g' : SchwartzMap V ℂ), (∀ x, f' x = m x * f x) → (∀ x, g' x = starRingEnd ℂ (m x) * g x) →
      @MeasureTheory.integral V ℂ _ _ (borel V) μ (fun x => T f' x * starRingEnd ℂ (T g x)) =
        @MeasureTheory.integral V ℂ _ _ (borel V) μ (fun x => T f x * starRingEnd ℂ (T g' x))) →
    ∃ c : ℂ, ∀ f g : SchwartzMap V ℂ,
      @MeasureTheory.integral V ℂ _ _ (borel V) μ (fun x => T f x * starRingEnd ℂ (T g x)) =
        c * @MeasureTheory.integral V ℂ _ _ (borel V) μ (fun x => f x * starRingEnd ℂ (g x)) := by
  intro V _ _ _ μ hμ T htr hmul
  letI : MeasurableSpace V := borel V
  haveI : BorelSpace V := ⟨rfl⟩
  exact GlobalTheory.TransConstForm.main_of μ T htr hmul
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationInvariantFormConstL2 =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchimedeanIntertwinerUnique =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchimedeanIntertwinerUnique", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPairingStdP\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MulRealAdEqZero\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzHadamardLemma\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationCharacterInvariantForm\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationInvariantFormConstL2\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.SchwartzEqZeroOfWrongSignGaussianRelation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUSplittingTrRep\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.WeilTr MeasureTheory
open scoped Matrix ENNReal

noncomputable section
open scoped Classical
namespace GlobalTheory.ArchInvForm

theorem trace_half {F : Type} [Field F] [NumberField F] [Invertible (2 : mixedEmbedding.mixedSpace F)]
    (z : mixedEmbedding.mixedSpace F) :
    Algebra.trace ℝ (mixedEmbedding.mixedSpace F) (⅟(2 : mixedEmbedding.mixedSpace F) * z) =
      Algebra.trace ℝ (mixedEmbedding.mixedSpace F) z / 2 := by
  have h : (2 : ℝ) • (⅟(2 : mixedEmbedding.mixedSpace F) * z) = z := by
    rw [Algebra.smul_def, map_ofNat, ← mul_assoc, mul_invOf_self, one_mul]
  have h2 := congrArg (Algebra.trace ℝ (mixedEmbedding.mixedSpace F)) h
  rw [map_smul, smul_eq_mul] at h2
  linarith

theorem schr_eq_schrF {F : Type} [Field F] [NumberField F] [Invertible (2 : mixedEmbedding.mixedSpace F)] {κ : Type} [Fintype κ]
    (ψ : AddChar (mixedEmbedding.mixedSpace F) ℂ)
    (hψ : ∀ a, ψ a = Complex.exp (-(2 * Real.pi * Complex.I) * (Algebra.trace ℝ (mixedEmbedding.mixedSpace F) a : ℝ)))
    (w : (κ → mixedEmbedding.mixedSpace F) × (κ → mixedEmbedding.mixedSpace F)) (φ : (κ → mixedEmbedding.mixedSpace F) → ℂ) :
    schr ψ w φ = GlobalTheory.ArchUniq.schrF (GlobalTheory.ArchUniq.trP F κ) w φ := by
  funext x
  simp only [schr, GlobalTheory.ArchUniq.schrF, hψ]
  congr 3
  rw [map_add (f := _), trace_half]
  rfl

theorem int_phase_shift {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V] [FiniteDimensional ℝ V]
    (μ : @Measure V (borel V)) (hμ : @Measure.IsAddHaarMeasure V _ _ (borel V) μ)
    (u v p : V → ℂ) (hp : ∀ x, ‖p x‖ = 1) (a : V) :
    @integral V ℂ _ _ (borel V) μ (fun x => (p x * u (x + a)) * starRingEnd ℂ (p x * v (x + a))) =
      @integral V ℂ _ _ (borel V) μ (fun x => u x * starRingEnd ℂ (v x)) := by
  letI : MeasurableSpace V := borel V
  haveI : BorelSpace V := ⟨rfl⟩
  have e : (fun x => (p x * u (x + a)) * starRingEnd ℂ (p x * v (x + a))) = fun x => u (x + a) * starRingEnd ℂ (v (x + a)) := by
    funext x
    have h1 : p x * starRingEnd ℂ (p x) = 1 := by
      rw [Complex.mul_conj, Complex.normSq_eq_norm_sq, hp x]; simp
    rw [map_mul]
    linear_combination (u (x + a) * starRingEnd ℂ (v (x + a))) * h1
  rw [e]
  exact integral_add_right_eq_self (μ := μ) (fun x => u x * starRingEnd ℂ (v x)) a

end GlobalTheory.ArchInvForm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchimedeanIntertwinerUnique =====
