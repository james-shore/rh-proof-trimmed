module

public import Formalism.LocalToGlobal.TorsionIntegrality.TorsionTranslationPowers.StatementP
public import Formalism.LocalToGlobal.TorsionIntegrality.TorsionTranslationPowers.StatementT
public import Formalism.LocalToGlobal.TorsionIntegrality.TorsionTranslationPowers.StatementU
public import Formalism.LocalToGlobal.TorsionIntegrality.TorsionTranslationPowers.NonsingularJetNorms.ConstantCoeffInVarEqZero
import Formalism.LocalToGlobal.TorsionIntegrality.TorsionTranslationPowers.NonsingularJetNorms.ConstantCoeffInvTDen
public import Formalism.LocalToGlobal.TorsionIntegrality.TorsionTranslationPowers.NonsingularJetNorms.NonsingularNorm
import Formalism.LocalToGlobal.TorsionIntegrality.TorsionTranslationPowers.NonsingularJetNorms.ScaledXEqOffOrigin
import Formalism.LocalToGlobal.TorsionIntegrality.TorsionTranslationPowers.NonsingularJetNorms.ScaledXOffOrigin
public import Formalism.LocalToGlobal.TorsionIntegrality.TorsionTranslationPowers.NonsingularJetNorms.Series
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

namespace Formalism.L2.Th1.E

theorem unitKap : UnitKap := UnitKap_of _root_.Formalism.L2.Th1.E.nonsingular_norm
theorem unitPsi2 : UnitPsi2 := UnitPsi2_of _root_.Formalism.L2.Th1.E.nonsingular_norm
theorem unitDiff : UnitDiff := UnitDiff_of _root_.Formalism.L2.Th1.E.nonsingular_norm
alias intRules := _root_.Formalism.L2.Th1.E.integrality_rules
alias unitAtRules := _root_.Formalism.L2.Th1.E.unit_at_rules
theorem facShape : FacShape := FacShape_of intRules unitAtRules unitKap unitPsi2 unitDiff _root_.UpperTheory.Reformulated.B.SeriesSubgroup.XTShape_holds
theorem transPower : TransPower := translate_power
theorem transUnit : TransUnit := TransUnit_of intRules unitAtRules _root_.Formalism.L2.Th1.E.root_integral_alt facShape transPower
theorem transGauss : TransGauss := TransGauss_of intRules unitAtRules transUnit

alias prodInt := _root_.Formalism.L2.Th1.E.product_integral
end Formalism.L2.Th1.E
