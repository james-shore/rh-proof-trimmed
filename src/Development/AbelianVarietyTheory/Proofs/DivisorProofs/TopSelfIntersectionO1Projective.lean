import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SecondCountableTopologyOfIsProjOver
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsConjFsBasisOfUnitary
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsEqnIffGeneratesAtInv
import ReciprocityTheory.L2DbarEstimates.LeviForms.EventuallyDifferentiableAtOfContDiffAt
import ReciprocityTheory.L2DbarEstimates.ChartDerivatives.MeasurableSetImageOfIsLocalHomeomorph
import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.DerivDerivNonposOfIsLocalMax
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FinrankRiemannRochNsmulHyperplane
import Development.AbelianVarietyTheory.Definitions.Divisors.AnalyticOnNhdFinChartIff
import ReciprocityTheory.AnalyticForms.AnalyticCharts.Osgood
import ReciprocityTheory.AnalyticForms.PotentialTheory.ContDiffFubiniStudyRatioCompChart0
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.LbH0EqChiStructureModuleOfKrullDimZero

set_option autoImplicit false

noncomputable section

open CategoryTheory AlgebraicGeometry TopologicalSpace Set Filter Topology MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open ReciprocityTheory.ChartRestriction.G.Out (nonzeroLocus)
open ReciprocityTheory.AnForm.M
open GlobalTheory GlobalTheory.Cartier GlobalTheory.CxPts GlobalTheory.Points GlobalTheory.CechPic GlobalTheory.ProjVar

namespace GlobalTheory.ProjSpaceDegree

theorem topSelf_O1_str : ∀ (k : Type) [Field k] (N : ℕ),
    letI := GlobalTheory.algebraΓOfHom (PSpace.str k N); topSelfIntersection k (ProjSpace.O1 k N) N = 1 :=
  fun k _ N => GlobalTheory.NefNumericsModel.selfIntersection_O1 k N

end GlobalTheory.ProjSpaceDegree
