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

open scoped Classical
open MeasureTheory NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.PackageTie2 Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.ColDict Formalism.L2.SG.RowDict Formalism.L2.Forms Formalism.L2.SG.TermOp Formalism.L2.SG.Full Formalism.L2.SG.ConcreteSettingExists GlobalTheory.Mem GlobalTheory.Mem.SRe

attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section
namespace GlobalTheory.Mem.SRe

variable (D : D7) (Z : New D) (X : HidaSetting D) (Y : Full X) (u u' : D.what₂.Word) (t : RT Y u u')

set_option maxHeartbeats 4000000 in
theorem re_termIsId : Formalism.L2.SG.FourParts.termIsId t ↔ Formalism.L2.SG.FourParts.termIsId (eRT Z Y u u' t) := (by with_unfolding_all exact (Iff.rfl (a := Formalism.L2.SG.FourParts.termIsId t) :))

set_option maxHeartbeats 4000000 in
theorem re_termInS : Formalism.L2.SG.FourParts.termInS t ↔ Formalism.L2.SG.FourParts.termInS (eRT Z Y u u' t) := (by with_unfolding_all exact (Iff.rfl (a := Formalism.L2.SG.FourParts.termInS t) :))

set_option maxHeartbeats 4000000 in
theorem re_relevant : t.relevant ↔ (eRT Z Y u u' t).relevant := (by with_unfolding_all exact (Iff.rfl (a := t.relevant) :))

set_option maxHeartbeats 4000000 in
theorem re_FeqF : t.FeqF ↔ (eRT Z Y u u' t).FeqF := (by with_unfolding_all exact (Iff.rfl (a := t.FeqF) :))

set_option maxHeartbeats 4000000 in
theorem re_generic : t.generic ↔ (eRT Z Y u u' t).generic := (by with_unfolding_all exact (Iff.rfl (a := t.generic) :))

set_option maxHeartbeats 4000000 in
theorem re_G : t.G = (eRT Z Y u u' t).G := (by with_unfolding_all exact (Eq.refl t.G :))

set_option maxHeartbeats 4000000 in
theorem re_termBBne : ∀ p, Formalism.L2.SG.Saturated.termBBne t p ↔ Formalism.L2.SG.Saturated.termBBne (eRT Z Y u u' t) p := (by with_unfolding_all exact (fun p => Iff.rfl (a := Formalism.L2.SG.Saturated.termBBne t p) :))

set_option maxHeartbeats 4000000 in
theorem re_ptOf : Formalism.L2.SG.PairVal.ptOf t = Formalism.L2.SG.PairVal.ptOf (eRT Z Y u u' t) := (by with_unfolding_all exact (Eq.refl (Formalism.L2.SG.PairVal.ptOf t) :))

set_option maxHeartbeats 4000000 in
theorem re_massTerm : Formalism.L2.SG.PairVal.massTerm t = Formalism.L2.SG.PairVal.massTerm (eRT Z Y u u' t) := (by with_unfolding_all exact (Eq.refl (Formalism.L2.SG.PairVal.massTerm t) :))

set_option maxHeartbeats 4000000 in
theorem re_cTerm : Formalism.L2.SG.PairVal.cTerm (Formalism.L2.SG.PairVal.vRdef D u u' (X.Fu u) (Y.what₂ u) Y.δ Y.M) t = Formalism.L2.SG.PairVal.cTerm (Formalism.L2.SG.PairVal.vRdef (reD D Z) (wd Z u) (wd Z u') ((reX Z X).Fu (wd Z u)) ((reY Z Y).what₂ (wd Z u)) (reY Z Y).δ (reY Z Y).M) (eRT Z Y u u' t) := by
  kexactB Eq.refl (Formalism.L2.SG.PairVal.cTerm (Formalism.L2.SG.PairVal.vRdef D u u' (X.Fu u) (Y.what₂ u) Y.δ Y.M) t)

omit t in
set_option maxHeartbeats 4000000 in
theorem re_meanCount : ∀ w, Formalism.L2.SG.PairVal.meanCount D u u' (X.Fu u) (Y.what₂ u) w = Formalism.L2.SG.PairVal.meanCount (reD D Z) (wd Z u) (wd Z u') ((reX Z X).Fu (wd Z u)) ((reY Z Y).what₂ (wd Z u)) w := (by with_unfolding_all exact (fun w => Eq.refl (Formalism.L2.SG.PairVal.meanCount D u u' (X.Fu u) (Y.what₂ u) w) :))

omit t in
set_option maxHeartbeats 4000000 in

theorem eRT_keeps_term_data : ∀ (D : D7) (Z : New D) (X : HidaSetting D) (Y : Full X) (u u' : D.what₂.Word), (∀ t : RT Y u u', (Formalism.L2.SG.FourParts.termIsId t ↔ Formalism.L2.SG.FourParts.termIsId (eRT Z Y u u' t)) ∧ (Formalism.L2.SG.FourParts.termInS t ↔ Formalism.L2.SG.FourParts.termInS (eRT Z Y u u' t)) ∧ (t.relevant ↔ (eRT Z Y u u' t).relevant) ∧ (t.FeqF ↔ (eRT Z Y u u' t).FeqF) ∧ (t.generic ↔ (eRT Z Y u u' t).generic) ∧ t.G = (eRT Z Y u u' t).G ∧ (∀ p, Formalism.L2.SG.Saturated.termBBne t p ↔ Formalism.L2.SG.Saturated.termBBne (eRT Z Y u u' t) p) ∧ Formalism.L2.SG.PairVal.ptOf t = Formalism.L2.SG.PairVal.ptOf (eRT Z Y u u' t) ∧ Formalism.L2.SG.PairVal.massTerm t = Formalism.L2.SG.PairVal.massTerm (eRT Z Y u u' t) ∧ Formalism.L2.SG.PairVal.cTerm (Formalism.L2.SG.PairVal.vRdef D u u' (X.Fu u) (Y.what₂ u) Y.δ Y.M) t = Formalism.L2.SG.PairVal.cTerm (Formalism.L2.SG.PairVal.vRdef (reD D Z) (wd Z u) (wd Z u') ((reX Z X).Fu (wd Z u)) ((reY Z Y).what₂ (wd Z u)) (reY Z Y).δ (reY Z Y).M) (eRT Z Y u u' t)) ∧ ∀ w, Formalism.L2.SG.PairVal.meanCount D u u' (X.Fu u) (Y.what₂ u) w = Formalism.L2.SG.PairVal.meanCount (reD D Z) (wd Z u) (wd Z u') ((reX Z X).Fu (wd Z u)) ((reY Z Y).what₂ (wd Z u)) w :=
  fun D Z X Y u u' => ⟨fun t => ⟨re_termIsId D Z X Y u u' t, re_termInS D Z X Y u u' t,
    re_relevant D Z X Y u u' t, re_FeqF D Z X Y u u' t, re_generic D Z X Y u u' t, re_G D Z X Y u u' t,
    re_termBBne D Z X Y u u' t, re_ptOf D Z X Y u u' t, re_massTerm D Z X Y u u' t,
    re_cTerm D Z X Y u u' t⟩, re_meanCount D Z X Y u u'⟩

end GlobalTheory.Mem.SRe
