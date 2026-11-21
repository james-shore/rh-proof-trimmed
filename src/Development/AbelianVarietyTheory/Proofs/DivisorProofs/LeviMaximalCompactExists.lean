import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OneMemKAtAlt
open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.IndLine

noncomputable section
namespace GlobalTheory.LeviK
variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

section Gen
variable {R : Type} [CommRing R] (c : R →+* R) {d d₁ : ℕ}

def lev (I : Matrix (Fin d) (Fin d₁) R) (Q : Matrix (Fin d₁) (Fin d) R) (D : Matrix (Fin d₁) (Fin d₁) R) : Matrix (Fin d) (Fin d) R :=
  1 + I * (D * Q)

theorem lev_mul (I : Matrix (Fin d) (Fin d₁) R) (Q : Matrix (Fin d₁) (Fin d) R) (hQI : Q * I = 1) (D D' : Matrix (Fin d₁) (Fin d₁) R) :
    lev I Q D * lev I Q D' = lev I Q (D + D' + D * D') := by
  simp only [lev, Matrix.add_mul, Matrix.mul_add, Matrix.one_mul, Matrix.mul_one, Matrix.mul_assoc]
  rw [← Matrix.mul_assoc Q I, hQI, Matrix.one_mul]
  abel

end Gen

section Adelic
variable {σ : E →ₐ[F] E}

theorem mat_mul_inv {n : ℕ} {J : Matrix (Fin n) (Fin n) E} (k : UA σ J) : mat k * mat k⁻¹ = 1 := by
  simp [mat]

theorem mat_inv_mul {n : ℕ} {J : Matrix (Fin n) (Fin n) E} (k : UA σ J) : mat k⁻¹ * mat k = 1 := by
  simp [mat]

theorem mat_unitary {n : ℕ} {J : Matrix (Fin n) (Fin n) E} (k : UA σ J) : (mat k)ᵀ * incM F J * (mat k).map (cA σ) = incM F J :=
  k.2
end Adelic

section Pt
variable {σ : E →ₐ[F] E} {d d₁ : ℕ} {J : Matrix (Fin d) (Fin d) E} {J₁ : Matrix (Fin d₁) (Fin d₁) E}

def leviPt (I : Matrix (Fin d) (Fin d₁) (AE F E)) (Q : Matrix (Fin d₁) (Fin d) (AE F E)) (hQI : Q * I = 1)
    (hu : ∀ D, (1 + D)ᵀ * incM F J₁ * (1 + D).map (cA σ) = incM F J₁ →
      (lev I Q D)ᵀ * incM F J * (lev I Q D).map (cA σ) = incM F J) (k : UA σ J₁) : UA σ J :=
  ⟨⟨lev I Q (mat k - 1), lev I Q (mat k⁻¹ - 1),
    by
      rw [lev_mul I Q hQI, show mat k - 1 + (mat k⁻¹ - 1) + (mat k - 1) * (mat k⁻¹ - 1) = mat k * mat k⁻¹ - 1 by noncomm_ring,
        mat_mul_inv, sub_self]
      simp [lev],
    by
      rw [lev_mul I Q hQI, show mat k⁻¹ - 1 + (mat k - 1) + (mat k⁻¹ - 1) * (mat k - 1) = mat k⁻¹ * mat k - 1 by noncomm_ring,
        mat_inv_mul, sub_self]
      simp [lev]⟩,
    hu _ (by rw [add_sub_cancel]; exact mat_unitary k)⟩

theorem mat_leviPt (I : Matrix (Fin d) (Fin d₁) (AE F E)) (Q : Matrix (Fin d₁) (Fin d) (AE F E)) (hQI : Q * I = 1) hu (k : UA σ J₁) :
    mat (leviPt (J := J) I Q hQI hu k) = lev I Q (mat k - 1) := rfl

theorem mat_leviPt_inv (I : Matrix (Fin d) (Fin d₁) (AE F E)) (Q : Matrix (Fin d₁) (Fin d) (AE F E)) (hQI : Q * I = 1) hu (k : UA σ J₁) :
    mat (leviPt (J := J) I Q hQI hu k)⁻¹ = lev I Q (mat k⁻¹ - 1) := rfl
end Pt

end GlobalTheory.LeviK
