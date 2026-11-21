import Mathlib
import Development.AutomorphicArithmetic.LocalEmbeddings.FrameCo
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsFlagFrame
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TriIff

set_option autoImplicit false

noncomputable section

open CategoryTheory AlgebraicGeometry NumberField IsDedekindDomain Matrix
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open GlobalTheory.VB GlobalTheory.TangentOrigin GlobalTheory.Toroidal GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.TrueGeo GlobalTheory.ProjVar GlobalTheory.LineNorm

namespace GlobalTheory.BcLie

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}
  {l : Level H} {Xo : Moduli Dw l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F}
  {Z : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Model Xo c β} {F : Type} [Field F] [NumberField F] {e : F ≃+* c.F} {Y : Var F}
  {ρ : Y.X ⟶ gen Z}

variable (e ρ) in

abbrev GenFrame : Type := EigFrame Z (constF e Y) (genericPt Y ≫ ρ ≫ genι Z)

variable (ρ) in

abbrev StalkFrame (y : Y.X) (φ : c.F →+* Y.X.presheaf.stalk y) : Type := EigFrame Z φ (stalkPt Y y ≫ ρ ≫ genι Z)

abbrev toFn (y : Y.X) : Y.X.presheaf.stalk y →+* Y.Fn := algebraMap (Y.X.presheaf.stalk y) Y.X.functionField

variable (g₀ : GenFrame e ρ) (τ : E →+* ℂ)

def Fits (y : Y.X) (φ : c.F →+* Y.X.presheaf.stalk y) (f : StalkFrame ρ y φ)
    (P : Matrix (Fin (Dw.mult τ)) (Fin (Dw.mult τ)) Y.Fn) : Prop :=
  constF e Y = (toFn y).comp φ ∧ ∀ i, IsCombAtG Z.t (genericPt Y ≫ ρ ≫ genι Z) (g₀.v τ) (fun a => P a i)
    (spMap (dualMap (toFn y)) ≫ f.v τ i)

variable {X : Scheme.{0}} (j : Y.X ⟶ X)

variable {M : X.Modules} (dual : Bool) (A : Chart M (Dw.mult τ) → Matrix (Fin (Dw.mult τ)) (Fin (Dw.mult τ)) Y.Fn)

variable {q : X ⟶ Sp (𝓞 F)} (G : ∀ σ : c.F →+* ℂ, EigMet Z σ) (h : VMetric q M (Dw.mult τ))

variable {g₀ τ}

omit [NumberField F] in
theorem spMap_toFn (y : Y.X) : spMap (toFn y) ≫ stalkPt Y y = genericPt Y :=
  Scheme.SpecMap_stalkSpecializes_fromSpecStalk (genericPoint_specializes y)

omit [NumberField F] in
theorem toFn_injective (y : Y.X) : Function.Injective (toFn y) :=
  IsFractionRing.injective (Y.X.presheaf.stalk y) Y.X.functionField

omit [NumberField F] in

