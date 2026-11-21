import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsIsHodgeFrameIff
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsStableOfNoBoundary

set_option autoImplicit false

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.PullbackSections Formalism.BasicNotions Formalism.L2.Pj GlobalTheory.CxPts GlobalTheory.Toroidal GlobalTheory.LieMet
open GlobalTheory.Cartier GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.ShFam.Pad

namespace GlobalTheory.ShFam.GalCarry

attribute [local instance] Over.cartesianMonoidalCategory

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}
  {l : Level H} {Xo : Moduli Dw l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F}

structure Tw (Z : Model Xo c β) : Type where

  s : E ≃ₐ[ℚ] E

  σ : 𝓞 E ≃+* 𝓞 E
  coe_σ : ∀ a : 𝓞 E, ((σ a : 𝓞 E) : E) = s a
  w0 : σ H.w0 = H.w0

  r : Xo.XF c ≅ Xo.XF c
  r_snd : r.hom ≫ pullback.snd _ _ = pullback.snd _ _

  ν : TwMap σ Z.oF.t Z.oF.t r.hom

  ρ : Z.X ≅ Z.X

  mu : TwMap σ Z.t Z.t ρ.hom
  specializationMap_comp_universalSection : ρ.hom ≫ Z.s = Z.s
  j_ρ : Z.j ≫ ρ.hom = r.hom ≫ Z.j
  m_mu : Z.m.φ ≫ mu.cm.F = ν.cm.F ≫ Z.m.φ

namespace Tw

variable {Z : Model Xo c β} (T : Tw Z)

def g : gen Z ≅ gen Z where
  hom := pullback.lift (genι Z ≫ T.ρ.hom) (genStr Z) (by rw [Category.assoc, T.specializationMap_comp_universalSection, pullback.condition])
  inv := pullback.lift (genι Z ≫ T.ρ.inv) (genStr Z) (by
    rw [Category.assoc, (Iso.inv_comp_eq _).2 T.specializationMap_comp_universalSection.symm, pullback.condition])
  hom_inv_id := pullback.hom_ext
    (by rw [Category.assoc, pullback.lift_fst, pullback.lift_fst_assoc, Category.assoc, Iso.hom_inv_id]; simp)
    (by rw [Category.assoc, pullback.lift_snd, pullback.lift_snd, Category.id_comp])
  inv_hom_id := pullback.hom_ext
    (by rw [Category.assoc, pullback.lift_fst, pullback.lift_fst_assoc, Category.assoc, Iso.inv_hom_id]; simp)
    (by rw [Category.assoc, pullback.lift_snd, pullback.lift_snd, Category.id_comp])

theorem g_ι : T.g.hom ≫ genι Z = genι Z ≫ T.ρ.hom := pullback.lift_fst _ _ _

theorem g_str : T.g.hom ≫ genStr Z = genStr Z := pullback.lift_snd _ _ _

theorem jQ_g : Z.jQ ≫ T.g.hom = T.r.hom ≫ Z.jQ :=
  pullback.hom_ext (by rw [Category.assoc, Category.assoc, T.g_ι, ← Category.assoc]; exact T.j_ρ)
    (by rw [Category.assoc, Category.assoc, T.g_str, Z.jQ_over, T.r_snd])

theorem mem_genBd (x : gen Z) : T.g.hom x ∈ genBd Z ↔ x ∈ genBd Z := by
  refine not_congr ⟨?_, ?_⟩
  · rintro ⟨z, hz⟩
    refine ⟨T.r.inv z, ?_⟩
    have h1 : T.r.inv ≫ Z.jQ = Z.jQ ≫ T.g.inv := by
      rw [Iso.inv_comp_eq, ← Category.assoc, ← T.jQ_g, Category.assoc, Iso.hom_inv_id, Category.comp_id]
    rw [← Scheme.Hom.comp_apply, h1, Scheme.Hom.comp_apply, hz, ← Scheme.Hom.comp_apply, Iso.hom_inv_id]
    rfl
  · rintro ⟨z, rfl⟩
    exact ⟨T.r.hom z, by rw [← Scheme.Hom.comp_apply, ← T.jQ_g, Scheme.Hom.comp_apply]⟩

