import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.DualWhittakerAdelicGL3
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.AdelicGaussians.UpperRightUnipotentInvariance
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.SquareIntegrable.WhittakerModelGL2
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TemperedBoundGL2
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PureTensorDecompositionLocal

open NumberField IsDedekindDomain MeasureTheory GroundTheory.Global GroundTheory.LocalField GroundTheory.Automorphic GroundTheory.Automorphic.AutomorphicForm Ad3 Ad3.K Ad3.K.QuadraticBaseChangeGL3
open GroundTheory.Automorphic.GodementSection (localChar)
open GroundTheory.Global.AdicLiesOver
open scoped ValuativeRel
open GlobalTheory.CompanionTheory.DualHol

noncomputable section

namespace GlobalTheory.CompanionTheory.WcSplit

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  [MeasurableSpace F] [BorelSpace F]

def phiW (χ : AddChar F Circle) (Φ : F × F → ℂ) (x : Fin 2 → F) : ℂ :=
  ∫ r, Φ (x 0, r) * (χ (r * x 1) : ℂ) ∂selfDualMeasure χ

theorem phiW_pair (χ : AddChar F Circle) (Φ : F × F → ℂ) (p y : F) :
    phiW χ Φ ![p, y] = localFourier (selfDualMeasure χ) χ (fun r => Φ (p, r)) y := rfl

end GlobalTheory.CompanionTheory.WcSplit

namespace GlobalTheory.CompanionTheory.WcSplit

end GlobalTheory.CompanionTheory.WcSplit

