import Mathlib
import Formalism.SharpRestriction.GlobalSchurBounds.FlipTwoThree
import Formalism.LocalToGlobal.HermitianForms.PrkSmul
import Formalism.GradedWeylDivisibility.StatementE
import Formalism.SuccessiveMinima.StatementMink
import Formalism.SharpRestriction.GlobalSchurBounds.IntegrableOfContinuousCircleMeasure

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.TraceIntegrality

open Formalism.BasicNotions Formalism.MainNotions.flipTwoThree

def shiftW {N : ℕ} (lam : DomWeight N) (c : ℤ) : DomWeight N where
  w := fun i => lam.w i + c
  anti := fun i j h => by have := lam.anti h; simp only; omega

theorem shiftW_w {N : ℕ} (lam : DomWeight N) (c : ℤ) : (shiftW lam c).w = fun i => lam.w i + c := rfl

end Formalism.L2.GlobalTheoryTheory.TraceIntegrality

end
