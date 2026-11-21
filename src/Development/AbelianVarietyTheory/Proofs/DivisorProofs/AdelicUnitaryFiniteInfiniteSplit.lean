import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DiffsZeroOfLev
open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ThK.DescB
open GlobalTheory.Doubling (absE)

noncomputable section
namespace GlobalTheory.ArchFinSplit

section Idem
variable {A R : Type} [CommRing A] [CommRing R] [Algebra A R] {ι : Type} [Fintype ι] [DecidableEq ι]

def pr (e : A) (M : Matrix ι ι R) : Matrix ι ι R := e • M + (1 - e) • (1 : Matrix ι ι R)

theorem pr_mul {e : A} (he : IsIdempotentElem e) (M N : Matrix ι ι R) : pr e M * pr e N = pr e (M * N) := by
  have h1 : e * (1 - e) = 0 := by rw [mul_sub, mul_one, he.eq, sub_self]
  have h2 : (1 - e) * e = 0 := by rw [mul_comm, h1]
  have h3 : (1 - e) * (1 - e) = 1 - e := he.one_sub.eq
  simp only [pr, Matrix.add_mul, Matrix.mul_add, Matrix.smul_mul, Matrix.mul_smul, smul_smul, smul_add, Matrix.mul_one,
    Matrix.one_mul, he.eq, h1, h2, h3, zero_smul, add_zero, zero_add]

theorem pr_one (e : A) : pr e (1 : Matrix ι ι R) = 1 := by
  simp [pr, sub_smul]

def prU {e : A} (he : IsIdempotentElem e) (g : GL ι R) : GL ι R where
  val := pr e (g : Matrix ι ι R)
  inv := pr e ((g⁻¹ : GL ι R) : Matrix ι ι R)
  val_inv := by rw [pr_mul he, Units.mul_inv, pr_one]
  inv_val := by rw [pr_mul he, Units.inv_mul, pr_one]

theorem prU_mem {e : A} (he : IsIdempotentElem e) (c : R →ₐ[A] R) (J : Matrix ι ι R) (g : GL ι R)
    (hg : g ∈ UG c J) : prU he g ∈ UG c J := by
  have h1 : e * (1 - e) = 0 := by rw [mul_sub, mul_one, he.eq, sub_self]
  have h2 : (1 - e) * e = 0 := by rw [mul_comm, h1]
  have h3 : (1 - e) * (1 - e) = 1 - e := he.one_sub.eq
  have hg' : (g : Matrix ι ι R)ᵀ * J * (g : Matrix ι ι R).map c = J := hg
  show (pr e (g : Matrix ι ι R))ᵀ * J * (pr e (g : Matrix ι ι R)).map c = J
  have hm : (pr e (g : Matrix ι ι R)).map c = pr e ((g : Matrix ι ι R).map c) := by
    ext i j; simp [pr, Matrix.one_apply, map_add, map_smul]; split_ifs <;> simp
  rw [hm]
  simp only [pr, Matrix.transpose_add, Matrix.transpose_smul, Matrix.transpose_one, Matrix.add_mul, Matrix.mul_add,
    Matrix.smul_mul, Matrix.mul_smul, smul_smul, smul_add, Matrix.mul_one, Matrix.one_mul, he.eq, h1, h2, h3, zero_smul,
    add_zero, zero_add, hg']
  rw [← add_smul, add_sub_cancel, one_smul]

end Idem
end GlobalTheory.ArchFinSplit

