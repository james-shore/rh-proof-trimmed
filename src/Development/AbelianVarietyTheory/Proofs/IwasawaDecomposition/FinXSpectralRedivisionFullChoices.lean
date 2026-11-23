import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ECure
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RowDict
import Formalism.HyperbolicPlaceProducts.SubgroupIndexCounts.SubgroupCount
import Formalism.GL3MeanSquares.PrimeCountAsymptoticInProgressions
import Formalism.LogVandermondeBounds.LogVandermondeProofs.RamifiedLatticeOperatorIdentity
import Formalism.LogVandermondeBounds.LogVandermondeProofs.FourierIsometryOnNormKernel
import Formalism.GL3MeanSquares.HookFormulaTorsion.ConditionIffDualEqFunctional
import Formalism.FormalGroupWitt.Statement
import Formalism.LogVandermondeBounds.LogVandermondeProofs.PrimePowerSubgroupTrivial
import Formalism.LogVandermondeBounds.LogVandermondeProofs.MulSingleMulApplySelf
import Formalism.LogVandermondeBounds.LogVandermondeProofs.UpperPlaceHolds
import Formalism.LogVandermondeBounds.HookGammaAmgmMultinomialBounds
import Formalism.GL3MeanSquares.ConcavityEquidistribution
import Formalism.YangianSpanCharacter.YangianRTTProofs.RttRelation
import Formalism.YangianSpanCharacter.YangianRTTProofs.SpanCharacterIdentity
import Formalism.YangianSpanCharacter.YangianRTTProofs.MinusFrameIdentity
import Formalism.FormalDegreeBessel.FinalWR
import Formalism.YangianSpanCharacter.YangianRelationFirst
import Formalism.FormalDegreeBessel.FormalDegreeRatio.DSLowK
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.RightDerivativeZeroOutsideSupport
import Formalism.FormalDegreeBessel.FormalDegreeRatio.CapelliHighestWeightConjugated
import Formalism.SharpRestriction.CuspSpanNormBounds.NonemptyParameterModels.NumericSettingWithGapSatisfiable
import Formalism.SharpRestriction.CuspSpanNormBounds.AutLzFiniteOfLoop
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.FamilyProjectorSectionLocal
import Formalism.LatticeRigidity.StatementD
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.CoefficientLeOperatorNorm
import Formalism.LatticeRigidity.HeightMinimum.PowFinrankEqZeroOfTracePow
import Formalism.LogSumExpBounds.StatementE
import Formalism.LogSumExpBounds.CharacterSumPhase.DescEquivLiftEquiv
import Formalism.LogSumExpBounds.CharacterSumPhase.LatSum
import Formalism.LogSumExpBounds.CharacterSumPhase.ZLiftAsm
import Formalism.LogSumExpBounds.IsoTransfer
import Formalism.NormUnitaryBounds.DetPolynomialWeights.ShearCoefficients
import Formalism.NormUnitaryBounds.DetPolynomialWeights.NormUnitary
import Formalism.NormUnitaryBounds.DetPolynomialWeights.ShortIndependentVectorsOfDualMinimum
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.ExtensionInterSubspace
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.SphericalFunctionConvolutionIdentity
import Formalism.HermitianCurvature.HermitianCurvatureProofs.VandermondeRatioHarmonic
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaBoundOnBoundary
import Formalism.GL3MeanSquares.InvariantSeriesBidegreeOneOne
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.DegreeRatioFormulaStatement
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.FamilyFormalDegreeLowerBound
import Formalism.LatticeRigidity.HeightMinimum.PackingCountGeometricMean
import Formalism.LatticeRigidity.StatementA
import Formalism.LatticeRigidity.HeightMinimum.SqrtAbsNormLeProd
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.LeadingMinorEqDetSubmatrix
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.SphericalL1StatementOfProjectors
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CmRingIdempotentUnitRatioIdentity
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.FamilySeparationBound
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.CellInv
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.CellBru
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.CellMono
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.CellPt
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.IdScal
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.IdUnit
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.IdRoot
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.IdLift
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.NormAdditiveCharacterTypePrimeEqOne
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.DetMulEqSumProdMulDetSubmatrix
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.ExponentInequalityNondegenerateMid
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.FamilyPacketOfEquivalentStatement
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.IdealsOfNormEqIndexSet
import Formalism.GL3MeanSquares.HookFormulaTorsion.OneAddInvPowLeExpOne
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.MinkowskiDividesFactorialOfBound
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.GlobalConditionOfProductFormula
import Formalism.HermitianCurvature.HermitianCurvatureProofs.AdjointnessPolynomiallyBounded
import Formalism.FormalDegreeBessel.FormalDegreeRatio.BesselUnipotentEquivHolds
import Formalism.FormalDegreeBessel.FormalDegreeRatio.BesselUnitaryEquivHolds
import Formalism.FormalDegreeBessel.FinalBF
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactGroupHaarExists
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.UnitaryRepUnimodularOfFiniteVolume
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RrkbLeOneAddSq
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.CnDensNonneg
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.CndHsLeDist
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.PjFdegAllPos
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.ProjectionStatementOfEnd
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.AntisymmetrizedProductEqFactorialSmulQdet
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.ExistsTowerOfLocalSetting
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.OrderedAtRanksOfPositionElement
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.SmoothVectorsTranslateUnitary
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.SchurAverage
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CoveringRadius.CoverRad
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ResidueLatticeCount.UnitMulDetNeZero
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ResidueLatticeCount.NnrealOfEnnreal
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.BlockMinorAbsoluteOfExplicit
import Formalism.SharpRestriction.CuspSpanNormBounds.CayleyDegreeNondegeneracy.FamilyStatementOfAbsAndVandermonde
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.CovolumeIntegerLatticeEq
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.ExistsSqAbsNormOfInert
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.DifferentIdealEqTop
import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.GramEqConjTransposeMul
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PoincareSeriesInner

