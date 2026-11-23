import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.CoprimeTwoPow
import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.Galois
import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.ConjReal
import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.RealCyclotomicSubfield
import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.FrobMulInertia
import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.SplitK
import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.MuCardLeTwo
import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.Inertia
import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.Decomp
import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.CardTrivialFirstComponent
import Formalism.FrobeniusOrbits.RealSubfieldLeCompositum
import Formalism.CMTypeGalois.StatementGroup
import Formalism.FrobeniusOrbits.HostDiffSupport
import Formalism.FrobeniusOrbits.HostThickExists
import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.NcardEqTwoIff
import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.EqZeroOfNegEq

namespace Formalism.FrobeniusOrbits.Final

open Formalism.FrobeniusOrbits

theorem conj : HostConj := hostConj_of hostGalois hostGalSpec
theorem real : HostReal := hostReal_of hostGalois hostGalSpec conj
theorem f1 : TwoPowerCyclotomicLayerRealSubfieldCharacterization := real_subfield_of_galois_spec hostGalSpec
theorem cmType : HostCMType := hostCMType_of hostGalois hostGalSpec
theorem frob : HostFrob := hostFrob_of hostGalois hostGalSpec
theorem splitK : HostSplitK := hostSplitK_of (hostFrob_of hostGalois hostGalSpec)
theorem efgTwo : HostEFGTwo := hostEFGTwo_of hostInertia hostDecomp
theorem host_field :
    HostExample ∧ HostGroup ∧ HostOrders ∧ HostRecip ∧ HostFixed ∧ HostGalois ∧ HostGalSpec ∧
    HostConj ∧ HostReal ∧ TwoPowerCyclotomicLayerRealSubfieldCharacterization ∧ HostMu ∧ HostFrob ∧ HostInertia ∧ HostUnramEF ∧
    HostDecomp ∧ HostDecompConj ∧ HostEFGTwo ∧ HostSplitK ∧ HostCMType :=
  ⟨hostExample, hostGroup, hostOrders, hostRecip, hostFixed, hostGalois, hostGalSpec, conj, real, f1, hostMu,
    frob, hostInertia, hostUnramEF, hostDecomp, hostDecompConj, efgTwo, splitK, cmType⟩

end Formalism.FrobeniusOrbits.Final
