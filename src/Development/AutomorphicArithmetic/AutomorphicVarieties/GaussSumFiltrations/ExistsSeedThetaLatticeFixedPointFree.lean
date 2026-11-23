module

public import Development.AutomorphicArithmetic.AutomorphicVarieties.GaussSumFiltrations.EvenPos
public import Development.AutomorphicArithmetic.AutomorphicVarieties.GaussSumFiltrations.ExistsEvenPositiveDefiniteIntMatrixDetSq
public import Development.AutomorphicArithmetic.AutomorphicVarieties.GaussSumFiltrations.ThetaSeriesHolomorphicQExpansionOfBoundedCoeff
public import Development.AutomorphicArithmetic.AutomorphicVarieties.GaussSumFiltrations.ThetaSlashEighthRootOfSquareDet
public import Development.AutomorphicArithmetic.AutomorphicVarieties.GaussSumFiltrations.ThetaTranslateIntegralCongruentOneModPrime
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
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
import Development.AutomorphicArithmetic.AutomorphicVarieties.IdeleGenerators.ConstSmall

@[expose] public section

open NumberField IsDedekindDomain Neutral.B1 Formalism.L2.Host Formalism.ConjugateSelfDual GlobalTheory.CuspRep UpperTheory.V UpperTheory.V.Af UpperTheory.V.Sd GlobalTheory.HilbertThetaSeries
open scoped Matrix

namespace GlobalTheory.HilbertThetaSeries

theorem seed_exists : ∀ (F : Type) [Field F] [NumberField F] [IsTotallyReal F] (p : ℕ) [Fact p.Prime] (ι : Qbar p ≃+* ℂ), p ≠ 2 → ∀ δ : F, IsDel p δ → ∃ θ : Hn F → ℂ, Seed ι δ θ := by
  intro F _ _ _ p hp ι hp2 δ hδ
  obtain ⟨G, S, t, hL⟩ := _root_.GlobalTheory.HilbertThetaSeries.EvenLat.exists_latD p hp.out hp2
  have hsupp : ∀ x : (Fin (p - 1) ⊕ Fin (p - 1)) → F, (oneL x : ℂ) ≠ 0 → x ∈ aL (Fin (p - 1) ⊕ Fin (p - 1)) (1 : F) := by
    intro x hx
    have hx' : x ∈ LL F (Fin (p - 1) ⊕ Fin (p - 1)) := by
      by_contra h
      exact hx (by simp [oneL, h])
    exact ⟨x, hx', by simp⟩
  have hbd : ∀ x : (Fin (p - 1) ⊕ Fin (p - 1)) → F, ‖(oneL x : ℂ)‖ ≤ 1 := by
    intro x
    unfold oneL
    split_ifs <;> simp
  obtain ⟨-, hhol, hgr, -⟩ := _root_.GlobalTheory.HilbertThetaSeries.th_expansion F _ G hL.pos (1 : F) oneL 1 hsupp hbd
  obtain ⟨N, hN, hlev⟩ := _root_.GlobalTheory.HilbertThetaSeries.theta_level_eighth_root F _ G hL.pos t hL.det (p - 1) hL.card
  exact ⟨th G oneL, hhol, hgr, fun γ hγ => _root_.GlobalTheory.HilbertThetaSeries.theta_translates_integral_one F p ι hp2 δ hδ _ G S t hL γ hγ, N, hN, hlev⟩

end GlobalTheory.HilbertThetaSeries

open NumberField IsDedekindDomain Neutral.B1 Formalism.L2.Host Formalism.ConjugateSelfDual GlobalTheory.CuspRep UpperTheory.V UpperTheory.V.Af UpperTheory.V.Sd GlobalTheory.HilbertThetaSeries
open scoped Matrix

