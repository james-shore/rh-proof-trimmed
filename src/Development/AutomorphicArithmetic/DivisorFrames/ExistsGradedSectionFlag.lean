import Mathlib
import Development.AutomorphicArithmetic.LocalEmbeddings.ExistsIsMapToFn
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFlagBundleIff

open CategoryTheory AlgebraicGeometry NumberField IsDedekindDomain Matrix
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.L2.Pj
open GlobalTheory GlobalTheory.VB GlobalTheory.TangentOrigin GlobalTheory.Toroidal GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.TrueGeo GlobalTheory.ProjVar GlobalTheory.LineNorm GlobalTheory.BcLie GlobalTheory.CovTest GlobalTheory.Mean4O GlobalTheory.Cartier GlobalTheory.TrueCx
open scoped ComplexOrder

private theorem evalPt_gen {F : Type} [Field F] {Y : Var F} {X : Scheme.{0}} (j : Y.X ⟶ X) (W : X.Opens)
    (hW : ⊤ ≤ (genericPt Y ≫ j) ⁻¹ᵁ W) (h : genericPoint Y.X ∈ j ⁻¹ᵁ W) (a : Γ(X, W)) :
    evalPt (genericPt Y ≫ j) W hW a = Cartier.fnOf (j ⁻¹ᵁ W) h (j.app W a) := by
  have ht : ⊤ ≤ Y.X.fromSpecStalk (genericPoint Y.X) ⁻¹ᵁ (j ⁻¹ᵁ W) := hW
  have : (Y.X.fromSpecStalk (genericPoint Y.X)).appLE (j ⁻¹ᵁ W) ⊤ ht ≫
      (Scheme.ΓSpecIso (Y.X.presheaf.stalk (genericPoint Y.X))).hom = Y.X.presheaf.germ _ _ h := by
    rw [Scheme.Hom.appLE, Scheme.fromSpecStalk_app h]
    simp only [Category.assoc]
    have e : (Spec (Y.X.presheaf.stalk (genericPoint Y.X))).presheaf.map
          (homOfLE (le_top : Y.X.fromSpecStalk (genericPoint Y.X) ⁻¹ᵁ (j ⁻¹ᵁ W) ≤ ⊤)).op ≫
        (Spec (Y.X.presheaf.stalk (genericPoint Y.X))).presheaf.map (homOfLE ht).op = 𝟙 _ := by
      rw [← Functor.map_comp]; exact CategoryTheory.Functor.map_id _ _
    rw [reassoc_of% e, Iso.inv_hom_id, Category.comp_id]
  have e2 := Scheme.Hom.comp_appLE (genericPt Y) j W ⊤ hW
  unfold evalPt
  rw [e2]
  exact congrArg (fun q => q.hom (j.app W a)) this

private theorem fnOf_pull_g {F : Type} [Field F] {Y : Var F} {X : Scheme.{0}} (j : Y.X ⟶ X) (L : X.Modules)
    (k k' : ((VB.det L 1).pull j).ι)
    (h : genericPoint Y.X ∈ ((VB.det L 1).pull j).U k ⊓ ((VB.det L 1).pull j).U k') :
    Cartier.fnOf _ h (((VB.det L 1).pull j).g k k').val =
      trAt (M := L) (r := 1) (genericPt Y ≫ j) (k PUnit.unit) (k' PUnit.unit) 0 0 := by
  have l : ((VB.det L 1).pull j).U k ⊓ ((VB.det L 1).pull j).U k' ≤
      j ⁻¹ᵁ ((VB.det L 1).U (k PUnit.unit) ⊓ (VB.det L 1).U (k' PUnit.unit)) :=
    fun x hx => ⟨Set.mem_iInter.1 hx.1 PUnit.unit, Set.mem_iInter.1 hx.2 PUnit.unit⟩
  have hp : (((VB.det L 1).pull j).g k k').val =
      resG Y.X l (j.app _ ((VB.det L 1).g (k PUnit.unit) (k' PUnit.unit)).val) := by
    have : ((VB.det L 1).pull j).g k k' = res l (pullU j _ ((VB.det L 1).g (k PUnit.unit) (k' PUnit.unit))) := by
      change ∏ _k : PUnit, _ = _
      exact (Fintype.prod_unique _).trans (zpow_one _)
    rw [this]
    rfl
  have hW := gen_le j (y := genericPoint Y.X)
    (U := (VB.det L 1).U (k PUnit.unit) ⊓ (VB.det L 1).U (k' PUnit.unit)) (l h)
  rw [hp, fnOf_resG, ← evalPt_gen j _ hW, trAt_eq _ _ hW, map_apply]
  congr 1
  refine (IsFrame.val_detUnit _ _ _ _).trans ?_
  rw [Module.Basis.det_apply, det_fin_one]
  rfl

private theorem diag_ne_zero {K : Type} [Field K] {r : ℕ} (dual : Bool) (B : Matrix (Fin r) (Fin r) K)
    (hB : IsUnit B.det) (hT : IsTri (B.submatrix (pos dual) id)) (i : Fin r) : B (pos dual i) i ≠ 0 := by
  have hσ : Function.Involutive (pos (r := r) dual) := pos_pos dual
  have h1 := Matrix.det_permute hσ.toPerm B
  have h2 : (B.submatrix (pos dual) id).det = ∏ a, B (pos dual a) a :=
    Matrix.det_of_upperTriangular fun a b h => hT a b h
  intro h0
  have h3 : (B.submatrix (pos dual) id).det = 0 := by
    rw [h2]; exact Finset.prod_eq_zero (Finset.mem_univ i) h0
  have h4 := h1.symm.trans h3
  rcases mul_eq_zero.1 h4 with h | h
  · rcases Int.units_eq_one_or (Equiv.Perm.sign hσ.toPerm) with e | e <;> simp [e] at h
  · exact hB.ne_zero h

private theorem mul_diag {K : Type} [CommRing K] {r : ℕ} (dual : Bool) (B T : Matrix (Fin r) (Fin r) K)
    (hB : IsTri (B.submatrix (pos dual) id)) (hT : IsTri T) (i : Fin r) :
    (B * T) (pos dual i) i = B (pos dual i) i * T i i := by
  rw [mul_apply, Finset.sum_eq_single i]
  · intro b _ hb
    rcases lt_or_gt_of_ne hb with h | h
    · rw [show B (pos dual i) b = 0 from hB i b h, zero_mul]
    · rw [hT b i h, mul_zero]
  · simp

