module

public import Mathlib.RingTheory.DedekindDomain.FiniteAdeleRing
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
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
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
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init
public import Mathlib.RingTheory.DedekindDomain.Factorization
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.AdeleApproximation.AdeleIntA

@[expose] public section

noncomputable section
namespace Formalism.L2.GlobalTheoryTheory.FiltrationBoundaryCriterion.CompactFixesLatticeTheory.AdeleIntA
open IsDedekindDomain IsDedekindDomain.HeightOneSpectrum

variable {R : Type*} [CommRing R] [IsDedekindDomain R] {K : Type*} [Field K] [Algebra R K]
  [IsFractionRing R K]

def IsInt (b : FiniteAdeleRing R K) : Prop := ∀ v, b v ∈ v.adicCompletionIntegers K

private theorem memO_lemma (v : HeightOneSpectrum R) (x : v.adicCompletion K) :
    x ∈ v.adicCompletionIntegers K ↔ Valued.v x ≤ 1 := by
  first
  | exact IsDedekindDomain.HeightOneSpectrum.mem_adicCompletionIntegers ..

private theorem valR_lemma_2 (v : HeightOneSpectrum R) (r : R) :
    Valued.v (algebraMap K (v.adicCompletion K) (algebraMap R K r)) = v.intValuation r := by
  first
  | exact (IsDedekindDomain.HeightOneSpectrum.valuedAdicCompletion_eq_valuation' v _).trans
      (IsDedekindDomain.HeightOneSpectrum.valuation_of_algebraMap v _)

theorem int_R (v : HeightOneSpectrum R) (r : R) :
    algebraMap K (v.adicCompletion K) (algebraMap R K r) ∈ v.adicCompletionIntegers K := by
  rw [memO_lemma, valR_lemma_2]
  first
  | exact v.intValuation_le_one r

theorem val_R (v : HeightOneSpectrum R) (r : R) :
    Valued.v (algebraMap K (v.adicCompletion K) (algebraMap R K r)) = v.intValuation r := valR_lemma_2 v r

theorem exists_near (v : HeightOneSpectrum R) (y : v.adicCompletion K) :
    ∃ k : K, y - algebraMap K (v.adicCompletion K) k ∈ v.adicCompletionIntegers K := by
  have hd : ∀ y : v.adicCompletion K, y ∈ closure (Set.range (algebraMap K (v.adicCompletion K))) := by
    first
    | (intro y; exact (IsDedekindDomain.HeightOneSpectrum.denseRange_algebraMap (R := R) K v) y)
  have hN : {z : v.adicCompletion K | Valued.v (z - y) < 1} ∈ nhds y := by
    first
    | exact Valued.mem_nhds.2 ⟨1, fun z hz => by simpa using hz⟩
  obtain ⟨_, hz, k, rfl⟩ := mem_closure_iff_nhds.1 (hd y) _ hN
  have hz' : Valued.v (algebraMap K (v.adicCompletion K) k - y) < 1 := hz
  refine ⟨k, (memO_lemma v _).2 ?_⟩
  first
  | (rw [Valuation.map_sub_swap]; exact le_of_lt hz')

theorem exists_den_local (v : HeightOneSpectrum R) (y : v.adicCompletion K) :
    ∃ s : R, s ≠ 0 ∧
      algebraMap K (v.adicCompletion K) (algebraMap R K s) * y ∈ v.adicCompletionIntegers K := by
  obtain ⟨k, hk⟩ := exists_near v y
  obtain ⟨a, b, hb, hab⟩ :
      ∃ a b : R, b ∈ nonZeroDivisors R ∧ algebraMap R K a / algebraMap R K b = k := by
    first
    | exact IsFractionRing.div_surjective (A := R) k
  subst hab
  have hb0 : b ≠ 0 := by
    first
    | exact nonZeroDivisors.ne_zero hb
  have hbK : algebraMap R K b ≠ 0 := by
    first
    | exact IsFractionRing.to_map_ne_zero_of_mem_nonZeroDivisors hb
  refine ⟨b, hb0, ?_⟩
  have e1 : algebraMap R K b * (algebraMap R K a / algebraMap R K b) = algebraMap R K a := by
    first
    | (field_simp; done)
  have e2 : algebraMap K (v.adicCompletion K) (algebraMap R K b) *
      (y - algebraMap K (v.adicCompletion K) (algebraMap R K a / algebraMap R K b)) +
      algebraMap K (v.adicCompletion K) (algebraMap R K a) =
      algebraMap K (v.adicCompletion K) (algebraMap R K b) * y := by
    rw [mul_sub, ← map_mul (algebraMap K (v.adicCompletion K)), e1, sub_add_cancel]
  rw [← e2]
  exact add_mem (mul_mem (int_R v b) hk) (int_R v a)

private theorem fin_lemma_3 (b : FiniteAdeleRing R K) :
    {v : HeightOneSpectrum R | b v ∉ v.adicCompletionIntegers K}.Finite := by
  first
  | exact Filter.eventually_cofinite.1 b.2

private theorem mulApp_lemma_4 (a b : FiniteAdeleRing R K) (v : HeightOneSpectrum R) :
    (a * b) v = a v * b v := by
  first
  | rfl

private theorem algApp_lemma_5 (r : R) (v : HeightOneSpectrum R) :
    (algebraMap R (FiniteAdeleRing R K) r) v = algebraMap K (v.adicCompletion K) (algebraMap R K r) := by
  first
  | rfl

theorem exists_den (b : FiniteAdeleRing R K) :
    ∃ r : R, r ≠ 0 ∧ IsInt (algebraMap R (FiniteAdeleRing R K) r * b) := by
  classical
  have hS := fin_lemma_3 b
  choose s hs0 hs using fun w : HeightOneSpectrum R => exists_den_local w (b w)
  refine ⟨∏ w ∈ hS.toFinset, s w, Finset.prod_ne_zero_iff.2 (fun w _ => hs0 w), ?_⟩
  intro v
  rw [mulApp_lemma_4, algApp_lemma_5]
  by_cases hv : v ∈ hS.toFinset
  · rw [← Finset.mul_prod_erase hS.toFinset s hv]
    simp only [map_mul]
    rw [show ∀ x y z : v.adicCompletion K, x * y * z = y * (x * z) from
      fun x y z => by ring]
    exact mul_mem (int_R v _) (hs v)
  · have hb : b v ∈ v.adicCompletionIntegers K := by
      by_contra h
      exact hv (hS.mem_toFinset.2 h)
    exact mul_mem (int_R v _) hb

theorem exists_approx_local (v : HeightOneSpectrum R) (c : v.adicCompletion K)
    (hc : c ∈ v.adicCompletionIntegers K) (r : R) (hr : r ≠ 0) :
    ∃ a : R, Valued.v (c - algebraMap K _ (algebraMap R K a)) ≤ v.intValuation r := by
  exact ReciprocityTheory.ChartRestriction.G.Lib.AdeleIntA.exists_approx_local v c hc r hr

theorem exists_approx (c : FiniteAdeleRing R K) (hc : IsInt c) (r : R) (hr : r ≠ 0) :
    ∃ a : R, ∀ v, Valued.v (c v - algebraMap K _ (algebraMap R K a)) ≤ v.intValuation r := by
  exact ReciprocityTheory.ChartRestriction.G.Lib.AdeleIntA.exists_approx c hc r hr

private theorem algKApp_lemma_6 (k : K) (v : HeightOneSpectrum R) :
    (algebraMap K (FiniteAdeleRing R K) k) v = algebraMap K (v.adicCompletion K) k := by
  first
  | rfl

theorem exists_approx_adele (b : FiniteAdeleRing R K) :
    ∃ u : K, IsInt (b - algebraMap K (FiniteAdeleRing R K) u) := by
  obtain ⟨r, hr, hrb⟩ := exists_den b
  obtain ⟨a, ha⟩ := exists_approx _ hrb r hr
  have hrK : algebraMap R K r ≠ 0 := by
    first
    | exact IsFractionRing.to_map_ne_zero_of_mem_nonZeroDivisors (mem_nonZeroDivisors_of_ne_zero hr)
  refine ⟨algebraMap R K a / algebraMap R K r, ?_⟩
  intro v
  have hv := ha v
  rw [mulApp_lemma_4, algApp_lemma_5] at hv
  have hsub : (b - algebraMap K (FiniteAdeleRing R K) (algebraMap R K a / algebraMap R K r)) v
      = b v - algebraMap K (v.adicCompletion K) (algebraMap R K a / algebraMap R K r) := by
    first
    | rfl
  rw [hsub, memO_lemma]
  have e1 : algebraMap R K r * (algebraMap R K a / algebraMap R K r) = algebraMap R K a := by
    first
    | (field_simp; done)
  have e2 : algebraMap K (v.adicCompletion K) (algebraMap R K r) *
      (b v - algebraMap K (v.adicCompletion K) (algebraMap R K a / algebraMap R K r)) =
      algebraMap K (v.adicCompletion K) (algebraMap R K r) * b v - algebraMap K (v.adicCompletion K) (algebraMap R K a) := by
    rw [mul_sub, ← map_mul (algebraMap K (v.adicCompletion K)), e1]
  have hv2 : v.intValuation r *
      Valued.v (b v - algebraMap K (v.adicCompletion K) (algebraMap R K a / algebraMap R K r)) ≤
      v.intValuation r := by
    have h3 := hv
    rw [← e2, Valuation.map_mul, valR_lemma_2] at h3
    exact h3
  have hne : v.intValuation r ≠ 0 := by
    first
    | exact v.intValuation_ne_zero r hr
  calc Valued.v (b v - algebraMap K (v.adicCompletion K) (algebraMap R K a / algebraMap R K r))
      = (v.intValuation r)⁻¹ * (v.intValuation r *
          Valued.v (b v - algebraMap K (v.adicCompletion K) (algebraMap R K a / algebraMap R K r))) := by
        rw [← mul_assoc, inv_mul_cancel₀ hne, one_mul]
    _ ≤ (v.intValuation r)⁻¹ * v.intValuation r := by
        first
        | gcongr
    _ = 1 := inv_mul_cancel₀ hne

theorem mem_of_isInt (k : K) (h : IsInt (algebraMap K (FiniteAdeleRing R K) k)) :
    k ∈ (algebraMap R K).range := by
  refine IsDedekindDomain.HeightOneSpectrum.mem_integers_of_valuation_le_one K k (fun v => ?_)
  have h1 := h v
  rw [algKApp_lemma_6, memO_lemma] at h1
  first
  | exact (IsDedekindDomain.HeightOneSpectrum.valuedAdicCompletion_eq_valuation' v k).symm.le.trans h1

end Formalism.L2.GlobalTheoryTheory.FiltrationBoundaryCriterion.CompactFixesLatticeTheory.AdeleIntA
