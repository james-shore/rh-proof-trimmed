import Mathlib
import Formalism.LocalToGlobal.IndefiniteReal.HeckeNonvanishing.Imports
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CenUsedOfCenReal
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SettingsFormsExistList
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SideTw
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AdelicRowsReadingTransportLaterHeckeGaloisStageStatement
import Formalism.SharpRestriction.Divisibility.HookProducts.AdmPtTw
import Formalism.LocalToGlobal.Divisibility.LinkDef
import Formalism.LocalToGlobal.IndefiniteReal.PrimitivePackageFullHecke
import Formalism.LocalToGlobal.UnitaryNorms.UnrAe
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarEquivalenceGenerators.ScalarEquivOfGen
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.FormHermitianPositive
import Formalism.SharpRestriction.InertJacobiLevels.ExtraNum
import Formalism.SharpRestriction.InertJacobiLevels.ExtraTheta
import Formalism.SharpRestriction.InertJacobiLevels.ExtraEnt
import Formalism.SharpRestriction.InertJacobiLevels.ExtraRec
import Formalism.LocalRingCardinality.SpanPowerMembership.TwistRecordRowDimensionZero
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.TypedFinal
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaUniqueness.FlagVectorMemLocalization
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.NormClosed
import Formalism.PeriodIntegrals.HermitianGenusExtension.SemilocalHermitianLattices.FiniteDimensionalOfOrtho
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.KppOffCOfSteps
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LatDictFinal
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.MatrixTraceIffIsCharacterOverSubfieldComplexStatement
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.StarInvMulVecDotProductMulVecInvMulVec
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.RegularIffNatDegreeAndExistsEllipticGLStatement
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.ExistsTeichmullerMapAlgebraicClosureFiniteFieldStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBlockDiagActEq
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockTriangularPrimitiveCharacters
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TameLabelsOfGenerator
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OToSAlgebraMap
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodIdempotentCoefficientConjugate
import Development.AbelianVarietyTheory.Proofs.HeightProofs.SchurOrthogonalityIndefiniteUnitaryGroupStatement
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.LbIsoCubeLBMulRightOf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.HolJetF
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.AnChartX
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.ComposeLinearAction
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.AnChartAsm
import Development.AbelianVarietyTheory.Counterexamples.LevelGroupExamples.LevelGroupEqTopOfCoprime
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.RPfVal
import Formalism.LocalToGlobal.IndefiniteForms.IndefiniteTree.ONPage
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PolarizedGaloisRep
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.TupPrimeEmpty
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsHolRepOfIsTau
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.WeilDeligneParamMonodromyEqZeroIff
import Development.AbelianVarietyTheory.BlockTheory.TorsionBlocks.TwistedTriples
import Development.AutomorphicArithmetic.CyclotomicBounds.ClassNumberBounds.CyclotomicTotient.NuBasic
import Development.AutomorphicArithmetic.CyclotomicBounds.ClassNumberBounds.CyclotomicTotient.TotientLeOfCycPowEqOne
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsRhoPtOfSplitting
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp
import Development.AbelianVarietyTheory.Definitions.Divisors.NonemptyGridDataIff
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GridFirstColumnSpaceRankSignatureSelfDualStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsWeilOver
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MatLatSmulLeOfIsIntegral

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.L2 Formalism.L2.Host Formalism.L2.NT Formalism.IndefR.NX NumberField IsDedekindDomain GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.HeightCounting GlobalTheory.HeightCounting.Up
attribute [local instance] Formalism.BasicNotions.Host.cmStar
noncomputable section
namespace GlobalTheory.HeightCounting.Up
local macro:max "kc% " e:term:max : term => `((by kexactB $e))

theorem cenTw_read {K : Ctx} {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T} {P : Pre2 K w} (x : St P) (N : TwNew (Dof x)) : ∀ μ (c : Subalgebra.center ℂ (MonoidAlgebra ℂ (G0g (w.D (RowPk.Over.Z (⟨x.o.η, x.o.hη, x.o.V, x.o.S, nTw x N, x.o.G⟩ : P.q.Over))).nd))) (c0 : Subalgebra.center ℂ (MonoidAlgebra ℂ (G0g (w.D x.o.Z).nd))), (∀ g, (c0 : MonoidAlgebra ℂ (G0g (w.D x.o.Z).nd)).coeff g = (c : MonoidAlgebra ℂ (G0g (w.D (RowPk.Over.Z (⟨x.o.η, x.o.hη, x.o.V, x.o.S, nTw x N, x.o.G⟩ : P.q.Over))).nd)).coeff ((sgTw x N).iso g)) → (sideTw x N).cen μ c = x.s.cen μ c0 := by
  intro μ c c0 h
  have e : (c0 : MonoidAlgebra ℂ (G0g (w.D x.o.Z).nd)) = (((by with_unfolding_all exact (c :)) : Subalgebra.center ℂ (MonoidAlgebra ℂ (G0g (w.D x.o.Z).nd))) : MonoidAlgebra ℂ (G0g (w.D x.o.Z).nd)) :=
    MonoidAlgebra.coeff_injective (Finsupp.ext fun g => (by with_unfolding_all exact ((h g) :)))
  have e2 : c0 = ((by with_unfolding_all exact (c :)) : Subalgebra.center ℂ (MonoidAlgebra ℂ (G0g (w.D x.o.Z).nd))) := Subtype.ext e
  exact (by with_unfolding_all exact ((congrArg (x.s.cen μ) e2).symm :))

theorem readTw_ex {K : Ctx} {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T} {P : Pre2 K w} (x : St P) (N : TwNew (Dof x)) (m : Moved (oTw x N)) (hc : m.Copy) (hh : m.Coh) :
    ∃ r : ReadPk m (sideTw x N), r.Pin ∧ HEq (repOf r.Y) (repOf x.r.Y) := (by with_unfolding_all exact (
  (GlobalTheory.T.adelicRowsReading_transport_laterHeckeGaloisStage x (nTw x N) x.fits.grp (fitsTw x N).grpAt (fitsTw x N).cen m hc hh (sgTw x N) (sideTw x N) rfl HEq.rfl
    (cenTw_read x N)) :))

theorem jMtTw {K : Ctx} {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T} {P : Pre2 K w} (x : St P) (N : TwNew (Dof x)) (m : Moved (oTw x N)) (hm : m.z = datTw x N) (hh : m.Coh) (r : ReadPk m (sideTw x N)) (hp : r.Pin) :
    ∀ μ h i y, HEq (r.Y.IL.jMt μ h i y).1 (x.r.Y.IL.jMt μ h i y).1 := by
  cases m with
  | mk z intersectionNumber_baseChange exAt inGeo Xg tr core eta W1 y tup t tA =>
    obtain rfl : z = datTw x N := hm
    have e : HEq t.lf.jMt x.m.t.lf.jMt := (by with_unfolding_all exact ((hh.jMt.trans x.coh.jMt.symm) :))
    have e2 : t.lf.jMt = ((by with_unfolding_all exact (x.m.t.lf.jMt :)) : type_of% t.lf.jMt) := eq_of_heq ((by with_unfolding_all exact (e :)))
    intro μ h i y
    exact (by with_unfolding_all exact (((hp.jMt μ h i y).trans ((heq_of_eq (congrArg (fun φ : type_of% t.lf.jMt => φ μ i y) e2)).trans (x.pin.jMt μ h i y).symm)) :))

theorem eWTw {K : Ctx} {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T} {P : Pre2 K w} (x : St P) (N : TwNew (Dof x)) (m : Moved (oTw x N)) (hm : m.z = datTw x N) (hh : m.Coh) (r : ReadPk m (sideTw x N)) (hp : r.Pin) :
    ∀ i y, HEq (r.Y.mj.eW i y) (x.r.Y.mj.eW i y) := by
  cases m with
  | mk z intersectionNumber_baseChange exAt inGeo Xg tr core eta W1 y tup t tA =>
    obtain rfl : z = datTw x N := hm
    have e : HEq t.lf.eW x.m.t.lf.eW := (by with_unfolding_all exact ((hh.eW.trans x.coh.eW.symm) :))
    have e2 : t.lf.eW = ((by with_unfolding_all exact (x.m.t.lf.eW :)) : type_of% t.lf.eW) := eq_of_heq ((by with_unfolding_all exact (e :)))
    intro i y
    exact (by with_unfolding_all exact (((hp.eW i y).trans ((heq_of_eq (congrArg (fun φ : type_of% t.lf.eW => φ i y) e2)).trans (x.pin.eW i y).symm)) :))

theorem readTw : ∀ {K : Ctx} {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T} {P : Pre2 K w} (x : St P) (N : TwNew (Dof x)) (m : Moved (oTw x N)), m.z = datTw x N → m.Copy → m.Coh → ∃ r : ReadPk m (sideTw x N), r.Pin ∧ HEq (repOf r.Y) (repOf x.r.Y) ∧ (∀ μ h i y, HEq (r.Y.IL.jMt μ h i y).1 (x.r.Y.IL.jMt μ h i y).1) ∧ (∀ i y, HEq (r.Y.mj.eW i y) (x.r.Y.mj.eW i y)) := by
  intro K B f T w P x N m hm hc hh
  have H := readTw_ex x N m hc hh
  refine H.elim fun r h => ?_
  exact Exists.intro r (And.intro h.1 (And.intro h.2 (And.intro (jMtTw x N m hm hh r h.1) (eWTw x N m hm hh r h.1))))

end GlobalTheory.HeightCounting.Up
end
