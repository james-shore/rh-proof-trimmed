import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjLinApply
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdaptedPlanePairRestrictionFirst
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EigenIntertwinerRestrictionStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicSchwartzConjMemStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjLocalOperatorStatement

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.DblEval
open GlobalTheory.Doubling (absE)

noncomputable section

namespace GlobalTheory.DblEvalW

theorem fromCols_mul_blockDiag_transpose {R : Type} [CommRing R] {m a b : Type} [Fintype a] [Fintype b]
    (z₁ z₂ : Matrix m b R) (A : Matrix a b R) :
    Matrix.fromCols z₁ z₂ * (Matrix.fromBlocks A 0 0 A)ᵀ = Matrix.fromCols (z₁ * Aᵀ) (z₂ * Aᵀ) := by
  rw [Matrix.fromBlocks_transpose, Matrix.transpose_zero]
  ext i j
  cases j <;> simp [Matrix.mul_apply, Matrix.fromCols, Matrix.fromBlocks, Fintype.sum_sum_type]

end GlobalTheory.DblEvalW

end
