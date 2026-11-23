import Mathlib
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.XEUpdSZeroLam
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.WeylLeDual
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.DualWeylDominanceOf
import Formalism.SubspaceCounting.Statement
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ComplexifiedDerivativeCommutator
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ModularCharacterEqOneOnExpHermitian
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.TrPowSumFilterZero
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.CharId
import Formalism.RealPlaceAnalysis.QuotientSettingHolds
import Formalism.StatementOC
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Ipindep
import Formalism.HermitianLattices.HermitianLatticesProofs.ThetaBasic
import Formalism.LatticeTheta.ThetaShiftInversion
import Formalism.HermitianLattices.HermitianLatticesProofs.DualOrthSum
import Formalism.HermitianLattices.HermitianLatticesProofs.MajLattice
import Formalism.HermitianLattices.HermitianLatticesProofs.MajDual
import Formalism.HermitianLattices.DiscrFinite
import Formalism.ThetaLiftIndependence.ThetaOrbitSums.DetSwap
import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.OrderOfSignGroupDvdTwo
import Formalism.DirichletDensity.DirichletDensityProofs.APLogDensity
import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.ThickExists
import Formalism.HarderNarasimhan.HarderNarasimhanProofs.PiSumForallInsertOnly
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.NablaLTwist
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.HeckeActionLevelMemHolds
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.RationalPointsLeHolds
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.AutomorphicFormsDecompositionHolds
import Formalism.SatakeDualWeyl.StatementG
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Transport
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Levelvsplit
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.LocalAlgebraInertPrime
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Levelv
import Formalism.SatakeDualWeyl.NablaRepApply
import Formalism.SatakeDualWeyl.DualWeylRepApply
import Formalism.FlagUnipotentLattices.CardSubmodulesAndLinearEquivBounds
import Formalism.NormUnitaryBounds.Statement
import Formalism.HyperbolicPlaceProducts.SubgroupIndexCounts.SubgroupCount
import Formalism.SizeWindowBrackets.RealSlopeBoundsSplit
import Formalism.LocalToGlobal.UnitaryNorms.PowValCast
import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HilbertClassFieldA
import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA
import Formalism.FockGram.StatementFock
import Formalism.LocalRingCardinality.ConjSqrtMinusD
import Formalism.LocalToGlobal.ProjectiveLattices.XcLat
import Formalism.LogFactorialIndices.StatementIdx
import Formalism.JacquetSubsetSums.JacquetSubsetSum
import Formalism.QuotientMetricDivisors.HermitianTwistDivisors.KappaNormalise
import Formalism.LocalToGlobal.IndefiniteForms.QuadraticExampleRankThreePackage
import Formalism.QuotientMetricDivisors.HermitianTwistDivisors.SecondComplementParameterBounds
import Formalism.MirabolicMackeyTheory.MirabolicMackeyProofs.UnipotentNumeric
import Formalism.MirabolicMackeyTheory.MirabolicIsMackey
import Formalism.MeanHeightDescent.BadRowsNumeric
import Formalism.MirabolicMackeyTheory.MirabolicMackeyProofs.LocalConditionsGlobalForm
import Formalism.DivisorInequality.BaseLevelBoundsWithCovolume
import Formalism.BranchSandwichDivisors.BranchIsometryProofs.BranchScale
import Formalism.BranchSandwichDivisors.BranchIsometryProofs.GoodDual
import Formalism.BranchSandwichDivisors.DivFromPassageAndNorm
import Formalism.BranchSandwichDivisors.BranchIsometryProofs.GlobalBoundRefinements
import Formalism.LogVandermondeBounds.GaussOperatorProductFormula
import Formalism.LogVandermondeBounds.LogVandermondeProofs.RamifiedLatticeOperatorIdentity
import Formalism.GL3MeanSquares.HookFormulaTorsion.DoubleCosetDecompositionAll
import Formalism.GL3MeanSquares.HookFormulaTorsion.FourierCommutesHeckeScalar
import Formalism.LocalToGlobal.Columns.DecorationStabilizerTrivialUnipotent
import Formalism.GL3MeanSquares.HookFormulaTorsion.DimensionMassJointBound
import Formalism.ThetaSupremumBounds.LiftOperatorBoundOfFockJet
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.Legendre
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.ThetaLine
import Formalism.LocalToGlobal.PairingIndexBounds.ModelLatticeMoves.IsBichar
import Formalism.LocalToGlobal.BesselHermitianTheta.Joints
import Formalism.LocalToGlobal.BesselHermitianTheta.LemmasChr
import Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil
import Formalism.LocalToGlobal.BesselHermitianTheta.LemmasSign
import Formalism.LocalToGlobal.BesselHermitianTheta.TiedDef
import Formalism.LocalToGlobal.BesselHermitianTheta.TiedLocW
import Formalism.DoubleCosetMeasures.StatementV
import Formalism.SharpRestriction.CuspSpanNormBounds.CayleySignature
import Formalism.LocalToGlobal.LatticeGeometry.OperatorNormFibers.FormData
import Formalism.LocalToGlobal.IndefiniteReal.ArithLemmas
import Formalism.LocalToGlobal.IndefiniteReal.EigenDecomposition
import Formalism.LocalRingCardinality.IntCastDvdOfDvdIntegers
import Formalism.LocalToGlobal.IndefiniteReal.PartsRow
import Formalism.LocalToGlobal.IndefiniteReal.ThetaFireRow
import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.PlaceS
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinRepApply
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ReFacePrim

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open Formalism.IndefR.RecTie Formalism.IndefR.Lev Formalism.L2.Rows GlobalTheory.Mem GlobalTheory.Mem.R3

