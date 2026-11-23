import CompanionTheory.AutomorphicTheory.SchurLimitBounds.ZuckermanDuality.Assemble
import CompanionTheory.AutomorphicTheory.SchurLimitBounds.ZuckermanDuality.Letter
import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AdmissibleSmoothVectors.MapStdPoly
import CompanionTheory.HarishChandraModules.BesselParameterIntegrals.InPCommutatorOfInK
import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AdmissibleSmoothVectors.FinOfPI
import CompanionTheory.HarishChandraModules.BesselParameterIntegrals.SmoothCyclicVectors.IntegralMemOfIsClosed

noncomputable section

namespace CompanionTheory.LimBd.Main

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.P Formalism.FourierDecayAlt.P.CutBP

theorem span_powers : SpanPow := mul_mem_spanBox_of_gap

variable {P : M.Par} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]

end CompanionTheory.LimBd.Main
