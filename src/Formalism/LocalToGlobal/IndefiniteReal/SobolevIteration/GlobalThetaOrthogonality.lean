import Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull
import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction
import Formalism.LocalToGlobal.Divisibility.DefGroup
import Formalism.LocalToGlobal.IndefiniteReal.FockTheta.UnitBracket

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Mult
  MeasureTheory IsDedekindDomain NumberField

namespace Formalism.IndefR.Tow

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7}

def KAt {k : ℕ} (G s : Matrix (Fin k) (Fin k) ℂ) : Set (Matrix (Fin k) (Fin k) ℂ) :=
  {g | g ∈ Formalism.QuantumDeterminants.UH G ∧ g * s = s * g}

end Formalism.IndefR.Tow

end
