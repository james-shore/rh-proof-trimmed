import Mathlib
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IntegrandSZero
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoublingMapThetaIdentityAnyWeilDataStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DoublingSiegelWeilSectionMemDegeneratePrincipalSStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.AdelicIwasawaDoubledGroupSelfDualLatticeStatement
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.PeterssonLiftSmulMeasure
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeightIoLe
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.CuspFormsArchimedeanKFiniteStarCompMemStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.GlobalDoublingZetaFormSelfDualLatticeTransferStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SiegelWeilFockDoubledPairOfWeilAndIchino

open scoped ComplexConjugate Matrix NNReal
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.Cusp GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalVolumeLift (FinPl RealMat Lat IsFockVec IsSphOff HidaSetting volQ)
open GlobalTheory.IndefiniteRowSideFullHecke.SphericalZero (ip delta swSec sZero IsKFinVec ThetaClause SectionClause CoefClause)
open GlobalTheory.Mem.Th (CptF)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Core.Rk.IP

namespace GlobalTheory.Core.Rk.IP

theorem frameLat_isSelfDualC {D : D7} (V : HSp D) : IsSelfDualC V (frameLat V) := by
  have h : frameLat V = GlobalTheory.PlaceModel.latFrame V := by
    ext y; rw [mem_frameLat, GlobalTheory.PlaceModel.mem_latFrame]
  rw [h]; exact GlobalTheory.PlaceModel.isSelfDualC_latFrame V

end GlobalTheory.Core.Rk.IP
