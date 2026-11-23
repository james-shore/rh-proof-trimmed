import Formalism.SizeWindowBrackets.Chain2aCoreNoAnalytic
import Formalism.LogFactorialIndices.StatementSize

open Module NumberField IsDedekindDomain
open Formalism.HN

noncomputable section

namespace Formalism.LFunctionChainParameters.LBrDiv

open Formalism Formalism.D5 Formalism.RankGapBounds.WeightedMeanData Formalism.LFunctionChainParameters.WeightedSlopeBounds Formalism.LFunctionChainParameters.characterSumData Formalism.LFunctionChainParameters.LErr Formalism.LFunctionChainParameters.LChain2

lemma ph_eq (y : ℝ) : Formalism.LatticeIndexTer.ph y = ph y := rfl

end Formalism.LFunctionChainParameters.LBrDiv
