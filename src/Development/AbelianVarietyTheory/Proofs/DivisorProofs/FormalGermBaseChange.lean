module

public import Development.AbelianVarietyTheory.Definitions.Divisors.OrthSubrepresentation
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HarishChandraInductionGLOneLeftRightUnitStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HarishChandraProductCuspidalGLListPropertiesStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCharacterHarishChandraProductCuspidalGLOfRegulStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsInCharacterIsotypicPartSelfStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftAllPreservesDegreeAndRegularity
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ShintaniLiftHarishChandraInductionEqTwistedStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ShintaniLiftKillsCuspDivisibleDegree
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ShintaniLiftKillsCuspOfDegreeNotDvd
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedHarishChandraInductionGLIsTwistedClassFunStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedHarishChandraIsotypicPartStatement
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
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

open Polynomial GlobalTheory.CuspGL GlobalTheory.BI GlobalTheory.Shin SemidirectProduct
open scoped Classical

noncomputable section

namespace GlobalTheory.Shin.DescentAll

theorem mem_zpowers_of_prime {F F' : Type} [Field F] [Field F'] [Algebra F F'] [Finite F']
    (s : F' ≃ₐ[F] F') (hl : (Module.finrank F F').Prime) (hs : s ≠ 1) :
    ∀ t : F' ≃ₐ[F] F', t ∈ Subgroup.zpowers s := by
  haveI : Finite F := Finite.of_injective _ (algebraMap F F').injective
  haveI : Fintype F := Fintype.ofFinite F
  haveI : Fintype F' := Fintype.ofFinite F'
  haveI : FiniteDimensional F F' := Module.Finite.of_finite
  haveI : IsGalois F F' := inferInstance
  haveI : Fact (Module.finrank F F').Prime := ⟨hl⟩
  have hc : Nat.card (F' ≃ₐ[F] F') = Module.finrank F F' := IsGalois.card_aut_eq_finrank F F'
  intro t
  rw [zpowers_eq_top_of_prime_card hc hs]
  exact Subgroup.mem_top t

theorem isCl_cusp (F : Type) [Field F] [Finite F] (θ : AlgebraicClosure F →* ℂ) (m k : ℕ) :
    IsCl (cusp θ m k) := by
  intro x y
  have h := ((_root_.GlobalTheory.Shin.twisted_class_main F (RingHom.id F) 0 0 m (fun _ => 1) (fun _ => 1)).2.2 (rootSum θ k)).1 x y
  simp only [cusp]
  rw [h]

end GlobalTheory.Shin.DescentAll

namespace GlobalTheory.Shin.DescentAll

theorem kills_liftAll : ∀ (F F' : Type) [Field F] [Field F'] [Algebra F F'] [Finite F'] (s : F' ≃ₐ[F] F'),
    (Module.finrank F F').Prime → s ≠ 1 → ∀ (ι : AlgebraicClosure F →ₐ[F] AlgebraicClosure F')
    (θ : AlgebraicClosure F' →* ℂ), (∀ x y : AlgebraicClosure F', x ≠ 0 → y ≠ 0 → θ x = θ y → x = y) →
    ∀ L : List (ℕ × ℕ), (∀ p ∈ L, 0 < p.1 ∧ Reg (Nat.card F) p.1 p.2) → ∀ n, n = deg L →
    Kills (shLift s (J (pullθ ι θ) L n)) (J θ (liftAll (Nat.card F) (Module.finrank F F') L) n) := by
  intro F F' _ _ _ _ s hl hs ι θ hθ
  haveI : Finite F := Finite.of_injective _ (algebraMap F F').injective
  haveI : Fintype F := Fintype.ofFinite F
  haveI : Fintype F' := Fintype.ofFinite F'
  haveI : FiniteDimensional F F' := Module.Finite.of_finite
  have hgen := mem_zpowers_of_prime s hl hs
  set q := Nat.card F with hqdef
  set l := Module.finrank F F' with hldef
  have hq2 : 2 ≤ q := by
    rw [hqdef, Nat.card_eq_fintype_card]; exact Fintype.one_lt_card
  have hcard' : Nat.card F' = q ^ l := by
    rw [hqdef, hldef, Nat.card_eq_fintype_card, Nat.card_eq_fintype_card]
    exact Module.card_eq_pow_finrank
  have hlist := _root_.GlobalTheory.Shin.J_list_props F' θ
  have happ : ∀ (A B : List (ℕ × ℕ)) (a b : ℕ), deg A = a → deg B = b →
      J θ (A ++ B) (a + b) = hc a b (J θ A a) (J θ B b) (a + b) := by
    intro A B a b ha hb
    subst ha hb
    exact hlist.2.1 A B _ rfl
  intro L
  induction L with
  | nil =>
    intro _ n hn
    obtain rfl : n = 0 := hn
    have hlift : liftAll q l ([] : List (ℕ × ℕ)) = [] := by simp [liftAll]
    rw [hlift]
    have h1 : shLift s (J (pullθ ι θ) [] 0) = J θ [] 0 := by
      funext δ
      have hδ : δ = 1 := by ext i j; exact i.elim0
      unfold shLift
      rw [dite_eq_left ⟨1, by rw [hδ]; exact isNorm_one s 0⟩]
      rfl
    rw [h1]
    exact _root_.GlobalTheory.Shin.kills_self _ _ (_root_.GlobalTheory.Shin.isChar_J_of_reg F' θ hθ [] (by simp) 0 rfl)
  | cons p L ih =>
    intro hL n hn
    have hp := hL p List.mem_cons_self
    have hLt : ∀ x ∈ L, 0 < x.1 ∧ Reg q x.1 x.2 := fun x hx => hL x (List.mem_cons_of_mem _ hx)
    have hdeg : deg (p :: L) = p.1 + deg L := by simp [deg]
    obtain rfl : n = p.1 + deg L := hn.trans hdeg
    set A : List (ℕ × ℕ) := (if l ∣ p.1 then liftL q l [p] else [(p.1, p.2 * ∑ i ∈ Finset.range l, q ^ (p.1 * i))])
      with hAdef
    have hsplit : liftAll q l (p :: L) = A ++ liftAll q l L := by simp [liftAll, hAdef]
    have hA1 : liftAll q l [p] = A := by simp [liftAll, hAdef]
    obtain ⟨hdA, hRA⟩ := _root_.GlobalTheory.liftAll_deg_reg q l [p] hq2 hl (by simpa using hp)
    obtain ⟨hdB, hRB⟩ := _root_.GlobalTheory.liftAll_deg_reg q l L hq2 hl hLt
    rw [hA1] at hdA hRA
    have hdA' : deg A = p.1 := by rw [hdA]; simp [deg]
    have hKA : Kills (shLift s (cusp (pullθ ι θ) p.1 p.2)) (J θ A p.1) := by
      by_cases h : l ∣ p.1
      · have := _root_.GlobalTheory.Shin.shLift_cusp_kills_J F F' s hl hs ι θ hθ p.1 p.2 hp.1 h hp.2
        rw [hAdef, if_pos h]
        simpa only [Prod.mk.eta] using this
      · rw [hAdef, if_neg h]
        have hu := _root_.GlobalTheory.Shin.shLift_cusp_kills_of_not_dvd F F' s hl hs ι θ hθ p.1 p.2 hp.1 h hp.2
        have hJ : J θ [(p.1, p.2 * ∑ i ∈ Finset.range l, q ^ (p.1 * i))] p.1 =
            cusp θ p.1 (p.2 * ∑ i ∈ Finset.range l, q ^ (p.1 * i)) := by
          rw [J_cons]
          exact (_root_.GlobalTheory.Shin.HcUnit.main F' p.1 _ (isCl_cusp F' θ _ _)).2
        rw [hJ]
        exact hu
    have hRA' : ∀ x ∈ A, 0 < x.1 ∧ Reg (Nat.card F') x.1 x.2 := by rw [hcard']; exact hRA
    have hRB' : ∀ x ∈ liftAll q l L, 0 < x.1 ∧ Reg (Nat.card F') x.1 x.2 := by rw [hcard']; exact hRB
    have hcharA := _root_.GlobalTheory.Shin.isChar_J_of_reg F' θ hθ A hRA' p.1 hdA'.symm
    have hcharB := _root_.GlobalTheory.Shin.isChar_J_of_reg F' θ hθ (liftAll q l L) hRB' (deg L) hdB.symm
    rw [J_cons, _root_.GlobalTheory.Shin.shLift_hc_eq_hcTw F F' s hgen p.1 (deg L) _ rfl _ _ (isCl_cusp F _ _ _)
      ((_root_.GlobalTheory.Shin.J_list_props F (pullθ ι θ)).1 L (deg L)), hsplit, happ A (liftAll q l L) p.1 (deg L) hdA' hdB]
    exact _root_.GlobalTheory.Shin.HcIso.kills_hcTw F' (s : F' →+* F') p.1 (deg L) _ rfl _ _ _ _ hcharA hcharB hKA (ih hLt (deg L) rfl)

end GlobalTheory.Shin.DescentAll
