import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocallyConstantMajorants.GammaSplitting.ComplexMatrixMajorantIntegrable
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegrableMulCIff
open MeasureTheory Matrix
open Ad3.K Ad3.K.LC Ad3.K.LC.C GlobalTheory.CompanionTheory.GodementFE

noncomputable section

namespace GlobalTheory.CompanionTheory.UnitaryCompSchwartz

def rowMul (A : Matrix (Fin 2) (Fin 2) ℂ) : (Fin 2 → ℂ) →L[ℝ] (Fin 2 → ℂ) :=
  { toFun := fun v => Matrix.vecMul v A
    map_add' := fun x y => Matrix.add_vecMul A x y
    map_smul' := fun r x => by simp [Matrix.smul_vecMul]
    cont := by
      refine LinearMap.continuous_of_finiteDimensional
        ({ toFun := fun v => Matrix.vecMul v A
           map_add' := fun x y => Matrix.add_vecMul A x y
           map_smul' := fun r x => by simp [Matrix.smul_vecMul] } :
          (Fin 2 → ℂ) →ₗ[ℝ] (Fin 2 → ℂ)) }

theorem rowMul_apply (A : Matrix (Fin 2) (Fin 2) ℂ) (v : Fin 2 → ℂ) :
    rowMul A v = Matrix.vecMul v A := rfl

end GlobalTheory.CompanionTheory.UnitaryCompSchwartz
