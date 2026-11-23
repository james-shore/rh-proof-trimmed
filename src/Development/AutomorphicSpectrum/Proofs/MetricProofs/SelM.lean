import Mathlib
import Development.AutomorphicSpectrum.Definitions.MetricPeriods.GeometricAbelianConnected
import Development.AutomorphicSpectrum.Definitions.MetricPeriods.GenericBlockMatrixIsBlockDiag

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.PB.StepW

def selM {N : ℕ} (S : Finset (Fin N)) : Matrix (Fin N) (Fin S.card) ℂ :=
  Matrix.of fun a b => if a = S.orderEmbOfFin rfl b then 1 else 0

end GlobalTheory.CompanionTheory.Ar.PB.StepW
