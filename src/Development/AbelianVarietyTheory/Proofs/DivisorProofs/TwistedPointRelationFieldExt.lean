import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpecializationMapCompUniversalSection

open AlgebraicGeometry CategoryTheory NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.L2.Pj GlobalTheory.CxPts
  GlobalTheory.Toroidal GlobalTheory.Cartier GlobalTheory.ProjVar GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.ShFam.GalCarry

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.GalCarryBC

attribute [local instance] Over.cartesianMonoidalCategory

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}
  {l : Level H} {Xo : Moduli Dw l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F} {Z : Model Xo c β}

theorem carries_map {F : Type} [Field F] {e : F ≃+* c.F} (C : FlagCpt Z e) {K K' : Type} [Field K] [Field K']
    (ν : K →+* K') {χ : c.F →+* K} {x : Sp K ⟶ Z.X} {p : Sp K ⟶ C.Y.X} {f : EigFrame Z χ x} {χ' : c.F →+* K'}
    {x' : Sp K' ⟶ Z.X} {g : EigFrame Z χ' x'} (hc : C.Carries p f) (hg : f.IsMap ν g) (hχ : χ' = ν.comp χ)
    (hx : x' = spMap ν ≫ x) : C.Carries (spMap ν ≫ p) g := by
  obtain ⟨y, ψ, φ₁, f₀, t, t', hp, h1, h2⟩ := hc
  refine ⟨y, ν.comp ψ, φ₁, f₀, t, fun τ i => Units.map (ν : K →* K') (t' τ i), ?_, h1, ?_, ?_, fun τ i => ?_⟩
  · rw [hp, ← Category.assoc, ← ReciprocityTheory.ChartRestriction.G.Geo.Tor.spMap_comp]
  · rw [hx, h2.1, ← Category.assoc, ← ReciprocityTheory.ChartRestriction.G.Geo.Tor.spMap_comp]
  · rw [hχ, h2.2.1]
    rfl
  · obtain ⟨cf, hc1, hc2, hc3⟩ := h2.2.2 τ i
    refine ⟨fun k => ν (cf k), by show ν (cf i) = _; rw [hc1]; rfl, fun k hk => by show ν (cf k) = 0; rw [hc2 k hk, map_zero], ?_⟩
    have h := GlobalTheory.GradedPieces.comb_map ν hx.symm hc3
    rw [hg τ i]
    simpa only [GlobalTheory.GradedPieces.dual_comp] using h

end GlobalTheory.GalCarryBC

namespace GlobalTheory

end GlobalTheory
