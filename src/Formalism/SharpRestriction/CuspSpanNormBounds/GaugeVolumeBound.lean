import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.SphericalFunctionIntegrableOfLocal
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnimodularity.CartierFrobeniusFormLocal
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnimodularity.LamAfLeOhatL
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RightRegularIsometricMultiplicative

noncomputable section

namespace Formalism.MainNotions.FundamentalDomainUnfolding

open MeasureTheory Formalism.MainNotions.S Formalism.MainNotions.PlaceDegreeData Formalism.MainNotions.BridgeLemma Formalism.MainNotions.LeviCoordinates
open scoped ENNReal

def muInf (I : AutInst) : Measure I.Ginf := Measure.pi fun v => Formalism.REAL.muG (I.ε v)

end Formalism.MainNotions.FundamentalDomainUnfolding

end
