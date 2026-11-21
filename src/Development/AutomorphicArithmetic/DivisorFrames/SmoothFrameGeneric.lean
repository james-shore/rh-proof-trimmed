import Mathlib
import Development.AutomorphicArithmetic.LocalEmbeddings.ExistsIsMapToFn
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFlagBundleIff
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.DualGramInterpGram
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsAffineEigenframeFlag
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsLocalEquationComplexPoints
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.EqOfIsometricTrivShift
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsUniqueLiesUnder
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.FlatBCSec
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineOpenPreimageOfIsPullback
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsConjFsBasisOfUnitary

open CategoryTheory AlgebraicGeometry NumberField IsDedekindDomain Matrix
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.L2.Pj
open GlobalTheory GlobalTheory.VB GlobalTheory.TangentOrigin GlobalTheory.Toroidal GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.TrueGeo GlobalTheory.ProjVar GlobalTheory.LineNorm GlobalTheory.BcLie GlobalTheory.CovTest GlobalTheory.Mean4O GlobalTheory.Cartier GlobalTheory.TrueCx
open scoped ComplexOrder

open GlobalTheory.CxPts Filter Topology
open scoped ContDiff

private theorem spread {X : Scheme.{0}} {ι : Type} [Finite ι] {y : X} (t : ι → X.presheaf.stalk y) (W : X.Opens)
    (hW : y ∈ W) : ∃ (U : X.Opens) (hy : y ∈ U) (s : ι → Γ(X, U)), U ≤ W ∧ ∀ i, X.presheaf.germ U y hy (s i) = t i := by
  choose V hV s hs using fun i => X.presheaf.exists_germ_eq (t i)
  let U₀ : X.Opens := ⟨⋂ i, (V i : Set X), isOpen_iInter_of_finite fun i => (V i).isOpen⟩
  have h₀ : ∀ i, W ⊓ U₀ ≤ V i := fun i x hx => Set.mem_iInter.1 hx.2 i
  refine ⟨W ⊓ U₀, ⟨hW, Set.mem_iInter.2 hV⟩, fun i => X.presheaf.map (homOfLE (h₀ i)).op (s i), inf_le_left, fun i => ?_⟩
  rw [← hs i]
  exact TopCat.Presheaf.germ_res_apply _ _ _ _ _

section
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}
  {l : Level H} {Xo : Moduli Dw l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F}
  {Z : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Model Xo c β} {F : Type} [Field F] {e : F ≃+* c.F} {Y : Var F}
  {ρ : Y.X ⟶ gen Z}

