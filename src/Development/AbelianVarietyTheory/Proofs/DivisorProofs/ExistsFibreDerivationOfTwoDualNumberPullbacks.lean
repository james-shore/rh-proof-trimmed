module

public import Development.AbelianVarietyTheory.Definitions.Divisors.RigidForFan
public import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueAddEpsMulOnDualNumberThickeningStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PreimageEqOfAgreeOnClosedFibreDualNumbersStatement
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull
import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect

@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.RigChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section
namespace GlobalTheory.KS.TwoPull

variable {X Y Z : Scheme.{0}}

alias res_pull := _root_.GlobalTheory.LB.resG_appLE

theorem const_eq {R : Type} [CommRing R] (q : X ⟶ Sp R) (U : X.Opens) (a : R) :
    constFn q U a = _root_.GlobalTheory.KS.EpsDer.constHom q U a := rfl

theorem dual_decomp {k : Type} [Field k] (x : DualNumber k) :
    x = algebraMap k (DualNumber k) x.fst + DualNumber.eps * algebraMap k (DualNumber k) x.snd := by
  ext <;> simp [TrivSqZeroExt.algebraMap_eq_inl]

end GlobalTheory.KS.TwoPull


open GlobalTheory.KS.TwoPull in
theorem GlobalTheory.KS.TwoPull.exists_locDerK_of_two_pullbacks : ∀ (k : Type) [Field k] (R : Type) [CommRing R] (P : PolAV (Sp R)) (ρ : R →+* DualNumber k) (B' : Over (Sp (DualNumber k))) [GrpObj B'] (π₁ π₂ : B'.left ⟶ P.A.left), IsGrpPullback B' P.A (spMap ρ) π₁ → IsGrpPullback B' P.A (spMap (constHom ρ)) π₂ → (∀ (Z : Scheme.{0}) (x : Z ⟶ B'.left) (y : Z ⟶ Sp k), x ≫ B'.hom = y ≫ spMap (TrivSqZeroExt.fstHom k k k).toRingHom → x ≫ π₁ = x ≫ π₂) → ∀ (A₀ : Over (Sp k)) [GrpObj A₀] (m₀ : A₀.left ⟶ P.A.left), IsGrpPullback A₀ P.A (spMap ((TrivSqZeroExt.fstHom k k k).toRingHom.comp ρ)) m₀ → ∀ pr : B'.left ⟶ A₀.left, pr ≫ m₀ = π₂ → pr ≫ A₀.hom = B'.hom ≫ spMap (algebraMap k (DualNumber k)) → ∃ d : ∀ W : P.A.left.Opens, Γ(P.A.left, W) → Γ(A₀.left, m₀ ⁻¹ᵁ W), GlobalTheory.KS.LocDerK A₀.hom P.A.hom m₀ (fun r => (ρ r).snd) ⊤ d ∧ (∀ (W : P.A.left.Opens) (f : Γ(P.A.left, W)), pbT π₁ f (π₂ ⁻¹ᵁ W) = pbT π₂ f (π₂ ⁻¹ᵁ W) + constFn B'.hom (π₂ ⁻¹ᵁ W) DualNumber.eps * pbT pr (d W f) (π₂ ⁻¹ᵁ W)) := by
  intro k _ R _ P ρ B' _ π₁ π₂ hπ₁ hπ₂ hagr A₀ _ m₀ hm₀ pr hpr hprA
  subst hpr
  have hsp : spMap (constHom ρ) =
      spMap (algebraMap k (DualNumber k)) ≫ spMap ((TrivSqZeroExt.fstHom k k k).toRingHom.comp ρ) := by
    rw [← _root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.spMap_comp]; rfl
  have hpb : IsPullback pr B'.hom A₀.hom (spMap (algebraMap k (DualNumber k))) := by
    refine IsPullback.of_right ?_ hprA hm₀.1
    rw [← hsp]; exact hπ₂.1
  have hid : spMap (TrivSqZeroExt.fstHom k k k).toRingHom ≫ spMap (algebraMap k (DualNumber k)) = 𝟙 _ := by
    rw [← _root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.spMap_comp]
    have : ((TrivSqZeroExt.fstHom k k k).toRingHom.comp (algebraMap k (DualNumber k))) = RingHom.id k := by
      ext x; simp [TrivSqZeroExt.algebraMap_eq_inl]
    rw [this]; simp [spMap]
  have hcomp : 𝟙 A₀.left ≫ A₀.hom =
      (A₀.hom ≫ spMap (TrivSqZeroExt.fstHom k k k).toRingHom) ≫ spMap (algebraMap k (DualNumber k)) := by
    rw [Category.assoc, hid, Category.id_comp, Category.comp_id]
  set j := hpb.lift (𝟙 _) (A₀.hom ≫ spMap (TrivSqZeroExt.fstHom k k k).toRingHom) hcomp with hjdef
  have hjρ : j ≫ pr = 𝟙 _ := hpb.lift_fst _ _ _
  have hjπ : j ≫ B'.hom = A₀.hom ≫ spMap (TrivSqZeroExt.fstHom k k k).toRingHom := hpb.lift_snd _ _ _
  have hm : j ≫ π₁ = m₀ := by
    rw [hagr _ j A₀.hom hjπ, ← Category.assoc, hjρ, Category.id_comp]
  have hp : π₁ ≫ P.A.hom = B'.hom ≫ spMap ρ := hπ₁.1.w
  have hW : ∀ W : P.A.left.Opens, pr ⁻¹ᵁ (m₀ ⁻¹ᵁ W) = π₁ ⁻¹ᵁ W := fun W =>
    (GlobalTheory.T.preimage_eq_of_agree_on_closedFibre_dualNumbers k _ _ B'.hom π₁ (pr ≫ m₀) hagr W).symm
  have hdec := GlobalTheory.T.existsUnique_add_eps_mul_on_dualNumber_thickening k A₀.left B'.left A₀.hom B'.hom pr hpb
  have uniq : ∀ (O : A₀.left.Opens) (a b a' b' : Γ(A₀.left, O)),
      (pr.app O).hom a + constFn B'.hom _ DualNumber.eps * (pr.app O).hom b =
        (pr.app O).hom a' + constFn B'.hom _ DualNumber.eps * (pr.app O).hom b' → b = b' := fun O a b a' b' h =>
    congrArg Prod.snd ((hdec O ((pr.app O).hom a + constFn B'.hom _ DualNumber.eps * (pr.app O).hom b)).unique
      (y₁ := (a, b)) (y₂ := (a', b')) rfl h)
  have ex : ∀ (W : P.A.left.Opens) (f : Γ(P.A.left, W)), ∃ b : Γ(A₀.left, m₀ ⁻¹ᵁ W),
      (π₁.appLE W _ (hW W).le).hom f = (pr.app _).hom ((m₀.app W).hom f) +
        constFn B'.hom _ DualNumber.eps * (pr.app _).hom b := by
    intro W f
    obtain ⟨⟨a, b⟩, hab, -⟩ := hdec (m₀ ⁻¹ᵁ W) ((π₁.appLE W _ (hW W).le).hom f)
    refine ⟨b, ?_⟩
    have hle : m₀ ⁻¹ᵁ W ≤ j ⁻¹ᵁ (pr ⁻¹ᵁ (m₀ ⁻¹ᵁ W)) := by
      rw [← Scheme.Hom.comp_preimage, hjρ]; exact le_rfl
    have h1 := congrArg (j.appLE _ _ hle).hom hab
    rw [map_add (f := _), map_mul, _root_.GlobalTheory.KS.EpsDer.pull_const _ j B'.hom A₀.hom hjπ, _root_.GlobalTheory.KS.EpsDer.pull_pull j π₁ m₀ hm _ _ le_rfl] at h1
    have h2 : (j.appLE _ _ hle).hom ((pr.app (m₀ ⁻¹ᵁ W)).hom a) = a := by
      rw [Scheme.Hom.app_eq_appLE]
      exact (_root_.GlobalTheory.KS.EpsDer.pull_pull j pr (𝟙 _) hjρ (U := m₀ ⁻¹ᵁ W) (W := m₀ ⁻¹ᵁ W) le_rfl hle le_rfl a).trans (_root_.GlobalTheory.KS.EpsDer.id_pull _ a)
    have h3 : constFn A₀.hom (m₀ ⁻¹ᵁ W) ((TrivSqZeroExt.fstHom k k k).toRingHom DualNumber.eps) = 0 := by
      have : (TrivSqZeroExt.fstHom k k k).toRingHom DualNumber.eps = 0 := by simp
      rw [this, const_eq, map_zero]
    have h4 : (m₀.app W).hom f = a := by
      rw [Scheme.Hom.app_eq_appLE]
      refine h1.trans ?_
      rw [h3, zero_mul, add_zero]
      exact h2
    rw [h4]
    exact hab
  choose d hd using ex
  have hee : ∀ O : B'.left.Opens, constFn B'.hom O DualNumber.eps * constFn B'.hom O DualNumber.eps = 0 := fun O => by
    rw [const_eq, ← map_mul, DualNumber.eps_mul_eps, map_zero]
  refine ⟨d, ⟨fun W _ f f' => ?_, fun W _ f f' => ?_, fun W W' h _ f => ?_, fun W _ r => ?_⟩, ?_⟩
  · refine uniq _ ((m₀.app W).hom (f + f')) _ ((m₀.app W).hom (f + f')) _ ?_
    rw [← hd, map_add (f := _), hd, hd]
    simp only [map_add (f := _)]
    ring
  · refine uniq _ ((m₀.app W).hom (f * f')) _ ((m₀.app W).hom (f * f')) _ ?_
    rw [← hd, map_mul, hd, hd]
    simp only [map_add (f := _), map_mul]
    linear_combination (pr.app _).hom (d W f) * (pr.app _).hom (d W f') * hee _
  · have h0 : m₀ ⁻¹ᵁ W' ≤ m₀ ⁻¹ᵁ W := fun _ hy => h hy
    rw [show rsT (d W f) (m₀ ⁻¹ᵁ W') = resG _ h0 (d W f) from dif_pos h0]
    refine uniq _ ((m₀.app W').hom (resG _ h f)) _ ((m₀.app W').hom (resG _ h f)) _ ?_
    have h0' : pr ⁻¹ᵁ (m₀ ⁻¹ᵁ W') ≤ pr ⁻¹ᵁ (m₀ ⁻¹ᵁ W) := fun _ hy => h hy
    have h1 := congrArg (resG _ h0') (hd W f)
    rw [res_pull, map_add (f := _), map_mul, _root_.GlobalTheory.KS.EpsDer.res_const] at h1
    rw [← hd, _root_.GlobalTheory.KS.EpsDer.pull_res]
    refine h1.trans ?_
    rw [_root_.GlobalTheory.KS.DerMor.res_app m₀ h f]
    exact congrArg₂ (· + ·) (_root_.GlobalTheory.KS.DerMor.res_app pr h0 _).symm (congrArg (_ * ·) (_root_.GlobalTheory.KS.DerMor.res_app pr h0 _).symm)
  · refine uniq _ ((m₀.app W).hom (constFn P.A.hom W r)) _ (constFn A₀.hom _ (ρ r).fst) _ ?_
    rw [← hd, _root_.GlobalTheory.KS.EpsDer.pull_const ρ π₁ P.A.hom B'.hom hp, Scheme.Hom.app_eq_appLE, _root_.GlobalTheory.KS.EpsDer.pull_const _ pr A₀.hom B'.hom hpb.w,
      _root_.GlobalTheory.KS.EpsDer.pull_const _ pr A₀.hom B'.hom hpb.w]
    simp only [const_eq]
    rw [← map_mul, ← map_add (f := _)]
    exact congrArg _ (dual_decomp _)
  · intro W f
    show pbT π₁ f (pr ⁻¹ᵁ (m₀ ⁻¹ᵁ W)) = pbT (pr ≫ m₀) f (pr ⁻¹ᵁ (m₀ ⁻¹ᵁ W)) +
      constFn B'.hom (pr ⁻¹ᵁ (m₀ ⁻¹ᵁ W)) DualNumber.eps * pbT pr (d W f) (pr ⁻¹ᵁ (m₀ ⁻¹ᵁ W))
    unfold pbT
    rw [dif_pos (hW W).le, dif_pos le_rfl, dif_pos (show pr ⁻¹ᵁ (m₀ ⁻¹ᵁ W) ≤ (pr ≫ m₀) ⁻¹ᵁ W from le_rfl), hd W f, Scheme.Hom.app_eq_appLE, Scheme.Hom.app_eq_appLE,
      _root_.GlobalTheory.KS.EpsDer.pull_pull pr m₀ (pr ≫ m₀) rfl]

end
