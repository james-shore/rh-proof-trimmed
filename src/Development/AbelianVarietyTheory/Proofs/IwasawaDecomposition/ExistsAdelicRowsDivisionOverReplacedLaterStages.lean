import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NonzeroPlacesOverPrimesLifts
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.BaseLevelRowSideTransport
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ReplacementValuesBaseLevelTypePartsEq
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CopyLIntegral
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsMovedRowLiftDataToFittingStages
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IdxDefsUp
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.DsExistsOfDiscreteSeriesExists
import Formalism.SharpRestriction.CuspSpanNormBounds.FrobeniusCoefficientMemLp.BigCellConjI
import Formalism.YangianSpanCharacter.YangianRTTProofs.SpanCharacterIdentity
import Formalism.FormalDegreeBessel.FormalDegreeRatio.DSLowK
import Formalism.FormalDegreeBessel.FormalDegreeRatio.CapelliHighestWeightConjugated
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
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.FamilyFormalDegreeLowerBound
import Formalism.LatticeRigidity.HeightMinimum.PackingCountGeometricMean
import Formalism.LatticeRigidity.StatementA
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.LeadingMinorEqDetSubmatrix
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.SphericalL1StatementOfProjectors
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.FamilySeparationBound
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.CellInv
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.CellBru
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.CellMono
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.CellPt
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.IdScal
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.IdUnit
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.IdRoot
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.IdLift
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LocalisationTypedIndependentExponent
import Formalism.DoubleCosetMeasures.LowerUnipotentOrbits.DoubleCosetEqPreimage
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.NormAdditiveCharacterTypePrimeEqOne
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.DetMulEqSumProdMulDetSubmatrix
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.ExponentInequalityNondegenerateMid
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.FamilyPacketOfEquivalentStatement
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.IdealsOfNormEqIndexSet
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.MinkowskiDividesFactorialOfBound
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.GlobalConditionOfProductFormula
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SecondKernelPropertyKernel
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LagrangeExtraction
import Formalism.HermitianCurvature.HermitianCurvatureProofs.Block32EqZeroOfUnipotent
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PointwiseStabiliserParametrisationBijective
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SplitFrameTransitive
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictOrthogonalComplementNondeg
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CentreBlockStructure
import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.MapMulVolumeOfSubgroup
import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.LiftingTheory
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RaisingConstantEqNablaStar
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactlySupportedBanachModel
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CasimirEigenvalueCoefficients
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UsCompose
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SecondPolynomialClauses
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RootPushforwardDensity
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellVanishingOfCommute
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RealWeightedForms
import Formalism.HermitianCurvature.HermitianCurvatureProofs.JfCVUnderIntOfParts
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PsiNormalization
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PositionUpdateSums
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SecondExpansionIdentity
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ScalarInverseSimplification
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LeadingTermIdentity
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LeadingTermVectorIdentity
import Formalism.HermitianCurvature.HermitianCurvatureProofs.XiYZhatIdentity
import Formalism.HermitianCurvature.HermitianCurvatureProofs.OperatorsCommuteTranslations
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CellSmoothness
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapelliDetAdInvariant
import Formalism.HermitianCurvature.HermitianCurvatureProofs.FiniteSumLocalExpansion
import Formalism.HermitianCurvature.HermitianCurvatureProofs.JfBetaAdjCOfLemmaBNorm
import Formalism.HermitianCurvature.HermitianCurvatureProofs.Sq2UnitOfEqOneOfSq2EqDiv
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutoffIteratedFDerivBounded
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ComposeDifferentialOperators
import Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitalIntegralIdentities
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ChainRuleSmooth.ExpIntertwine
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ListSumSplittings
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirrorDecomposition.HpkRowEsI
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ExistsAuxiliaryXi
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelsOfBuiltSetting
import Formalism.HermitianCurvature.HermitianCurvatureProofs.NfRadOrder0OfRadRed
import Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedF
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftOfLocal
import Formalism.HermitianCurvature.HermitianCurvatureProofs.TopOfLocal
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LocalNormNonneg
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ThetaCompactSupport
import Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegralFormulaPassesToLimits
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBGHead
import Formalism.HermitianCurvature.HermitianCurvatureProofs.TopPSD
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBJoint
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.NilpotentSubgroup
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBTAsm
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBCFinal
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
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHDef
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantAlgebraComparison.InvAlgOfSteps
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantAlgebraComparison.BridgeHomFormula
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.FiniteNeighbourhoodSecond
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.CoordFin
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.LatticeOfEntriesIntegral
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LevelMatchIff
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TupTiedOfMuIs
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsLayerParametersAdmissible

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr

noncomputable section

namespace GlobalTheory.Mem.R3.Rw.Mv

section
variable {B : Base} {C : Cols B} {a : Late B C} {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type}
  {Ks : Type} [Field Ks] [NumberField Ks] [iK : Algebra Ks a.D.what₂.LL] {A : FamIn3 a.D.what₂.LL G Pl0 I0 (List ℕ) T a.D.R.m}
  {R : RealDat3 a.D A Ks} {F : Face3 a.D A} {X0 : BaseLevelRowSide a.D} {Y : Read (A3 := A) R.toRealDat F.lv2 X0} (Z : ReadL R F X0 Y)
  (u : Parts R)

