module

public import Development.AutomorphicArithmetic.AutomorphicVarieties.TensorHomCubes.StabDirectedSystem
public import Development.AutomorphicArithmetic.AutomorphicVarieties.LiteratureResults.KTheoryStability.HomologicalStability.LinkExactnessStability.QuillenStabilisationSurjectiveBottom
public import Development.AutomorphicArithmetic.AutomorphicVarieties.LiteratureResults.KTheoryStability.HomologicalStability.LinkExactnessStability.SplitSeqExactAtOfTwoMulAddStableRangeLe
public import Development.AutomorphicArithmetic.AutomorphicVarieties.LiteratureResults.KTheoryStability.HomologicalStability.LinkExactnessStability.SplitSeqFirstPageIsoAndDifferential
public import Development.AutomorphicArithmetic.AutomorphicVarieties.LiteratureResults.KTheoryStability.HomologicalStability.LinkExactnessStability.SplitSequenceRepComplexExact
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
public import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.MemSplitSeqIff

@[expose] public section

open CategoryTheory CategoryTheory.Limits GlobalTheory.HomStab GlobalTheory.SeqCx UpperTheory.V.KL

namespace GlobalTheory.HomStab

theorem grpHMap_stab_surjective_congr (R : Type) [CommRing R] (i a b a' b' : ℕ) (h : a ≤ b) (h' : a' ≤ b') (ha : a = a') (hb : b = b')
    (hs : Function.Surjective (grpHMap (stab R a b h) i).hom) :
    Function.Surjective (grpHMap (stab R a' b' h') i).hom := by
  subst ha hb; exact hs

theorem grpHMap_stab_surjective_step : ∀ (R : Type) [CommRing R] (s : ℕ), StableRangeLe R s → ∀ i : ℕ, (∀ q m m' (h : m ≤ m'), q < i → m' = m + 1 → (2 * q + s + 1 ≤ m → Function.Surjective (grpHMap (stab R m m' h) q).hom) ∧ (2 * q + s + 2 ≤ m → Function.Injective (grpHMap (stab R m m' h) q).hom)) → ∀ m m' (h : m ≤ m'), m' = m + 1 → 2 * i + s + 1 ≤ m → Function.Surjective (grpHMap (stab R m m' h) i).hom := by
  intro R _ s hsr i IH m m' h hm hi
  obtain ⟨e, he, hc⟩ := _root_.GlobalTheory.HomStab.firstPage_split R s hsr (m + 1)
  obtain ⟨hdd, hd0, hex⟩ := _root_.GlobalTheory.HomStab.SplitEx.main R (m + 1)
  have key := _root_.GlobalTheory.HomStab.stab_surj_bottom ℤ (GL (Fin (m + 1)) R) i (splitRep R (m + 1)) (splitD R (m + 1)) hdd
    (hd0 (_root_.GlobalTheory.SeqCx.exactAt_splitSeq_of_stableRange R s hsr (m + 1) 0 (by omega)))
    (fun p hp => hex p (_root_.GlobalTheory.SeqCx.exactAt_splitSeq_of_stableRange R s hsr (m + 1) (p + 1) (by omega)))
    (fun p q => grpH (GL (Fin (m + 1 - p)) R) q) e
    (fun p q => grpHMap (stab R (m + 1 - (p + 1)) (m + 1 - p) (by omega)) q)
    (fun p q hp => he p q (by omega))
    (fun p q hp => hc p q (by omega))
    (fun p q hp h2 hpq => (IH q (m + 1 - (p + 1)) (m + 1 - p) (by omega) (by omega) (by omega)).2 (by omega))
    (fun p q hp h2 hpq => (IH q (m + 1 - (p + 1)) (m + 1 - p) (by omega) (by omega) (by omega)).1 (by omega))
  exact grpHMap_stab_surjective_congr R i _ _ m m' _ h (by omega) (by omega) key

end GlobalTheory.HomStab

