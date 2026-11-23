import Formalism.LocalToGlobal.GlobalTheory.AnalyticConclusionOfProp25
import Formalism.GL3MeanSquares.BoxCountAll
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.CountZDefs
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.JacobiCharacterSums.CountZPair

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.MergeGL2b

open Formalism.LFunctionChainParameters Formalism.HermitianLattices Formalism.L2.GlobalTheoryTheory.MergeGL2

theorem boxCountAll_iff : BoxCountUnconditional.BoxCountAll ↔ ∃ C : ℝ, ZeroFreeRegionGL2.BoxCountHyp C := Iff.rfl

end Formalism.L2.GlobalTheoryTheory.MergeGL2b
