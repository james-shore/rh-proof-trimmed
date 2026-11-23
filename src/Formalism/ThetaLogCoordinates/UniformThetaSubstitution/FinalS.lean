module

public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FirstDeriv
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.CoeffSubstLgFOfDegreeOne
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.ConstantCoeffFirstTwoOfThree
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.ConstantCoeffLawFirstTwoOfThree
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.IntegralPderivLgF
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.LemmaTwoOf
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.LogarithmEquivalence
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.NormLiftLeOne
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.NotDvdChoosePowMul
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.PartialCoboundaryLinear
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.ScalingSwapLemmas
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.TheoremSFromKOneOf
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.TopsChoicePartB
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
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
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Topology.Sheaves.Init

@[expose] public section

namespace Formalism.InvariantFactorPaths.G7.Top

open Formalism.InvariantFactorPaths.G7

alias classExp := _root_.Formalism.InvariantFactorPaths.G7.class_exponential
theorem rescaleExact : RescaleExact := RescaleExact_of _root_.Formalism.InvariantFactorPaths.G7.valuation_table _root_.Formalism.InvariantFactorPaths.G7.exp_integral
theorem rescaleCore : RescaleCore := RescaleCore_of rescaleExact classExp _root_.Formalism.InvariantFactorPaths.G7.class_multiplication

alias simeqRules := _root_.Formalism.InvariantFactorPaths.G7.LogarithmEquivalence.simeqRules
theorem thmSCore : ThmSCore :=
  ThmSCore_of rescaleCore _root_.Formalism.InvariantFactorPaths.G7.class_substitution _root_.Formalism.InvariantFactorPaths.G7.classChange_statement _root_.Formalism.InvariantFactorPaths.G7.class_multiplication _root_.Formalism.InvariantFactorPaths.G7.two_sums _root_.Formalism.InvariantFactorPaths.G7.LogarithmEquivalence.logRescale _root_.Formalism.InvariantFactorPaths.G7.LogarithmEquivalence.logRescaleUnique
theorem theorem_s_from_k_one : CyclicPowerClassOfExpEquiv := theorem_s_from_k_one_of thmSCore simeqRules

theorem deIntegral : DeIntegral := DeIntegral_of _root_.Formalism.InvariantFactorPaths.G7.divided_derivative _root_.Formalism.InvariantFactorPaths.G7.formal_law_symmetric
theorem lemmaOne : LemmaOne := LemmaOne_of deIntegral _root_.Formalism.InvariantFactorPaths.G7.formal_law_symmetric
theorem lemmaTwo : LemmaTwo := LemmaTwo_of lemmaOne _root_.Formalism.InvariantFactorPaths.G7.formal_law_symmetric
theorem lamModule : LamModule := LamModule_of _root_.Formalism.InvariantFactorPaths.G7.dwork_multivariable
theorem zeroCondition : StepZero := StepZero_of lamModule simeqRules _root_.Formalism.InvariantFactorPaths.G7.formal_law_symmetric
theorem firstDeriv : FirstDeriv := FirstDeriv_of _root_.Formalism.InvariantFactorPaths.G7.formal_law_symmetric
theorem cobLin : CobLin := CobLin_of _root_.Formalism.InvariantFactorPaths.G7.formal_law_symmetric
theorem stepI : StepI := StepI_of lemmaOne firstDeriv cobLin
theorem stepII : StepII := StepII_of _root_.Formalism.InvariantFactorPaths.G7.dwork_multivariable _root_.Formalism.InvariantFactorPaths.G7.divided_derivative deIntegral _root_.Formalism.InvariantFactorPaths.G7.formal_law_symmetric
theorem stepH : StepH := StepH_of lemmaTwo _root_.Formalism.InvariantFactorPaths.G7.swap_rules _root_.Formalism.InvariantFactorPaths.G7.formal_law_symmetric
theorem stepIV : StepIV := StepIV_of _root_.Formalism.InvariantFactorPaths.G7.dwork_multivariable
theorem betaIsG : BetaIsG :=
  BetaIsG_of zeroCondition stepI stepII stepH _root_.Formalism.InvariantFactorPaths.G7.c_add_sigma_c_eq_zero stepIV _root_.Formalism.InvariantFactorPaths.G7.swap_rules simeqRules

end Formalism.InvariantFactorPaths.G7.Top
