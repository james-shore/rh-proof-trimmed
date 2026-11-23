import Mathlib
import Formalism.PeriodIntegrals.SameFormAllLevels
import Formalism.LocalRingCardinality.DataArith

noncomputable section

namespace PI.Dv.Tr

open PI.Dv Module NumberField

section Conv

variable {K : Type} [Field K] [NumberField K] [StarRing K] [IsTotallyComplex K]

def kap (K : Type) [Field K] [NumberField K] : ℝ := Formalism.HN.logDisc K / (finrank ℚ K : ℝ) - Real.log 2

end Conv

end PI.Dv.Tr
