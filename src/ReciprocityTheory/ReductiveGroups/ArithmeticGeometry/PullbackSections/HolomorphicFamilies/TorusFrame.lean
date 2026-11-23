import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.SupGenTies
import Formalism.LocalRingCardinality.CoeNeZeroOfNotMem
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.HfRsmulRight

noncomputable section

namespace ReciprocityTheory.ChartRestriction.G.PullbackSections.PfTorusFrame

open NumberField MeasureTheory ReciprocityTheory.ChartRestriction.G.I2 ReciprocityTheory.ChartRestriction.G.Geo.Tor

variable {E : Type} [Field E] [NumberField E] [IsCMField E]

lemma finrank_eq (D : Formalism.BasicNotions.D7) : Module.finrank ℚ D.host.E = 2 * D.R.f := by
  rw [D.host.der.finrank_E, Formalism.BasicNotions.Ranks.f]
  have hn : D.R.n = D.R.ord := rfl
  rw [hn]
  ring

end ReciprocityTheory.ChartRestriction.G.PullbackSections.PfTorusFrame
