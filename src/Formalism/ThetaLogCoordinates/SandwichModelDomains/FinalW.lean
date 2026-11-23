module

public import Formalism.ThetaLogCoordinates.SandwichModelDomains.SpreadSquare
import Formalism.ThetaLogCoordinates.SandwichModelDomains.SandwichModelProofs.Ascent
public import Formalism.ThetaLogCoordinates.SandwichModelDomains.SandwichModelProofs.Assemble
import Formalism.ThetaLogCoordinates.SandwichModelDomains.SandwichModelProofs.Descent
public import Formalism.ThetaLogCoordinates.SandwichModelDomains.SandwichModelProofs.GlFirstLineDividedPowers
public import Formalism.ThetaLogCoordinates.SandwichModelDomains.SandwichModelProofs.Spread
import Formalism.ThetaLogCoordinates.SandwichModelDomains.SandwichModelProofs.SwappedHighestWeightNeZero
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
import Mathlib.RingTheory.SimpleRing.Principal
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

@[expose] public section

namespace Formalism.InvariantFactorPaths.INST.Top

theorem coreQp : CoreQp := coreQp_of _root_.Formalism.InvariantFactorPaths.INST.gl_one_first_line_action _root_.Formalism.InvariantFactorPaths.INST.gl_first_line_divided_powers _root_.Formalism.InvariantFactorPaths.INST.swap_weight_compat _root_.Formalism.InvariantFactorPaths.INST.swap_polynomial_compat _root_.Formalism.InvariantFactorPaths.INST.swpInt_statement
theorem unitsOfLocal : UnitsOfLocal := by
  intro p hp O _ _ hpu c hc
  by_contra hcu
  have hpz : Prime (p : ℤ) := Nat.prime_iff_prime_int.mp hp.out
  have hcop : IsCoprime (p : ℤ) c := by
    first
    | exact (Irreducible.coprime_iff_not_dvd hpz.irreducible).2 hc
    | exact (Prime.coprime_iff_not_dvd hpz).2 hc
  obtain ⟨u, v, huv⟩ := hcop
  have h1 : (u : O) * (p : O) + (v : O) * (c : O) = 1 := by
    have := congrArg (fun z : ℤ => (z : O)) huv
    push_cast at this
    exact this
  have hmp : (p : O) ∈ IsLocalRing.maximalIdeal O := (IsLocalRing.mem_maximalIdeal _).2 hpu
  have hmc : (c : O) ∈ IsLocalRing.maximalIdeal O := (IsLocalRing.mem_maximalIdeal _).2 hcu
  have h1m : (1 : O) ∈ IsLocalRing.maximalIdeal O := by
    rw [← h1]
    exact Ideal.add_mem _ (Ideal.mul_mem_left _ _ hmp) (Ideal.mul_mem_left _ _ hmc)
  exact (IsLocalRing.maximalIdeal.isMaximal O).ne_top ((Ideal.eq_top_iff_one _).2 h1m)
theorem sandwichZp : SandwichZp := by
  intro p hp r n hn ν hν l hL x hx
  have hS : Spread (Padic p) r n ν l := by
    rcases hL with h | ⟨rfl, h⟩
    · exact _root_.Formalism.InvariantFactorPaths.INST.spread_top_holds _ r n ν l h
    · exact _root_.Formalism.InvariantFactorPaths.INST.spread_square_holds _ _ ν l h
  exact coreQp p r n hn ν hν l hS x hx
theorem sandwichZ : SandwichZ := by
  intro p hp r n hn ν hν l hL f hf
  exact _root_.Formalism.InvariantFactorPaths.INST.descent_over_integers p r n hn ν hν (sExp p r l) (sandwichZp p r n hn ν hν l hL) f hf
theorem sandwichDomain : SandwichDomain := sandwichDomain_of sandwichZ _root_.Formalism.InvariantFactorPaths.INST.ascent_domain_holds
theorem sandwichLocal : SandwichLocal := by
  intro p hp r n hn ν hν l hL O _ _ _ hpu
  exact sandwichDomain p r n hn ν hν l hL O (unitsOfLocal p O hpu)

end Formalism.InvariantFactorPaths.INST.Top
