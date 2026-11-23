module

public import Development.AbelianVarietyTheory.Statements.PlaceShiftStatements.InfClassAt
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.BernsteinUnitaryProductIrreducible
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchimedeanSumSizeBoundLargeDataFromFactorsStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteSumDenominatorBoundOfFactorClaims
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.CmThetaNormBoundHypothesesSatisfiedStatement
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.ArchimedeanClassCountBound
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.ArchimedeanSumCountBound
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.ArchimedeanSumSizeOppositeConjugate
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.ArchimedeanTensorSizeBoundOfLocal
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.DepthOfSumBound
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.FieldPairComparison
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.FiniteCoefficientBound
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.FiniteDataBound
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.FiniteInfiniteScalarBounds
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.FiniteTopTermIntegralBoundOfLocal
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.FormValueFiniteInfiniteFactorization
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.GammaFactorLossAtFinitePlaces
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.KernelConjugationMeanArchimedeanTopTerm
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.RowSumOfHyp
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.SumSizeBoundFinitePlaces
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.SumSizeDictionaryOfLocalBounds
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.TestVectorValueFactorization
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.TwistedLocalFactorAwayFromLevel
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
public import Development.AbelianVarietyTheory.Statements.PlaceShiftStatements.DictAt

@[expose] public section

section
namespace GlobalTheory.SumSize.Join
theorem sum_size_finite_away_archimedean_combined : _root_.GlobalTheory.FunPr.ThetaLocalInputs → GlobalTheory.SumSize.FinK ∧ GlobalTheory.SumSize.AwayK ∧ GlobalTheory.SumSize.InfK := by
  intro P
  have hInp : ∀ D, GlobalTheory.NormSum.Inp D := GlobalTheory.T.cmThetaNormBoundHypotheses_satisfied
  have hOK : GlobalTheory.RowClaim.SumOKK := _root_.GlobalTheory.T.sumOKK_of_theta_local_inputs P
  have hDep : GlobalTheory.SumSize.DepthK := _root_.GlobalTheory.DepthUnf.depthK_of_hypotheses_alt P hOK
  have hDict : GlobalTheory.SumSize.DictK := _root_.GlobalTheory.SumSize.sum_size_dictionary_of_local_bounds P hInp
  have hScal := _root_.GlobalTheory.ScalAA.finScalK_and_infScalK_of_theta_inputs P
  have hForm := _root_.GlobalTheory.FormVal.form_value_eq_finite_mul_infinite P
  have hPair := _root_.GlobalTheory.FPair.lift_splits_locally P
  have hPsi := _root_.TestFunctionNorms.GlobalTheory.CompanionTheory.TestVal.test_value_psi_finite_infinite P
  have hTopF := _root_.GlobalTheory.SumSize.TopInt.finite_top_term_integral_bound P hInp hDict hDep
  have hRowF := _root_.GlobalTheory.SumSize.finite_place_sum_size_bound P hInp hDict hDep
  have hTopI := _root_.GlobalTheory.KerConjMean.archimedean_top_term_kernel_conj_mean P hInp hDict hDep
  have hRowI := _root_.GlobalTheory.SumSize.OppConj.archimedean_sum_size_opposite_conjugate P hInp hDict hDep
  refine ⟨?_, _root_.TwistAwayFromPlace.GlobalTheory.CompanionTheory.Twist.twist_trivial_away_from_level P, ?_⟩
  · exact _root_.DenominatorLossAdditivity.GlobalTheory.CompanionTheory.FinDen.fin_of_factors hOK hDep hScal.1 (_root_.ResidueCardinalityNilpotence.GlobalTheory.CompanionTheory.VolVal.finCoefK_alt P) (_root_.GlobalTheory.FunDat.finDatK_alt P) (_root_.GlobalTheory.GamLoss.finite_place_gamma_loss_bound P)
      hTopF hRowF hPair.1 hPsi.1 hForm.1
  · exact GlobalTheory.T.archimedeanSumSizeBound_largeData_from_factors hOK hDep hScal.2 (_root_.GlobalTheory.T.sum_size_archimedean_tensor_bound P) (_root_.GlobalTheory.T.sum_count_bound_archimedean P hDep) (_root_.GlobalTheory.T.class_count_bound_archimedean P)
      hTopI hRowI hPair.2 hPsi.2 hForm.2
end GlobalTheory.SumSize.Join
end