noncomputable section
namespace GlobalTheory.Mem.R3
variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type} {A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m} {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]

set_option maxHeartbeats 4000000 in

theorem read_updS_keep (R : RealDat3 D A3 Ks) (F : Face3 D A3) (lam : type_of% R.lam3)
    (Dc : ∀ Zs : DefSub A3.fam3.amb3, DefCols (A3.side3 F.P1 F.ψ1 Zs)) (Sp : ∀ Zs, SPer (Dc Zs))
    (Zsc : DefSub A3.fam3.amb3 → IndefScale A3.fam3.base3) (err : type_of% R.err0)
    (hX : ∀ b, (((R.updS R.kap lam).toCx3 F).data F.cr b).XE = ((R.toCx3 F).data F.cr b).XE) (X0 : BaseLevelRowSide D)
    (Y : Read (A3 := A3) R.toRealDat F.lv2 X0) (Z : ReadL R F X0 Y) :
    ∃ (Y' : Read (A3 := A3) ((R.updS R.kap lam).withErr err).toRealDat (reFace F Dc Sp Zsc).lv2 X0) (Z' : ReadL ((R.updS R.kap lam).withErr err) (reFace F Dc Sp Zsc) X0 Y'), Y'.tup = Y.tup ∧ Y'.tupT = Y.tupT ∧ HEq Y'.jA Y.jA ∧ HEq Y'.jA0 Y.jA0 ∧ HEq Y'.eMt Y.eMt ∧ HEq Y'.PY Y.PY ∧ HEq Y'.eFT Y.eFT ∧ HEq Y'.IL Y.IL ∧ HEq Y'.PW Y.PW ∧ HEq Y'.eE Y.eE ∧ HEq Y'.mj.eW Y.mj.eW ∧ HEq Z'.eRR Z.eRR ∧ HEq Z'.jW Z.jW := by
  refine ⟨reFaceRead (R.updS R.kap lam) F Dc Sp Zsc err X0 Y,
    reFaceReadL (R.updS R.kap lam) F Dc Sp Zsc err X0 Y (scalReadL R F lam hX X0 Y Z),
    rfl, rfl, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · kexactB HEq.refl Y.jA
  · exact (by with_unfolding_all exact (HEq.refl Y.jA0 :))
  · exact (by with_unfolding_all exact (HEq.refl Y.eMt :))
  · exact (by with_unfolding_all exact (HEq.refl Y.PY :))
  · exact (by with_unfolding_all exact (HEq.refl Y.eFT :))
  · kexactB HEq.refl Y.IL
  · exact (by with_unfolding_all exact (HEq.refl Y.PW :))
  · exact (by with_unfolding_all exact (HEq.refl Y.eE :))
  · exact (by with_unfolding_all exact (HEq.refl Y.mj.eW :))
  · kexactB HEq.refl Z.eRR
  · exact (by with_unfolding_all exact (HEq.refl Z.jW :))

end GlobalTheory.Mem.R3

end
