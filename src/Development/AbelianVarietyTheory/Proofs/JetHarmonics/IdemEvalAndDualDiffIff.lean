import Mathlib
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.IdemDen
import Development.AbelianVarietyTheory.BlockTheory.JetGauges.IntegralPartDecomposition

open scoped TensorProduct NumberField nonZeroDivisors
open Module UniqueFactorizationMonoid IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G.TB GlobalTheory.IndefiniteRowSideFullHecke.IntegralPartDecomposition

noncomputable section

namespace GlobalTheory.IdemCompare

variable {E : Type} [Field E] [NumberField E] {C : Type} [Field C] [CharZero C]

theorem evAt_eq (σ : E →+* C) : evAt σ = evalAt σ := rfl

end GlobalTheory.IdemCompare
