import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.LevGapFacts
import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GapAtLeast
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.ClassCountFib
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.LevGap
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.ClassCountSurj
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.ClassCountStab
import Formalism.LocalRingCardinality.SpanPowerMembership.CodeRecordDiscriminantLevel
import Formalism.LocalRingCardinality.SpanPowerMembership.RowsMemBaseField
import Formalism.LocalRingCardinality.SpanPowerMembership.NZLevD
import Formalism.SharpRestriction.GrowthBounds.FormalGroupSystem
import Formalism.LocalToGlobal.GroupLattices.PerfectRings.JOInjective
import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.FiltrationBoundaryCriterion
import Formalism.SharpRestriction.GlobalTheoremInputs
import Formalism.GL3MeanSquares.SmoothedRemainderRealIntegralFormula
import Formalism.GL3MeanSquares.HookFormulaTorsion.PrimesInProgressionCountLowerBound
import Formalism.GL3MeanSquares.SecondEstimateOfIntervalHypothesis
import Formalism.ZetaNonvanishing.ZetaLandau
import Formalism.SizeWindowBrackets.ChainSlopeWindows.StronglyIrreducible
import Formalism.SizeWindowBrackets.SmoothedRemainderRealIntegralFormula
import Formalism.SizeWindowBrackets.ChainSlopeWindows.GaloisMapComplexConjugation
import Formalism.SharpRestriction.GlobalSchurBounds.ThickPlacesCorollaryOfAnyTranslate
import Formalism.SharpRestriction.GlobalSchurBounds.TopDensityNGeSixteen
import Formalism.SharpRestriction.InertJacobiLevels.ExtraNum

noncomputable section

namespace Formalism.MainNotions.Gaps.CC

open NumberField IsDedekindDomain Matrix Formalism.UG Formalism.BasicNotions Formalism.BasicNotions.Examples₂ Formalism.FrobeniusOrbits Formalism.MainNotions.Inhab Formalism.MainNotions.StandardLattice Formalism.MainNotions.Gaps.LG
open scoped TensorProduct

section Rec

variable {D : D7}

theorem massI_eq (M : ℕ) : massI D M = massH D.host M := rfl

end Rec

section Base

variable {R : Ranks} (H : Host R) (T0 : ℕ) [hT0 : Fact T0.Prime] (pz0 : 𝓞 H.E)
  (hpz0 : (pz0 : H.E) * H.conj (pz0 : H.E) = (T0 : H.E))

theorem card_clsPkg (X : Type) [Finite X] (d : ℕ) (hd : 0 < d) : Nat.card ((clsPkg X d hd).cls 0) = Nat.card X := rfl

end Base

end Formalism.MainNotions.Gaps.CC

end
