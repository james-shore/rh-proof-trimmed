import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinRel
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TrPApply
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AtVecMulVecRight
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LagrangianSetAdditiveSubgroup
open scoped TensorProduct Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ArchSch GlobalTheory.ArchSchB

noncomputable section

namespace GlobalTheory.ArchSchB.Iso

theorem hTens_change {R A : Type} [CommRing R] [CommRing A] [Algebra R A] (c : A →ₐ[R] A)
    {α β α₁ β₁ α₂ β₂ : Type} [Fintype α] [Fintype β] [Fintype α₁] [Fintype β₁] [Fintype α₂] [Fintype β₂]
    (JA : Matrix α α A) (JB : Matrix β β A) (P : Matrix α α₁ A) (Q : Matrix β β₁ A) (P' : Matrix α α₂ A)
    (Q' : Matrix β β₂ A) (u : Matrix α₁ β₁ A) (u' : Matrix α₂ β₂ A) :
    hTens c JA JB (P * u * Qᵀ) (P' * u' * Q'ᵀ) =
      (uᵀ * (Pᵀ * JA * P'.map c) * u'.map c * (Qᵀ * JB * Q'.map c)ᵀ).trace := by
  rw [GlobalTheory.SympRestrict.hTens_eq_trace']
  have hm : (P' * u' * Q'ᵀ).map c = P'.map c * u'.map c * (Q'.map c)ᵀ := by
    ext i j
    simp only [Matrix.map_apply, Matrix.mul_apply, Matrix.transpose_apply, map_sum, map_mul]
  rw [hm]
  simp only [Matrix.transpose_mul, Matrix.transpose_transpose]
  simp only [Matrix.mul_assoc]
  rw [Matrix.trace_mul_comm Q]
  simp only [Matrix.mul_assoc]

theorem symp_change_zero_left {R A : Type} [CommRing R] [CommRing A] [Algebra R A] (c : A →ₐ[R] A) (ξ : A)
    {α β α₁ β₁ α₂ β₂ : Type} [Fintype α] [Fintype β] [Fintype α₁] [Fintype β₁] [Fintype α₂] [Fintype β₂]
    (JA : Matrix α α A) (JB : Matrix β β A) (P : Matrix α α₁ A) (Q : Matrix β β₁ A) (P' : Matrix α α₂ A)
    (Q' : Matrix β β₂ A) (u : Matrix α₁ β₁ A) (u' : Matrix α₂ β₂ A) (h : Pᵀ * JA * P'.map c = 0) :
    symp (R := R) c ξ JA JB (P * u * Qᵀ) (P' * u' * Q'ᵀ) = 0 := by
  unfold symp
  rw [hTens_change, h]
  simp

theorem symp_change_zero_right {R A : Type} [CommRing R] [CommRing A] [Algebra R A] (c : A →ₐ[R] A) (ξ : A)
    {α β α₁ β₁ α₂ β₂ : Type} [Fintype α] [Fintype β] [Fintype α₁] [Fintype β₁] [Fintype α₂] [Fintype β₂]
    (JA : Matrix α α A) (JB : Matrix β β A) (P : Matrix α α₁ A) (Q : Matrix β β₁ A) (P' : Matrix α α₂ A)
    (Q' : Matrix β β₂ A) (u : Matrix α₁ β₁ A) (u' : Matrix α₂ β₂ A) (h : Qᵀ * JB * Q'.map c = 0) :
    symp (R := R) c ξ JA JB (P * u * Qᵀ) (P' * u' * Q'ᵀ) = 0 := by
  unfold symp
  rw [hTens_change, h]
  simp

theorem symp_change_eq {R A : Type} [CommRing R] [CommRing A] [Algebra R A] (c : A →ₐ[R] A) (ξ : A)
    {α β α₁ β₁ : Type} [Fintype α] [Fintype β] [Fintype α₁] [Fintype β₁]
    (JA : Matrix α α A) (JB : Matrix β β A) (JA₁ : Matrix α₁ α₁ A) (JB₁ : Matrix β₁ β₁ A) (P : Matrix α α₁ A)
    (Q : Matrix β β₁ A) (u u' : Matrix α₁ β₁ A) (hA : Pᵀ * JA * P.map c = JA₁) (hB : Qᵀ * JB * Q.map c = JB₁) :
    symp (R := R) c ξ JA JB (P * u * Qᵀ) (P * u' * Qᵀ) = symp (R := R) c ξ JA₁ JB₁ u u' := by
  unfold symp
  rw [hTens_change, hA, hB, GlobalTheory.SympRestrict.hTens_eq_trace']

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem incM_gram (σ : E →ₐ[F] E) {m p q : Type} [Fintype m] (P : Matrix m p E) (J : Matrix m m E)
    (P' : Matrix m q E) :
    (incM F P)ᵀ * incM F J * (incM F P').map (cA σ) = incM F (Pᵀ * J * P'.map σ) := by
  have hι : (incM F P').map (cA σ) = incM F (P'.map σ) := by
    ext i j
    simp [incM, cA, inclR]
  rw [hι]
  simp only [incM, Matrix.map_mul, Matrix.transpose_map]

theorem gram_apply (σ : E →ₐ[F] E) {n : ℕ} {p q : Type} (P : Matrix (Fin n) p E) (J : Matrix (Fin n) (Fin n) E)
    (P' : Matrix (Fin n) q E) (m : p) (k : q) :
    (Pᵀ * J * P'.map σ) m k = form σ J (fun i => P i m) (fun i => P' i k) := by
  simp only [Matrix.mul_apply, Matrix.transpose_apply, Matrix.map_apply, form, dotProduct, Matrix.mulVec,
    Finset.sum_mul, Finset.mul_sum, mul_assoc]
  exact Finset.sum_comm

theorem form_herm {σ : E →ₐ[F] E} (hinv : ∀ t, σ (σ t) = t) {d : ℕ} {J : Matrix (Fin d) (Fin d) E}
    (hh : ∀ i j, σ (J j i) = J i j) (x v : Fin d → E) : form σ J x v = σ (form σ J v x) := by
  simp only [form, dotProduct, Matrix.mulVec, map_sum, map_mul, hinv, hh, Finset.mul_sum]
  rw [Finset.sum_comm (f := fun a b => σ (v a) * (J b a * x b))]
  refine Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun l _ => ?_
  ring

end GlobalTheory.ArchSchB.Iso

namespace GlobalTheory.ArchSchB.Iso

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

theorem col_of_plane {n n₁ : ℕ} (H : Plane E n n₁) (m : Fin n₁) : (fun j => H.ι j m) = H.ι *ᵥ Pi.single m 1 := by
  ext j; simp [Matrix.mulVec, dotProduct, Pi.single_apply]

theorem gram_xx {B : Base F E} {n n₁ i₀ i₁ : ℕ} {Y : Spc F E n} {Y₁ : Spc F E n₁} {H : Plane E n n₁}
    (hH : H.IsAdapted σ B Y Y₁ i₀ i₁) :
    (Matrix.replicateCol Unit H.x)ᵀ * Y.J * (Matrix.replicateCol Unit H.x).map σ = 0 := by
  ext m k
  rw [gram_apply]
  simpa [Matrix.replicateCol_apply] using hH.xx

theorem gram_ιx {B : Base F E} {n n₁ i₀ i₁ : ℕ} {Y : Spc F E n} {Y₁ : Spc F E n₁} {H : Plane E n n₁}
    (hH : H.IsAdapted σ B Y Y₁ i₀ i₁) :
    H.ιᵀ * Y.J * (Matrix.replicateCol Unit H.x).map σ = 0 := by
  ext m k
  rw [gram_apply, col_of_plane]
  simpa [Matrix.replicateCol_apply] using (hH.orth (Pi.single m 1)).1

theorem gram_xι {B : Base F E} {n n₁ i₀ i₁ : ℕ} {Y : Spc F E n} {Y₁ : Spc F E n₁} {H : Plane E n n₁}
    (hH : H.IsAdapted σ B Y Y₁ i₀ i₁) (hflip : ∀ u v, form σ Y.J u v = 0 → form σ Y.J v u = 0) :
    (Matrix.replicateCol Unit H.x)ᵀ * Y.J * H.ι.map σ = 0 := by
  ext m k
  rw [gram_apply, col_of_plane]
  simpa [Matrix.replicateCol_apply] using hflip _ _ (hH.orth (Pi.single k 1)).1

end GlobalTheory.ArchSchB.Iso

namespace GlobalTheory.ArchSchB

end GlobalTheory.ArchSchB
