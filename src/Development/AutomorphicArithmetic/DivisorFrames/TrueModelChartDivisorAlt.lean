import Mathlib
import Development.AutomorphicArithmetic.LocalEmbeddings.ExistsIsMapToFn
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFlagBundleIff
import Development.AutomorphicArithmetic.DivisorFrames.ChartFrameDivisor
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FromModelOfLocMax
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IoOfLeOneIff
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsTangent
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverCompOfIsClosedImmersion
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.GrNormPosOfBasis

open CategoryTheory AlgebraicGeometry NumberField IsDedekindDomain Matrix
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.L2.Pj
open GlobalTheory GlobalTheory.VB GlobalTheory.TangentOrigin GlobalTheory.Toroidal GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.TrueGeo GlobalTheory.ProjVar GlobalTheory.LineNorm GlobalTheory.BcLie GlobalTheory.CovTest GlobalTheory.Mean4O GlobalTheory.Cartier GlobalTheory.TrueCx
open scoped ComplexOrder

private theorem lin_key {K : Type} [NormedField K] {m : ℕ} (σ : Fin m → Fin m) (hσ : Function.Surjective σ)
    {R : Matrix (Fin m) (Fin m) K} (hR : IsTri (R.submatrix σ id)) (hd : ∀ a, R (σ a) a ≠ 0) (b : Fin m) :
    IsLeast {r : ℝ | ∃ cf : Fin m → K, cf b ≠ 0 ∧ (∀ k, b < k → cf k = 0) ∧ (∀ j, ‖(R *ᵥ cf) j‖ ≤ 1) ∧ r = ‖cf b‖⁻¹}
      ‖R (σ b) b‖ := by
  have hA : (R.submatrix σ id).BlockTriangular id := fun a i h => hR a i h
  have e (cf : Fin m → K) (j) : (R.submatrix σ id *ᵥ cf) j = (R *ᵥ cf) (σ j) := rfl
  have hdet : IsUnit (R.submatrix σ id).det := by
    rw [det_of_upperTriangular hA]
    exact (Finset.prod_ne_zero_iff.2 fun k _ => hd k).isUnit
  have := invertibleOfIsUnitDet _ hdet
  constructor
  · obtain ⟨e1, -⟩ := Guard.tri_mulVec (blockTriangular_inv_of_blockTriangular hA) (i := b) (cf := Pi.single b 1)
      (fun k hk => Pi.single_eq_of_ne hk.ne' _)
    have e3 : R.submatrix σ id *ᵥ ((R.submatrix σ id)⁻¹ *ᵥ Pi.single b 1) = Pi.single b 1 := by
      rw [mulVec_mulVec, mul_nonsing_inv _ hdet, one_mulVec]
    have e2 := (Guard.tri_mulVec hA e1).2
    rw [e3, Pi.single_eq_same] at e2
    refine ⟨_, right_ne_zero_of_mul_eq_one e2.symm, e1, fun j => ?_, ?_⟩
    · obtain ⟨j, rfl⟩ := hσ j
      rw [← e, e3]
      by_cases h : j = b
      · subst h; simp
      · simp [h]
    · rw [← norm_inv, ← eq_inv_of_mul_eq_one_left e2.symm]; rfl
  · rintro _ ⟨cf, h0, h1, h2, rfl⟩
    have h3 := h2 (σ b)
    rw [← e, (Guard.tri_mulVec hA h1).2, norm_mul] at h3
    rw [← one_div, le_div_iff₀ (norm_pos_iff.2 h0)]
    exact h3

private theorem gr_eq {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E}
    {X : Scheme.{0}} {t : SAB H X} {K : Type} [NontriviallyNormedField K] {x : Sp K ⟶ X}
    {Λ : Set (Sp (DualNumber K) ⟶ t.G.left)} {m : ℕ} {u u' : Fin m → (Sp (DualNumber K) ⟶ t.G.left)}
    (hu : ∀ k, IsTanAtG t x (u k)) (hu' : ∀ k, IsTanAtG t x (u' k))
    (hΛ : ∀ a w, IsCombAtG t x u' a w → (w ∈ Λ ↔ ∀ i, ‖a i‖ ≤ 1))
    (σ : Fin m → Fin m) (hσ : Function.Surjective σ)
    {R : Matrix (Fin m) (Fin m) K} (h : ∀ i, IsCombAtG t x u' (fun j => R j i) (u i))
    (hR : IsTri (R.submatrix σ id)) (hd : ∀ a, R (σ a) a ≠ 0) (b : Fin m) :
    grNorm t x Λ u b = ‖R (σ b) b‖ := by
  rw [← (lin_key σ hσ hR hd b).csInf_eq, grNorm]
  congr 1
  ext r
  refine exists_congr fun cf => and_congr_right fun _ => and_congr_right fun _ => and_congr_left fun _ => ?_
  constructor
  · rintro ⟨w, hw, hc⟩
    exact (hΛ _ w (tanLinG u' hu' u R cf w h hc)).1 hw
  · intro hc
    obtain ⟨w, -, hw⟩ := Guard.exists_comb hu cf
    exact ⟨w, (hΛ _ w (tanLinG u' hu' u R cf w h hw)).2 hc, hw⟩

private theorem w_div_le {F : Type} [Field F] [NumberField F] {Y : Var F} (N : GlobalTheory.TrueGeo.Model Y) {L : LB N.X}
    {s : (L.pull N.j).ι → Y.Fnˣ} (hs : Cartier.IsRatSec (L.pull N.j) s) {v : HeightOneSpectrum (𝓞 F)} {ε : Ext v}
    {y : AlgPt Y} {yt : Sp ε.O ⟶ N.X} (hy : spMap ε.O.subtype ≫ yt = y.1 ≫ N.j) (k k' : (L.pull N.j).ι)
    (h : ⊤ ≤ yt ⁻¹ᵁ L.U (k PUnit.unit)) (h' : ⊤ ≤ yt ⁻¹ᵁ L.U (k' PUnit.unit)) :
    RegAt (below y.1) ((s k : Y.Fn) / s k') ∧ ε.w (valAt y.1 ((s k : Y.Fn) / s k')) ≤ 1 := by
  have hW : ⊤ ≤ yt ⁻¹ᵁ (L.U (k PUnit.unit) ⊓ L.U (k' PUnit.unit)) := le_inf_pre h h'
  have hb := Glue.below_mem N hy hW
  have hb' : below y.1 ∈ (L.pull N.j).U k ⊓ (L.pull N.j).U k' :=
    ⟨Set.mem_iInter.2 fun _ => hb.1, Set.mem_iInter.2 fun _ => hb.2⟩
  have l : (L.pull N.j).U k ⊓ (L.pull N.j).U k' ≤ N.j ⁻¹ᵁ (L.U (k PUnit.unit) ⊓ L.U (k' PUnit.unit)) :=
    fun x hx => ⟨Set.mem_iInter.1 hx.1 PUnit.unit, Set.mem_iInter.1 hx.2 PUnit.unit⟩
  have hp : ((L.pull N.j).g k k').val =
      resG Y.X l (N.j.app _ (L.g (k PUnit.unit) (k' PUnit.unit)).val) := by
    have : (L.pull N.j).g k k' = res l (pullU N.j _ (L.g (k PUnit.unit) (k' PUnit.unit))) := by
      change ∏ _k : PUnit, _ = _
      exact (Fintype.prod_unique _).trans (zpow_one _)
    rw [this]
    rfl
  have e := hs k k' (gen_mem hb')
  rw [hp, fnOf_resG] at e
  rw [e, mul_div_cancel_right₀ _ (s k').ne_zero]
  exact ⟨regAt_fnOf (U := N.j ⁻¹ᵁ (L.U (k PUnit.unit) ⊓ L.U (k' PUnit.unit))) hb _ _, Glue.w_le_one N hy hW _ _⟩

private theorem step_eq {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E}
    {Dw : Datum H} {X : Scheme.{0}} (t : SAB H X) {K : Type} [NontriviallyNormedField K] [IsUltrametricDist K]
    (x : Sp K ⟶ X) (u : ∀ τ : E →+* ℂ, Fin (Dw.mult τ) → (Sp (DualNumber K) ⟶ t.G.left)) (p : ℕ) {b : Bool}
    (hb : b = false) (τ : E →+* ℂ) (i : Fin (Dw.mult τ)) :
    lnStep t x u p b (Sum.inl (τ, (i : ℕ))) = Real.log (grNorm t x (latDR t x) (u τ) i) := by
  subst hb
  simp [lnStep, lat]

