import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SetIntegralEqZeroOfMulRight

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)
section
variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E) {d : ℕ}
  (J : Matrix (Fin d) (Fin d) E)

omit [NumberField F] [NumberField E] in
private theorem fa_l (u v w : Fin d → E) : form σ J (u + v) w = form σ J u w + form σ J v w := by
  simp [form]

omit [NumberField F] [NumberField E] in
private theorem fs_l (c : E) (v w : Fin d → E) : form σ J (c • v) w = c * form σ J v w := by
  simp [form]

omit [NumberField F] [NumberField E] in
private theorem fa_r (u v w : Fin d → E) : form σ J u (v + w) = form σ J u v + form σ J u w := by
  have : (fun i => σ ((v + w) i)) = (fun i => σ (v i)) + fun i => σ (w i) := by
    ext i; simp
  simp only [form, this, Matrix.mulVec_add, dotProduct_add]

omit [NumberField F] [NumberField E] in
private theorem fs_r (c : E) (v w : Fin d → E) : form σ J v (c • w) = σ c * form σ J v w := by
  have : (fun i => σ ((c • w) i)) = σ c • fun i => σ (w i) := by
    ext i; simp
  simp only [form, this, Matrix.mulVec_smul, dotProduct_smul, smul_eq_mul]

omit [NumberField F] [NumberField E] in
private theorem form_mulVec (g : Matrix (Fin d) (Fin d) E) (v w : Fin d → E) :
    form σ J (g *ᵥ v) (g *ᵥ w) = form σ (gᵀ * J * g.map σ) v w := by
  have : (fun i => σ ((g *ᵥ w) i)) = g.map σ *ᵥ fun i => σ (w i) := by
    ext i; simp [Matrix.mulVec, dotProduct]
  simp only [form, this]
  rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, Matrix.dotProduct_mulVec v gᵀ, Matrix.vecMul_transpose]

omit [NumberField F] [NumberField E] in
private theorem form_single (i j : Fin d) : form σ J (Pi.single i 1) (Pi.single j 1) = J i j := by
  have : (fun k => σ ((Pi.single j (1 : E) : Fin d → E) k)) = Pi.single j 1 := by
    ext k; by_cases h : k = j
    · subst h; simp
    · simp [h]
  simp [form, this]

