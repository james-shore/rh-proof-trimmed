import Mathlib
import Formalism.LocalRingCardinality.DataKerI
import Formalism.LocalToGlobal.Columns.AbelianHostFieldConditions
import Formalism.LocalToGlobal.Columns.StdLatUnimodular

noncomputable section

namespace GlobalTheory.IndefiniteRowSideFullHecke.UnipotentLevelStabilisers

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.L2.Col

variable (D : D7)

def TypePrimesLarge : Prop := ∀ i, 2 * D.R.f * D.R.k + 1 < D.host.g i

end GlobalTheory.IndefiniteRowSideFullHecke.UnipotentLevelStabilisers

end
