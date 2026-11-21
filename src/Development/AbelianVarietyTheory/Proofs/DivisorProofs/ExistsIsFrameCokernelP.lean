import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockUniOne
import Development.AbelianVarietyTheory.Definitions.Divisors.IsTorsionFreeOfForallExists

set_option autoImplicit false

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry
open GlobalTheory GlobalTheory.VB GlobalTheory.LieFilt
open GlobalTheory.Twist (resM resM_resM resM_self resM_smul app_resM germ_resM)
open scoped Classical

namespace GlobalTheory.GrFilt

variable {X : Scheme.{0}} [IsIntegral X] {ι : Type} [Fintype ι] {L : X.Modules} {E E' : ι → X.Modules} {r : ι → ℕ}

def genSpan (o : ι → ℕ) (T : ∀ a, E a ⟶ L) (k : ℕ) : Submodule X.functionField (genStalk L) :=
  Submodule.span X.functionField {v | ∃ a, o a < k ∧ ∃ (V : X.Opens) (h : genericPoint X ∈ V) (s : Γ(E a, V)),
    L.presheaf.germ V _ h ((T a).app V s) = v}

def filtSub (o : ι → ℕ) (T : ∀ a, E a ⟶ L) (k : ℕ) : Sub L := Sub.ofGeneric (genSpan o T k)

def AdaptedAt (o : ι → ℕ) (T : ∀ a, E a ⟶ L) (u : ∀ a, E a ⟶ E' a) {V : X.Opens} (f : ∀ a, Fin (r a) → Γ(E a, V))
    (f' : ∀ a, Fin (r a) → Γ(E' a, V)) (hf' : ∀ a, IsFrame (f' a)) (c : (Σ a, Fin (r a)) → Γ(L, V))
    (hc : IsFrame c) : Prop :=
  ∀ a i, (∀ z : Σ a, Fin (r a), o a < o z.1 → (hc.basis le_rfl).repr ((T a).app V (f a i)) z = 0) ∧
    ∀ j, (hc.basis le_rfl).repr ((T a).app V (f a i)) ⟨a, j⟩ = ((hf' a).basis le_rfl).repr ((u a).app V (f a i)) j

theorem locAdapted_iff (o : ι → ℕ) (T : ∀ a, E a ⟶ L) (u : ∀ a, E a ⟶ E' a) (V : X.Opens) :
    LocAdapted r o T u V ↔ ∃ (f : ∀ a, Fin (r a) → Γ(E a, V)) (_ : ∀ a, IsFrame (f a)) (f' : ∀ a, Fin (r a) → Γ(E' a, V))
      (hf' : ∀ a, IsFrame (f' a)) (c : (Σ a, Fin (r a)) → Γ(L, V)) (hc : IsFrame c), AdaptedAt o T u f f' hf' c hc :=
  Iff.rfl

theorem genSpan_mono (o : ι → ℕ) (T : ∀ a, E a ⟶ L) {k l : ℕ} (h : k ≤ l) : genSpan o T k ≤ genSpan o T l :=
  Submodule.span_mono fun _ ⟨a, ha, rest⟩ => ⟨a, lt_of_lt_of_le ha h, rest⟩

theorem app_mem_filtSub (o : ι → ℕ) (T : ∀ a, E a ⟶ L) (a : ι) {k : ℕ} (hk : o a < k) (V : X.Opens) (s : Γ(E a, V)) :
    (T a).app V s ∈ (filtSub o T k).sec V :=
  fun h => Submodule.subset_span ⟨a, hk, V, h, s, rfl⟩

def stepMap (o : ι → ℕ) (T : ∀ a, E a ⟶ L) (k : ℕ) : (filtSub o T k).toMod ⟶ (filtSub o T (k + 1)).toMod :=
  (filtSub o T (k + 1)).lift (filtSub o T k).incl fun V s h =>
    genSpan_mono o T (Nat.le_succ k) ((filtSub o T k).incl_app_mem s h)

@[reassoc (attr := simp)] theorem stepMap_incl (o : ι → ℕ) (T : ∀ a, E a ⟶ L) (k : ℕ) :
    stepMap o T k ≫ (filtSub o T (k + 1)).incl = (filtSub o T k).incl := rfl

def liftT (o : ι → ℕ) (T : ∀ a, E a ⟶ L) (a : ι) : E a ⟶ (filtSub o T (o a + 1)).toMod :=
  (filtSub o T (o a + 1)).lift (T a) fun V s => app_mem_filtSub o T a (Nat.lt_succ_self _) V s

@[reassoc (attr := simp)] theorem liftT_incl (o : ι → ℕ) (T : ∀ a, E a ⟶ L) (a : ι) :
    liftT o T a ≫ (filtSub o T (o a + 1)).incl = T a := rfl

end GlobalTheory.GrFilt

namespace GlobalTheory.GrFilt

end GlobalTheory.GrFilt

namespace GlobalTheory.GrFilt

end GlobalTheory.GrFilt

end
