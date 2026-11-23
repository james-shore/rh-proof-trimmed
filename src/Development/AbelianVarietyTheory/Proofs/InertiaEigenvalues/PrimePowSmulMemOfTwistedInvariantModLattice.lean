module

public import Development.AbelianVarietyTheory.Definitions.Foundations.HTBasis
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CocycleTwistCoboundaryOnBall
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousOrbitPadicComplex
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsTateOperatorLevelComplement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NormPrimitiveRootPrimePowSubOnePadicComplex
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TateInvariantsCyclotomicTwist
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.Padics.LocalField
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.HopfAlgebra.Basic
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
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
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
import Mathlib.Topology.Algebra.Nonarchimedean.Completion
import Mathlib.Topology.Sheaves.Init

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.Loc GlobalTheory.Cyc

namespace GlobalTheory.FrameInv

variable {l : ℕ} [Fact l.Prime] {act : GQ l →* (PadicComplex l ≃+* PadicComplex l)}
  {χ : GQ l →* ℚ_[l]ˣ}

variable {r : ℕ} {U : GQ l → Matrix (Fin r) (Fin r) (PadicComplex l)}

open scoped Matrix in
variable {l : ℕ} [Fact l.Prime] in
private alias continuous_algebraMap_padicComplex_lemma_7 := _root_.GlobalTheory.Cyc.FrameTorsion.continuous_algMap

open scoped Matrix in
variable {l : ℕ} [Fact l.Prime] in
variable (act : _root_.Formalism.BasicNotions.Loc.GQ l →* ℂ_[l] ≃+* ℂ_[l]) (χ : _root_.Formalism.BasicNotions.Loc.GQ l →* ℚ_[l]ˣ) (i : ℤ) {r : ℕ}
  (U : _root_.Formalism.BasicNotions.Loc.GQ l → Matrix (Fin r) (Fin r) ℂ_[l]) in
private theorem continuousOn_twistedAction_lemma (hact : _root_.GlobalTheory.Cyc.IsActC act)
    (hχ : _root_.GlobalTheory.Cyc.IsCyc χ) {K : _root_.Formalism.BasicNotions.Loc.FinExt l} {m : ℕ} {g : _root_.Formalism.BasicNotions.Loc.GQ l}
    (hF : _root_.GlobalTheory.Cyc.Frame χ K m U g) (y : Fin r → ℂ_[l]) :
    ContinuousOn (fun σ => _root_.GlobalTheory.Cyc.twAct act χ i U σ y)
      (_root_.GlobalTheory.Cyc.Gj K m) := by
  unfold _root_.GlobalTheory.Cyc.twAct
  refine continuousOn_pi.2 fun a => ?_
  simp only [Pi.smul_apply, Matrix.mulVec, dotProduct, smul_eq_mul]
  refine (_root_.GlobalTheory.Cyc.Procyclic.continuous_chiC hχ i).continuousOn.mul ?_
  refine continuousOn_finsetSum _ fun b _ => ?_
  exact (hF.2.1 a b).mul
    (_root_.GlobalTheory.Cyc.IsActC.continuous_orbit l act hact (y b)).continuousOn

open scoped Matrix in
variable {l : ℕ} [Fact l.Prime] in
variable (act : _root_.Formalism.BasicNotions.Loc.GQ l →* ℂ_[l] ≃+* ℂ_[l]) (χ : _root_.Formalism.BasicNotions.Loc.GQ l →* ℚ_[l]ˣ) (i : ℤ) {r : ℕ}
  (U : _root_.Formalism.BasicNotions.Loc.GQ l → Matrix (Fin r) (Fin r) ℂ_[l]) in