def sab : SABMap Z.t (GlobalTheory.FiniteStable.twist T.σ T.w0 Z.t) T.ρ.hom :=
  ⟨T.mu.cm, T.mu.cart, T.mu.base, T.mu.act, T.mu.lin⟩

theorem s_rt : T.s (H.rt : E) = H.rt := by
  have h := congrArg T.σ H.two_weight_eq_one_add_root
  rw [map_mul, map_ofNat, T.w0, H.two_weight_eq_one_add_root, map_add, map_one] at h
  rw [← T.coe_σ, ← add_left_cancel h]

abbrev emb (τ : E →+* ℂ) : E →+* ℂ := τ.comp (T.s : E →+* E)

def embEquiv : (E →+* ℂ) ≃ (E →+* ℂ) where
  toFun := T.emb
  invFun τ := τ.comp (T.s.symm : E →+* E)
  left_inv τ := RingHom.ext fun a => by simp
  right_inv τ := RingHom.ext fun a => by simp

theorem emb_rt (τ : E →+* ℂ) : T.emb τ (H.rt : E) = τ (H.rt : E) := congrArg τ T.s_rt

theorem mult_emb (τ : E →+* ℂ) : Dw.mult τ = Dw.mult (T.emb τ) := by
  unfold Datum.mult
  rw [T.emb_rt]

abbrev ix {τ : E →+* ℂ} (i : Fin (Dw.mult τ)) : Fin (Dw.mult (T.emb τ)) := Fin.cast (T.mult_emb τ) i

def letter : Letter Dw ≃ Letter Dw :=
  Equiv.sigmaCongr T.embEquiv fun τ => finCongr (T.mult_emb τ)

theorem letter_mk (τ : E →+* ℂ) (i : Fin (Dw.mult τ)) : T.letter ⟨τ, i⟩ = ⟨T.emb τ, T.ix i⟩ := rfl

def sym (a : Sym E) : Sym E := (a.1, a.2.1, Sum.map (fun p => (T.emb p.1, p.2)) id a.2.2)

section Frames

variable {R : Type} [CommRing R] {φ φ' : c.F →+* R} {x x' : Sp R ⟶ Z.X}

def Push (f : EigFrame Z φ x) (f' : EigFrame Z φ' x') : Prop :=
  φ' = φ ∧ x' = x ≫ T.ρ.hom ∧ ∀ τ i, f'.v τ i = f.v (T.emb τ) (T.ix i) ≫ T.mu.cm.F

def lie (hx : x ≫ T.ρ.hom = x') : TanM x Z.t.G ≃ₗ[R] TanM x' Z.t.G := pushE T.sab x hx

theorem left_lie (hx : x ≫ T.ρ.hom = x') (v : TanM x Z.t.G) : (tv (T.lie hx v)).left = (tv v).left ≫ T.mu.cm.F := rfl

theorem Push.map {T : Tw Z} {f : EigFrame Z φ x} {f' : EigFrame Z φ' x'} (h : T.Push f f') {R' : Type} [CommRing R']
    {ψ : R →+* R'} {χ χ' : c.F →+* R'} {y y' : Sp R' ⟶ Z.X} {g : EigFrame Z χ y} {g' : EigFrame Z χ' y'}
    (hg : f.IsMap ψ g) (hg' : f'.IsMap ψ g') (hχ : χ' = χ) (hy : y' = y ≫ T.ρ.hom) : T.Push g g' :=
  ⟨hχ, hy, fun τ i => by rw [hg', hg, h.2.2, Category.assoc]⟩

end Frames

variable {σ : c.F →+* ℂ}

def pt (y : CxPts (genStr Z) σ) : CxPts (genStr Z) σ := ⟨y.1 ≫ T.g.hom, by rw [Category.assoc, T.g_str, y.2]⟩

variable {F : Type} [Field F] {e : F ≃+* c.F} (C C' : FlagCpt Z e)

variable (φ : C.Y.X ≅ C'.Y.X) (ψ : C'.Y.Fn →+* C.Y.Fn) (t₀ : ∀ τ : E →+* ℂ, Fin (Dw.mult τ) → C.Y.Fnˣ)

end Tw

end GlobalTheory.ShFam.GalCarry
