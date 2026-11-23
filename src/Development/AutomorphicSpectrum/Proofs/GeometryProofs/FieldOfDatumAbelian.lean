import Development.AutomorphicSpectrum.Statements.TowerExistence.GoodTowerExistsX
import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.CInfGood
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FlagComponentFramedPointFrame
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.HalfLatticeTypes
import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.OnbMat
import Development.AbelianVarietyTheory.BlockTheory.ExistenceTori.UnitaryHaarVolume
import Development.AutomorphicSpectrum.Statements.GeometryStatements.ThmFlatA
import Development.AutomorphicSpectrum.Definitions.MetricPeriods.VolumeInputs
import Development.AutomorphicSpectrum.Definitions.MetricPeriods.GoodOver
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ClassTermBoundBetaOfToricDenominator
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BaseFieldsDefiniteLaws

open NumberField IsDedekindDomain MeasureTheory Filter Topology
open Formalism.L2.Pj ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD ReciprocityTheory.ChartRestriction.G.AR.Up ReciprocityTheory.ChartRestriction.G.AR.Inst Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta
open GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Rec
open scoped Matrix
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.CompanionTheory.Ar.Rec

theorem field_of_datum_abelian : ∀ D : D7, IsAbelianGalois ℚ D.host.E := by
  intro D
  haveI : IsGalois ℚ D.host.E := D.host.hostE_isGalois
  haveI : IsMulCommutative (D.host.E ≃ₐ[ℚ] D.host.E) :=
    ⟨⟨fun s t => GlobalTheory.Mem.FieldsLaws.gal_comm D.host s t⟩⟩
  exact {}

end GlobalTheory.CompanionTheory.Ar.Rec
