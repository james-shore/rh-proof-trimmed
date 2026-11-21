import Mathlib
import Development.AbelianVarietyTheory.Definitions.Foundations.CurveCl

noncomputable section

open MvPolynomial GlobalTheory.FlagPoly Formalism.DegreeFormula

namespace GlobalTheory.FlagFormDeg

section General

variable {V E : Type} [Fintype V] [DecidableEq V] [Fintype E] [DecidableEq E]

def apolar (P : MvPolynomial V ℝ) : MvPolynomial V ℝ →ₗ[ℝ] ℝ :=
  (basisMonomials V ℝ).constr ℝ fun m => (∏ x, ((m x).factorial : ℝ)) * P.coeff m

end General

variable {ι : Type} [Fintype ι] [DecidableEq ι] {N : ℕ}

end GlobalTheory.FlagFormDeg
