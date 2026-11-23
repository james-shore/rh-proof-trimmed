module

public import Formalism.LocalRingCardinality.DataCoeff
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init
import Formalism.LocalRingCardinality.Params
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ProdFactorialSupportSubSingle

@[expose] public section

noncomputable section

namespace PI.GTS

open Formalism.BasicNotions MvPolynomial

theorem fockF_smul_self {σ : Type*} (c : ℂ) (f : MvPolynomial σ ℂ) :
    Formalism.REAL.fockF (c • f) (c • f) = (c * star c) * Formalism.REAL.fockF f f := by
  rw [_root_.Formalism.REAL.fischerInner_eq_sum_of_subset (c • f) _ f.support MvPolynomial.support_smul,
    _root_.Formalism.REAL.fischerInner_eq_sum_of_subset f f f.support subset_rfl, Finset.mul_sum]
  refine Finset.sum_congr rfl fun m _ => ?_
  simp only [MvPolynomial.coeff_smul, smul_eq_mul, star_mul']
  ring

theorem re_normFock_smul {N : ℕ} (lam : DomWeight N) (c : ℂ) (x : MvPolynomial (Fin N × Fin N) ℂ) :
    (normFock lam (c • x) (c • x)).re = ‖c‖ ^ 2 * (normFock lam x x).re := by
  unfold normFock
  rw [fockF_smul_self, mul_div_assoc]
  have hc : c * star c = ((‖c‖ ^ 2 : ℝ) : ℂ) := by
    rw [show star c = (starRingEnd ℂ) c from rfl, Complex.mul_conj, Complex.normSq_eq_norm_sq]
  rw [hc, Complex.re_ofReal_mul]

end PI.GTS
