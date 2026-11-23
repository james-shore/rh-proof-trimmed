import Formalism.SharpRestriction.GlobalSchurBounds.LinkPk
import Formalism.SharpRestriction.GlobalSchurBounds.JointsF

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.Places

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory

def LevelPrimeSettingFamily : Prop := ∀ {eps : ℝ} (Fm : FamP eps), TuSize Fm → SettingEventually Fm

end Formalism.L2.GlobalTheoryTheory.Places

end
