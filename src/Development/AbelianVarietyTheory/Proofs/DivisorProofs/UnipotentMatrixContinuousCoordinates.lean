import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoC
open scoped TensorProduct Matrix
open NumberField IsDedekindDomain MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ThK.UnipDom

noncomputable section

namespace GlobalTheory.ThK.UnipMat

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem mat_mul {σ : E →ₐ[F] E} {n : ℕ} {J : Matrix (Fin n) (Fin n) E} (u v : UA σ J) : mat (u * v) = mat u * mat v := rfl

theorem mat_one {σ : E →ₐ[F] E} {n : ℕ} {J : Matrix (Fin n) (Fin n) E} : mat (1 : UA σ J) = 1 := rfl

variable (σ : E →ₐ[F] E)

end GlobalTheory.ThK.UnipMat

namespace GlobalTheory.ThK.UnipMat

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

def colE {d₁ : ℕ} (H' : Plane E (d₁ + 2) d₁) : Fin (d₁ + 2) → Fin (d₁ + 2) → E :=
  Matrix.vecCons H'.x (Fin.snoc (α := fun _ => Fin (d₁ + 2) → E) (fun j => H'.ι.col j) H'.y)

theorem colE_zero {d₁ : ℕ} (H' : Plane E (d₁ + 2) d₁) : colE H' 0 = H'.x := rfl

variable (σ : E →ₐ[F] E)

end GlobalTheory.ThK.UnipMat

namespace GlobalTheory.ThK.UnipMat

end GlobalTheory.ThK.UnipMat

namespace GlobalTheory.ThK.UnipDom

end GlobalTheory.ThK.UnipDom
