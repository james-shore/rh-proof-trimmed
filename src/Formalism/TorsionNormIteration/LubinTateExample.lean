import Formalism.TorsionNormIteration.InverseIntegralClasses.SolveExistsProof
import Formalism.TorsionNormIteration.InverseIntegralClasses.InvInt
import Formalism.TorsionNormIteration.InverseIntegralClasses.SigmaNormLeOne
import Formalism.TorsionNormIteration.InverseIntegralClasses.MemSpanOfNormLe
import Formalism.TorsionNormIteration.InverseIntegralClasses.NormSigmaLeOne
import Formalism.TorsionNormIteration.InverseIntegralClasses.MapSubtypeInjective

namespace Formalism.LT

universe u v

theorem funEqSubst : Formalism.G.FunEqSubst.{u, v} :=
  FunEqSubst_of IntegralSubst_proof CoeffBound_valid PowCongr_valid FrobCongr_valid

theorem funEqGroup : Formalism.G.FunEqGroup.{u} :=
  FunEqGroup_of SolveExists_proof InvIntegralOfClass_proof FunEqLowCoeff_proof funEqSubst

theorem funEqHom : Formalism.G.FunEqHom.{u} :=
  FunEqHom_of SolveExists_proof InvIntegralOfClass_proof FunEqLowCoeff_proof funEqSubst

end Formalism.LT