theorem fits_iff {y : Y.X} {φ : c.F →+* Y.X.presheaf.stalk y} {f : StalkFrame ρ y φ} {f' : GenFrame e ρ}
    (hφ : constF e Y = (toFn y).comp φ) (hf : f.IsMap (toFn y) f')
    {P : Matrix (Fin (Dw.mult τ)) (Fin (Dw.mult τ)) Y.Fn} : Fits g₀ τ y φ f P ↔ g₀.co f' τ = P :=
  ⟨fun h => EigFrame.co_eq fun i => by rw [hf τ i]; exact h.2 i, fun h => ⟨hφ, fun i => by
    rw [← hf τ i, ← h]; exact g₀.co_spec f' τ i⟩⟩

omit [NumberField F] in
theorem exists_isMap_toFn {y : Y.X} {φ : c.F →+* Y.X.presheaf.stalk y} (f : StalkFrame ρ y φ)
    (hφ : constF e Y = (toFn y).comp φ) : ∃ f' : GenFrame e ρ, f.IsMap (toFn y) f' :=
  f.exists_isMap _ hφ (by rw [← spMap_toFn y, Category.assoc])

omit [NumberField F] in
theorem Fits.isUnit_det {y : Y.X} {φ : c.F →+* Y.X.presheaf.stalk y} {f : StalkFrame ρ y φ}
    {P : Matrix (Fin (Dw.mult τ)) (Fin (Dw.mult τ)) Y.Fn} (h : Fits g₀ τ y φ f P) : IsUnit P.det := by
  obtain ⟨f', hf⟩ := exists_isMap_toFn (e := e) f h.1
  rw [← (fits_iff h.1 hf).1 h]
  exact g₀.isUnit_det_co f' τ

omit [NumberField F] in
theorem Fits.φ_eq {y : Y.X} {φ φ' : c.F →+* Y.X.presheaf.stalk y} {f : StalkFrame ρ y φ} {f' : StalkFrame ρ y φ'}
    {τ' : E →+* ℂ} {P : Matrix (Fin (Dw.mult τ)) (Fin (Dw.mult τ)) Y.Fn}
    {P' : Matrix (Fin (Dw.mult τ')) (Fin (Dw.mult τ')) Y.Fn} (h : Fits g₀ τ y φ f P) (h' : Fits g₀ τ' y φ' f' P') :
    φ = φ' :=
  RingHom.ext fun a => toFn_injective y ((RingHom.congr_fun h.1 a).symm.trans (RingHom.congr_fun h'.1 a))

omit [NumberField F] in

theorem Fits.eq_mul {y : Y.X} {φ : c.F →+* Y.X.presheaf.stalk y} {f f' : StalkFrame ρ y φ}
    {P P' : Matrix (Fin (Dw.mult τ)) (Fin (Dw.mult τ)) Y.Fn} (h : Fits g₀ τ y φ f P) (h' : Fits g₀ τ y φ f' P') :
    P' = P * (f.co f' τ).map (toFn y) := by
  obtain ⟨k, hk⟩ := exists_isMap_toFn (e := e) f h.1
  obtain ⟨k', hk'⟩ := exists_isMap_toFn (e := e) f' h.1
  rw [← (fits_iff h.1 hk).1 h, ← (fits_iff h.1 hk').1 h', ← hk.co τ hk' (by rw [← spMap_toFn y, Category.assoc]),
    EigFrame.co_mul]

omit [NumberField F] in

theorem Fits.co_eq {y : Y.X} {φ : c.F →+* Y.X.presheaf.stalk y} {f f' : StalkFrame ρ y φ}
    {P : Matrix (Fin (Dw.mult τ)) (Fin (Dw.mult τ)) Y.Fn} {T : Matrix _ _ (Y.X.presheaf.stalk y)}
    (h : Fits g₀ τ y φ f P) (h' : Fits g₀ τ y φ f' (P * T.map (toFn y))) : f.co f' τ = T := by
  have := h.eq_mul h'
  rw [((isUnit_iff_isUnit_det _).2 h.isUnit_det).mul_right_inj] at this
  exact (Matrix.map_injective (toFn_injective y) this).symm

omit [NumberField F] in
theorem stalk_le {y : Y.X} {U : X.Opens} (h : j y ∈ U) : ⊤ ≤ (stalkPt Y y ≫ j) ⁻¹ᵁ U := fun p _ => by
  have h₁ : stalkPt Y y p ∈ Set.range (Y.X.fromSpecStalk y) := ⟨p, rfl⟩
  rw [Scheme.range_fromSpecStalk] at h₁
  exact (Specializes.map h₁ j.continuous).mem_open U.isOpen h

omit [NumberField F] in
theorem gen_le {y : Y.X} {U : X.Opens} (h : j y ∈ U) : ⊤ ≤ (genericPt Y ≫ j) ⁻¹ᵁ U := by
  rw [← spMap_toFn y, Category.assoc]
  exact fun p _ => stalk_le j h (x := spMap (toFn y) p) trivial

variable {j dual A}

end GlobalTheory.BcLie

end
