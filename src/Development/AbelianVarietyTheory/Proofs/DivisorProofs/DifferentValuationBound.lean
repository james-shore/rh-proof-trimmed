import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.HodgeTateLatticePointFinrankTateModule
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ColengthDvdOfNeZero
import Development.AbelianVarietyTheory.Statements.HeightBoundStatement.HTBoundSt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LineModel
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GrNormPush
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsFlagFrame
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.MultiplicationLatticeSecond
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.AmpleOnAbelianBase
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.PadicValNatAbsNormEqZero

open NumberField IsDedekindDomain UniqueFactorizationMonoid
open scoped Classical nonZeroDivisors

namespace GlobalTheory.AbsDifferent

variable {E : Type} [Field E] [NumberField E] {K : Type} [Field K] {w : AbsoluteValue K ℝ}

def ball (hw : IsNonarchimedean w) (φ : E →+* K) (m : ℝ) (hm : 0 ≤ m) : AddSubgroup E where
  carrier := {x | w (φ x) ≤ m}
  add_mem' := by
    intro a b ha hb
    change w (φ (a + b)) ≤ m
    rw [map_add]
    exact (hw _ _).trans (max_le ha hb)
  zero_mem' := by
    change w (φ 0) ≤ m
    simpa using hm
  neg_mem' := by
    intro a ha
    change w (φ (-a)) ≤ m
    rw [map_neg, AbsoluteValue.map_neg]
    exact ha

theorem abs_sum_le (hw : IsNonarchimedean w) (φ : E →+* K) {m : ℝ} (hm : 0 ≤ m) {ι : Type} [Fintype ι]
    (n : ι → ℤ) (v : ι → E) (hv : ∀ i, w (φ (v i)) ≤ m) : w (φ (∑ i, n i • v i)) ≤ m := by
  have : ∑ i, n i • v i ∈ ball hw φ m hm :=
    AddSubgroup.sum_mem _ fun i _ => AddSubgroup.zsmul_mem _ (hv i) _
  exact this

theorem abs_le_one (hw : IsNonarchimedean w) (φ : E →+* K) (x : 𝓞 E) : w (φ x) ≤ 1 := by
  set C : ℝ := ∑ k, w (φ (RingOfIntegers.basis E k : E)) with hC
  have hC0 : 0 ≤ C := Finset.sum_nonneg fun k _ => w.nonneg _
  have hb : ∀ y : 𝓞 E, w (φ y) ≤ C := by
    intro y
    have hy : (y : E) = ∑ k, (RingOfIntegers.basis E).repr y k • (RingOfIntegers.basis E k : E) := by
      conv_lhs => rw [← (RingOfIntegers.basis E).sum_repr y]
      change algebraMap (𝓞 E) E _ = _
      rw [map_sum]
      exact Finset.sum_congr rfl fun k _ => map_zsmul (algebraMap (𝓞 E) E) _ _
    rw [hy]
    exact abs_sum_le hw φ hC0 _ _ fun k =>
      Finset.single_le_sum (f := fun k => w (φ (RingOfIntegers.basis E k : E))) (fun k _ => w.nonneg _)
        (Finset.mem_univ k)
  by_contra hc
  push_neg at hc
  obtain ⟨n, hn⟩ := pow_unbounded_of_one_lt C hc
  have := hb (x ^ n)
  change w (φ (algebraMap (𝓞 E) E (x ^ n))) ≤ C at this
  rw [map_pow, map_pow, map_pow] at this
  exact absurd this (not_le.2 hn)

def smallIdeal (hw : IsNonarchimedean w) (φ : E →+* K) : Ideal (𝓞 E) where
  carrier := {x | w (φ (algebraMap (𝓞 E) E x)) < 1}
  add_mem' := by
    intro a b ha hb
    change w (φ (algebraMap (𝓞 E) E (a + b))) < 1
    rw [map_add, map_add]
    exact (hw _ _).trans_lt (max_lt ha hb)
  zero_mem' := by
    change w (φ (algebraMap (𝓞 E) E 0)) < 1
    simp
  smul_mem' := by
    intro c x hx
    change w (φ (algebraMap (𝓞 E) E (c * x))) < 1
    rw [map_mul, map_mul, map_mul]
    exact (mul_le_of_le_one_left (w.nonneg _) (abs_le_one hw φ c)).trans_lt hx

variable (hw : IsNonarchimedean w) (φ : E →+* K)

theorem mem_smallIdeal (x : 𝓞 E) : x ∈ smallIdeal hw φ ↔ w (φ (algebraMap (𝓞 E) E x)) < 1 := Iff.rfl

end GlobalTheory.AbsDifferent
