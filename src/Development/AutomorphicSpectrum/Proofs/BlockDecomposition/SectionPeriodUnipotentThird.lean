import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocallyConstantMajorants.GammaSplitting.UnipotentTateFunctionalEquation
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegrableMulCIff
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TateLocalL1
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocallyConstantMajorants.GammaSplitting.ComplexMatrixMajorantIntegrable
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocallyConstantMajorants.GammaSplitting.InnW

noncomputable section

open MeasureTheory Matrix Filter Topology
open Ad3.K Ad3.K.LC Ad3.K.LC.C GlobalTheory.CompanionTheory.GodementFE

namespace GlobalTheory.CompanionTheory.PerUThreeC

def Ax (k : ℕ) (Ψ : Sw) (h : M22) (M : Matrix (Fin 2) (Fin 2) ℂ) (x : Fin 2 → ℂ) : ℂ :=
  W2 k (sl Ψ (Matrix.of.symm (Matrix.of h * blk x))) M

def Gy (Ψ : Sw) (h : M22) (M : Matrix (Fin 2) (Fin 2) ℂ) (x : Fin 2 → ℂ) (t : ℂ) : ℂ :=
  ∫ y : ℂ, Ψ (Matrix.of.symm (Matrix.of h * blk x), Matrix.vecMul ![t, t * y] M) * psiC (-y)

theorem Ax_eq (k : ℕ) (Ψ : Sw) (h : M22) (M : Matrix (Fin 2) (Fin 2) ℂ) (x : Fin 2 → ℂ) :
    Ax k Ψ h M x = ph (2 * (k : ℤ) - 2) M.det * ((‖M.det‖ : ℝ) : ℂ) *
      ∫ t : ℂ, ph (4 * (k : ℤ) - 4) t * Gy Ψ h M x t := rfl

end GlobalTheory.CompanionTheory.PerUThreeC
