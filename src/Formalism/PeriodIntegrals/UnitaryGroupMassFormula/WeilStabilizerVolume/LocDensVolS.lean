import Mathlib
import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes
import Formalism.LocalToGlobal.SiegelLatticeTheory.FundamentalEquivalence.LevelIntersectParabolic
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeilStabilizerVolume.TensTop
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeilStabilizerVolume.TopoAF
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeilStabilizerVolume.ExistsUnifFv
import Formalism.SharpRestriction.CuspSpanNormBounds.GlobAut
import Formalism.SharpRestriction.CuspSpanNormBounds.PsiEDef

noncomputable section

namespace PI.VolStabW

namespace VolAAW

open scoped TensorProduct
open NumberField IsDedekindDomain MeasureTheory Topology Filter Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes

variable {F : Type} [Field F] [NumberField F]

theorem af_add (y z : Af F) (w : HeightOneSpectrum (𝓞 F)) : (y + z) w = y w + z w := rfl
theorem af_sub (y z : Af F) (w : HeightOneSpectrum (𝓞 F)) : (y - z) w = y w - z w := rfl
theorem af_neg (y : Af F) (w : HeightOneSpectrum (𝓞 F)) : (-y) w = -y w := rfl
theorem af_zero (w : HeightOneSpectrum (𝓞 F)) : (0 : Af F) w = 0 := rfl

end VolAAW

end PI.VolStabW
