import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocalWhittakerDuality.FibProp
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PureTensorDecompositionLocal

open MeasureTheory Matrix GroundTheory.LocalField GroundTheory.Automorphic Ad3 Ad3.K.GL2LocalData
open scoped ValuativeRel

noncomputable section

namespace GlobalTheory.CompanionTheory.SplitGauss

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  [MeasurableSpace F] [BorelSpace F]

omit [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F] [MeasurableSpace F] [BorelSpace F] in

theorem trace_swap (u z : F × F) :
    Algebra.trace F (F × F) (swapE u * z) = z.1 * u.2 + z.2 * u.1 := by
  have h : ∀ x : F × F, Algebra.trace F (F × F) x = x.1 + x.2 := fun x => by
    rw [Algebra.trace_prod]; simp
  rw [h]
  show u.2 * z.1 + u.1 * z.2 = _
  ring

end GlobalTheory.CompanionTheory.SplitGauss
