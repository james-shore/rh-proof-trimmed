module

public import Development.AbelianVarietyTheory.Definitions.Divisors.PullHlComp
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClassVanishesAwayNonzeroNonunitDomainStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleCohomologyVanishingAlgebraicOverRatFuncStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleLocalVanishingCohomologyStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsAlgebraicRatFuncFractionRingDedekindStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteTypeFieldStrictlyHenselianStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HigherDegreeClassDiesOnFinerEtaleNeighbourhoodStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MayerVietorisExactEtaleStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StrictlyHenselianLocalRingAcyclicEverySheafStatement
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

@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC GlobalTheory.AffineCurveNbhd

namespace GlobalTheory.EtC.AffineCurve

theorem subsingleton_of_three_le : ∀ (q : ℕ) [NeZero q] (k B : Type) [Field k] [IsAlgClosed k] [CommRing B]
    [IsDedekindDomain B] [Algebra k B] [Algebra.FiniteType k B], IsUnit (q : k) → ∀ n i : ℤ, 3 ≤ n →
    Subsingleton (Ht q (sp B) n i) := by
  intro q _ k B _ _ _ _ _ _ hq n i hn
  have hqB : IsUnit (q : B) := by simpa using hq.map (algebraMap k B)
  by_cases hB : IsField B
  · exact _root_.GlobalTheory.EtC.b2 (ZMod q) B (_root_.GlobalTheory.field_finiteType_algClosed_SH k B hB) (tw q i) n (by omega)
  · obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by ring⟩
    suffices h : ∀ x : Ht q (sp B) (m + 1) i, x = 0 from ⟨fun x y => by rw [h x, h y]⟩
    intro x
    obtain ⟨_, _⟩ := _root_.GlobalTheory.FracAlgDedekind.exists_isAlgebraic_ratFunc k B hB
    have hqK : IsUnit (q : FractionRing B) := by simpa using hqB.map (algebraMap B (FractionRing B))
    have h1 : pull _ (spMap (algebraMap B (FractionRing B))) _ _ x = 0 :=
      (_root_.GlobalTheory.EtC.gaugeSplitting_holds q k (FractionRing B) hqK (m + 1) i (by omega)).elim _ _
    obtain ⟨f, hf0, hfu, hxf⟩ := _root_.GlobalTheory.EtC.classVanishesAway q B hB hqB (m + 1) i x h1
    obtain ⟨A', _, _, _, hA', hxA'⟩ := _root_.GlobalTheory.CurveNbhdKill.exists_nbhd_pull_eq_zero q k B hq f hf0 hfu (m + 1) i (by omega) x
    obtain ⟨δ, hex, hkill⟩ := _root_.GlobalTheory.EtC.ExcisionNat.excision_natural q B A' f hA' m i
    obtain ⟨z, rfl⟩ := (hex x).mp (by simp [hxf, hxA'])
    obtain ⟨A'', _, _, _, φ, hA'', hz⟩ := _root_.GlobalTheory.KillFiner.main q k B hq f hf0 hfu A' hA' m i (by omega) z
    exact hkill A'' φ hA'' z hz

end GlobalTheory.EtC.AffineCurve