omit [NumberField F] [NumberField E] in
private theorem step1 (l : E) (hσ : ∀ a, σ (σ a) = a) (hl : l * σ l = 1)
    (hh : ∀ w w', form σ J w w' = l * σ (form σ J w' w)) (w x : Fin d → E)
    (hw : form σ J w w = 0) (hx : form σ J x x = 0) (ha : form σ J w x ≠ 0) :
    ∃ g : (Fin d → E) →ₗ[E] (Fin d → E), (∀ v v', form σ J (g v) (g v') = form σ J v v') ∧ g w = x := by
  set a := form σ J w x with hadef
  set a' := form σ J x w with ha'def
  have e1 : a' = l * σ a := hh x w
  have e2 : a = l * σ a' := hh w x
  have hl0 : l ≠ 0 := left_ne_zero_of_mul_eq_one hl
  have hsa : σ a ≠ 0 := (map_ne_zero σ).2 ha
  have ha' : a' ≠ 0 := by rw [e1]; exact mul_ne_zero hl0 hsa
  have hsa' : σ a' ≠ 0 := (map_ne_zero σ).2 ha'
  have s1 : σ a = a' / l := by rw [e1]; field_simp
  have s2 : σ a' = a / l := by
    rw [eq_div_iff hl0, mul_comm]; exact e2.symm
  let g : (Fin d → E) →ₗ[E] (Fin d → E) :=
    { toFun := fun v => v + (form σ J v x / a) • (x + (-1 : E) • w) + (form σ J v w / a') • ((a' / a) • w + (-1 : E) • x)
      map_add' := fun u v => by
        simp only [fa_l, add_div, add_smul]; abel
      map_smul' := fun c v => by
        simp only [fs_l, mul_div_assoc, mul_smul, RingHom.id_apply, smul_add] }
  have hg : ∀ v, g v = v + (form σ J v x / a) • (x + (-1 : E) • w) + (form σ J v w / a') • ((a' / a) • w + (-1 : E) • x) :=
    fun v => rfl
  refine ⟨g, fun v v' => ?_, ?_⟩
  · rw [hg, hg]
    simp only [fa_l, fa_r, fs_l, fs_r, hw, hx, ← hadef, ← ha'def, map_div₀, map_neg, map_one, s1, s2]
    rw [hh x v', hh w v']
    field_simp
    ring
  · rw [hg, hw, ← hadef, div_self ha]
    simp

omit [NumberField F] in
private theorem step2 (l : E) (hσ : ∀ a, σ (σ a) = a) (hJ : J.det ≠ 0) (hl : l * σ l = 1)
    (hh : ∀ w w', form σ J w w' = l * σ (form σ J w' w)) (w x : Fin d → E) (hw0 : w ≠ 0) (hx0 : x ≠ 0)
    (hw : form σ J w w = 0) (hx : form σ J x x = 0) :
    ∃ g : (Fin d → E) →ₗ[E] (Fin d → E), (∀ v v', form σ J (g v) (g v') = form σ J v v') ∧ g w = x := by
  by_cases ha : form σ J w x = 0
  swap
  · exact step1 σ J l hσ hl hh w x hw hx ha
  have hl0 : l ≠ 0 := left_ne_zero_of_mul_eq_one hl
  have nd : ∀ y : Fin d → E, y ≠ 0 → ∃ z, form σ J y z ≠ 0 := by
    intro y hy
    by_contra hcon
    push Not at hcon
    apply hy
    refine (Matrix.nondegenerate_of_det_ne_zero hJ).eq_zero_of_ortho fun z => ?_
    have := hcon fun i => σ (z i)
    simpa [form, hσ] using this
  obtain ⟨z, hz1, hz2⟩ : ∃ z, form σ J w z ≠ 0 ∧ form σ J x z ≠ 0 := by
    obtain ⟨z₁, h1⟩ := nd w hw0
    obtain ⟨z₂, h2⟩ := nd x hx0
    by_cases h3 : form σ J x z₁ = 0
    · by_cases h4 : form σ J w z₂ = 0
      · exact ⟨z₁ + z₂, by rw [fa_r, h4, add_zero]; exact h1, by rw [fa_r, h3, zero_add]; exact h2⟩
      · exact ⟨z₂, h4, h2⟩
    · exact ⟨z₁, h1, h3⟩
  have ha' : form σ J x w = 0 := by rw [hh, ha]; simp
  have hsb : σ (form σ J w z) ≠ 0 := (map_ne_zero σ).2 hz1
  have s1 : σ (form σ J z z) = form σ J z z / l := by
    rw [eq_div_iff hl0, mul_comm]; exact (hh z z).symm
  set u := z + (-(form σ J z z / (2 * form σ J w z))) • w with hu
  have huu : form σ J u u = 0 := by
    simp only [hu, fa_l, fa_r, fs_l, fs_r, hw, map_div₀, map_neg, map_mul, map_ofNat, s1]
    rw [hh z w]
    field_simp
    ring
  have hwu : form σ J w u ≠ 0 := by
    simpa only [hu, fa_r, fs_r, hw, mul_zero, add_zero] using hz1
  have hxu : form σ J x u ≠ 0 := by
    simpa only [hu, fa_r, fs_r, ha', mul_zero, add_zero] using hz2
  have hux : form σ J u x ≠ 0 := by
    rw [hh]; exact mul_ne_zero hl0 ((map_ne_zero σ).2 hxu)
  obtain ⟨g₁, hg₁, e₁⟩ := step1 σ J l hσ hl hh w u hw huu hwu
  obtain ⟨g₂, hg₂, e₂⟩ := step1 σ J l hσ hl hh u x huu hx hux
  exact ⟨g₂ ∘ₗ g₁, fun v v' => by simp only [LinearMap.comp_apply, hg₂, hg₁], by simp [e₁, e₂]⟩

end