private theorem twistedAction_mul_lemma_2 (hact : _root_.GlobalTheory.Cyc.IsActC act) {K : _root_.Formalism.BasicNotions.Loc.FinExt l}
    {m : ℕ} {g : _root_.Formalism.BasicNotions.Loc.GQ l} (hF : _root_.GlobalTheory.Cyc.Frame χ K m U g) {σ τ : _root_.Formalism.BasicNotions.Loc.GQ l}
    (hσ : σ ∈ _root_.GlobalTheory.Cyc.Gj K m) (hτ : τ ∈ _root_.GlobalTheory.Cyc.Gj K m)
    (v : Fin r → ℂ_[l]) :
    _root_.GlobalTheory.Cyc.twAct act χ i U (σ * τ) v =
      _root_.GlobalTheory.Cyc.twAct act χ i U σ (_root_.GlobalTheory.Cyc.twAct act χ i U τ v) := by
  have hfix : ∀ a b, act σ (U τ a b) = U τ a b := fun a b =>
    _root_.GlobalTheory.Cyc.TateS.act_fix hact K hσ (hF.2.2.1 τ hτ a b).1
  have hc : act σ (_root_.GlobalTheory.Cyc.chiC χ i τ) = _root_.GlobalTheory.Cyc.chiC χ i τ := by
    unfold _root_.GlobalTheory.Cyc.chiC
    exact _root_.GlobalTheory.Cyc.FrameTorsion.act_algebraMap hact σ _
  unfold _root_.GlobalTheory.Cyc.twAct
  rw [hF.2.2.2.1 σ hσ τ hτ, _root_.GlobalTheory.Cyc.FrameTorsion.chiC_mul, ← Matrix.mulVec_mulVec, mul_smul,
    ← Matrix.mulVec_smul]
  congr 2
  funext a

  simp [Matrix.mulVec, dotProduct, map_sum, map_mul, hfix, hc, Finset.mul_sum]

open scoped Matrix in
variable {l : ℕ} [Fact l.Prime] in
variable (act : _root_.Formalism.BasicNotions.Loc.GQ l →* ℂ_[l] ≃+* ℂ_[l]) (χ : _root_.Formalism.BasicNotions.Loc.GQ l →* ℚ_[l]ˣ) (i : ℤ) {r : ℕ}
  (U : _root_.Formalism.BasicNotions.Loc.GQ l → Matrix (Fin r) (Fin r) ℂ_[l]) in
private theorem twistedAction_smul_lemma_3 (σ : _root_.Formalism.BasicNotions.Loc.GQ l) (c : ℂ_[l]) (v : Fin r → ℂ_[l]) :
    _root_.GlobalTheory.Cyc.twAct act χ i U σ (c • v) =
      act σ c • _root_.GlobalTheory.Cyc.twAct act χ i U σ v := by
  unfold _root_.GlobalTheory.Cyc.twAct
  have h : (fun a => act σ ((c • v) a)) = act σ c • fun a => act σ (v a) := by
    funext a
    simp
  rw [h, Matrix.mulVec_smul, smul_comm]

open scoped Matrix in
variable {l : ℕ} [Fact l.Prime] in
variable (act : _root_.Formalism.BasicNotions.Loc.GQ l →* ℂ_[l] ≃+* ℂ_[l]) (χ : _root_.Formalism.BasicNotions.Loc.GQ l →* ℚ_[l]ˣ) (i : ℤ) {r : ℕ}
  (U : _root_.Formalism.BasicNotions.Loc.GQ l → Matrix (Fin r) (Fin r) ℂ_[l]) in
private theorem twistedAction_sub_lemma_4 (σ : _root_.Formalism.BasicNotions.Loc.GQ l) (v w : Fin r → ℂ_[l]) :
    _root_.GlobalTheory.Cyc.twAct act χ i U σ (v - w) =
      _root_.GlobalTheory.Cyc.twAct act χ i U σ v - _root_.GlobalTheory.Cyc.twAct act χ i U σ w := by
  unfold _root_.GlobalTheory.Cyc.twAct
  have h : (fun a => act σ ((v - w) a)) = (fun a => act σ (v a)) - fun a => act σ (w a) := by
    funext a
    simp
  rw [h, Matrix.mulVec_sub, smul_sub]

open scoped Matrix in
variable {l : ℕ} [Fact l.Prime] in
private theorem cyclotomicCharPow_add_lemma_14 (χ : _root_.Formalism.BasicNotions.Loc.GQ l →* ℚ_[l]ˣ) (a b : ℤ) (σ : _root_.Formalism.BasicNotions.Loc.GQ l) :
    _root_.GlobalTheory.Cyc.chiC χ (a + b) σ =
      _root_.GlobalTheory.Cyc.chiC χ a σ * _root_.GlobalTheory.Cyc.chiC χ b σ := by
  unfold _root_.GlobalTheory.Cyc.chiC
  rw [zpow_add, Units.val_mul, map_mul]

