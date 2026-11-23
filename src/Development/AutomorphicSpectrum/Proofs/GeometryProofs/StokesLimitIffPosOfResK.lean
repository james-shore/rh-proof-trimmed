import Mathlib
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed
import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.FrameDefinitions.CpRegPhRegOfNonneg
import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.FlagIndices
import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PMuRegSmooth
import GroundTheory.HeightsAndTheta.Heights.StabilizerCovolume.PMUcSmooth
import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PHoloInjDerivInj
import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PHermExtend
import Development.AutomorphicSpectrum.Proofs.MetricProofs.MeasureLimitStatementHolds
import Development.AutomorphicSpectrum.Proofs.MetricProofs.ProjectionFormulaOfArithSystem
import Development.AutomorphicSpectrum.Proofs.MetricProofs.ResolutionExistsOfResolutionStatementStatement
import Development.AutomorphicSpectrum.Proofs.MetricProofs.DegreeAndCoordinatesOfResolutionStatement
import Development.AutomorphicSpectrum.Proofs.MetricProofs.StokesLimitStatementHolds
import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PRefAlongSheet
import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PSheetChartHolo
import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PMuHomDensityNonneg

noncomputable section

namespace GlobalTheory.CompanionTheory.StokesCompare

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology MeasureTheory
open GroundTheory.Heights₂.Heights.LowerBoundFree

section Mass

open ReciprocityTheory.AnForm ReciprocityTheory.AnForm.M GlobalTheory.CompanionTheory.Ar.Giv.MuLimit

variable {II : IntersectionSystem} {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {K : Type} [Fintype K] {ι : K → Type}
  [∀ k, Fintype (ι k)] {Ω : Type} [Field Ω] [Algebra ℚ Ω] {E : Ψ → Type} [∀ τ, AddCommGroup (E τ)]
  [∀ τ, Module Ω (E τ)] {D : ComponentData II Ψ K ι Ω E} {O Lt : Type} [CommRing O] [AddCommGroup Lt] [Module O Lt]

theorem degMu_nonneg (X : ComponentSetting D O Lt) : 0 ≤ degMu X.H := by
  classical
  have hN := MuHomDensityNonneg.proof (MuSheetLeviNonneg.proof SheetChartHolo.proof RefAlongSheet.proof)
  have hdeg : degMu X.H = ptsIntegral (e := D.n) (mCoordIdeal D.y) (fun _ => phMu X.H) (fun _ => 1) := rfl
  rw [hdeg]
  unfold ptsIntegral
  split_ifs with hΨ
  · refine integral_nonneg_of_ae ?_
    filter_upwards [hN II Ψ K ι Ω E D O Lt X _ hΨ.choose_spec] with y hy
    exact finsum_nonneg fun w => finsum_nonneg fun _ => hy w
  · exact le_rfl

end Mass

end GlobalTheory.CompanionTheory.StokesCompare
