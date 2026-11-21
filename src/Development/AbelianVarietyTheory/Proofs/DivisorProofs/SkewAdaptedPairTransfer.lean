import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueLeviElementStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EigenIntertwinerRestrictionStatement
import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdaptedPlaneRestrictionPairThird
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdaptedPlaneRestrictionPairFourth
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorProductSchwartzAdelic

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)

noncomputable section

namespace GlobalTheory.MixWChar

theorem exists_dbl_left {R A : Type} [CommRing R] [CommRing A] [Algebra R A] (c : A →ₐ[R] A) {β : Type} [Fintype β] [DecidableEq β]
    (J : Matrix β β A) (g : UG c J) :
    ∃ gd : UG c (dbl J), ((gd : GL (β ⊕ β) A) : Matrix (β ⊕ β) (β ⊕ β) A) = Matrix.fromBlocks ((g : GL β A) : Matrix β β A) 0 0 1 := by
  let G : Matrix β β A := ((g : GL β A) : Matrix β β A)
  let Gi : Matrix β β A := (((g⁻¹ : UG c J) : GL β A) : Matrix β β A)
  have h1 : G * Gi = 1 := by
    show ((g : GL β A) : Matrix β β A) * (((g : GL β A)⁻¹ : GL β A) : Matrix β β A) = 1
    rw [← Units.val_mul, mul_inv_cancel, Units.val_one]
  have h2 : Gi * G = 1 := by
    show (((g : GL β A)⁻¹ : GL β A) : Matrix β β A) * ((g : GL β A) : Matrix β β A) = 1
    rw [← Units.val_mul, inv_mul_cancel, Units.val_one]
  let u : GL (β ⊕ β) A := ⟨Matrix.fromBlocks G 0 0 1, Matrix.fromBlocks Gi 0 0 1, by
    rw [Matrix.fromBlocks_multiply]; simp [h1, Matrix.fromBlocks_one], by
    rw [Matrix.fromBlocks_multiply]; simp [h2, Matrix.fromBlocks_one]⟩
  have hg : Gᵀ * J * G.map c = J := g.2
  refine ⟨⟨u, ?_⟩, rfl⟩
  show (Matrix.fromBlocks G 0 0 1)ᵀ * dbl J * (Matrix.fromBlocks G 0 0 1).map c = dbl J
  rw [dbl, Matrix.fromBlocks_transpose, Matrix.fromBlocks_map, Matrix.fromBlocks_multiply, Matrix.fromBlocks_multiply]
  simp [hg, Matrix.map_one _ (map_zero c) (map_one c)]

theorem boxFun_ne_zero {R κ κ' : Type} {φ₁ : (κ → R) → ℂ} {φ₂ : (κ' → R) → ℂ} (h₁ : φ₁ ≠ 0) (h₂ : φ₂ ≠ 0) :
    boxFun φ₁ φ₂ ≠ 0 := by
  obtain ⟨x₁, hx₁⟩ := Function.ne_iff.mp h₁
  obtain ⟨x₂, hx₂⟩ := Function.ne_iff.mp h₂
  intro h
  have := congrFun h (Sum.elim x₁ x₂)
  simp only [boxFun, Sum.elim_comp_inl, Sum.elim_comp_inr, Pi.zero_apply] at this
  exact mul_ne_zero hx₁ hx₂ this

theorem eq_one_of_boxFun {R κ κ' : Type} {φ₁ : (κ → R) → ℂ} {φ₂ : (κ' → R) → ℂ} (h₁ : φ₁ ≠ 0) (h₂ : φ₂ ≠ 0) {a : ℂ}
    (h : boxFun (a • φ₁) φ₂ = boxFun φ₁ φ₂) : a = 1 := by
  obtain ⟨x₁, hx₁⟩ := Function.ne_iff.mp h₁
  obtain ⟨x₂, hx₂⟩ := Function.ne_iff.mp h₂
  have := congrFun h (Sum.elim x₁ x₂)
  simp only [boxFun, Sum.elim_comp_inl, Sum.elim_comp_inr, Pi.smul_apply, smul_eq_mul, Pi.zero_apply] at this
  have hne : φ₁ x₁ * φ₂ x₂ ≠ 0 := mul_ne_zero hx₁ hx₂
  have : (a - 1) * (φ₁ x₁ * φ₂ x₂) = 0 := by linear_combination this
  exact sub_eq_zero.mp ((mul_eq_zero.mp this).resolve_right hne)

end GlobalTheory.MixWChar
