import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocalWhittakerDuality.DampedFunctionalEquationAtPoint
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.GaugeTopology.SSmoothW
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.VerticalStrips.UnramifiedEulerProductIntegral
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SigmaFinitePlaneMeasure

open MeasureTheory Matrix GroundTheory.LocalField GroundTheory.Automorphic Ad3 Ad3.K.GL2LocalData
open scoped ValuativeRel

noncomputable section

namespace GlobalTheory.CompanionTheory.GL2DualWhittakerPair.Cpt

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]

theorem inv_val (x : F) (a b : Fˣ) (κ : GL (Fin 2) F) :
    ((uni2 x * dg2 a b * κ)⁻¹ : GL (Fin 2) F).val =
      (κ⁻¹ : GL (Fin 2) F).val * !![((a⁻¹ : Fˣ) : F), -(x * ((a⁻¹ : Fˣ) : F)); 0, ((b⁻¹ : Fˣ) : F)] := by
  rw [_root_.mul_inv_rev, _root_.mul_inv_rev, Units.val_mul, Units.val_mul]
  congr 1
  have e1' : ((dg2 a b)⁻¹ : GL (Fin 2) F).val = !![((a⁻¹ : Fˣ) : F), 0; 0, ((b⁻¹ : Fˣ) : F)] := rfl
  have e2' : ((uni2 x)⁻¹ : GL (Fin 2) F).val = !![1, -x; 0, 1] := rfl
  rw [e1', e2']
  ext i j
  fin_cases i <;> fin_cases j <;> simp [Matrix.mul_apply, Fin.sum_univ_two, mul_comm]

end GlobalTheory.CompanionTheory.GL2DualWhittakerPair.Cpt
