module

public import Mathlib.Analysis.Complex.Norm
public import Mathlib.Analysis.Normed.Field.Basic
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.TwentyFiveMulSmallConstant
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.ExistsPowerSumLowerBound
public import Formalism.LandauZeroFreeBounds.Statement
public import Formalism.LandauZeroFreeBounds.NoZeroComplex
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.DHFinish2Of
public import Formalism.LandauZeroFreeBounds.SiegelWalfiszAPOfSiegelLower
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
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Algebra.Ring.IsFormallyReal
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.ReduceModChar
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.MeanSquareHypWIff
import Mathlib.Tactic.Polynomial.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.PNTDHFinishB, Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.UbTerms, Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.NormUSum, Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.PNTDHFinish, Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.DeuringHeilbronnFinishTuran

-- ===== clump member: Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.PNTDHFinishB =====
-- clump-header: {"m": "Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.PNTDHFinishB", "h": "module\n\npublic import Mathlib.Analysis.Complex.Norm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Normed.Field.Basic\n\n"}
section -- clump:auto
@[expose] public section

open Finset Complex

noncomputable section

namespace Formalism.HermitianLattices.Ext.PrimesInProgressions.DHF

theorem u_disc (η : ℝ) (hη : 0 < η) (w : ℂ) (hw : η ≤ w.re) :
    ‖(η : ℂ) / w‖ ^ 2 ≤ ((η : ℂ) / w).re := by
  have hw0 : w ≠ 0 := by
    intro h
    rw [h, Complex.zero_re] at hw
    linarith
  have hn : 0 < Complex.normSq w := Complex.normSq_pos.2 hw0
  rw [norm_div, div_pow, Complex.sq_norm, Complex.sq_norm, Complex.div_re, Complex.normSq_ofReal,
    Complex.ofReal_re, Complex.ofReal_im, zero_mul, zero_div, add_zero]
  have h1 : η * η ≤ η * w.re := mul_le_mul_of_nonneg_left hw hη.le
  simp only [div_eq_mul_inv]
  exact mul_le_mul_of_nonneg_right h1 (inv_nonneg.2 hn.le)

theorem u_sum_re (η : ℝ) {N : ℕ} (w : Fin N → ℂ) (j : ℕ) :
    (∑ i, ((η : ℂ) / w i) ^ j).re = η ^ j * (∑ i, 1 / (w i) ^ j).re := by
  have h : ∑ i, ((η : ℂ) / w i) ^ j = ((η ^ j : ℝ) : ℂ) * ∑ i, 1 / (w i) ^ j := by
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl (fun i _ => ?_)
    rw [div_pow, div_eq_mul_one_div, Complex.ofReal_pow]
  rw [h, Complex.re_ofReal_mul]


end Formalism.HermitianLattices.Ext.PrimesInProgressions.DHF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.PNTDHFinishB =====

