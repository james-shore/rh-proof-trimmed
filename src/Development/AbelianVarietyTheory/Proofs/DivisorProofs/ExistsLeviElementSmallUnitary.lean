import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameDualGram

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK

namespace GlobalTheory.LeviFrame

theorem levi_unit_alg {R : Type} [CommRing R] (c : R →+* R) {d d₁ : ℕ} (Jd : Matrix (Fin d) (Fin d) R)
    (J₁ : Matrix (Fin d₁) (Fin d₁) R) (I : Matrix (Fin d) (Fin d₁) R) (P : Matrix (Fin d₁) (Fin d) R)
    (H : Matrix (Fin d₁) (Fin d₁) R) (hPI : P * I = 1) (hc : Iᵀ * Jd = J₁ * P.map c)
    (hd : Jd * I.map c = Pᵀ * J₁) (hH : Hᵀ * J₁ * H.map c = J₁) :
    (1 + I * ((H - 1) * P))ᵀ * Jd * (1 + I * ((H - 1) * P)).map c = Jd := by
  set D := H - 1 with hDdef
  have hD : Dᵀ * J₁ + J₁ * D.map c + Dᵀ * (J₁ * D.map c) = 0 := by
    have e1 : Dᵀ = Hᵀ - 1 := by simp [D, Matrix.transpose_sub]
    have e2 : D.map c = H.map c - 1 := by
      simp only [D]; rw [Matrix.map_sub _ (map_sub c), Matrix.map_one _ (map_zero c) (map_one c)]
    rw [e1, e2]
    have : (Hᵀ - 1) * J₁ + J₁ * (H.map c - 1) + (Hᵀ - 1) * (J₁ * (H.map c - 1)) = Hᵀ * J₁ * H.map c - J₁ := by
      noncomm_ring
    rw [this, hH, sub_self]
  have hPIc : P.map c * I.map c = 1 := by
    rw [← Matrix.map_mul, hPI, Matrix.map_one _ (map_zero c) (map_one c)]
  have hc' : ∀ X : Matrix (Fin d) (Fin d) R, Iᵀ * (Jd * X) = J₁ * (P.map c * X) := fun X => by
    rw [← Matrix.mul_assoc, hc, Matrix.mul_assoc]
  have hd' : ∀ X : Matrix (Fin d₁) (Fin d) R, Jd * (I.map c * X) = Pᵀ * (J₁ * X) := fun X => by
    rw [← Matrix.mul_assoc, hd, Matrix.mul_assoc]
  have hp' : ∀ X : Matrix (Fin d₁) (Fin d) R, P.map c * (I.map c * X) = X := fun X => by
    rw [← Matrix.mul_assoc, hPIc, Matrix.one_mul]
  rw [Matrix.transpose_add, Matrix.transpose_one, Matrix.transpose_mul, Matrix.transpose_mul,
    Matrix.map_add _ (map_add c), Matrix.map_one _ (map_zero c) (map_one c), Matrix.map_mul, Matrix.map_mul]
  simp only [Matrix.add_mul, Matrix.mul_add, Matrix.one_mul, Matrix.mul_one, Matrix.mul_assoc, hc', hd', hp', hc]
  have key : Pᵀ * ((Dᵀ * J₁ + J₁ * D.map c + Dᵀ * (J₁ * D.map c)) * P.map c) = 0 := by
    rw [hD, Matrix.zero_mul, Matrix.mul_zero]
  simp only [Matrix.add_mul, Matrix.mul_add, Matrix.mul_assoc] at key
  have := congrArg (Jd + ·) key
  simp only [add_zero] at this
  refine Eq.trans ?_ this; abel

theorem levi_inv_alg {R : Type} [CommRing R] {d d₁ : ℕ} (I : Matrix (Fin d) (Fin d₁) R) (P : Matrix (Fin d₁) (Fin d) R)
    (H K : Matrix (Fin d₁) (Fin d₁) R) (hPI : P * I = 1) (hHK : H * K = 1) :
    (1 + I * ((H - 1) * P)) * (1 + I * ((K - 1) * P)) = 1 := by
  have hp' : ∀ X : Matrix (Fin d₁) (Fin d) R, P * (I * X) = X := fun X => by
    rw [← Matrix.mul_assoc, hPI, Matrix.one_mul]
  have hk : (H - 1) + (K - 1) + (H - 1) * (K - 1) = 0 := by
    have : (H - 1) + (K - 1) + (H - 1) * (K - 1) = H * K - 1 := by noncomm_ring
    rw [this, hHK, sub_self]
  have key : I * (((H - 1) + (K - 1) + (H - 1) * (K - 1)) * P) = 0 := by rw [hk, Matrix.zero_mul, Matrix.mul_zero]
  simp only [Matrix.add_mul, Matrix.mul_add, Matrix.one_mul, Matrix.mul_one, Matrix.mul_assoc, hp']
  simp only [Matrix.add_mul, Matrix.mul_add, Matrix.mul_assoc] at key
  have := congrArg ((1 : Matrix (Fin d) (Fin d) R) + ·) key
  simp only [add_zero] at this
  refine Eq.trans ?_ this; abel

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem incM_map_cA (σ : E →ₐ[F] E) {m n : Type} (M : Matrix m n E) :
    (incM F M).map (cA σ) = incM F (M.map σ) := by
  ext i j; simp [incM, cA, inclR]

theorem incM_mulVec_incV {m n : ℕ} (M : Matrix (Fin m) (Fin n) E) (v : Fin n → E) :
    incM F M *ᵥ incV F v = incV F (M *ᵥ v) := by
  ext i; simp only [incM, incV]; exact (RingHom.map_mulVec _ M v i).symm

end GlobalTheory.LeviFrame