open scoped Matrix in
variable {l : ℕ} [Fact l.Prime] in
variable (act : _root_.Formalism.BasicNotions.Loc.GQ l →* ℂ_[l] ≃+* ℂ_[l]) (χ : _root_.Formalism.BasicNotions.Loc.GQ l →* ℚ_[l]ˣ) (i : ℤ) {r : ℕ}
  (U : _root_.Formalism.BasicNotions.Loc.GQ l → Matrix (Fin r) (Fin r) ℂ_[l]) in
private theorem twistedAction_eq_charPow_smul_lemma_13 (j : ℤ) (σ : _root_.Formalism.BasicNotions.Loc.GQ l) (v : Fin r → ℂ_[l]) :
    _root_.GlobalTheory.Cyc.twAct act χ i U σ v =
      _root_.GlobalTheory.Cyc.chiC χ (i - j) σ • _root_.GlobalTheory.Cyc.twAct act χ j U σ v := by
  unfold _root_.GlobalTheory.Cyc.twAct
  rw [smul_smul, ← cyclotomicCharPow_add_lemma_14, sub_add_cancel]

open scoped Matrix in
variable {l : ℕ} [Fact l.Prime] in
variable (act : _root_.Formalism.BasicNotions.Loc.GQ l →* ℂ_[l] ≃+* ℂ_[l]) (χ : _root_.Formalism.BasicNotions.Loc.GQ l →* ℚ_[l]ˣ) (i : ℤ) {r : ℕ}
  (U : _root_.Formalism.BasicNotions.Loc.GQ l → Matrix (Fin r) (Fin r) ℂ_[l]) in