noncomputable section

namespace GlobalTheory.Mem.SRe

open scoped Classical
open MeasureTheory NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.PackageTie2 Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.ColDict Formalism.L2.SG.RowDict Formalism.L2.Forms Formalism.L2.SG.TermOp Formalism.L2.SG.Full Formalism.L2.SG.ConcreteSettingExists GlobalTheory.Mem GlobalTheory.Mem.SRe

attribute [local instance] Formalism.BasicNotions.Host.cmStar

set_option maxHeartbeats 4000000 in

theorem toTerm_eTT_symm {D : D7} (Z : New D) {X : HidaSetting D} (Y : Full X) (u u' : D.what₂.Word)
    (s : TT (reY Z Y) (wd Z u) (wd Z u')) :
    ((eTT Z Y u u').symm s).toTerm = (eRT Z Y u u').symm s.toTerm := (by with_unfolding_all exact (Eq.refl ((eRT Z Y u u').symm s.toTerm) :))

set_option maxHeartbeats 4000000 in

def eFib {D : D7} (Z : New D) {X : HidaSetting D} (Y : Full X) (u u' : D.what₂.Word)
    (t : RT (reY Z Y) (wd Z u) (wd Z u')) :
    fib Y ((eRT Z Y u u').symm t) ≃ fib (reY Z Y) t :=
  ((eTT Z Y u u').symm.subtypeEquiv fun s => by
    rw [toTerm_eTT_symm]
    exact ((eRT Z Y u u').symm.injective.eq_iff).symm).symm

set_option maxHeartbeats 4000000 in

theorem fibFin_re {D : D7} (Z : New D) {X : HidaSetting D} {Y : Full X} (h : FinX Y) (u u' : D.what₂.Word)
    (t : RT (reY Z Y) (wd Z u) (wd Z u')) : Finite (fib (reY Z Y) t) := by
  have := h.fibFin u u' ((eRT Z Y u u').symm t)
  exact Finite.of_equiv _ (eFib Z Y u u' t)

set_option maxHeartbeats 4000000 in

theorem pairIndep_re {D : D7} (Z : New D) {X : HidaSetting D} {Y : Full X} (h : FinX Y) (u u' : D.what₂.Word)
    (s₁ s₂ s₁' s₂' : TT (reY Z Y) (wd Z u) (wd Z u')) (e₁ : s₁.toTerm = s₁'.toTerm) (e₂ : s₂.toTerm = s₂'.toTerm)
    (r₁ : rowOf (reY Z Y).TR ((reY Z Y).cs u) ((reY Z Y).cs u') s₁ = rowOf (reY Z Y).TR ((reY Z Y).cs u) ((reY Z Y).cs u') s₂)
    (r₂ : rowOf (reY Z Y).TR ((reY Z Y).cs u) ((reY Z Y).cs u') s₁' = rowOf (reY Z Y).TR ((reY Z Y).cs u) ((reY Z Y).cs u') s₂') :
    s0T s₁ s₂ = s0T s₁' s₂' ∧ (liftScalar s₁ s₂ ↔ liftScalar s₁' s₂') := by
  have e₁' : ((eTT Z Y u u').symm s₁).toTerm = ((eTT Z Y u u').symm s₁').toTerm := by
    rw [toTerm_eTT_symm, toTerm_eTT_symm, e₁]
  have e₂' : ((eTT Z Y u u').symm s₂).toTerm = ((eTT Z Y u u').symm s₂').toTerm := by
    rw [toTerm_eTT_symm, toTerm_eTT_symm, e₂]
  have := h.pairIndep u u' ((eTT Z Y u u').symm s₁) ((eTT Z Y u u').symm s₂)
    ((eTT Z Y u u').symm s₁') ((eTT Z Y u u').symm s₂') e₁' e₂' ((by with_unfolding_all exact (r₁ :))) ((by with_unfolding_all exact (r₂ :)))
  kexactB this

set_option maxHeartbeats 4000000 in

theorem finX_reY : ∀ (D : D7) (Z : New D) (X : HidaSetting D) (Y : Full X), FinX Y → FinX (reY Z Y) := by
  intro D Z X Y h
  exact
  { shInj := (by with_unfolding_all exact (h.shInj :))
    shSurj := (by with_unfolding_all exact (h.shSurj :))
    inHH := by kexactB h.inHH
    puLin := by kexactB h.puLin
    finHH := (by with_unfolding_all exact (h.finHH :))
    fibFin := (by with_unfolding_all exact (fibFin_re Z h :))
    pairIndep := (by with_unfolding_all exact (pairIndep_re Z h :))
    Greal := (by with_unfolding_all exact (fun (u u' : D.what₂.Word) (t : RT (reY Z Y) (wd Z u) (wd Z u')) => h.Greal u u' ((eRT Z Y u u').symm t) :))
    cdEx := (by with_unfolding_all exact (h.cdEx :))
    volPos := (by with_unfolding_all exact (h.volPos :)) }

end GlobalTheory.Mem.SRe

end
