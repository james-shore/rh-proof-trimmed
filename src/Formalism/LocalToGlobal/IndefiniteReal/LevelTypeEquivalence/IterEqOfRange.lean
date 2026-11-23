import Mathlib
import Formalism.NormUnitaryBounds.Statement
import Formalism.NormUnitaryBounds.DetPolynomialWeights.LtSuccOfMemWeightCompositions
import Formalism.LatticeTheta.Statement
import Formalism.LatticeTheta.LatticeThetaProofs.InnerDualVecBasis

namespace Formalism.IndefR.Eqv

open scoped ContDiff
open MeasureTheory

section Pt

variable {E : Type} [NormedAddCommGroup E] [NormedSpace ℝ E]

def ev {k : ℕ} (j : Fin k) : Fin k → ℝ := Pi.single j 1

end Pt

end Formalism.IndefR.Eqv
