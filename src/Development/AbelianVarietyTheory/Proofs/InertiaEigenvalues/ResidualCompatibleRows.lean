import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RingSpecNormalisedCharacterEq
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.CharpolyEqOfIsRowPar
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.GoodIdempotentFixesOfOnlySeriesOfLabelActs
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.CuspidalStrongMultiplicityOneOfAnalytic
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CenLocOfCenReal
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivChar
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PairsOfTransport
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.IsIrreducibleTwist
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.TieAutAndSplit
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.CmFieldSplitPlaceEqOfPlaceEq
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PropEOfAdmissible
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.IsotypicRowLocalSplitExistsStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SplitPlaceLocalComponentExistsUniqueClassStatement
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ISupIndepOfPairwiseOrthogonalDefiniteStatement
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.InvariantFormBoundedCongruence
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsCanonicalModuleSuccessor
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ThetaFunctionsSpannedHeckeTwistedStandardFrameStatement
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ThetaFunctionContinuousInvariant
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ModerateGrowthDefiniteThetaIntegralVectorFormStatement
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ThetaLiftAutomorphicForm
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.LiftedCharactersAgree
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.Adm2OfHyp
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeDoubleCosetOperatorsStandardFacts
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsGreenCuspidalLabellingSameGeneratorsStatement
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.EvParamsOfRows
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TupPinsOfMuIsW
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.EigIdxFiniteTypesCOf
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.E0ReadOfEigenLabeling
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TwistedPlaceLocalIndex

noncomputable section

namespace GlobalTheory.ResLoc

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.L2 Formalism.L2.Host GlobalTheory.HeightCounting NumberField IsDedekindDomain Polynomial
open GlobalTheory.EigTie (ResTied IsRowPar plRed resTied_of_plSide)
open GlobalTheory.IndefiniteRowSideFullHecke.RayClassPrimeCounting (IsGaloisRepOf Zbar GalE OnW)

theorem continuous_qCast {p q : ℕ} [Fact p.Prime] [Fact q.Prime] (h : p = q) (ι : Qbar p ≃+* ℂ) {Y : Type} [TopologicalSpace Y]
    {f : Y → Qbar q} (hf : Continuous f) : Continuous fun y => ι.symm (qCast h ι (f y)) := by
  subst h
  simpa [qCast] using hf

def plL {D : D7} (L : LocAll (lay0 D)) (Pl : PlSide D) : PlSide (withLoc L) := ⟨Pl.ι, Pl.ι_w, Pl.plB, Pl.plB_eq, Pl.plκ⟩

end GlobalTheory.ResLoc

namespace GlobalTheory.ResLoc

end GlobalTheory.ResLoc

end
