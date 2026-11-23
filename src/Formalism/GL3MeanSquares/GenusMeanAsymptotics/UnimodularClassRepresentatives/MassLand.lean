import Mathlib
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.MassLandA
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.MassLandD
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.MassLandG

open NumberField Module

noncomputable section

namespace Formalism.HermitianLattices.Ext.L3

theorem hermRepUnram [Fact HermRepUnram] : HermRepUnram := Fact.out

theorem orthBasisPos : OrthBasisPos := orthBasisPos_holds

end Formalism.HermitianLattices.Ext.L3
