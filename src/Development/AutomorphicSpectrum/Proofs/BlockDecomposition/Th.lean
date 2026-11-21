import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocalWhittakerDuality.DampedFunctionalEquationAtPoint

open MeasureTheory Matrix GroundTheory.LocalField GroundTheory.Automorphic Ad3 Ad3.K.GL2LocalData
open scoped ValuativeRel

noncomputable section

namespace GlobalTheory.CompanionTheory.DampedZetaMajorant

section D

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  [MeasurableSpace F] [BorelSpace F]

def wR (p : Fˣ × Fˣ × GL (Fin 2) F) : ℝ := (modulus (p.1 : F) : ℝ)⁻¹

end D

end GlobalTheory.CompanionTheory.DampedZetaMajorant
