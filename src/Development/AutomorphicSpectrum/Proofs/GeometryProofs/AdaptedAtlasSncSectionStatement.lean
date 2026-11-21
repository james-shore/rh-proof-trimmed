import Mathlib
import Development.AutomorphicSpectrum.Proofs.GeometryProofs.AdaptedAtlasSncSection
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.MumfordProportionality
import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.GoodOrigin
import Development.AutomorphicSpectrum.Definitions.MetricPeriods.SimilitudeFactorFormGroupBoundedOfTestSupport
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.FundSetMeasStatement
import Development.AutomorphicSpectrum.Definitions.MetricPeriods.MetricsProjectionFormulaNef
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CoordAtConstMulIff
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PerValNeZero
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsEquivComp
import Formalism.LocalToGlobal.ProjectiveLattices.CompSplitPfD
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.NoCommonZeroSt
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.ThValDescIn
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ComplexPointsNonemptyDenseVariety
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ToroidalBoundaryMetricData
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NotIsBettiZero
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FlagComponentFramedPointFrame
import Development.AbelianVarietyTheory.Definitions.Divisors.UnitaryWeightExponentVectorSignatureWeightMuZero
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsStalkFactor
import Development.AbelianVarietyTheory.Definitions.Divisors.AnalyticOnNhdFinChartIff
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsEqnIffGeneratesAtInv
import Development.AutomorphicSpectrum.PublishedTheorems.Geometry₂.GagaSections
import ReciprocityTheory.AnalyticForms.LeviForms.TailBoundA

open GlobalTheory.CompanionTheory.Ar AlgebraicGeometry CategoryTheory NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj GlobalTheory.Toroidal GlobalTheory.ShFam
open MeasureTheory Filter Topology ReciprocityTheory.AnForm ReciprocityTheory.ChartRestriction.G.FD ReciprocityTheory.ChartRestriction.G.AR.Inst ReciprocityTheory.ChartRestriction.G.AR.Up GlobalTheory.CompanionTheory.Ar.PB GlobalTheory.CompanionTheory.Ar.Cmp
open ReciprocityTheory.AnForm.M ReciprocityTheory.AnForm.P
open Classical

set_option maxHeartbeats 1000000 in
theorem _root_.GlobalTheory.T.adapted_atlas_snc_section : ∀ {e : ℕ} {X : Type} [TopologicalSpace X] [CompactSpace X] [T2Space X] (A : FinHolAtlas e X) (L : LocPot X)
    (s : X → X → ℂ) {n : ℕ} (m : Fin n → ℕ) (W : Fin n → Set X), IsPotential A L → IsSection A L s → IsSNC A L s m W →
    (∀ y, logNormSec L s y ≤ 0) → ∃ B : FinHolAtlas e X, IsAdaptedAtlas A B L s := by
  first | exact @GlobalTheory.CompanionTheory.Ar.Adapt.exists_adaptedAtlas | exact GlobalTheory.CompanionTheory.Ar.Adapt.exists_adaptedAtlas | (intros; apply GlobalTheory.CompanionTheory.Ar.Adapt.exists_adaptedAtlas <;> assumption)
