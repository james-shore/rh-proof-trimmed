import Mathlib
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsMatrixForm
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsDimEqOne
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsSepClosedResidueFieldPowerSeriesComplex
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.Pr13Snd
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.PreservesFiniteLimitsTensorLeftSheafify
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SplittingSieveMemEtaleTopologyStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsionPointsPullbackAbelianScheme
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.LocModuleUnit
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.BcDatumNatural
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackOfIsPullbackOnOpenCoverTarget
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteEtaleSurjectiveProj
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLiftOfEtaleSurjectiveStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SteinFactorisationConnectedFibres
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EndCharpolyTateDetDegreeTraceStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemisimpleEndomorphismsConjOfCharpoly
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdjointUpToIntegerStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisEquivariantIffFrobeniusCommute
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianSchemeSpecFieldSmoothOfRelativeDimensionStatement

open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.Et
open scoped TensorProduct DirectSum
open ReciprocityTheory.ChartRestriction.G.Semi

noncomputable section

namespace GlobalTheory.TateHondaBridge

open MonoidalCategory CartesianMonoidalCategory MonObj
open scoped CategoryTheory.Obj CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory

open GlobalTheory.AV GlobalTheory.AV.AbVar ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.Published.AbVarRed

def toAbVar {k : Type} [Field k] (A : Over (Spec (CommRingCat.of k))) [GrpObj A] (hA : IsAbelianScheme A) :
    AbVar k where
  X := A
  ab := hA
  dim := (GlobalTheory.T.abelianScheme_specField_smoothOfRelativeDimension k A hA).choose
  smooth := (GlobalTheory.T.abelianScheme_specField_smoothOfRelativeDimension k A hA).choose_spec

end GlobalTheory.TateHondaBridge

end
