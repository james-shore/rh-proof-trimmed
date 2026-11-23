import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SemiposAtOfPositive
import Development.AbelianVarietyTheory.Definitions.Divisors.TupleReadBaseTupleEqFamily
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import GroundTheory.GlobalFields.IdeleGroups.ClassGroup
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SumAbsExOfLe
import Development.AbelianVarietyTheory.BlockTheory.HeightDefect.SphereBlockLogMean
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.TopRankPowers
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsChowFormGenericHyperplaneSection
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMemChart
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NontrivialIsomClassInt

set_option autoImplicit false
set_option synthInstance.maxHeartbeats 400000

noncomputable section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Pj Formalism.BasicNotions.TH Formalism.L2.Theta ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD GlobalTheory.AllWt GlobalTheory.CompHt GlobalTheory.CovTop GlobalTheory.BigTop GlobalTheory.CovHt

namespace GlobalTheory.CovHt.HtTopG

theorem two_lt_half_finrank (D : D7) : 2 < Module.finrank ℚ D.host.E / 2 := by
  have := D.eight_le_f
  rw [D.host.finrank_cmField]
  unfold Ranks.f Ranks.n at *
  omega

end GlobalTheory.CovHt.HtTopG

end
