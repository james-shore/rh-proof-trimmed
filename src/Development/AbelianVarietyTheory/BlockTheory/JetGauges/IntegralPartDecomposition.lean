import Mathlib

open scoped TensorProduct NumberField nonZeroDivisors Classical
open Module UniqueFactorizationMonoid IsDedekindDomain

noncomputable section

namespace GlobalTheory.IndefiniteRowSideFullHecke.IntegralPartDecomposition

variable {E : Type} [Field E] [NumberField E] {C : Type} [Field C] [CharZero C]
variable {ι : Type} [Fintype ι]

def evalAt (σ : E →+* C) : E ⊗[ℚ] C →ₐ[ℚ] C :=
  Algebra.TensorProduct.productMap σ.toRatAlgHom (AlgHom.id ℚ C)

end GlobalTheory.IndefiniteRowSideFullHecke.IntegralPartDecomposition