-- ===== clump member: Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.UbTerms =====
-- clump-header: {"m": "Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.UbTerms", "h": "module\n\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.TwentyFiveMulSmallConstant\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.ExistsPowerSumLowerBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Finset Complex

noncomputable section

namespace Formalism.HermitianLattices.Ext.PrimesInProgressions.TuranPowerSumBounds

theorem lb_part (a : ℕ) (D : ℝ) (m n j : ℕ) (T : ℝ) (hmj : m ≤ j)
    (hanD : (a : ℝ) * n * D ≤ a * D / eps a ^ 2 + j)
    (hT : Real.exp (-((a : ℝ) * m) - a * n * D) ≤ T) :
    1 / (E0 a D * (rr a / 8) ^ j) ≤ (1 / 2) ^ j * T := by
  have hR : rr a / 8 = 2 * Real.exp ((a : ℝ) + 1) := by unfold rr; ring
  have hm' : (m : ℝ) ≤ j := by exact_mod_cast hmj
  have ham : (a : ℝ) * m ≤ a * j := mul_le_mul_of_nonneg_left hm' (Nat.cast_nonneg a)
  have key : Real.exp (-((a : ℝ) * D / eps a ^ 2) - ((a : ℝ) + 1) * j)
      ≤ Real.exp (-((a : ℝ) * m) - a * n * D) := by
    apply Real.exp_le_exp.mpr
    linarith
  have heq : 1 / (E0 a D * (rr a / 8) ^ j)
      = (1 / 2) ^ j * Real.exp (-((a : ℝ) * D / eps a ^ 2) - ((a : ℝ) + 1) * j) := by
    rw [hR, E0, mul_pow, Real.exp_sub, Real.exp_neg, mul_comm ((a : ℝ) + 1) (j : ℝ),
      Real.exp_nat_mul]
    rw [one_div (2 : ℝ)]
    first
    | (field_simp; done)
    | (field_simp; ring1)
    | (field_simp; rw [← mul_pow]; norm_num)
  rw [heq]
  exact (mul_le_mul_of_nonneg_left key (by positivity)).trans
    (mul_le_mul_of_nonneg_left hT (by positivity))

theorem x_part (a : ℕ) (c₁ K : ℝ) (hc₁ : 0 < c₁) (j : ℕ) (hj : (j : ℝ) ≤ 2 * th a * K + j0 a) :
    c₁ * Real.exp (-K) ≤ c₁ * Real.exp (j0 a * Real.log (rr a)) / rr a ^ j := by
  have hlog := log_rr_pos a
  have hid := th_log a
  have hRpos : 0 < rr a := by linarith [rr_gt a]
  have hRj : rr a ^ j = Real.exp (j * Real.log (rr a)) := by
    rw [Real.exp_nat_mul, Real.exp_log hRpos]
  rw [hRj, mul_div_assoc, ← Real.exp_sub]
  refine mul_le_mul_of_nonneg_left ?_ hc₁.le
  rw [Real.exp_le_exp]
  have h1 : (j : ℝ) * Real.log (rr a)
      ≤ (2 * th a * K + j0 a) * Real.log (rr a) :=
    mul_le_mul_of_nonneg_right hj hlog.le
  have h2 : (2 * th a * K + j0 a) * Real.log (rr a)
      = K + j0 a * Real.log (rr a) := by
    linear_combination K * hid
  linarith

theorem far_part (a : ℕ) (S : ℝ) (j : ℕ) (hj2 : 2 ≤ j) (hS : S ≤ 1 + j) :
    eps a ^ (j - 2) * S ≤ rr a ^ 2 * ((j : ℝ) + 1) ^ 2 / rr a ^ j := by
  have hRpos : 0 < rr a := by linarith [rr_gt a]
  obtain ⟨k, rfl⟩ : ∃ k, j = k + 2 := ⟨j - 2, by omega⟩
  rw [Nat.add_sub_cancel]
  have hinv : eps a ^ k = 1 / rr a ^ k := by
    unfold eps; rw [one_div_pow]
  have hJ0 : (0 : ℝ) ≤ ((k + 2 : ℕ) : ℝ) := Nat.cast_nonneg _
  have hSX : S ≤ (((k + 2 : ℕ) : ℝ) + 1) ^ 2 := by linarith [sq_nonneg ((k + 2 : ℕ) : ℝ)]
  have e : rr a ^ 2 * (((k + 2 : ℕ) : ℝ) + 1) ^ 2 / rr a ^ (k + 2)
      = (((k + 2 : ℕ) : ℝ) + 1) ^ 2 / rr a ^ k := by
    rw [pow_add (rr a) k 2, mul_comm (rr a ^ k) (rr a ^ 2),
      mul_div_mul_left _ _ (pow_ne_zero 2 hRpos.ne')]
  rw [hinv, e, one_div_mul_eq_div]
  gcongr

private theorem pow_mul_div_pow_succ_eq_div (η X : ℝ) (hη : η ≠ 0) (j : ℕ) :
    η ^ j * (X / η ^ (j + 1)) = X / η := by
  first
  | rw [mul_div_assoc', pow_succ η j, mul_div_mul_left _ _ (pow_ne_zero j hη)]

private theorem pow_mul_div_mul_pow_eq_div (η M X : ℝ) (hη : η ≠ 0) (j : ℕ) :
    η ^ j * (X / (M * η ^ j)) = X / M := by
  first
  | rw [mul_div_assoc', mul_comm M (η ^ j), mul_div_mul_left _ _ (pow_ne_zero j hη)]



theorem ub_terms (a : ℕ) (CP CF cZ cS c₂ κ L ℓ lam η Mr K : ℝ) (j : ℕ) (hj : 1 ≤ j)
    (hCP : 0 < CP) (hCF : 0 < CF) (hcZ : 0 < cZ) (hcS : 0 < cS) (hc₂ : 0 < c₂)
    (hL : 1 ≤ L) (hℓ0 : 0 ≤ ℓ) (hℓ : ℓ ≤ 2 * L) (hlam : 0 < lam) (hη : 0 < η) (hMr : 0 < Mr) (hK : 0 < K)
    (hlη1 : lam / η ≤ 2 * (lam * L) / cZ) (hM : ℓ ^ 2 / Mr ≤ 32 * lam / cS) (hηc : η ≤ c0 a)
    (hηL : η * L < c₂ * K) (h25c : 25 * CF * c₂ ≤ κ) (hκth : κ ≤ th a)
    (hc₂P : 2 * Real.exp 1 * CP * c₂ * rr a ≤ th a) (hjr : th a * K < j) :
    η ^ j * (CP * lam * ℓ ^ 2 * ((j : ℝ) + 1) ^ 2 / η ^ (j + 1) + (CP * ℓ) ^ j / ((j - 1).factorial : ℝ)
        + CP * ((j : ℝ) + 1) * ℓ ^ 2 / (Mr * η ^ j) + 2 * j * lam / η ^ (j + 1) + CF * L * 25 ^ j) ≤
      (8 * CP / cZ + 4 / cZ + 32 * CP / cS) * ((j : ℝ) + 1) ^ 2 * (lam * L ^ 3)
        + (1 + rr a) * ((j : ℝ) + 1) ^ 2 / rr a ^ j := by
  have hR16 := rr_gt a
  have hRpos : 0 < rr a := by linarith
  have hRne : rr a ≠ 0 := hRpos.ne'
  have hηne : η ≠ 0 := hη.ne'
  have hL0 : 0 < L := by linarith
  have hJ1 : (1 : ℝ) ≤ j := by exact_mod_cast hj
  have hJpos : (0 : ℝ) < j := by linarith
  have hJsq : (j : ℝ) ≤ ((j : ℝ) + 1) ^ 2 := by linarith [sq_nonneg (j : ℝ)]
  have hL2 : 1 ≤ L ^ 2 := by linarith [mul_le_mul hL hL zero_le_one hL0.le]
  have hLL3 : L ≤ L ^ 3 := by linarith [mul_le_mul_of_nonneg_left hL2 hL0.le]
  have hL3 : 1 ≤ L ^ 3 := by linarith
  have hJ1sq : (j : ℝ) + 1 ≤ ((j : ℝ) + 1) ^ 2 * L ^ 3 := by
    linarith [mul_le_mul_of_nonneg_left hL3 (sq_nonneg ((j : ℝ) + 1)), sq_nonneg (j : ℝ)]
  have hJL : (j : ℝ) * L ≤ ((j : ℝ) + 1) ^ 2 * L ^ 3 := mul_le_mul hJsq hLL3 hL0.le (by positivity)
  have hℓ2 : ℓ ^ 2 ≤ 4 * L ^ 2 := by
    linarith [mul_le_mul hℓ hℓ hℓ0 (by linarith : (0 : ℝ) ≤ 2 * L)]
  have b1 : η ^ j * (CP * lam * ℓ ^ 2 * ((j : ℝ) + 1) ^ 2 / η ^ (j + 1)) ≤ 8 * CP / cZ * (((j : ℝ) + 1) ^ 2 * (lam * L ^ 3)) := by
    rw [pow_mul_div_pow_succ_eq_div η _ hηne j]
    calc CP * lam * ℓ ^ 2 * ((j : ℝ) + 1) ^ 2 / η = CP * ℓ ^ 2 * ((j : ℝ) + 1) ^ 2 * (lam / η) := by ring
      _ ≤ CP * ℓ ^ 2 * ((j : ℝ) + 1) ^ 2 * (2 * (lam * L) / cZ) :=
          mul_le_mul_of_nonneg_left hlη1 (by positivity)
      _ = 2 * CP * lam * L / cZ * ((j : ℝ) + 1) ^ 2 * ℓ ^ 2 := by ring
      _ ≤ 2 * CP * lam * L / cZ * ((j : ℝ) + 1) ^ 2 * (4 * L ^ 2) :=
          mul_le_mul_of_nonneg_left hℓ2 (by positivity)
      _ = 8 * CP / cZ * (((j : ℝ) + 1) ^ 2 * (lam * L ^ 3)) := by ring
  have b3 : η ^ j * (CP * ((j : ℝ) + 1) * ℓ ^ 2 / (Mr * η ^ j)) ≤ 32 * CP / cS * (((j : ℝ) + 1) ^ 2 * (lam * L ^ 3)) := by
    rw [pow_mul_div_mul_pow_eq_div η Mr _ hηne j]
    calc CP * ((j : ℝ) + 1) * ℓ ^ 2 / Mr = CP * ((j : ℝ) + 1) * (ℓ ^ 2 / Mr) := by ring
      _ ≤ CP * ((j : ℝ) + 1) * (32 * lam / cS) := mul_le_mul_of_nonneg_left hM (by positivity)
      _ = 32 * CP / cS * lam * ((j : ℝ) + 1) := by ring
      _ ≤ 32 * CP / cS * lam * (((j : ℝ) + 1) ^ 2 * L ^ 3) := mul_le_mul_of_nonneg_left hJ1sq (by positivity)
      _ = 32 * CP / cS * (((j : ℝ) + 1) ^ 2 * (lam * L ^ 3)) := by ring
  have b4 : η ^ j * (2 * (j : ℝ) * lam / η ^ (j + 1)) ≤ 4 / cZ * (((j : ℝ) + 1) ^ 2 * (lam * L ^ 3)) := by
    rw [pow_mul_div_pow_succ_eq_div η _ hηne j]
    calc 2 * (j : ℝ) * lam / η = 2 * (j : ℝ) * (lam / η) := by ring
      _ ≤ 2 * (j : ℝ) * (2 * (lam * L) / cZ) := mul_le_mul_of_nonneg_left hlη1 (by positivity)
      _ = 4 / cZ * lam * ((j : ℝ) * L) := by ring
      _ ≤ 4 / cZ * lam * (((j : ℝ) + 1) ^ 2 * L ^ 3) := mul_le_mul_of_nonneg_left hJL (by positivity)
      _ = 4 / cZ * (((j : ℝ) + 1) ^ 2 * (lam * L ^ 3)) := by ring
  have hx0 : 0 ≤ CP * ℓ * η := by positivity
  have hxK : CP * ℓ * η ≤ 2 * CP * c₂ * K := by
    have e1 : CP * η * ℓ ≤ CP * η * (2 * L) := mul_le_mul_of_nonneg_left hℓ (by positivity)
    have e2 : CP * (η * L) ≤ CP * (c₂ * K) := mul_le_mul_of_nonneg_left hηL.le hCP.le
    linarith
  have hexR : Real.exp 1 * (CP * ℓ * η) * rr a ≤ th a * K := by
    calc Real.exp 1 * (CP * ℓ * η) * rr a
        ≤ Real.exp 1 * (2 * CP * c₂ * K) * rr a :=
          mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hxK (Real.exp_pos 1).le) hRpos.le
      _ = (2 * Real.exp 1 * CP * c₂ * rr a) * K := by ring
      _ ≤ th a * K := mul_le_mul_of_nonneg_right hc₂P hK.le
  have hy : Real.exp 1 * (CP * ℓ * η) / (j : ℝ) ≤ 1 / rr a := by
    first
    | (rw [div_le_div_iff₀ hJpos hRpos]; linarith)
  have b2 : η ^ j * ((CP * ℓ) ^ j / ((j - 1).factorial : ℝ)) ≤ ((j : ℝ) + 1) ^ 2 / rr a ^ j := by
    calc η ^ j * ((CP * ℓ) ^ j / ((j - 1).factorial : ℝ)) = (CP * ℓ * η) ^ j / ((j - 1).factorial : ℝ) := by ring
      _ ≤ (j : ℝ) * (Real.exp 1 * (CP * ℓ * η) / j) ^ j := fact_bound _ hx0 j hj
      _ ≤ (j : ℝ) * (1 / rr a) ^ j := by
          first
          | exact mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (by positivity) hy j) hJpos.le
      _ = (j : ℝ) / rr a ^ j := by rw [one_div_pow, mul_one_div]
      _ ≤ ((j : ℝ) + 1) ^ 2 / rr a ^ j := by gcongr
  have b5 : η ^ j * (CF * L * 25 ^ j) ≤ rr a * (((j : ℝ) + 1) ^ 2 / rr a ^ j) := by
    have h25 : 25 * η ≤ 1 / rr a := by
      have := twentyFive_mul_smallConstant a
      linarith
    have hcl : 25 * (CF * η * L) ≤ (j : ℝ) := by
      have e1 : CF * (η * L) ≤ CF * (c₂ * K) := mul_le_mul_of_nonneg_left hηL.le hCF.le
      have e2 : 25 * CF * c₂ * K ≤ th a * K :=
        mul_le_mul_of_nonneg_right (h25c.trans hκth) hK.le
      linarith
    obtain ⟨k, rfl⟩ : ∃ k, j = k + 1 := ⟨j - 1, by omega⟩
    calc η ^ (k + 1) * (CF * L * 25 ^ (k + 1)) = 25 * (CF * η * L) * (25 * η) ^ k := by ring
      _ ≤ ((k + 1 : ℕ) : ℝ) * (1 / rr a) ^ k := by
          first
          | exact mul_le_mul hcl (pow_le_pow_left₀ (by positivity) h25 k) (by positivity) (by positivity)
      _ = ((k + 1 : ℕ) : ℝ) / rr a ^ k := by rw [one_div_pow, mul_one_div]
      _ ≤ (((k + 1 : ℕ) : ℝ) + 1) ^ 2 / rr a ^ k := by gcongr
      _ = rr a * ((((k + 1 : ℕ) : ℝ) + 1) ^ 2 / rr a ^ (k + 1)) := by
          rw [pow_succ (rr a) k, mul_div_assoc', mul_comm (rr a ^ k) (rr a),
            mul_div_mul_left _ _ hRne]
  have hsplit : η ^ j * (CP * lam * ℓ ^ 2 * ((j : ℝ) + 1) ^ 2 / η ^ (j + 1) + (CP * ℓ) ^ j / ((j - 1).factorial : ℝ) + CP * ((j : ℝ) + 1) * ℓ ^ 2 / (Mr * η ^ j) + 2 * (j : ℝ) * lam / η ^ (j + 1) + CF * L * 25 ^ j)
      = η ^ j * (CP * lam * ℓ ^ 2 * ((j : ℝ) + 1) ^ 2 / η ^ (j + 1)) + η ^ j * ((CP * ℓ) ^ j / ((j - 1).factorial : ℝ)) + η ^ j * (CP * ((j : ℝ) + 1) * ℓ ^ 2 / (Mr * η ^ j)) + η ^ j * (2 * (j : ℝ) * lam / η ^ (j + 1)) + η ^ j * (CF * L * 25 ^ j) := by
    ring
  have hfin : 8 * CP / cZ * (((j : ℝ) + 1) ^ 2 * (lam * L ^ 3)) + ((j : ℝ) + 1) ^ 2 / rr a ^ j + 32 * CP / cS * (((j : ℝ) + 1) ^ 2 * (lam * L ^ 3)) + 4 / cZ * (((j : ℝ) + 1) ^ 2 * (lam * L ^ 3)) + rr a * (((j : ℝ) + 1) ^ 2 / rr a ^ j) = (8 * CP / cZ + 4 / cZ + 32 * CP / cS) * ((j : ℝ) + 1) ^ 2 * (lam * L ^ 3) + (1 + rr a) * ((j : ℝ) + 1) ^ 2 / rr a ^ j := by ring
  rw [hsplit]
  exact (add_le_add (add_le_add (add_le_add (add_le_add b1 b2) b3) b4) b5).trans_eq hfin

end Formalism.HermitianLattices.Ext.PrimesInProgressions.TuranPowerSumBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.UbTerms =====

-- ===== clump member: Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.NormUSum =====
-- clump-header: {"m": "Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.NormUSum", "h": "module\n\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.TwentyFiveMulSmallConstant\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.ExistsPowerSumLowerBound\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.PNTDHFinishB\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.UbTerms\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Finset Complex

noncomputable section

namespace Formalism.HermitianLattices.Ext.PrimesInProgressions.TuranPowerSumBounds

theorem norm_u_sum (η : ℝ) {N : ℕ} (w : Fin N → ℂ) (j : ℕ) (hη : 0 ≤ η) :
    ‖∑ i, ((η : ℂ) / w i) ^ j‖ = η ^ j * ‖∑ i, 1 / (w i) ^ j‖ := by
  have e : ∑ i, ((η : ℂ) / w i) ^ j = (η : ℂ) ^ j * ∑ i, 1 / (w i) ^ j := by
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [div_pow, mul_one_div]
  rw [e, norm_mul, norm_pow]
  congr 2
  simpa using abs_of_nonneg hη

theorem core2 (CT : ℝ) (a : ℕ) (hCT : 0 < CT) (ha : 1 ≤ a)
    (hT : ∀ (n m : ℕ) (z : Fin n → ℂ), 1 ≤ n → (∀ i, ‖z i‖ ≤ 1) → (∃ i, ‖z i‖ = 1) →
      ∃ k : ℕ, m + 1 ≤ k ∧ k ≤ m + a * n ∧ ((n : ℝ) / (CT * ((m : ℝ) + n))) ^ (a * n) ≤ ‖∑ i, z i ^ k‖)
    (CF CP cZ cS c₁ c₂ : ℝ) (hCF : 0 < CF) (hCP : 0 < CP) (hcZ : 0 < cZ) (hcS : 0 < cS) (hc₁ : 0 < c₁)
    (hc₁Z : c₁ ≤ cZ / 4) (hc₂ : 0 < c₂)
    (hc₂κ : c₂ ≤ kap a (Real.log (max CT 1)) / (25 * CF))
    (hc₂P : c₂ ≤ th a / (2 * Real.exp 1 * CP * rr a))
    (L ℓ lam η Mr K : ℝ) (hL : 1 ≤ L) (hℓ0 : 0 ≤ ℓ) (hℓ : ℓ ≤ 2 * L) (hlam : 0 < lam)
    (hηZ : cZ / (2 * L) ≤ η) (hηc : η ≤ c0 a) (hηL : η * L < c₂ * K) (hMr : 0 < Mr)
    (hM : ℓ ^ 2 / Mr ≤ 32 * lam / cS) (hX : lam * L ^ 3 = c₁ * Real.exp (-K))
    (hK : K0 a (Real.log (max CT 1)) CP cZ cS c₁ < K)
    (N : ℕ) (w : Fin N → ℂ) (hw : ∀ i, η ≤ (w i).re) (hi0 : ∃ i, w i = ((η + η : ℝ) : ℂ))
    (hS : (∑ i, 1 / w i).re ≤ 2 * lam / η ^ 2 + CF * L * 25)
    (hpow : ∀ j : ℕ, 1 ≤ j → ‖∑ i, 1 / (w i) ^ j‖ ≤
        CP * lam * ℓ ^ 2 * ((j : ℝ) + 1) ^ 2 / η ^ (j + 1) + (CP * ℓ) ^ j / ((j - 1).factorial : ℝ)
        + CP * ((j : ℝ) + 1) * ℓ ^ 2 / (Mr * η ^ j) + 2 * j * lam / η ^ (j + 1) + CF * L * 25 ^ j) :
    False := by
  set D := Real.log (max CT 1) with hD_def
  have hD : 0 ≤ D := Real.log_nonneg (le_max_right _ _)
  have hL0 : 0 < L := by linarith
  have hη : 0 < η := lt_of_lt_of_le (by positivity) hηZ
  have hr := rr_gt a
  have hr0 : 0 < rr a := by linarith
  have hε0 := eps_pos a
  have hε1 := eps_le a
  have hth := th_pos a
  have hκ := kap_pos a ha D hD
  have hκth := kap_le a ha D hD
  have hE0 : 0 < E0 a D := Real.exp_pos _
  have hG : 0 < GG a CP cZ cS c₁ := by unfold GG; positivity
  have hK0 : 0 < K0 a D CP cZ cS c₁ := by unfold K0; positivity
  have hKpos : 0 < K := lt_trans hK0 hK
  have hthK : E0 a D * GG a CP cZ cS c₁ < th a * K := by
    have h1 : K0 a D CP cZ cS c₁ * th a = E0 a D * GG a CP cZ cS c₁ := by unfold K0; field_simp
    have h2 : K0 a D CP cZ cS c₁ * th a < K * th a := mul_lt_mul_of_pos_right hK hth
    linarith only [h1, h2]
  have hexpK : Real.exp (-K) ≤ 1 := Real.exp_le_one_iff.mpr (by linarith)
  have hXc : lam * L ^ 3 ≤ c₁ := by
    rw [hX]; have := mul_le_mul_of_nonneg_left hexpK hc₁.le; linarith only [this]
  have hlη1 : lam / η ≤ 2 * (lam * L) / cZ := by
    rw [div_le_div_iff₀ hη hcZ]
    have h1 : cZ ≤ 2 * L * η := by rw [div_le_iff₀ (by positivity)] at hηZ; linarith only [hηZ]
    have := mul_le_mul_of_nonneg_left h1 hlam.le
    linarith only [this]
  have hlamL : lam * L ≤ lam * L ^ 3 := by
    have h2 : 1 ≤ L ^ 2 := one_le_pow₀ hL
    have h3 : L ≤ L ^ 3 := by
      have : L ^ 3 = L * L ^ 2 := by ring
      rw [this]; have := mul_le_mul_of_nonneg_left h2 hL0.le; linarith only [this]
    exact mul_le_mul_of_nonneg_left h3 hlam.le
  have hlη2 : lam / η ≤ 1 / 2 := by
    have h1 : 2 * (lam * L) / cZ ≤ 1 / 2 := by
      rw [div_le_iff₀ hcZ]; linarith only [hlamL, hXc, hc₁Z]
    linarith only [h1, hlη1]

  set u : Fin N → ℂ := fun i => (η : ℂ) / w i with hu_def
  have hu : ∀ i, ‖u i‖ ^ 2 ≤ (u i).re := fun i => Formalism.HermitianLattices.Ext.PrimesInProgressions.DHF.u_disc η hη (w i) (hw i)
  have hi : ∃ i, 1 / 2 ≤ ‖u i‖ := by
    obtain ⟨i, hi⟩ := hi0
    refine ⟨i, ?_⟩
    simp only [hu_def, hi, norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hη,
      abs_of_pos (by linarith : (0 : ℝ) < η + η)]
    rw [le_div_iff₀ (by linarith)]; linarith
  set S : ℝ := ∑ i, (u i).re with hS_def
  have hS0 : 0 ≤ S := Finset.sum_nonneg (fun i _ => le_trans (by positivity) (hu i))
  have hS_eq : S = η * (∑ i, 1 / w i).re := by
    have := Formalism.HermitianLattices.Ext.PrimesInProgressions.DHF.u_sum_re η w 1
    simp only [pow_one] at this
    rw [hS_def, ← this, Complex.re_sum]
  have hSle : S ≤ 2 * (lam / η) + 25 * CF * (η * L) := by
    rw [hS_eq]
    have h2 := mul_le_mul_of_nonneg_left hS hη.le
    have h3 : η * (2 * lam / η ^ 2 + CF * L * 25) = 2 * (lam / η) + 25 * CF * (η * L) := by
      field_simp
    linarith only [h2, h3]
  have h25c : 25 * CF * c₂ ≤ kap a D := by
    rw [le_div_iff₀ (by positivity)] at hc₂κ; linarith only [hc₂κ]
  have hCFηL : 25 * CF * (η * L) ≤ kap a D * K := by
    have h1 : 25 * CF * (η * L) ≤ 25 * CF * (c₂ * K) := mul_le_mul_of_nonneg_left hηL.le (by positivity)
    have h2 := mul_le_mul_of_nonneg_right h25c hKpos.le
    linarith only [h1, h2]
  have hSK : S ≤ 1 + kap a D * K := by linarith only [hSle, hCFηL, hlη2]

  set m := ⌈th a * K⌉₊ with hm_def
  have hm1 : 1 ≤ m := Nat.one_le_iff_ne_zero.mpr (by
    rw [hm_def]; exact (Nat.ceil_pos.mpr (by positivity)).ne')
  have hmle : (m : ℝ) < th a * K + 1 := Nat.ceil_lt_add_one (by positivity)
  have hmge : th a * K ≤ m := Nat.le_ceil _
  obtain ⟨j, n, hmj, hjan, hn1, hnS, hLB⟩ :=
    exists_power_sum_lower_bound CT a hCT hT (eps a) hε0 (by linarith) N u hu hi m hm1
  have hjr1 : (m : ℝ) + 1 ≤ j := by exact_mod_cast hmj
  have hjr : th a * K < j := by linarith only [hjr1, hmge]
  have hj1 : 1 ≤ j := by omega
  have hj2 : 2 ≤ j := by omega
  have hnε : (n : ℝ) * eps a ^ 2 ≤ 1 + kap a D * K := le_trans hnS hSK
  have hjan' : (j : ℝ) ≤ m + a * n := by exact_mod_cast hjan
  have hjup : (j : ℝ) ≤ 2 * th a * K + j0 a := by
    have h1 : (a : ℝ) * n ≤ a / eps a ^ 2 + a * kap a D / eps a ^ 2 * K := by
      have : (n : ℝ) ≤ (1 + kap a D * K) / eps a ^ 2 := by rw [le_div_iff₀ (by positivity)]; exact hnε
      calc (a : ℝ) * n ≤ a * ((1 + kap a D * K) / eps a ^ 2) := mul_le_mul_of_nonneg_left this (by positivity)
        _ = _ := by ring
    have h2 : a * kap a D / eps a ^ 2 * K ≤ th a * K :=
      mul_le_mul_of_nonneg_right (akap_le' a ha D hD) hKpos.le
    unfold j0; linarith only [h1, h2, hjan', hmle]
  have hanD : (a : ℝ) * n * D ≤ a * D / eps a ^ 2 + j := by
    have h1 : (a : ℝ) * n * D = (a * D / eps a ^ 2) * (n * eps a ^ 2) := by field_simp
    have h2 := akapD_le a ha D hD
    have h3 : (a * D / eps a ^ 2) * (n * eps a ^ 2) ≤ (a * D / eps a ^ 2) * (1 + kap a D * K) :=
      mul_le_mul_of_nonneg_left hnε (by positivity)
    have h4 : (a * D / eps a ^ 2) * (1 + kap a D * K) = a * D / eps a ^ 2 + (a * D * kap a D / eps a ^ 2) * K := by ring
    have h5 := mul_le_mul_of_nonneg_right h2 hKpos.le
    linarith only [h1, h3, h4, h5, hjr]
  have hLB2 : 1 / (E0 a D * (rr a / 8) ^ j) ≤ ‖∑ i, u i ^ j‖ + eps a ^ (j - 2) * S :=
    le_trans (lb_part a D m n j _ (by omega) hanD (turan_lb CT hCT a n m hn1)) hLB

  have hU : ‖∑ i, u i ^ j‖ ≤ (8 * CP / cZ + 4 / cZ + 32 * CP / cS) * ((j : ℝ) + 1) ^ 2 * (lam * L ^ 3)
        + (1 + rr a) * ((j : ℝ) + 1) ^ 2 / rr a ^ j := by
    have h1 : ‖∑ i, u i ^ j‖ = η ^ j * ‖∑ i, 1 / (w i) ^ j‖ := norm_u_sum η w j hη.le
    have h2 := mul_le_mul_of_nonneg_left (hpow j hj1) (pow_pos hη j).le
    have hc₂P' : 2 * Real.exp 1 * CP * c₂ * rr a ≤ th a := by
      rw [le_div_iff₀ (by positivity)] at hc₂P; linarith only [hc₂P]
    have h3 := ub_terms a CP CF cZ cS c₂ (kap a D) L ℓ lam η Mr K j hj1 hCP hCF hcZ hcS hc₂ hL hℓ0 hℓ hlam hη
      hMr hKpos hlη1 hM hηc hηL h25c hκth hc₂P' hjr
    rw [h1]; exact le_trans h2 h3
  have hF : eps a ^ (j - 2) * S ≤ rr a ^ 2 * ((j : ℝ) + 1) ^ 2 / rr a ^ j :=
    far_part a S j hj2 (by linarith only [hSK, hjr, mul_le_mul_of_nonneg_right hκth hKpos.le])
  have hXj := x_part a c₁ K hc₁ j hjup
  rw [← hX] at hXj
  set cA := 8 * CP / cZ + 4 / cZ + 32 * CP / cS with hcA
  have hcA0 : 0 ≤ cA := by positivity
  have hJ0 : 0 ≤ ((j : ℝ) + 1) ^ 2 := by positivity
  have hU2 : cA * ((j : ℝ) + 1) ^ 2 * (lam * L ^ 3) ≤
      cA * ((j : ℝ) + 1) ^ 2 * (c₁ * Real.exp (j0 a * Real.log (rr a)) / rr a ^ j) :=
    mul_le_mul_of_nonneg_left hXj (by positivity)
  have htot : 1 / (E0 a D * (rr a / 8) ^ j) ≤ GG a CP cZ cS c₁ * ((j : ℝ) + 1) ^ 2 / rr a ^ j := by
    have : GG a CP cZ cS c₁ * ((j : ℝ) + 1) ^ 2 / rr a ^ j =
        cA * ((j : ℝ) + 1) ^ 2 * (c₁ * Real.exp (j0 a * Real.log (rr a)) / rr a ^ j)
        + (1 + rr a) * ((j : ℝ) + 1) ^ 2 / rr a ^ j + rr a ^ 2 * ((j : ℝ) + 1) ^ 2 / rr a ^ j := by
      unfold GG; rw [hcA]; ring
    rw [this]; linarith only [hLB2, hU, hF, hU2]
  exact final_step a (E0 a D) (GG a CP cZ cS c₁) hE0 hG j (by linarith only [hthK, hjr]) htot

end Formalism.HermitianLattices.Ext.PrimesInProgressions.TuranPowerSumBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.NormUSum =====

-- ===== clump member: Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.PNTDHFinish =====
-- clump-header: {"m": "Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.PNTDHFinish", "h": "module\n\npublic import Formalism.LandauZeroFreeBounds.Statement\npublic import Formalism.LandauZeroFreeBounds.NoZeroComplex\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.MeanSquareHypWIff\n\n"}
section -- clump:auto
@[expose] public section

open Finset Complex Classical

noncomputable section

namespace Formalism.HermitianLattices.Ext.PrimesInProgressions

open Formalism.HermitianLattices.Ext.LogarithmicIntegralBounds Formalism.ZeroFreeDirichlet

namespace DHF

theorem logMT_ge_one (M : ℕ) (T : ℝ) (hM : 3 ≤ M) (hT : 2 ≤ T) : 1 ≤ Real.log ((M : ℝ) * T) := by
  have hMr : (3 : ℝ) ≤ M := by exact_mod_cast hM
  have hx : (6 : ℝ) ≤ M * T := by nlinarith
  have he := Real.exp_one_lt_d9
  have h1 : Real.exp 1 ≤ (M : ℝ) * T := by linarith
  calc (1 : ℝ) = Real.log (Real.exp 1) := (Real.log_exp 1).symm
    _ ≤ Real.log ((M : ℝ) * T) := Real.log_le_log (Real.exp_pos 1) h1

theorem region_gap : ∃ cR : ℝ, 0 < cR ∧ ∀ (M : ℕ) [NeZero M] (χ₁ χ : DirichletCharacter ℂ M) (β₁ T c₁ : ℝ)
    (ρ : ℂ), 3 ≤ M → 2 ≤ T → χ₁ ≠ 1 → DirichletCharacter.LFunction χ₁ (β₁ : ℂ) = 0 → 0 < c₁ → c₁ ≤ cR →
    1 - c₁ / Real.log ((M : ℝ) * T) < β₁ → IsLZero χ ρ → |ρ.im| ≤ T → (χ, ρ) ≠ (χ₁, (β₁ : ℂ)) →
    cR / 2 ≤ (1 - ρ.re) * Real.log ((M : ℝ) * T) := by
  obtain ⟨cR, hcR, hZ⟩ := Formalism.ZeroFreeDirichlet.zFRDirichlet
  refine ⟨cR, hcR, ?_⟩
  intro M _ χ₁ χ β₁ T c₁ ρ hM hT2 hχ1ne hLz hc₁0 hc₁ hβ₁ hρ hρim hne
  have hLg1 := logMT_ge_one M T hM hT2
  have hLg0 : 0 < Real.log ((M : ℝ) * T) := by linarith
  have hM3 : (3 : ℝ) ≤ M := by exact_mod_cast hM
  have hlog2M : Real.log ((M : ℝ) * (|((β₁ : ℂ)).im| + 2)) ≤ Real.log ((M : ℝ) * T) := by
    simp only [Complex.ofReal_im, abs_zero, zero_add]
    exact Real.log_le_log (by positivity) (by nlinarith)
  have hlog2M0 : 0 < Real.log ((M : ℝ) * (|((β₁ : ℂ)).im| + 2)) := by
    apply Real.log_pos; simp only [Complex.ofReal_im, abs_zero, zero_add]; nlinarith
  have hreg : InRegion cR M (β₁ : ℂ) := by
    unfold InRegion
    have h1 : c₁ / Real.log ((M : ℝ) * T) ≤ cR / Real.log ((M : ℝ) * (|((β₁ : ℂ)).im| + 2)) := by
      rw [div_le_div_iff₀ hLg0 hlog2M0]
      have h2 := mul_le_mul_of_nonneg_left hlog2M hc₁0.le
      have h3 := mul_le_mul_of_nonneg_right hc₁ hLg0.le
      linarith only [h2, h3]
    rw [Complex.ofReal_re]; linarith only [h1, hβ₁]
  have hLz' : IsLZero χ₁ (β₁ : ℂ) := ⟨Or.inl hχ1ne, hLz⟩
  have hZ1 := (hZ M χ₁ (β₁ : ℂ) hreg hLz').2.2.2.2
  have hnreg : ¬ InRegion cR M ρ := by
    intro h
    obtain ⟨h1, h2⟩ := hZ1 χ ρ h hρ
    exact hne (Prod.ext h1 h2)
  unfold InRegion at hnreg
  push Not at hnreg
  have hlogρ0 : 0 < Real.log ((M : ℝ) * (|ρ.im| + 2)) := by
    apply Real.log_pos; have := abs_nonneg ρ.im; nlinarith
  have hlogρ : Real.log ((M : ℝ) * (|ρ.im| + 2)) ≤ 2 * Real.log ((M : ℝ) * T) := by
    rw [show (2 : ℝ) * Real.log ((M : ℝ) * T) = Real.log (((M : ℝ) * T) ^ 2) by
      rw [Real.log_pow]; push_cast; ring]
    apply Real.log_le_log (by have := abs_nonneg ρ.im; positivity)
    have : |ρ.im| + 2 ≤ 2 * T := by linarith
    have hM0 : (0 : ℝ) ≤ M := by positivity
    have hMT : (2 : ℝ) ≤ M * T := by nlinarith
    have hMT2 := mul_le_mul_of_nonneg_left hMT (by positivity : (0 : ℝ) ≤ M * T)
    calc (M : ℝ) * (|ρ.im| + 2) ≤ M * (2 * T) := mul_le_mul_of_nonneg_left this hM0
      _ ≤ _ := by rw [sq]; linarith
  have h1 : cR / Real.log ((M : ℝ) * (|ρ.im| + 2)) < 1 - ρ.re := by linarith
  rw [div_lt_iff₀ hlogρ0] at h1
  have hδ0 : 0 < 1 - ρ.re := by
    by_contra h; push Not at h
    have := mul_nonpos_of_nonpos_of_nonneg h hlogρ0.le
    linarith
  have := mul_le_mul_of_nonneg_left hlogρ hδ0.le
  linarith

end DHF

end Formalism.HermitianLattices.Ext.PrimesInProgressions
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.PNTDHFinish =====

-- ===== clump member: Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.DeuringHeilbronnFinishTuran =====
-- clump-header: {"m": "Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.DeuringHeilbronnFinishTuran", "h": "module\n\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.DHFinish2Of\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.ExistsPowerSumLowerBound\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.NormUSum\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.PNTDHFinish\npublic import Formalism.LandauZeroFreeBounds.SiegelWalfiszAPOfSiegelLower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Finset Complex Classical

noncomputable section

namespace Formalism.HermitianLattices.Ext.PrimesInProgressions

open Formalism.HermitianLattices.Ext.LogarithmicIntegralBounds Formalism.ZeroFreeDirichlet


theorem deuring_heilbronn_finish_turan : DHFinish2Of := by
  intro hTur hIneq hPrime
  obtain ⟨CT, a, hCT, ha, hT2⟩ := hTur
  obtain ⟨CF, hCF, hF⟩ := hIneq
  obtain ⟨CP, hCP, hP⟩ := hPrime
  obtain ⟨cS, hcS, hE⟩ := excBound (1 / 2) (by norm_num)
  obtain ⟨cZ, hcZ, hG⟩ := DHF.region_gap
  have hD0 : 0 ≤ Real.log (max CT 1) := Real.log_nonneg (le_max_right _ _)
  obtain ⟨c₁, hc₁pos, hc₁Z, hc₁20⟩ : ∃ c : ℝ, 0 < c ∧ c ≤ cZ / 4 ∧ c ≤ 1 / 20 :=
    ⟨min (cZ / 4) (1 / 20), lt_min (by linarith) (by norm_num), min_le_left _ _, min_le_right _ _⟩
  have hrr : 16 < TuranPowerSumBounds.rr a := TuranPowerSumBounds.rr_gt a
  obtain ⟨c₂, hc₂pos, hc₂k, hc₂t, hc₂K⟩ : ∃ c : ℝ, 0 < c ∧
      c ≤ TuranPowerSumBounds.kap a (Real.log (max CT 1)) / (25 * CF) ∧
      c ≤ TuranPowerSumBounds.th a / (2 * Real.exp 1 * CP * TuranPowerSumBounds.rr a) ∧
      c * (2 * (|TuranPowerSumBounds.K0 a (Real.log (max CT 1)) CP cZ cS c₁| + 1)) ≤ cZ := by
    have hk := div_pos (TuranPowerSumBounds.kap_pos a ha _ hD0) (by positivity : (0 : ℝ) < 25 * CF)
    have ht := div_pos (TuranPowerSumBounds.th_pos a) (by positivity : (0 : ℝ) < 2 * Real.exp 1 * CP * TuranPowerSumBounds.rr a)
    have hq : (0 : ℝ) < 2 * (|TuranPowerSumBounds.K0 a (Real.log (max CT 1)) CP cZ cS c₁| + 1) := by positivity
    refine ⟨min (min (TuranPowerSumBounds.kap a (Real.log (max CT 1)) / (25 * CF))
      (TuranPowerSumBounds.th a / (2 * Real.exp 1 * CP * TuranPowerSumBounds.rr a)))
      (cZ / (2 * (|TuranPowerSumBounds.K0 a (Real.log (max CT 1)) CP cZ cS c₁| + 1))),
      lt_min (lt_min hk ht) (div_pos hcZ hq),
      (min_le_left _ _).trans (min_le_left _ _), (min_le_left _ _).trans (min_le_right _ _), ?_⟩
    rw [← le_div_iff₀ hq]
    exact min_le_right _ _
  have hc0pos : 0 < TuranPowerSumBounds.c0 a := by
    have := TuranPowerSumBounds.twentyFive_mul_smallConstant a
    have : 0 < 1 / TuranPowerSumBounds.rr a := by positivity
    linarith
  have hc0 : TuranPowerSumBounds.c0 a ≤ 1 / 25 := by
    have := TuranPowerSumBounds.twentyFive_mul_smallConstant a
    have h1 : 1 / TuranPowerSumBounds.rr a ≤ 1 := by
      rw [div_le_one (by linarith)]
      linarith
    linarith
  refine ⟨TuranPowerSumBounds.c0 a, c₁, c₂, 3, hc0pos, hc₁pos, hc₂pos, ?_⟩
  intro M _ χ₁ χ β₁ T ρ hM hT hsq hne1 hL hβ hβ1 hρ hre hIm hne
  have hL1 : 1 ≤ Real.log ((M : ℝ) * T) := DHF.logMT_ge_one M T hM hT
  have hLpos : 0 < Real.log ((M : ℝ) * T) := by linarith
  have hM3 : (3 : ℝ) ≤ M := by exact_mod_cast hM
  have hMpos : (0 : ℝ) < M := by linarith
  have hgap := hG M χ₁ χ β₁ T c₁ ρ hM hT hne1 hL hc₁pos (by linarith) hβ hρ hIm hne
  have hη : 0 < 1 - ρ.re := by
    by_contra h
    push_neg at h
    nlinarith
  have hηZ : cZ / (2 * Real.log ((M : ℝ) * T)) ≤ 1 - ρ.re := by
    rw [div_le_iff₀ (by positivity)]
    nlinarith
  have hηc0 : 1 - ρ.re ≤ TuranPowerSumBounds.c0 a := by linarith
  have hlam : 0 < 1 - β₁ := by linarith
  have hEx := hE M χ₁ β₁ hsq hne1 hL
  have hs : 0 < √(M : ℝ) := Real.sqrt_pos.mpr hMpos
  have hmm : √(M : ℝ) * √(M : ℝ) = M := Real.mul_self_sqrt hMpos.le
  have hsqrt : (M : ℝ) ^ (-(1 / 2 : ℝ)) = 1 / √(M : ℝ) := by
    rw [Real.rpow_neg hMpos.le, ← Real.sqrt_eq_rpow, one_div]
  have hcs : cS ≤ (1 - β₁) * √(M : ℝ) := by
    rw [hsqrt] at hEx
    have h1 : cS * (1 / √(M : ℝ)) ≤ 1 - β₁ := by linarith
    rw [mul_one_div, div_le_iff₀ hs] at h1
    exact h1
  have hℓ0 : 0 ≤ Real.log (3 * (M : ℝ)) := Real.log_nonneg (by linarith)
  have hℓpos : 0 < Real.log (3 * (M : ℝ)) := Real.log_pos (by linarith)
  have hℓL : Real.log (3 * (M : ℝ)) ≤ 2 * Real.log ((M : ℝ) * T) := by
    have hT4 : (4 : ℝ) ≤ T ^ 2 := by nlinarith
    have h3 : 3 * (M : ℝ) ≤ ((M : ℝ) * T) ^ 2 := by
      nlinarith [mul_le_mul_of_nonneg_left hT4 (sq_nonneg (M : ℝ))]
    calc Real.log (3 * (M : ℝ)) ≤ Real.log (((M : ℝ) * T) ^ 2) :=
          Real.log_le_log (by linarith) h3
      _ = 2 * Real.log ((M : ℝ) * T) := by
          rw [Real.log_pow]
          push_cast
          ring
  have hℓM : Real.log (3 * (M : ℝ)) ^ 2 / (M : ℝ) ≤ 32 * (1 - β₁) / cS := by
    rw [div_le_div_iff₀ hMpos hcS]
    have hls := TuranPowerSumBounds.log_sq_bound (M : ℝ) (by linarith)
    calc Real.log (3 * (M : ℝ)) ^ 2 * cS ≤ 32 * √(M : ℝ) * cS :=
          mul_le_mul_of_nonneg_right hls hcS.le
      _ ≤ 32 * √(M : ℝ) * ((1 - β₁) * √(M : ℝ)) :=
          mul_le_mul_of_nonneg_left hcs (by positivity)
      _ = 32 * (1 - β₁) * (M : ℝ) := by linear_combination (32 * (1 - β₁)) * hmm
  rw [div_le_iff₀ hLpos]
  by_contra hcon
  push_neg at hcon
  have hKK0 : TuranPowerSumBounds.K0 a (Real.log (max CT 1)) CP cZ cS c₁ <
      Real.log (c₁ / ((1 - β₁) * Real.log ((M : ℝ) * T) ^ 3)) := by
    by_contra h
    push_neg at h
    have h1 : c₂ * Real.log (c₁ / ((1 - β₁) * Real.log ((M : ℝ) * T) ^ 3)) ≤
        c₂ * (|TuranPowerSumBounds.K0 a (Real.log (max CT 1)) CP cZ cS c₁| + 1) :=
      mul_le_mul_of_nonneg_left (by linarith [le_abs_self (TuranPowerSumBounds.K0 a (Real.log (max CT 1)) CP cZ cS c₁)])
        hc₂pos.le
    have h3 : c₂ * (|TuranPowerSumBounds.K0 a (Real.log (max CT 1)) CP cZ cS c₁| + 1) ≤ cZ / 2 := by
      have e : c₂ * (2 * (|TuranPowerSumBounds.K0 a (Real.log (max CT 1)) CP cZ cS c₁| + 1)) =
          2 * (c₂ * (|TuranPowerSumBounds.K0 a (Real.log (max CT 1)) CP cZ cS c₁| + 1)) := by ring
      linarith
    linarith
  have hpos : 0 < c₁ / ((1 - β₁) * Real.log ((M : ℝ) * T) ^ 3) := by positivity
  have hexp : (1 - β₁) * Real.log ((M : ℝ) * T) ^ 3 =
      c₁ * Real.exp (-Real.log (c₁ / ((1 - β₁) * Real.log ((M : ℝ) * T) ^ 3))) := by
    rw [Real.exp_neg, Real.exp_log hpos]
    field_simp
  have hρre : (22 / 25 : ℝ) ≤ ρ.re := by linarith
  have hβ20 : (19 / 20 : ℝ) ≤ β₁ := by
    have : c₁ / Real.log ((M : ℝ) * T) ≤ 1 / 20 := by
      rw [div_le_iff₀ hLpos]
      nlinarith
    linarith
  obtain ⟨N, w, hwre, hwex, hwsum, hwj⟩ := hF M χ₁ χ β₁ T (1 - ρ.re) ρ hM hT hsq hne1 hL hβ20 hβ1
    hρ hρre hIm hne hη (by linarith)
  have hβP : 1 - 1 / Real.log (3 * (M : ℝ)) ≤ β₁ := by
    have : c₁ / Real.log ((M : ℝ) * T) ≤ 1 / Real.log (3 * (M : ℝ)) := by
      rw [div_le_div_iff₀ hLpos hℓpos]
      nlinarith
    linarith
  refine TuranPowerSumBounds.core2 CT a hCT ha hT2 CF CP cZ cS c₁ c₂ hCF hCP hcZ hcS hc₁pos hc₁Z hc₂pos hc₂k hc₂t
    (Real.log ((M : ℝ) * T)) (Real.log (3 * (M : ℝ))) (1 - β₁) (1 - ρ.re) (M : ℝ)
    (Real.log (c₁ / ((1 - β₁) * Real.log ((M : ℝ) * T) ^ 3)))
    hL1 hℓ0 hℓL hlam hηZ hηc0 hcon hMpos hℓM hexp hKK0 N w hwre hwex hwsum ?_
  intro j hj
  obtain ⟨i, rfl⟩ : ∃ i, j = i + 1 := ⟨j - 1, by omega⟩
  have h1 := hwj (i + 1) hj
  have h2 := hP M χ₁ β₁ (1 + (1 - ρ.re)) i hM hsq hne1 hL hβP hβ1 (by linarith) (by linarith)
  simp only [Nat.add_sub_cancel] at h1 ⊢
  have e1 : (1 + (1 - ρ.re)) - 1 = 1 - ρ.re := by ring
  rw [e1] at h2
  have hA : CP * (1 - β₁) * Real.log (3 * (M : ℝ)) ^ 2 * ((i : ℝ) + 2) ^ 2 / (1 - ρ.re) ^ (i + 2) =
      CP * (1 - β₁) * Real.log (3 * (M : ℝ)) ^ 2 * (((i + 1 : ℕ) : ℝ) + 1) ^ 2 /
        (1 - ρ.re) ^ (i + 1 + 1) := by
    push_cast
    ring_nf
  have hC : CP * ((i : ℝ) + 2) * Real.log (3 * (M : ℝ)) ^ 2 / ((M : ℝ) * (1 - ρ.re) ^ (i + 1)) =
      CP * (((i + 1 : ℕ) : ℝ) + 1) * Real.log (3 * (M : ℝ)) ^ 2 / ((M : ℝ) * (1 - ρ.re) ^ (i + 1)) := by
    push_cast
    ring_nf
  rw [hA, hC] at h2
  exact h1.trans (add_le_add (add_le_add h2 le_rfl) le_rfl)

end Formalism.HermitianLattices.Ext.PrimesInProgressions
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.DeuringHeilbronnFinishTuran =====