private theorem exists_nhds (hρ : ρ ≫ genStr Z ≫ spMap e.toRingHom = Y.str) (g₀ : GenFrame e ρ) (τ : E →+* ℂ)
    (P : Matrix (Fin (Dw.mult τ)) (Fin (Dw.mult τ)) Y.Fn) (W : Y.X.Opens)
    (hP : ∀ y ∈ W, ∃ φ f, Fits g₀ τ y φ f P) (y : Y.X) (hy : y ∈ W) :
    ∃ (U : Y.X.Opens) (V : (gen Z).affineOpens) (φ₀ : c.F →+* Γ(gen Z, V.1))
      (Fr : EigFrame Z φ₀ (LogKS.chart V ≫ genι Z)) (Q : Matrix (Fin (Dw.mult τ)) (Fin (Dw.mult τ)) Γ(Y.X, U)),
      y ∈ U ∧ U ≤ W ∧ U ≤ ρ ⁻¹ᵁ V.1 ∧ LogKS.chart V ≫ genStr Z = spMap φ₀ ∧
      ∀ (σ : F →+* ℂ) (p : Pts Y σ) (hp : p ∈ ptsIn Y.str σ U) (yc : CxPts (genStr Z) (embOf e σ))
        (hv : yc ∈ ptsIn (genStr Z) _ V.1), yc.1 = p.1 ≫ ρ →
        ∃ (φ : c.F →+* Y.X.presheaf.stalk (Var.base p)) (f : StalkFrame ρ (Var.base p) φ)
          (g f₀ : EigFrame Z (embOf e σ) (yc.1 ≫ genι Z)), Fits g₀ τ (Var.base p) φ f P ∧
          f.IsMap (Var.evStalk p) g ∧ Fr.IsMap (evHom hv) f₀ ∧ f₀.co g τ = Q.map (evHom hp) := by
  obtain ⟨V₀, hV₀, φ₀, Fr₀, hy₀, hs₀, -⟩ := EigSpread.exists_stable_eigFrame E H Dw l Xo c O β Z (ρ y)
  let ι₀ : Sp Γ(gen Z, V₀) ⟶ gen Z := hV₀.fromSpec
  have inj : ∀ {R : Type} [CommRing R] {a b : Γ(gen Z, V₀) →+* R}, spMap a ≫ ι₀ = spMap b ≫ ι₀ → a = b :=
    fun h => EigLoc.spMap_inj ((cancel_mono hV₀.fromSpec).1 h)
  let gm : ∀ y' : Y.X, ρ y' ∈ V₀ → (Γ(gen Z, V₀) →+* Y.X.presheaf.stalk y') := fun y' h =>
    (ρ.stalkMap y').hom.comp ((gen Z).presheaf.germ V₀ (ρ y') h).hom
  have hgm : ∀ y' h, spMap (gm y' h) ≫ ι₀ = stalkPt Y y' ≫ ρ := fun y' h => by
    rw [← spMap_comp_spMap, Category.assoc, Spread.spMap_germ hV₀ h]
    exact Scheme.SpecMap_stalkMap_fromSpecStalk ρ
  have hκ : ∀ y' h, spMap ((toFn y').comp (gm y' h)) ≫ ι₀ = genericPt Y ≫ ρ := fun y' h => by
    rw [← spMap_comp_spMap, Category.assoc, hgm, ← Category.assoc, spMap_toFn]
  have h2 : spMap e.toRingHom ≫ spMap e.symm.toRingHom = 𝟙 _ := by
    refine (Spec.map_comp _ _).symm.trans ((congrArg Spec.map ?_).trans (Spec.map_id _))
    exact CommRingCat.hom_ext (RingHom.ext fun a => e.apply_symm_apply a)
  have hc : ∀ y' h, constF e Y = (toFn y').comp ((gm y' h).comp φ₀) := fun y' h => EigLoc.spMap_inj (by
    have h1 : genericPt Y ≫ Y.str = spMap (algebraMap F Y.Fn) := (GlobalTheory.FlagBundle.ratOf Y).pt_s
    have h4 : spMap (constF e Y) = spMap (algebraMap F Y.Fn) ≫ spMap e.symm.toRingHom := by rw [← Spec.map_comp]; rfl
    rw [← RingHom.comp_assoc, ← spMap_comp_spMap φ₀, ← hs₀, ← Category.assoc, hκ, h4, ← h1, ← hρ]
    simp only [Category.assoc, h2, Category.comp_id])
  have hx : ∀ y' h, stalkPt Y y' ≫ ρ ≫ genι Z = spMap (gm y' h) ≫ ι₀ ≫ genι Z := fun y' h => by
    rw [← Category.assoc, ← hgm, Category.assoc]
  choose Fy hFy using fun y' (h : ρ y' ∈ V₀) => Fr₀.exists_isMap (gm y' h) rfl (hx y' h)
  obtain ⟨F', hF'⟩ := exists_isMap_toFn (e := e) (Fy y hy₀) (hc y hy₀)
  have hfit : ∀ y' h, Fits g₀ τ y' _ (Fy y' h) (g₀.co F' τ) := fun y' h =>
    (fits_iff (hc y' h) (fun τ' i => by
      rw [hF' τ' i, hFy y hy₀ τ' i, hFy y' h τ' i, GradedPieces.dual_comp, GradedPieces.dual_comp,
        inj ((hκ y hy₀).trans (hκ y' h).symm)])).2 rfl
  obtain ⟨φ, f, hf⟩ := hP y hy
  obtain rfl := hf.φ_eq (hfit y hy₀)
  obtain ⟨U, hU, s, hle, hs⟩ := spread (ι := Fin (Dw.mult τ) × Fin (Dw.mult τ))
    (fun a => (Fy y hy₀).co f τ a.1 a.2) (W ⊓ ρ ⁻¹ᵁ V₀) ⟨hy, hy₀⟩
  refine ⟨U, ⟨V₀, hV₀⟩, φ₀, Fr₀, of fun a b => s (a, b), hU, hle.trans inf_le_left, hle.trans inf_le_right, hs₀, ?_⟩
  intro σ p hp yc hv hyc
  have hb : Var.base p ∈ U := mem_ptsIn.1 hp
  have hbV : ρ (Var.base p) ∈ V₀ := (hle hb).2
  obtain ⟨φ', f', hf'⟩ := hP _ (hle hb).1
  obtain rfl := hf'.φ_eq (hfit _ hbV)
  have hev : spMap (Var.evStalk p) ≫ stalkPt Y (Var.base p) = p.1 := Scheme.Spec_stalkClosedPointTo_fromSpecStalk p.1
  have hpV : spMap (evHom hv) ≫ ι₀ = yc.1 := Points.specMap_valMap_fromSpec hV₀ yc.1 hv
  have hcomp : (Var.evStalk p).comp (gm _ hbV) = evHom hv := inj (by
    rw [hpV, ← spMap_comp_spMap, Category.assoc, hgm, ← Category.assoc, hev, hyc])
  have hφ : embOf e σ = (Var.evStalk p).comp ((gm _ hbV).comp φ₀) := EigLoc.spMap_inj (yc.2.symm.trans (by
    rw [← RingHom.comp_assoc, hcomp, ← spMap_comp_spMap φ₀, ← hs₀, ← Category.assoc, hpV]))
  have hxp : yc.1 ≫ genι Z = spMap (Var.evStalk p) ≫ stalkPt Y (Var.base p) ≫ ρ ≫ genι Z := by
    rw [← Category.assoc (spMap _), hev, hyc, Category.assoc]
  obtain ⟨g, hg⟩ := f'.exists_isMap (Var.evStalk p) hφ hxp
  obtain ⟨f₀, hf₀⟩ := (Fy _ hbV).exists_isMap (Var.evStalk p) hφ hxp
  refine ⟨_, f', g, f₀, hf', hg, fun τ' i => ?_, ?_⟩
  · rw [hf₀ τ' i, hFy _ hbV τ' i, GradedPieces.dual_comp, hcomp]
  · have e1 : P = g₀.co F' τ * (of fun a b => Y.X.presheaf.germ U _ hb (s (a, b))).map (toFn (Var.base p)) := by
      rw [(hfit y hy₀).eq_mul hf]
      congr 1
      ext a b
      rw [map_apply, map_apply, of_apply, ← hs (a, b)]
      exact (Y.X.presheaf.germ_stalkSpecializes_apply _ _ _).trans (Y.X.presheaf.germ_stalkSpecializes_apply _ _ _).symm
    rw [e1] at hf'
    rw [hf₀.co τ hg hxp, (hfit _ hbV).co_eq hf']
    ext a b
    rw [map_apply, map_apply, of_apply, of_apply, Var.evStalk_germ, ev_eq hp]

end

