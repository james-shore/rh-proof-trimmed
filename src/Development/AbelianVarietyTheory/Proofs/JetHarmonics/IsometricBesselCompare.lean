import Mathlib
import Development.AbelianVarietyTheory.Definitions.Jets.SumIoPrAlt
import Formalism.SharpRestriction.CuspSpanNormBounds.RelevantZeroGramTerms
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightUniqueness.UnitaryOfBlockWMem
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LUFactorOrbitBounds
import Formalism.PeriodIntegrals.QuotInv
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.MatGroupHaarUniqueFiniteCompactOpenPos
import Development.AbelianVarietyTheory.BlockTheory.JetGauges.DecreasingNodeGaps

open BranchingSupport Formalism.FourierDecayAlt Formalism.FourierDecayAlt.ThreeDimData Matrix MeasureTheory Finset
open scoped InnerProductSpace ENNReal

noncomputable section

namespace GlobalTheory.BesselOrth

section L2

variable {X E : Type} [MeasurableSpace X] {ν : Measure X} [NormedAddCommGroup E] [InnerProductSpace ℂ E]

theorem integrable_inner {f g : X → E} (hf : MemLp f 2 ν) (hg : MemLp g 2 ν) :
    Integrable (fun x => ⟪f x, g x⟫_ℂ) ν := by
  refine (L2.integrable_inner (𝕜 := ℂ) (hf.toLp f) (hg.toLp g)).congr ?_
  filter_upwards [hf.coeFn_toLp, hg.coeFn_toLp] with x h1 h2
  rw [h1, h2]

end L2

end GlobalTheory.BesselOrth

namespace GlobalTheory

end GlobalTheory

end
