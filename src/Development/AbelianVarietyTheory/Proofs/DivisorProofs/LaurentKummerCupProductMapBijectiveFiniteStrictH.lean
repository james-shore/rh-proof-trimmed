module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullSpMapComp
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CupChernKummerPullbackNaturalityStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleCohomologyProdRingProjectionsBijectiveStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteAlgebraStrictlyHenselianInductionStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LaurentKummerCupProductBijectiveStrictlyHenseliaStatement
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

@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite Simplicial GlobalTheory.EtC GlobalTheory.EtC.GmStep

noncomputable section
namespace GlobalTheory.EtC.LaurentMapPullbackBijective

theorem pull_bijective_of_inverse (q : ℕ) {A B : Type} [CommRing A] [CommRing B] (f : A →+* B) (g : B →+* A)
    (hgf : g.comp f = RingHom.id A) (hfg : f.comp g = RingHom.id B) (n i : ℤ) :
    Function.Bijective (pull _ (spMap f) (tw q i) n) := by
  refine Function.bijective_iff_has_inverse.2 ⟨pull _ (spMap g) (tw q i) n, fun x => ?_, fun y => ?_⟩
  · rw [← GmPhiNat.pull_spMap_comp, hgf, _root_.GlobalTheory.EtAlgCD.spMap_id, pull_id]
  · rw [← GmPhiNat.pull_spMap_comp, hfg, _root_.GlobalTheory.EtAlgCD.spMap_id, pull_id]

theorem laurent_subsingleton (T : Type) [CommRing T] [Subsingleton T] : Subsingleton (LaurentPolynomial T) := by
  refine subsingleton_of_zero_eq_one ?_
  rw [← map_zero (LaurentPolynomial.C : T →+* LaurentPolynomial T), ← map_one (LaurentPolynomial.C : T →+* LaurentPolynomial T),
    Subsingleton.elim (0 : T) 1]

theorem gmPhi_bijective_of_subsingleton (q : ℕ) (T : Type) [CommRing T] [Subsingleton T] (i : ℤ) :
    Function.Bijective (gmPhi q T i) := by
  haveI := _root_.GlobalTheory.EtC.ArtCoh.ht_subsingleton_of_subsingleton q T 0 (i - 1)
  haveI := laurent_subsingleton T
  haveI := _root_.GlobalTheory.EtC.ArtCoh.ht_subsingleton_of_subsingleton q (LaurentPolynomial T) 1 i
  exact ⟨fun a b _ => Subsingleton.elim a b, fun y => ⟨0, Subsingleton.elim _ _⟩⟩

