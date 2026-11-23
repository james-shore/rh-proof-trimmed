module

public import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.StatementB
public import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.FinalA
public import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.ConstantCoeffEqZeroOfParallelogram
public import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.ConstantCoeffSeriesAtVariable
public import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.InVarAddInVarNeZero
public import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.InvariantDerivationSubstLawThree
public import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.LogSigmaOnePullbackSpec
public import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.SimeqPadicIntegers
public import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.WeierstrassSeriesIntegral
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
import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.ConstantCoeffSig1S

@[expose] public section

namespace Formalism.L2.Th1.B

theorem parO : ParO := by
  exact ParO.ParO_of addSgStar _root_.Formalism.L2.Th1.B.Ph.logSigmaPullbackSpec _root_.Formalism.L2.Th1.B.Sim.simeq_formal_log
theorem diffPh : DiffPh := by
  exact ParO.DiffPh_of _root_.Formalism.L2.Th1.B.Sq.sigmaOneSquare _root_.Formalism.L2.Th1.B.Sim.simeq_formal_log
theorem cube : Cube := by
  exact Cube_of _root_.Formalism.L2.Th1.B.formal_halving_exists _root_.Formalism.L2.Th1.B.Sim.simeq_integral_series
alias jetsThree := _root_.Formalism.L2.Th1.B.Jets.jets_three_variables_holds

theorem f1O : LogSigmaPullbackCocycle := by
  intro K _ _ _ g2 g3 s2 c0 P l i ep F hP hF hi hC h2
  have hl := hF.2.2
  have h0 := (_root_.Formalism.L2.Th1.B.Ph.logSigmaPullbackSpec K s2 P l hl.1 hl.2.1).1
  obtain ⟨hdiv, hsw⟩ := _root_.Formalism.L2.Th1.B.coboundary_rules_hold K F l (phO s2 P l) hF h0
  have hd := cube K F l i (phO s2 P l) hF hi h2 (parO K g2 g3 s2 c0 P l i ep F hP hF hi hC)
  exact ⟨hdiv, hsw, hd, by rw [hsw]; exact hd⟩

end Formalism.L2.Th1.B
