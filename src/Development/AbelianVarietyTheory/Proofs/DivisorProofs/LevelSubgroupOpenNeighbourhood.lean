import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Definitions.Divisors.IsCompactIsOpenUnitsAt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OneMemFinPt

noncomputable section

namespace GlobalTheory.LevelSplit

open scoped Matrix
open GlobalTheory.WeilM

section Alg

variable {R : Type} [CommRing R] {B : Type} [Ring B] [Algebra R B]

theorem comp_mul_mid {e : R} (he : e * e = e) (X J Y : B) :
    (e • (X - 1) + 1) * J * (e • (Y - 1) + 1) = e • (X * J * Y - J) + J := by
  simp only [add_mul, mul_add, smul_mul_assoc, mul_smul_comm, smul_smul, he, one_mul, mul_one, sub_mul, mul_sub,
    smul_add, smul_sub]
  abel

theorem comp_mul {e : R} (he : e * e = e) (X Y : B) :
    (e • (X - 1) + 1) * (e • (Y - 1) + 1) = e • (X * Y - 1) + 1 := by
  simpa only [mul_one] using comp_mul_mid he X 1 Y

end Alg

section Grp

variable {R : Type} [CommRing R] {A : Type} [CommRing A] [Algebra R A] {c : A →ₐ[R] A}
  {ι : Type} [Fintype ι] [DecidableEq ι] {J : Matrix ι ι A}

def comp {e : R} (he : e * e = e) (g : UG c J) : UG c J :=
  ⟨⟨e • ((g.1 : Matrix ι ι A) - 1) + 1, e • (((g.1⁻¹ : GL ι A) : Matrix ι ι A) - 1) + 1,
    by rw [comp_mul he, Units.mul_inv, sub_self, smul_zero, zero_add],
    by rw [comp_mul he, Units.inv_mul, sub_self, smul_zero, zero_add]⟩, by
    have hg : (g.1 : Matrix ι ι A)ᵀ * J * (g.1 : Matrix ι ι A).map c = J := g.2
    show (e • ((g.1 : Matrix ι ι A) - 1) + 1)ᵀ * J * (e • ((g.1 : Matrix ι ι A) - 1) + 1).map c = J
    have h1 : (e • ((g.1 : Matrix ι ι A) - 1) + 1).map c = e • ((g.1 : Matrix ι ι A).map c - 1) + 1 := by
      ext i j
      by_cases h : i = j <;> simp [Matrix.one_apply, h]
    rw [h1, Matrix.transpose_add, Matrix.transpose_smul, Matrix.transpose_sub, Matrix.transpose_one,
      comp_mul_mid he, hg, sub_self, smul_zero, zero_add]⟩

end Grp

end GlobalTheory.LevelSplit

namespace GlobalTheory

end GlobalTheory

end
