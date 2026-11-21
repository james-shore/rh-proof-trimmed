import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.PoincareDeRhamDuality
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.ZeroSectionBase
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDeRhamSheafIffAlt
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ConjugateFiltration
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAbelianSchemeOnAff

set_option autoImplicit false

noncomputable section

open CategoryTheory AlgebraicGeometry Limits ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
  GlobalTheory.DeRham GlobalTheory.DeRhamSheaf TensorProduct

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.ConjSeq.RankConj

open GlobalTheory.Published.AbelianDeRham (bcMor)

section Algebra

variable {R R' : Type} [CommRing R] [CommRing R'] [Algebra R R'] {M M' : Type*} [AddCommGroup M]
  [Module R M] [AddCommGroup M'] [Module R' M'] (f : M →ₛₗ[algebraMap R R'] M') (P : Submodule R M)

def bcSub : R' ⊗[R] P →ₗ[R'] M' := liftSemi (f.comp P.subtype)

theorem bcSub_tmul (x : R') (y : P) : bcSub f P (x ⊗ₜ y) = x • f y := rfl

theorem bcSub_eq : bcSub f P = liftSemi f ∘ₗ P.subtype.baseChange R' := by
  refine LinearMap.ext fun z => ?_
  induction z using TensorProduct.induction_on with
  | zero => simp
  | tmul x y => rw [LinearMap.comp_apply, LinearMap.baseChange_tmul, bcSub_tmul, liftSemi_tmul]; rfl
  | add a b ha hb => rw [map_add, map_add, ha, hb]

variable {f P}

theorem bcSub_injective (hf : Function.Bijective (liftSemi f)) {N : Submodule R M} (h : IsCompl P N) :
    Function.Injective (bcSub f P) := by
  rw [bcSub_eq]
  refine hf.1.comp fun a b hab => ?_
  have hid : Submodule.linearProjOfIsCompl P N h ∘ₗ P.subtype = LinearMap.id :=
    LinearMap.ext fun x => Submodule.linearProjOfIsCompl_apply_left h x
  have := congrArg ((Submodule.linearProjOfIsCompl P N h).baseChange R') hab
  rwa [← LinearMap.comp_apply, ← LinearMap.comp_apply, ← LinearMap.baseChange_comp,
    hid, LinearMap.baseChange_id, LinearMap.id_apply, LinearMap.id_apply] at this

variable (f P)

theorem range_bcSub : LinearMap.range (bcSub f P) = Submodule.span R' (f '' P) := by
  apply le_antisymm
  · rintro _ ⟨z, rfl⟩
    induction z using TensorProduct.induction_on with
    | zero => simp
    | tmul x y =>
      rw [bcSub_tmul]
      exact (Submodule.span R' _).smul_mem x (Submodule.subset_span ⟨y, y.2, rfl⟩)
    | add a b ha hb => rw [map_add]; exact add_mem ha hb
  · rw [Submodule.span_le]
    rintro _ ⟨y, hy, rfl⟩
    exact ⟨1 ⊗ₜ ⟨y, hy⟩, by rw [bcSub_tmul, one_smul]⟩

variable {f P}

def bcSubEquiv (hf : Function.Bijective (liftSemi f)) {N : Submodule R M} (h : IsCompl P N) :
    R' ⊗[R] P ≃ₗ[R'] Submodule.span R' (f '' P) :=
  (LinearEquiv.ofInjective _ (bcSub_injective hf h)).trans (LinearEquiv.ofEq _ _ (range_bcSub f P))

theorem bcSubEquiv_apply (hf : Function.Bijective (liftSemi f)) {N : Submodule R M} (h : IsCompl P N)
    (z : R' ⊗[R] P) : (bcSubEquiv hf h z : M') = bcSub f P z := rfl

end Algebra

variable (p : ℕ) [Fact p.Prime]

section Sheaf

variable {p} {T : Scheme.{0}} (hT : (p : Γ(T, ⊤)) = 0) (A : Over T) [GrpObj A] {H : T.Modules}
  (E : ∀ (V : T.Opens) (hV : IsAffineOpen V), Γ(H, V) ≃ₗ[Γ(T, V)] primDR (onAff A hV))
  (C : GlobalTheory.VB.Sub H)
  (hC : ∀ (V : T.Opens) (hV : IsAffineOpen V) (s : Γ(H, V)),
      s ∈ C.sec V ↔ E V hV s ∈ conjDR p Γ(T, V) (GlobalTheory.SS.FrobField.cast_zero hT V) (onAff A hV))

def secEquiv (W : T.Opens) (hW : IsAffineOpen W) :
    Γ(C.toMod, W) ≃ₗ[Γ(T, W)] conjDR p Γ(T, W) (GlobalTheory.SS.FrobField.cast_zero hT W) (onAff A hW) :=
  LinearEquiv.ofBijective
    (((E W hW).toLinearMap ∘ₗ GlobalTheory.QCoh.appLinear C.incl W).codRestrict _
      fun s => (hC W hW _).1 (C.incl_app_mem s))
    ⟨fun s t hst => C.incl_app_injective W ((E W hW).injective (congrArg Subtype.val hst)),
     fun y =>
      have hy : (E W hW).symm y ∈ C.sec W :=
        (hC W hW _).2 (by rw [LinearEquiv.apply_symm_apply]; exact y.2)
      ⟨C.mkSec _ hy, Subtype.ext ((congrArg (E W hW) (C.incl_app_mkSec _ hy)).trans
        ((E W hW).apply_symm_apply _))⟩⟩

theorem secEquiv_apply (W : T.Opens) (hW : IsAffineOpen W) (s : Γ(C.toMod, W)) :
    (secEquiv hT A E C hC W hW s : primDR (onAff A hW)) = E W hW (C.incl.app W s) := rfl

end Sheaf

end GlobalTheory.ConjSeq.RankConj

namespace GlobalTheory.ConjSeq

end GlobalTheory.ConjSeq