theorem gmPhi_bijective_of_equiv (h6 : DivisorNaturality) (q : ℕ) [NeZero q] {T T' : Type} [CommRing T] [CommRing T']
    (e : T ≃+* T') (hq : IsUnit (q : T)) (i : ℤ) (h : Function.Bijective (gmPhi q T i)) :
    Function.Bijective (gmPhi q T' i) := by
  have hcomm : (gmPhi q T' i) ∘ (pull _ (spMap (e : T →+* T')) _ 0) =
      (pull _ (spMap (laurentMap (e : T →+* T'))) _ 1) ∘ (gmPhi q T i) :=
    funext fun a => (gmPhi_nat h6 q (e : T →+* T') hq i a).symm
  have hgf : (e.symm : T' →+* T).comp (e : T →+* T') = RingHom.id T := by ext; simp
  have hfg : (e : T →+* T').comp (e.symm : T' →+* T) = RingHom.id T' := by ext; simp
  have hpull := pull_bijective_of_inverse q (e : T →+* T') (e.symm : T' →+* T) hgf hfg 0 (i - 1)
  have hpullL := pull_bijective_of_inverse q (laurentMap (e : T →+* T')) (laurentMap (e.symm : T' →+* T))
    (by rw [← GmPhiNat.laurentMap_comp, hgf, _root_.GlobalTheory.EtC.GmPhiNoeth.laurentMap_id])
    (by rw [← GmPhiNat.laurentMap_comp, hfg, _root_.GlobalTheory.EtC.GmPhiNoeth.laurentMap_id]) 1 i
  rw [← Function.Bijective.of_comp_iff _ hpull, hcomm]
  exact hpullL.comp h

theorem gmPhi_bijective_prod (h6 : DivisorNaturality) (q : ℕ) [NeZero q] (T₁ T₂ : Type) [CommRing T₁] [CommRing T₂]
    (hq : IsUnit (q : T₁ × T₂)) (i : ℤ) (h₁ : Function.Bijective (gmPhi q T₁ i))
    (h₂ : Function.Bijective (gmPhi q T₂ i)) : Function.Bijective (gmPhi q (T₁ × T₂) i) := by
  set f₁ := RingHom.fst T₁ T₂
  set f₂ := RingHom.snd T₁ T₂
  set ψ := (laurentMap f₁).prod (laurentMap f₂)
  have hα := _root_.GlobalTheory.EtC.ProdCoh.ht_prod_bijective q T₁ T₂ 0 (i - 1)
  have hγ := _root_.GlobalTheory.EtC.ProdCoh.ht_prod_bijective q (LaurentPolynomial T₁) (LaurentPolynomial T₂) 1 i
  have hψ : Function.Bijective ψ := _root_.GlobalTheory.EtC.LiftWitness.laurentProd_bijective T₁ T₂
  let e := RingEquiv.ofBijective ψ hψ
  have hgf : e.symm.toRingHom.comp e.toRingHom = RingHom.id _ := RingHom.ext fun x => e.symm_apply_apply x
  have hfg : e.toRingHom.comp e.symm.toRingHom = RingHom.id _ := RingHom.ext fun x => e.apply_symm_apply x
  have hψpull := pull_bijective_of_inverse q e.toRingHom e.symm.toRingHom hgf hfg 1 i
  have he : e.toRingHom = ψ := rfl
  have hl₁ : laurentMap f₁ = (RingHom.fst _ _).comp ψ := rfl
  have hl₂ : laurentMap f₂ = (RingHom.snd _ _).comp ψ := rfl
  let β := fun y : Ht q (sp (LaurentPolynomial (T₁ × T₂))) 1 i =>
    (pull _ (spMap (laurentMap f₁)) _ 1 y, pull _ (spMap (laurentMap f₂)) _ 1 y)
  have hβ : Function.Bijective β := by
    have : β = (fun x : Ht q (sp (LaurentPolynomial T₁ × LaurentPolynomial T₂)) 1 i =>
        (pull _ (spMap (RingHom.fst (LaurentPolynomial T₁) (LaurentPolynomial T₂))) _ 1 x,
          pull _ (spMap (RingHom.snd (LaurentPolynomial T₁) (LaurentPolynomial T₂))) _ 1 x)) ∘
        (pull _ (spMap ψ) _ 1) := by
      funext y
      simp only [β, Function.comp_apply, hl₁, hl₂, GmPhiNat.pull_spMap_comp]
    rw [this]
    rw [he] at hψpull
    exact hγ.comp hψpull
  have hu₁ : IsUnit (q : T₁) := by simpa using hq.map f₁
  have hu₂ : IsUnit (q : T₂) := by simpa using hq.map f₂
  have hcomm : β ∘ (gmPhi q (T₁ × T₂) i) =
      (Prod.map (gmPhi q T₁ i) (gmPhi q T₂ i)) ∘
        (fun x : Ht q (sp (T₁ × T₂)) 0 (i - 1) => (pull _ (spMap f₁) _ 0 x, pull _ (spMap f₂) _ 0 x)) := by
    funext a
    simp only [β, Function.comp_apply, Prod.map_apply]
    rw [gmPhi_nat h6 q f₁ hq i a, gmPhi_nat h6 q f₂ hq i a]
  rw [← Function.Bijective.of_comp_iff' hβ, hcomm]
  exact (h₁.prodMap h₂).comp hα

end GlobalTheory.EtC.LaurentMapPullbackBijective


open GlobalTheory.EtC.LaurentMapPullbackBijective in
theorem GlobalTheory.EtC.GmStep.gmPhi_bijective_finite : ∀ (q : ℕ) [NeZero q] (A : Type) [CommRing A], SH A → IsUnit (q : A) →
    ∀ (T : Type) [CommRing T] [Algebra A T], Module.Finite A T → ∀ i : ℤ, Function.Bijective (gmPhi q T i) := by
  intro q _ A _ hA hq T _ _ hT
  have h6 : DivisorNaturality := _root_.GlobalTheory.EtC.a6nat_holds
  have hunit : ∀ (S : Type) [CommRing S] [Algebra A S], IsUnit (q : S) := fun S _ _ => by
    simpa using hq.map (algebraMap A S)
  exact _root_.GlobalTheory.EtC.GmStep.FinSH.induction_principle A hA (fun S _ _ => ∀ i : ℤ, Function.Bijective (gmPhi q S i))
    (fun S S' _ _ _ _ e h i => gmPhi_bijective_of_equiv h6 q e.toRingEquiv (hunit S) i (h i))
    (fun S _ _ _ i => gmPhi_bijective_of_subsingleton q S i)
    (fun S₁ S₂ _ _ _ _ _ _ h₁ h₂ i => gmPhi_bijective_prod h6 q S₁ S₂ (hunit (S₁ × S₂)) i (h₁ i) (h₂ i))
    (fun S _ _ _ hS i => _root_.GlobalTheory.EtC.gmPhi_bijective q S hS (hunit S) i)
    T hT
