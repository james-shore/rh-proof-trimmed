import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocalWhittakerDuality.DampedFunctionalEquationAtPoint

open MeasureTheory Matrix GroundTheory.LocalField GroundTheory.Automorphic Ad3 Ad3.K.GL2LocalData
open scoped ValuativeRel

noncomputable section

namespace GlobalTheory.CompanionTheory.GL2DualWhittakerPair.Slice

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  [MeasurableSpace F] [BorelSpace F]

def J (ψ : AddChar F Circle) (p : Matrix (Fin 2) (Fin 2) F → ℂ) (t : F × F × F) : ℂ :=
  p !![t.1, t.2.1; t.2.2, 1] * (ψ (-(t.2.1 + t.2.2)) : ℂ)

end GlobalTheory.CompanionTheory.GL2DualWhittakerPair.Slice
