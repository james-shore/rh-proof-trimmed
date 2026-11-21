import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaActionExists
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OneMemKAt
import Development.AbelianVarietyTheory.Definitions.Divisors.IsCompactIsOpenUnitsAt

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK

noncomputable section
namespace GlobalTheory.TailFix
variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E} {n : ℕ}

def spl (e : AF F) (A : Matrix (Fin n) (Fin n) (AE F E)) : Matrix (Fin n) (Fin n) (AE F E) := e • A + (1 - e) • 1

theorem spl_mul {e : AF F} (he : e * e = e) (A B : Matrix (Fin n) (Fin n) (AE F E)) :
    spl e (A * B) = spl e A * spl e B := by
  have h1 : e * (1 - e) = 0 := by rw [mul_sub, mul_one, he, sub_self]
  have h2 : (1 - e) * e = 0 := by rw [sub_mul, one_mul, he, sub_self]
  have h3 : (1 - e) * (1 - e) = 1 - e := by rw [sub_mul, one_mul, h1, sub_zero]
  simp only [spl, Matrix.add_mul, Matrix.mul_add, Matrix.smul_mul, Matrix.mul_smul, smul_add, smul_smul, Matrix.one_mul, Matrix.mul_one, he, h1, h2, h3, zero_smul, add_zero, zero_add]

theorem spl_one (e : AF F) : spl e (1 : Matrix (Fin n) (Fin n) (AE F E)) = 1 := by
  rw [spl, ← add_smul, add_sub_cancel, one_smul]

theorem spl_unitary {e : AF F} (he : e * e = e) (J A : Matrix (Fin n) (Fin n) (AE F E)) (hA : Aᵀ * J * A.map (cA σ) = J) :
    (spl e A)ᵀ * J * (spl e A).map (cA σ) = J := by
  have h1 : e * (1 - e) = 0 := by rw [mul_sub, mul_one, he, sub_self]
  have h2 : (1 - e) * e = 0 := by rw [sub_mul, one_mul, he, sub_self]
  have h3 : (1 - e) * (1 - e) = 1 - e := by rw [sub_mul, one_mul, h1, sub_zero]
  have hm : (spl e A).map (cA σ) = e • A.map (cA σ) + (1 - e) • 1 := by
    ext i j
    simp only [spl, Matrix.map_apply, Matrix.add_apply, Matrix.smul_apply, map_add, map_smul, Matrix.one_apply]
    split_ifs <;> simp
  rw [hm, spl, Matrix.transpose_add, Matrix.transpose_smul, Matrix.transpose_smul, Matrix.transpose_one]
  simp only [Matrix.add_mul, Matrix.mul_add, Matrix.smul_mul, Matrix.mul_smul, smul_add, smul_smul, Matrix.one_mul, Matrix.mul_one, he, h1, h2, h3, zero_smul, add_zero, zero_add, hA]
  rw [← add_smul, add_sub_cancel, one_smul]

variable {J : Matrix (Fin n) (Fin n) E}

theorem mat_mul' (g h : UA σ J) : mat (g * h) = mat g * mat h := rfl

theorem mat_mul_inv' (g : UA σ J) : mat g * mat g⁻¹ = 1 := by
  rw [← mat_mul', mul_inv_cancel]; rfl

theorem mat_inv_mul' (g : UA σ J) : mat g⁻¹ * mat g = 1 := by
  rw [← mat_mul', inv_mul_cancel]; rfl

theorem UA_ext {g h : UA σ J} (e : mat g = mat h) : g = h := Subtype.ext (Units.ext e)

def splU (e : AF F) (he : e * e = e) : UA σ J →* UA σ J where
  toFun g := ⟨⟨spl e (mat g), spl e (mat g⁻¹), by rw [← spl_mul he, mat_mul_inv', spl_one],
    by rw [← spl_mul he, mat_inv_mul', spl_one]⟩, spl_unitary he _ _ g.2⟩
  map_one' := UA_ext (spl_one e)
  map_mul' g h := UA_ext (spl_mul he (mat g) (mat h))

theorem mat_splU (e : AF F) (he : e * e = e) (g : UA σ J) : mat (splU e he g) = spl e (mat g) := rfl

open Classical in

def idem (S : Finset (Pl F)) : AF F :=
  (0, ⟨fun w => if w ∈ S then 1 else 0, by
    refine Filter.eventually_cofinite.mpr (S.finite_toSet.subset fun w hw => ?_)
    by_contra h
    apply hw
    simp only [show w ∉ S from h, if_false]
    exact zero_mem _⟩)

theorem idem_fst (S : Finset (Pl F)) : (idem S).1 = 0 := rfl

end GlobalTheory.TailFix
