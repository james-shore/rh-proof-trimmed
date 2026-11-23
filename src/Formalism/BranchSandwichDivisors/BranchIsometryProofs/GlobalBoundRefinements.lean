import Mathlib

open Finset Module NumberField IsDedekindDomain

noncomputable section

namespace Formalism.BranchingDeterminantCap

namespace VacLev

theorem hyp1 : (LinearMap.id : ℚ →ₗ[ℚ] ℚ) ∘ₗ LinearMap.id = LinearMap.id := rfl
end VacLev

namespace PlaceVacuity

def swapL : ℚ × ℚ →ₗ[ℚ] ℚ × ℚ := (LinearEquiv.prodComm ℚ ℚ ℚ).toLinearMap

def Pc : Submodule ℚ (Fin 2 → ℚ × ℚ) :=
  LinearMap.eqLocus (LinearMap.proj 1) (swapL.comp (LinearMap.proj 0))

theorem mem_Pc (φ : Fin 2 → ℚ × ℚ) : φ ∈ Pc ↔ φ 1 = (φ 0).swap := Iff.rfl

end PlaceVacuity

end Formalism.BranchingDeterminantCap