theorem jWu_heq : HEq (jWu Z u) Z.jW := (by with_unfolding_all exact ((HEq.refl Z.jW) :))

theorem eRRu_heq : HEq (eRRu Z u) Z.eRR := (by with_unfolding_all exact ((HEq.refl Z.eRR) :))

theorem eRR0u_heq : HEq (riemannRochSpaceCoordinateEquiv Z u) Z.eRR0 := (by with_unfolding_all exact ((HEq.refl Z.eRR0) :))

variable (c : Refill a)

theorem readL_jW : HEq (letI := alg c.to iK; (readL c Z).jW) Z.jW := (by with_unfolding_all exact ((jWu_heq Z (partsB c R)) :))

theorem readL_eRR : HEq (letI := alg c.to iK; (readL c Z).eRR) Z.eRR := (by with_unfolding_all exact ((eRRu_heq Z (partsB c R)) :))

theorem transportedReading_baseRowLatticeCoordinates : HEq (letI := alg c.to iK; (readL c Z).eRR0) Z.eRR0 := (by with_unfolding_all exact ((eRR0u_heq Z (partsB c R)) :))

end

set_option maxHeartbeats 4000000 in

theorem rowsAre_refill : ∀ (B : Base) (C : Cols B) (a : Late B C) (c : Refill a) (px : PreX B.toPre) (I : ColIn B px) (hX : B.fields.Ok) (T : TwDat B) (Wt : Set B.places.Pl) (ix : C.Tup ≃ I.ι) (p0 : BaseLevelRowSide a.D) (r : RowsAre a.st I hX T Wt ix p0), ∃ r' : RowsAre c.to.st I hX T Wt ix (Tr.baseLevelRowSideTransport c p0), r'.z = Mv.cpDat c.to c.same r.z ∧ HEq r'.Y.tup r.Y.tup ∧ HEq r'.Y.tupT r.Y.tupT ∧ HEq r'.Y.PY.ψ r.Y.PY.ψ ∧ HEq (fun i => (r'.Y.PW i).ψ) (fun i => (r.Y.PW i).ψ) ∧ HEq (fun π => principalLevelFrame.rowRepR r'.z.R.θ (r'.Y.eFT π)) (fun π => principalLevelFrame.rowRepR r.z.R.θ (r.Y.eFT π)) ∧ HEq (fun x => (r'.Y.Ish.jE x).1) (fun x => (r.Y.Ish.jE x).1) ∧ HEq (fun x => (r'.Y.Iz.jE x).1) (fun x => (r.Y.Iz.jE x).1) ∧ HEq r'.Y.eE r.Y.eE ∧ HEq r'.Y.jA r.Y.jA ∧ HEq r'.Y.jA0 r.Y.jA0 ∧ HEq r'.Y.eMt r.Y.eMt ∧ HEq r'.Y.mj.eW r.Y.mj.eW ∧ HEq r'.Z.jW r.Z.jW ∧ HEq r'.Z.eRR r.Z.eRR ∧ HEq r'.Z.eRR0 r.Z.eRR0 := by
  intro B C a c px I hX T Wt ix p0 r
  letI := r.z.alg
  refine ⟨⟨Mv.cpDat c.to c.same r.z, (by with_unfolding_all exact ((holds_tr c.to r.intersectionNumber_baseChange) :)), (by with_unfolding_all exact ((read c r.Y) :)), (by with_unfolding_all exact ((readL c r.Z) :)),
    (by with_unfolding_all exact (r.tup_ix :))⟩, rfl, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · kexactB (HEq.refl r.Y.tup)
  · exact (by with_unfolding_all exact ((HEq.refl r.Y.tupT) :))
  · exact (by with_unfolding_all exact ((HEq.refl r.Y.PY.ψ) :))
  · exact (by with_unfolding_all exact ((HEq.refl (fun i => (r.Y.PW i).ψ)) :))
  · exact (by with_unfolding_all exact ((heq_of_eq (funext fun π => (rep_eq c r.Y π).symm)) :))
  · kexactB (HEq.refl (fun x => (r.Y.Ish.jE x).1))
  · kexactB (HEq.refl (fun x => (r.Y.Iz.jE x).1))
  · exact (by with_unfolding_all exact ((HEq.refl r.Y.eE) :))
  · exact (by with_unfolding_all exact ((HEq.refl r.Y.jA) :))
  · exact (by with_unfolding_all exact ((HEq.refl r.Y.jA0) :))
  · exact (by with_unfolding_all exact ((HEq.refl r.Y.eMt) :))
  · exact (by with_unfolding_all exact ((HEq.refl r.Y.mj.eW) :))
  · exact (by with_unfolding_all exact ((readL_jW r.Z c) :))
  · exact (by with_unfolding_all exact ((readL_eRR r.Z c) :))
  · exact (by with_unfolding_all exact ((transportedReading_baseRowLatticeCoordinates r.Z c) :))

end GlobalTheory.Mem.R3.Rw.Mv

end
