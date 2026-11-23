import Formalism.LocalToGlobal.InertKernelTheory.IntegralInertOfWeakApproxTheta
import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.AlgKleinPf
import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.IntEasy
import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.IntPull
import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.IntWeak
import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.GlobalOrthonormalBasisFour
import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.IntAsm
import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.ThFourIntOf
import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.UnitSubstOfLoc
import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.MMFour
import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.OneCopyTh1SOfIsom

namespace Formalism.L2.KerInert

def WeakApproxAndOrthonormalBases : Prop := WAPlaces ∧ OneCopyOrth ∧ IsomONB

variable [Fact _root_.Formalism.L2.Th1.CM.CM2] in
theorem integral_inert_of_weakApprox (h : WeakApproxAndOrthonormalBases) : IntInert :=
  intInert_of combination_fact pairing_fact (weakApprox_of h.1) pullback_torsion pullback_fact AlgP.algebraic_fact_kernels
    power_series_linearity pairs_standard_at_p (basisInv_of_loc unit_substitution_local) tensor_matrix_units_fact
    (thFourInt_of (oneCopyLoc_of_isom h.2.2 AlgP.zero_value_algebraic) (locInv_of unit_substitution_local) four_products_from_one
      (MMOnb.globONB_of h.2.1) AlgP.zero_value_algebraic)

end Formalism.L2.KerInert
