module

public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.CountZDefs
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Lemma
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Formalism.LandauZeroFreeBounds.ExceptionalZeroBounds.LGrowth

@[expose] public section

open Complex Finset

noncomputable section

namespace Formalism.HermitianLattices.Ext.PrimitiveCharacterCasts.ZD

scoped instance (p p' : PC) : NeZero ((p.1 + 1) * (p'.1 + 1)) := ⟨by positivity⟩

def mulLevel (p p' : PC) : DirichletCharacter ℂ ((p.1 + 1) * (p'.1 + 1)) :=
  DirichletCharacter.changeLevel (dvd_mul_right (p.1 + 1) (p'.1 + 1)) p.2 *
    (DirichletCharacter.changeLevel (dvd_mul_left (p'.1 + 1) (p.1 + 1)) p'.2)⁻¹

theorem mulLevel_ne_one (p p' : PC) (hp : p.2.IsPrimitive) (hp' : p'.2.IsPrimitive) (hne : p ≠ p') :
    mulLevel p p' ≠ 1 := by
  intro h
  have h1 := mul_inv_eq_one.mp h
  have hc := congrArg DirichletCharacter.conductor h1
  rw [DirichletCharacter.conductor_changeLevel, DirichletCharacter.conductor_changeLevel,
    hp, hp'] at hc
  obtain ⟨N, χ⟩ := p
  obtain ⟨N', χ'⟩ := p'
  simp only [add_left_inj] at hc
  subst hc
  apply hne
  have := DirichletCharacter.changeLevel_injective (dvd_mul_right (N + 1) (N + 1)) h1
  exact congrArg (Sigma.mk N) this

theorem mulLevel_apply (p p' : PC) (n : ℕ) :
    mulLevel p p' (n : ZMod ((p.1 + 1) * (p'.1 + 1))) = cv p n * (starRingEnd ℂ) (cv p' n) := by
  by_cases hu : IsUnit (n : ZMod ((p.1 + 1) * (p'.1 + 1)))
  · obtain ⟨u, hu⟩ := hu
    have e1 : DirichletCharacter.changeLevel (dvd_mul_right (p.1 + 1) (p'.1 + 1)) p.2
        (n : ZMod ((p.1 + 1) * (p'.1 + 1))) = cv p n := by
      rw [← hu, DirichletCharacter.changeLevel_eq_cast_of_dvd, hu,
        ZMod.cast_natCast (dvd_mul_right _ _)]
      rfl
    have e2 : DirichletCharacter.changeLevel (dvd_mul_left (p'.1 + 1) (p.1 + 1)) p'.2
        (n : ZMod ((p.1 + 1) * (p'.1 + 1))) = cv p' n := by
      rw [← hu, DirichletCharacter.changeLevel_eq_cast_of_dvd, hu,
        ZMod.cast_natCast (dvd_mul_left _ _)]
      rfl
    have hn : ‖DirichletCharacter.changeLevel (dvd_mul_left (p'.1 + 1) (p.1 + 1)) p'.2
        (n : ZMod ((p.1 + 1) * (p'.1 + 1)))‖ = 1 := by
      rw [← hu]
      exact DirichletCharacter.unit_norm_eq_one _ u
    unfold mulLevel
    rw [MulChar.mul_apply, MulChar.inv_apply_eq_inv', e1, Complex.inv_eq_conj hn, e2]
  · rw [MulChar.map_nonunit _ hu]
    rw [ZMod.isUnit_iff_coprime] at hu
    by_cases h1 : n.Coprime (p.1 + 1)
    · have h2 : ¬ n.Coprime (p'.1 + 1) := fun h2 => hu (Nat.Coprime.mul_right h1 h2)
      have h3 : cv p' n = 0 := MulChar.map_nonunit _ (by rwa [ZMod.isUnit_iff_coprime])
      rw [h3, map_zero, mul_zero]
    · have h3 : cv p n = 0 := MulChar.map_nonunit _ (by rwa [ZMod.isUnit_iff_coprime])
      rw [h3, zero_mul]

private lemma sum_range_natCast_zmod_eq_sum_univ {Q : ℕ} [NeZero Q] (f : ZMod Q → ℂ) :
    ∑ n ∈ Finset.range Q, f (n : ZMod Q) = ∑ x : ZMod Q, f x := by
  refine Finset.sum_nbij (fun n : ℕ => (n : ZMod Q)) (fun _ _ => Finset.mem_univ _) ?_ ?_
    (fun _ _ => rfl)
  · intro a ha b hb hab
    have ha' : a < Q := Finset.mem_range.mp ha
    have hb' : b < Q := Finset.mem_range.mp hb
    have h := congrArg ZMod.val hab
    simp only at h
    rwa [ZMod.val_natCast_of_lt ha', ZMod.val_natCast_of_lt hb'] at h
  · intro x _
    exact ⟨x.val, Finset.mem_range.mpr (ZMod.val_lt x), ZMod.natCast_zmod_val x⟩

private lemma sum_range_modulus_shift_eq_zero_of_ne_one {Q : ℕ} [NeZero Q] (ψ : DirichletCharacter ℂ Q) (hψ : ψ ≠ 1) (M : ℕ) :
    ∑ n ∈ Finset.range Q, ψ ((M + n : ℕ) : ZMod Q) = 0 := by
  calc ∑ n ∈ Finset.range Q, ψ ((M + n : ℕ) : ZMod Q)
        = ∑ n ∈ Finset.range Q, (fun x => ψ ((M : ZMod Q) + x)) (n : ZMod Q) := by
          simp [Nat.cast_add]
    _ = ∑ x : ZMod Q, ψ ((M : ZMod Q) + x) := sum_range_natCast_zmod_eq_sum_univ (fun x => ψ ((M : ZMod Q) + x))
    _ = ∑ x : ZMod Q, ψ x := Equiv.sum_comp (Equiv.addLeft (M : ZMod Q)) ψ
    _ = 0 := MulChar.sum_eq_zero_of_ne_one hψ

theorem pair_sum_bound : PairSum := by
  intro p p' hp hp' hne M
  have h := _root_.Formalism.ZeroFreeDirichlet.norm_character_sum_range_le (mulLevel p p') (mulLevel_ne_one p p' hp hp' hne) M
  simpa only [mulLevel_apply] using h

end Formalism.HermitianLattices.Ext.PrimitiveCharacterCasts.ZD
