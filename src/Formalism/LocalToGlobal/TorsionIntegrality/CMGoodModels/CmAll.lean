import Formalism.LocalToGlobal.TorsionIntegrality.CMGoodModels.CM4
import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.IsIntegralOfRoot
import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.TorStatus
import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.FgStatus
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.StatementE
import Formalism.GradedWeylDivisibility.StatementA
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LRowdivLemmas
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.StatementN
import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.ModGDefs
import ReciprocityTheory.ClassFieldTheory.LocalClassField.ExistsIntEKMulVbar
import ReciprocityTheory.ClassFieldTheory.LocalClassField.GalBasic
import ReciprocityTheory.ClassFieldTheory.LocalClassField.NormSubEqOneOfPowEqOne

namespace Formalism.L2.Th1.CM

theorem cm1 : JInvariantIntegrality := ReciprocityTheory.ChartRestriction.L1.cm1
theorem cm4 : CM4 := ReciprocityTheory.ChartRestriction.L1.cm4
theorem cm3 : CM3 := ReciprocityTheory.ChartRestriction.L1.cmIntegralityThree
theorem cm2 [h : Fact CM2] : CM2 := h.out

end Formalism.L2.Th1.CM
