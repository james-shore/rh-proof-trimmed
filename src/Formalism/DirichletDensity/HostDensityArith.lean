import Formalism.DirichletDensity.DirichletDensityProofs.QuadDiscr
import Formalism.DirichletDensity.DirichletDensityProofs.MQDiscr

namespace Formalism.HF.Final

theorem quadDiscr : Formalism.HF.QuadDiscr := Formalism.HF.quadDiscr
theorem mqDiscr : Formalism.HF.MQDiscr := Formalism.HF.mqDiscr_of quadDiscr
end Formalism.HF.Final
