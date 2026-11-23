module

public import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.FirstLevelFromUniversal
public import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.JetExpShape
public import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.PhNormClosed
public import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.BinomialSeriesCoefficients.Closure
public import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.BinomialSeriesCoefficients.IntPSDerivativeOfLG
public import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.BinomialSeriesCoefficients.IntegralEndomorphismFromDatum
import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.BinomialSeriesCoefficients.Points
import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.BinomialSeriesCoefficients.UnitaryInverseIdentity
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

namespace Formalism.L2.Th1.C

alias ptClosure := _root_.Formalism.L2.Th1.C.integralPointClosure'
theorem adjFromNorm : AdjFromNorm := adjoint_from_norm_form
theorem unitaryInv : UnitaryInv := unitary_inverse_identity
alias binomClosed := _root_.Formalism.L2.Th1.C.binomialScalarClosed'
alias phNormClosed := _root_.Formalism.L2.Th1.C.logNormClosed'
alias zLinClosed := _root_.Formalism.L2.Th1.C.scalarLinearClosed'
alias zLinInt := _root_.Formalism.L2.Th1.C.scalarLinearInt'
theorem endoAll : EndoAll := endoAll_of _root_.Formalism.L2.Th1.C.norm_adjoint_all_places

alias jetAdditive := _root_.Formalism.L2.Th1.C.jetAdditivity
alias jetOne := _root_.Formalism.L2.Th1.C.jetOne'
alias endIntFromDatum := _root_.Formalism.L2.Th1.C.integral_endomorphism_from_datum
alias phNormFromDatum := _root_.Formalism.L2.Th1.C.phi_norm_from_datum
theorem endoAllFromData : EndoAllFromData := endoAllFromData_of endoAll

end Formalism.L2.Th1.C
