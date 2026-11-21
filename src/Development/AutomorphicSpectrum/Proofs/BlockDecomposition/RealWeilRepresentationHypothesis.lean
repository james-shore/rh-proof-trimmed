import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.PureThetaTransfer.REALTH
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FourierTransformMatrixSpaceInvolution

noncomputable section

open MeasureTheory Ad3.K Ad3.K.QuadraticBaseChangeGL3.Th ComplexConjugate

namespace GlobalTheory.CompanionTheory.RealWeil

def ee (x : ℝ) : ℂ := Complex.exp (2 * Real.pi * Complex.I * (x : ℂ))

@[simp] theorem ee_zero : ee 0 = 1 := by simp [ee]

open Filter Topology
open scoped FourierTransform

end GlobalTheory.CompanionTheory.RealWeil
