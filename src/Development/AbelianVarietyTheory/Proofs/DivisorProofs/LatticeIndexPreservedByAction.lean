import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsL2OnDiagonalOfIsL2Metric
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.EqOfIsometricTrivShift
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.SiegelReframe
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodMapSymplecticTransform
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SiegelActionIsMulAction
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.DifferentiableOnOfTendstoLocallyUniformlyOn
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenGraph
import ReciprocityTheory.AnalyticForms.AnalyticCharts.Osgood
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodMapFlatDerivative
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.TranslationInv
import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsAddFundamentalDomainLatticeDomain

open CategoryTheory AlgebraicGeometry Set Matrix ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.CxPts GlobalTheory.ArInt GlobalTheory.TorsionForm
open GlobalTheory.LB (toMod)
open GlobalTheory.LieVB (omega)
open GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe (Fl Pt stdLat symMat tauU siegel symPart ChernIsFlat IsMetric InducesPolarisation cov)
open ReciprocityTheory.L2DbarEstimates (V)
open Filter Topology
open scoped ContDiff
open GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe

noncomputable section

namespace GlobalTheory.RatLatIndex

open Module

variable {g : ℕ}

scoped instance instDiscreteStdLat : DiscreteTopology (stdLat g) := by
  unfold stdLat; infer_instance

scoped instance instZLatticeStdLat : IsZLattice ℝ (stdLat g) := by
  unfold stdLat; infer_instance

end GlobalTheory.RatLatIndex

namespace GlobalTheory.RatLatIndex
end GlobalTheory.RatLatIndex

