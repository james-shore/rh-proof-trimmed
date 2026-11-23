import Mathlib
import Formalism.FrobeniusOrbits.Statement
import Formalism.FrobeniusOrbits.DiscrMaximalRealCyclotomic

open NumberField IntermediateField Ideal

noncomputable section

namespace Formalism.FrobeniusOrbits

open Formalism.TwoAdicCyclotomicDecomposition

namespace Misc2

end Misc2

open Misc2

namespace Misc2

def conjHom {G : Type*} [Group G] (χ : G →* ℂˣ) : G →* ℂ :=
  (starRingEnd ℂ).toMonoidHom.comp ((Units.coeHom ℂ).comp χ)

theorem chC_apply (e : ℕ) (g : GG e) : ((chC e g : ℂˣ) : ℂ) = (((g.1.2 : ℤˣ) : ℤ) : ℂ) := rfl

end Misc2

end Formalism.FrobeniusOrbits
