module

public import Development.AbelianVarietyTheory.Definitions.Divisors.OneMemH0WeightZero
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.FiniteResidueFieldAdicCompletionIntegers
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsEqAdicCompletionIntegers

@[expose] public section

open NumberField IsDedekindDomain GlobalTheory.QSA
open scoped Quaternion Topology

namespace GlobalTheory.QSA.IntRep

open NumberField IsDedekindDomain in
open scoped Quaternion Topology in
private lemma coe_adicCompletionIntegers_inv {F : Type} [Field F] [NumberField F]
    (v : HeightOneSpectrum (𝓞 F)) {x y : v.adicCompletionIntegers F} (h : x * y = 1) :
    (y : v.adicCompletion F) = (x : v.adicCompletion F)⁻¹ := by
  refine (eq_inv_of_mul_eq_one_right ?_)
  exact_mod_cast h

open NumberField IsDedekindDomain in
open scoped Quaternion Topology in
theorem _root_.GlobalTheory.QSA.IntRep.exists_nrm_eq_one_re_eq : ∀ (F : Type) [Field F] [NumberField F] (a b : F), a ≠ 0 → b ≠ 0 →
    ∀ᶠ v in (Filter.cofinite : Filter (HeightOneSpectrum (𝓞 F))), ∀ t ∈ v.adicCompletionIntegers F,
      ∃ u : ℍ[v.adicCompletion F, algebraMap F (v.adicCompletion F) a, algebraMap F (v.adicCompletion F) b],
        _root_.GlobalTheory.QSA.nrm u = 1 ∧ u.re = t ∧ u.imI ∈ v.adicCompletionIntegers F ∧ u.imJ ∈ v.adicCompletionIntegers F ∧
          u.imK ∈ v.adicCompletionIntegers F := by
  intro F _ _ a b ha hb
  obtain ⟨α, d, hd, rfl⟩ := IsFractionRing.div_surjective (A := 𝓞 F) a
  obtain ⟨β, e, he, rfl⟩ := IsFractionRing.div_surjective (A := 𝓞 F) b
  have hα : α ≠ 0 := by rintro rfl; simp at ha
  have hβ : β ≠ 0 := by rintro rfl; simp at hb
  have hd0 : d ≠ 0 := nonZeroDivisors.ne_zero hd
  have he0 : e ≠ 0 := nonZeroDivisors.ne_zero he
  have hx0 : α * d * β * e * 2 ≠ 0 := by
    have : (2 : 𝓞 F) ≠ 0 := two_ne_zero
    positivity
  refine Filter.eventually_cofinite.2 ((Ideal.finite_factors (I := Ideal.span {α * d * β * e * 2})
    (by simpa using hx0)).subset fun v hv => ?_)
  rw [Set.mem_setOf_eq, Ideal.dvd_span_singleton]
  by_contra hx
  apply hv
  haveI := _root_.GlobalTheory.SelfDualGenus.isAdicComplete_adicCompletionIntegers v
  haveI := _root_.GlobalTheory.SelfDualGenus.finite_residueField_adicCompletionIntegers v
  have hunit := (_root_.GlobalTheory.SelfDualGenus.isUnit_algebraMap_iff v _).2 hx
  simp only [map_mul, IsUnit.mul_iff] at hunit
  obtain ⟨⟨⟨⟨hA, hD⟩, hB⟩, hE⟩, h2⟩ := hunit
  rw [map_ofNat] at h2
  set a' : v.adicCompletionIntegers F :=
    algebraMap (𝓞 F) (v.adicCompletionIntegers F) α * ↑hD.unit⁻¹ with ha'_def
  set b' : v.adicCompletionIntegers F :=
    algebraMap (𝓞 F) (v.adicCompletionIntegers F) β * ↑hE.unit⁻¹ with hb'_def
  have ha'K : (a' : v.adicCompletion F) =
      algebraMap F (v.adicCompletion F) (algebraMap (𝓞 F) F α / algebraMap (𝓞 F) F d) := by
    rw [map_div₀, ha'_def, MulMemClass.coe_mul,
      coe_adicCompletionIntegers_inv v hD.mul_val_inv]
    rfl
  have hb'K : (b' : v.adicCompletion F) =
      algebraMap F (v.adicCompletion F) (algebraMap (𝓞 F) F β / algebraMap (𝓞 F) F e) := by
    rw [map_div₀, hb'_def, MulMemClass.coe_mul,
      coe_adicCompletionIntegers_inv v hE.mul_val_inv]
    rfl
  have ha'u : IsUnit a' := hA.mul (hD.unit⁻¹).isUnit
  have hb'u : IsUnit b' := hB.mul (hE.unit⁻¹).isUnit
  set ai : v.adicCompletionIntegers F := ↑ha'u.unit⁻¹ with hai_def
  have hai : a' * ai = 1 := ha'u.mul_val_inv
  intro t ht
  set T : v.adicCompletionIntegers F := ⟨t, ht⟩ with hT
  obtain ⟨z, hz⟩ : ∃ z : v.adicCompletionIntegers F, IsUnit (T ^ 2 - 1 + a' * b' * z ^ 2) := by
    by_cases hc : IsUnit (T ^ 2 - 1)
    · exact ⟨0, by simpa using hc⟩
    · refine ⟨1, ?_⟩
      rw [← IsLocalRing.residue_ne_zero_iff_isUnit, not_not] at hc
      rw [← IsLocalRing.residue_ne_zero_iff_isUnit, map_add (f := _), hc, zero_add, one_pow, mul_one]
      exact (IsLocalRing.residue_ne_zero_iff_isUnit _).2 (ha'u.mul hb'u)
  obtain ⟨r, s, hrs⟩ := _root_.GlobalTheory.BinaryUnitForm.exists_eq_of_henselian 0 (b' * ai) ((T ^ 2 - 1 + a' * b' * z ^ 2) * ai)
    (by
      rw [show (0 : v.adicCompletionIntegers F) ^ 2 - 4 * (b' * ai) = -(2 * 2 * (b' * ai)) by ring]
      exact ((h2.mul h2).mul (hb'u.mul (ha'u.unit⁻¹).isUnit)).neg)
    (hz.mul (ha'u.unit⁻¹).isUnit)
  have hO : T ^ 2 - a' * r ^ 2 - b' * s ^ 2 + a' * b' * z ^ 2 = 1 := by
    linear_combination (-a') * hrs + (b' * s ^ 2 - (T ^ 2 - 1) - a' * b' * z ^ 2) * hai
  refine ⟨⟨t, r, s, z⟩, ?_, rfl, r.2, s.2, z.2⟩
  unfold _root_.GlobalTheory.QSA.nrm
  rw [← ha'K, ← hb'K]
  have := congrArg (fun x : v.adicCompletionIntegers F => (x : v.adicCompletion F)) hO
  push_cast at this
  exact this

end GlobalTheory.QSA.IntRep
