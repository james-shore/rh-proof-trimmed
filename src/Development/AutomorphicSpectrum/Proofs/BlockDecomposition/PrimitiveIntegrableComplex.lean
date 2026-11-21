import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocallyConstantMajorants.GammaSplitting.ComplexMatrixMajorantIntegrable
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TateLocalL1

noncomputable section

open MeasureTheory Matrix
open Ad3 Ad3.K Ad3.K.LC Ad3.K.LC.C

namespace GlobalTheory.CompanionTheory.PrimalIntC

def matX (r : M22 × (Fin 2 → ℂ)) : M23 :=
  Matrix.of.symm (Matrix.of r.1 * blk r.2 * ((1 : GL (Fin 3) ℂ) : Matrix (Fin 3) (Fin 3) ℂ))

theorem innQ_eq (Ψ : Sw) (h : M22) (v : Fin 2 → ℂ) :
    innQ Ψ 1 h 1 v = ∫ x : Fin 2 → ℂ, Ψ (matX (h, x), v) * psiC (-((1 : ℂ) * x 1)) := rfl

end GlobalTheory.CompanionTheory.PrimalIntC