private theorem eq_zero_of_twistedInvariant_offJumps_lemma_5 (hact : _root_.GlobalTheory.Cyc.IsActC act)
    (hχ : _root_.GlobalTheory.Cyc.IsCyc χ) {K : _root_.Formalism.BasicNotions.Loc.FinExt l} {m : ℕ} (hm : _root_.GlobalTheory.Cyc.Lev l m)
    {J : Set ℤ} (hJ : _root_.GlobalTheory.Cyc.HTBasis act χ (_root_.GlobalTheory.Cyc.Gj K m) U J)
    (hi : i ∉ J) {w : Fin r → ℂ_[l]}
    (hw : ∀ σ ∈ _root_.GlobalTheory.Cyc.Gj K m, _root_.GlobalTheory.Cyc.twAct act χ i U σ w = w) :
    w = 0 := by
  obtain ⟨e, u, hli, huJ, he⟩ := hJ
  have hspan : Submodule.span ℂ_[l] (Set.range e) = ⊤ :=
    hli.span_eq_top_of_card_eq_finrank' (by simp)
  let B := Module.Basis.mk hli hspan.ge
  have hB : ∀ k, B k = e k := fun k => Module.Basis.mk_apply hli hspan.ge k
  have hw' := B.sum_repr w
  have hsum : ∀ σ ∈ _root_.GlobalTheory.Cyc.Gj K m, ∀ c : Fin r → ℂ_[l],
      _root_.GlobalTheory.Cyc.twAct act χ i U σ (∑ k, c k • B k) =
        ∑ k, (_root_.GlobalTheory.Cyc.chiC χ (i - u k) σ * act σ (c k)) • B k := by
    intro σ hσ c

    rw [show _root_.GlobalTheory.Cyc.twAct act χ i U σ (∑ k, c k • B k) =
      (AddMonoidHom.mk' (_root_.GlobalTheory.Cyc.twAct act χ i U σ)
        (_root_.GlobalTheory.CycCoinv.twAct_add act χ i U σ)) (∑ k, c k • B k) from rfl, map_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [AddMonoidHom.mk'_apply, twistedAction_smul_lemma_3, hB,
      twistedAction_eq_charPow_smul_lemma_13 act χ i U (u k), he σ hσ k, smul_smul, mul_comm]
  have hcoef : ∀ k, B.repr w k = 0 := by
    intro k
    have hk : ∀ σ ∈ _root_.GlobalTheory.Cyc.Gj K m,
        _root_.GlobalTheory.Cyc.chiC χ (i - u k) σ * act σ (B.repr w k) = B.repr w k := by
      intro σ hσ
      have h1 := hsum σ hσ (B.repr w)
      rw [hw', hw σ hσ] at h1
      have h2 := congrArg (fun v => B.repr v k) h1
      simp only [Module.Basis.repr_sum_self] at h2
      exact h2.symm
    exact (_root_.GlobalTheory.CyclotomicTowerSubgroupInclusions.invariants_twist l act χ hact hχ K m hm (i - u k) _ hk).1
      (sub_ne_zero.2 fun h => hi (h ▸ huJ k))
  rw [← hw']
  simp [hcoef]


open scoped Matrix in
variable {l : ℕ} [Fact l.Prime] {act : _root_.Formalism.BasicNotions.Loc.GQ l →* (PadicComplex l ≃+* PadicComplex l)}
  {χ : _root_.Formalism.BasicNotions.Loc.GQ l →* ℚ_[l]ˣ} in
variable {r : ℕ} {U : _root_.Formalism.BasicNotions.Loc.GQ l → Matrix (Fin r) (Fin r) (PadicComplex l)} in
theorem _root_.GlobalTheory.FrameInv.pow_smul_mem_of_invariant_mod : ∀ (l : ℕ) [Fact l.Prime]
    (act : _root_.Formalism.BasicNotions.Loc.GQ l →* (PadicComplex l ≃+* PadicComplex l)) (χ : _root_.Formalism.BasicNotions.Loc.GQ l →* ℚ_[l]ˣ),
    _root_.GlobalTheory.Cyc.IsActC act → _root_.GlobalTheory.Cyc.IsCyc χ →
    ∀ (K : _root_.Formalism.BasicNotions.Loc.FinExt l), ∀ (m r : ℕ), _root_.GlobalTheory.Cyc.Lev l m →
    ∀ (U : _root_.Formalism.BasicNotions.Loc.GQ l → Matrix (Fin r) (Fin r) (PadicComplex l)) (g : _root_.Formalism.BasicNotions.Loc.GQ l),
    _root_.GlobalTheory.Cyc.Frame χ K m U g → ∀ J : Finset ℤ,
    _root_.GlobalTheory.Cyc.HTBasis act χ (_root_.GlobalTheory.Cyc.Gj K m) U (J : Set ℤ) →
    ∀ (i : ℤ), i ∉ J → ∀ M : AddSubgroup (Fin r → PadicComplex l),
    _root_.GlobalTheory.Cyc.ball l r ⊆ (M : Set _) →
    (∀ x ∈ M, (l : PadicComplex l) • x ∈ _root_.GlobalTheory.Cyc.ball l r) →
    ∀ y : Fin r → PadicComplex l,
    (∀ σ ∈ _root_.GlobalTheory.Cyc.Gj K m,
      _root_.GlobalTheory.Cyc.twAct act χ i U σ y - y ∈ M) →
    (l : PadicComplex l) ^ (2 + max 1 (∑ u ∈ J.erase i, (m + padicValInt l (u - i)))) • y ∈ M := by
  intro l _ act χ hact hχ K m r hm U g hF J hJ i hi M hball hlM y hy
  have hl1 : (1 : ℝ) < l := by exact_mod_cast (Fact.out : l.Prime).one_lt
  have hactl : ∀ σ (n : ℕ), act σ ((l : ℂ_[l]) ^ n) = (l : ℂ_[l]) ^ n := by
    intro σ n
    rw [map_pow, map_natCast]
  have hcoc : _root_.GlobalTheory.Cyc.CocOn (_root_.GlobalTheory.Cyc.Gj K m)
      (_root_.GlobalTheory.Cyc.twAct act χ i U) (_root_.GlobalTheory.Cyc.ball l r)
      (fun σ => (l : ℂ_[l]) • (_root_.GlobalTheory.Cyc.twAct act χ i U σ y - y)) := by
    unfold _root_.GlobalTheory.Cyc.CocOn
    refine ⟨?_, fun σ hσ => hlM _ (hy σ hσ), fun σ hσ τ hτ => ?_⟩
    · exact ((continuousOn_twistedAction_lemma act χ i U hact hχ hF y).sub continuousOn_const).const_smul (l : ℂ_[l])
    · simp only
      rw [twistedAction_mul_lemma_2 act χ i U hact hF hσ hτ, twistedAction_smul_lemma_3, twistedAction_sub_lemma_4,
        map_natCast, ← smul_add]
      congr 1
      abel
  obtain ⟨n, hn⟩ : ∃ n : ℕ, ∑ a, ‖y a‖ < (l : ℝ) ^ n := pow_unbounded_of_one_lt _ hl1
  have hyball : (l : ℂ_[l]) ^ (n + 1) • y ∈ _root_.GlobalTheory.Cyc.ball l r := by
    show ∀ a, ‖((l : ℂ_[l]) ^ (n + 1) • y) a‖ ≤ 1
    intro a
    rw [Pi.smul_apply, smul_eq_mul, norm_mul, norm_pow, _root_.GlobalTheory.Cyc.norm_natCast_prime_padicComplex, inv_pow,
      inv_mul_le_iff₀ (pow_pos (by positivity) _), mul_one]
    have h1 : ‖y a‖ ≤ ∑ b, ‖y b‖ :=
      Finset.single_le_sum (fun b _ => norm_nonneg (y b)) (Finset.mem_univ a)
    have h2 : (l : ℝ) ^ n ≤ (l : ℝ) ^ (n + 1) := pow_le_pow_right₀ hl1.le (Nat.le_succ n)
    linarith
  have hcob : _root_.GlobalTheory.Cyc.CobOn (_root_.GlobalTheory.Cyc.Gj K m)
      (_root_.GlobalTheory.Cyc.twAct act χ i U) (_root_.GlobalTheory.Cyc.ball l r)
      (fun σ => (l : ℂ_[l]) ^ n • (l : ℂ_[l]) • (_root_.GlobalTheory.Cyc.twAct act χ i U σ y - y)) := by
    unfold _root_.GlobalTheory.Cyc.CobOn
    refine ⟨(l : ℂ_[l]) ^ (n + 1) • y, hyball, fun σ hσ => ?_⟩
    simp only
    rw [twistedAction_smul_lemma_3, hactl, smul_smul, ← pow_succ, smul_sub]
  obtain ⟨z, hz, hzc⟩ := _root_.GlobalTheory.Cyc.FrameTorsion.torsion_killed l act χ hact hχ K m r hm U g
    hF J hJ i _ n hcoc hcob
  generalize max 1 (∑ u ∈ J.erase i, (m + padicValInt l (u - i))) = N at hzc ⊢
  have hinv : ∀ σ ∈ _root_.GlobalTheory.Cyc.Gj K m,
      _root_.GlobalTheory.Cyc.twAct act χ i U σ ((l : ℂ_[l]) ^ (2 + N) • y - z) =
        (l : ℂ_[l]) ^ (2 + N) • y - z := by
    intro σ hσ
    have h := hzc σ hσ
    have h' : (l : ℂ_[l]) ^ (2 + N) • (_root_.GlobalTheory.Cyc.twAct act χ i U σ y - y) =
        _root_.GlobalTheory.Cyc.twAct act χ i U σ z - z := by
      rw [show 2 + N = 1 + N + 1 by omega, pow_succ, mul_smul]
      exact h
    rw [smul_sub] at h'
    rw [twistedAction_sub_lemma_4, twistedAction_smul_lemma_3, hactl, sub_eq_sub_iff_sub_eq_sub]
    exact h'
  have hw0 := eq_zero_of_twistedInvariant_offJumps_lemma_5 act χ i U hact hχ hm hJ
    (fun h => hi (Finset.mem_coe.1 h)) hinv
  rw [sub_eq_zero] at hw0
  rw [hw0]
  exact hball hz

end GlobalTheory.FrameInv
