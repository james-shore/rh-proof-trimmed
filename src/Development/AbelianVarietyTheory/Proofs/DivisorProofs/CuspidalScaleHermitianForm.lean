import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.LanglandsSquareIntegrable
import Development.AbelianVarietyTheory.Definitions.Divisors.IsSquareIntegrableIffMemL2
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPurelyImaginaryElement

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.SiegelSet GlobalTheory.UAut GlobalTheory.ThK.SquareIntegrability

noncomputable section

namespace GlobalTheory.CuspScale

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E} {n : ℕ}

theorem hr_smul (R : Type) [CommRing R] [Algebra F R] (J : Matrix (Fin n) (Fin n) E) {k : E} (hk : k ≠ 0) :
    HR R σ (k • J) = HR R σ J := by
  have hu : IsUnit (inclR (F := F) R k) := (IsUnit.mk0 k hk).map _
  have e : JR (F := F) R (k • J) = inclR (F := F) R k • JR (F := F) R J :=
    Matrix.ext fun i j => map_mul (inclR (F := F) R) k (J i j)
  ext g
  change Formalism.UG.cT _ g.1 * JR (F := F) R _ * g.1 = JR (F := F) R _ ↔ Formalism.UG.cT _ g.1 * JR (F := F) R _ * g.1 = JR (F := F) R _
  rw [e, Matrix.mul_smul, Matrix.smul_mul, hu.smul_left_cancel]

def toJ (J : Matrix (Fin n) (Fin n) E) {k : E} (hk : k ≠ 0) : GAd σ (k • J) ≃* GAd σ J :=
  MulEquiv.subgroupCongr (hr_smul (AF F) J hk)

theorem toJ_val (J : Matrix (Fin n) (Fin n) E) {k : E} (hk : k ≠ 0) (g : GAd σ (k • J)) :
    (toJ J hk g).1 = g.1 := rfl

end GlobalTheory.CuspScale

namespace GlobalTheory.CuspScale

end GlobalTheory.CuspScale

namespace GlobalTheory.CuspScale

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E} {n : ℕ}

theorem unipRad_map (J : Matrix (Fin n) (Fin n) E) {k : E} (hk : k ≠ 0) {r : ℕ} (C : Matrix (Fin n) (Fin r) E) :
    (unipRad σ (k • J) C).map (toJ J hk).toMonoidHom = unipRad σ J C := by
  unfold unipRad
  rw [MonoidHom.map_closure]
  congr 1
  ext x
  obtain ⟨y, rfl⟩ := (toJ (σ := σ) J hk).surjective x
  rw [Set.mem_image_iff_of_inverse (f := (toJ J hk).toMonoidHom) (g := (toJ J hk).symm) (fun a => by simp) (fun a => by simp)]
  simp only [Set.mem_setOf_eq, MulEquiv.coe_toMonoidHom, MulEquiv.symm_apply_apply]
  have hm : matHom (AF F) σ J (toJ J hk y) = matHom (AF F) σ (k • J) y := rfl
  have hu : IsUnit (inclR (F := F) (AF F) k) := (IsUnit.mk0 k hk).map _
  have ha : adMat F (Formalism.UG.cT (σ : E →+* E) C * k • J) = inclR (F := F) (AF F) k • adMat F (Formalism.UG.cT (σ : E →+* E) C * J) := by
    rw [Matrix.mul_smul]
    exact Matrix.ext fun i j => map_mul (inclR (F := F) (AF F)) k _
  have hv : ∀ x : Fin n → E, (Formalism.UG.cT (σ : E →+* E) C * k • J) *ᵥ x = 0 ↔ (Formalism.UG.cT (σ : E →+* E) C * J) *ᵥ x = 0 := by
    intro x
    rw [Matrix.mul_smul, Matrix.smul_mulVec, smul_eq_zero, or_iff_right hk]
  rw [hm, ha, Matrix.smul_mul]
  have hz : ∀ M : Matrix (Fin r) (Fin n) (AF F ⊗[F] E), inclR (F := F) (AF F) k • M = 0 ↔ M = 0 := fun M => by
    exact ⟨fun h => hu.smul_left_cancel.1 (h.trans (smul_zero _).symm), fun h => by rw [h, smul_zero]⟩
  simp only [hz, hv]
end GlobalTheory.CuspScale

namespace GlobalTheory.CuspScale

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E} {n : ℕ}

theorem toJ_continuous (J : Matrix (Fin n) (Fin n) E) {k : E} (hk : k ≠ 0) : Continuous (toJ (σ := σ) J hk) :=
  continuous_subtype_val.subtype_mk _

theorem toJ_symm_continuous (J : Matrix (Fin n) (Fin n) E) {k : E} (hk : k ≠ 0) : Continuous (toJ (σ := σ) J hk).symm :=
  continuous_subtype_val.subtype_mk _

def unipJ (J : Matrix (Fin n) (Fin n) E) {k : E} (hk : k ≠ 0) {r : ℕ} (C : Matrix (Fin n) (Fin r) E) :
    unipRad σ (k • J) C ≃ₜ* unipRad σ J C where
  toMulEquiv := ((toJ J hk).subgroupMap _).trans (MulEquiv.subgroupCongr (unipRad_map J hk C))
  continuous_toFun := ((toJ_continuous J hk).comp continuous_subtype_val).subtype_mk _
  continuous_invFun := ((toJ_symm_continuous J hk).comp continuous_subtype_val).subtype_mk _

theorem unipJ_val (J : Matrix (Fin n) (Fin n) E) {k : E} (hk : k ≠ 0) {r : ℕ} (C : Matrix (Fin n) (Fin r) E)
    (u : unipRad σ (k • J) C) : ((unipJ J hk C u : unipRad σ J C) : GAd σ J) = toJ J hk u := rfl

end GlobalTheory.CuspScale

namespace GlobalTheory.CuspScale

end GlobalTheory.CuspScale
