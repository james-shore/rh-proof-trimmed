module

public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.GreenMassError
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.GreenMassReplace
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.GreenMassStep
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.StListMono
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.StListTailLog
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.StRegSection
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.StTailShift
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.Assembly
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassError
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassReplace
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassStep
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PListTailLog
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
import Mathlib.Data.Nat.Choose.Multinomial
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

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.AnalyticLimit

alias GreenMassStep.full := _root_.GroundTheory.Heights₂.Heights.AnalyticLimit.GreenMassStep.proof

alias GreenMassReplace.full := _root_.GroundTheory.Heights₂.Heights.AnalyticLimit.GreenMassReplace.proof

alias GreenMassError.full := _root_.GroundTheory.Heights₂.Heights.AnalyticLimit.GreenMassError.proof

theorem UniformIntegrability.full : UniformIntegrability.Statement :=
  UniformIntegrability.of_greenMass GreenMassStep.full GreenMassReplace.full GreenMassError.full

alias ListTailLog.of_lemmaE := _root_.GroundTheory.Heights₂.Heights.AnalyticLimit.ListTailLog.proof

end GroundTheory.Heights₂.Heights.AnalyticLimit
