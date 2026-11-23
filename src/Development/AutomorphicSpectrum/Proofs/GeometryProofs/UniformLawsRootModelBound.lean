import Mathlib
import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.CInfGood
import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.OnbMat
import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.GoodOrigin
import Development.AbelianVarietyTheory.BlockTheory.ExistenceTori.UnitaryHaarVolume
import Development.AbelianVarietyTheory.Definitions.Foundations.IsProbabilityMeasureMuPart
import Development.AutomorphicSpectrum.Statements.GeometryStatements.ThmFlatA
import Development.AutomorphicSpectrum.Statements.GeometryStatements.FlatDegree
import Development.AutomorphicSpectrum.Definitions.MetricPeriods.VolumeInputs
import Development.AutomorphicSpectrum.Definitions.MetricPeriods.GoodOver
import Development.AutomorphicSpectrum.Proofs.GeometryProofs.LabelSigBijective
import Development.AutomorphicSpectrum.Proofs.GeometryProofs.RootOriginGenericFrameBound
import Development.AutomorphicSpectrum.Proofs.GeometryProofs.RootOriginFrameDegreeBoundStatement

open NumberField IsDedekindDomain MeasureTheory Filter Topology
open Formalism.L2.Pj ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD ReciprocityTheory.ChartRestriction.G.AR.Up ReciprocityTheory.ChartRestriction.G.AR.Inst Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta
open GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Rec
open scoped Matrix
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section
namespace GlobalTheory.CompanionTheory.Ar.Rec

theorem latExp_eq (E : Type) [Field E] [NumberField E] (SS : Finset ℕ) (p : ℕ) :
    Small.latExp E SS p = if p ∈ SS then 1 / ((p : ℝ) - 1) + (if p = 2 then 1 else 0) +
      (padicValInt p (discr E) : ℝ) / Module.finrank ℚ E else 0 := by
  unfold Small.latExp Small.htExp
  by_cases h : p ∈ SS
  · by_cases h2 : p = 2
    · subst h2
      norm_num
    · simp [h, h2]
  · simp [h]

end GlobalTheory.CompanionTheory.Ar.Rec
