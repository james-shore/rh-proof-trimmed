module

public import Formalism.LocalToGlobal.Columns.CoefficientsModP.FkMapInitMinor
public import Formalism.LocalToGlobal.Columns.CoefficientsModP.FkPderivBlockEmbNe
public import Formalism.LocalToGlobal.Columns.CoefficientsModP.PairingNondegenerateHolds
public import Formalism.LocalToGlobal.Columns.CoefficientsModP.LatticeBasisExistsHolds
public import Formalism.LocalToGlobal.Columns.CoefficientsModP.NablaIndependenceHolds
public import Formalism.LocalToGlobal.Columns.CoefficientsModP.TauLatticeLatticeHolds
public import Formalism.LocalToGlobal.Columns.CoefficientsModP.NablaRoundFreeHolds
public import Formalism.LocalToGlobal.Columns.CoefficientsModP.WeTransposeWordTransposeWord
public import Formalism.LocalToGlobal.Columns.CoefficientsModP.BaseCh
public import Formalism.LocalToGlobal.Columns.CoefficientsModP.PairBDual
public import Formalism.LocalToGlobal.Columns.CoefficientsModP.StdDual
public import Formalism.LocalToGlobal.Columns.CoefficientsModP.NabDual
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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

@[expose] public section

namespace Formalism.L2.DIV

alias fockSTen := _root_.Formalism.L2.DIV.fockSymTensor_holds
alias pairRat := _root_.Formalism.L2.DIV.pairingRational_holds
alias actRat := _root_.Formalism.L2.DIV.actionRational_holds
alias pairNondeg := _root_.Formalism.L2.DIV.pairingNondegenerate_holds
alias pairPos := _root_.Formalism.L2.DIV.pairingPositive_holds
theorem basisAtEx : BasisAtEx := latticeBasisExists_holds
theorem nabDelLoc : NabDelLoc := nablaDeltaLocal_holds
theorem nabDelLattice : NabDelLattice := nablaDeltaLattice_holds
alias tauLatLattice := _root_.Formalism.L2.DIV.tauLatticeLattice_holds
alias dualFrLattice := _root_.Formalism.L2.DIV.dualFrameLattice_holds
alias dualFrHdual := _root_.Formalism.L2.DIV.dualFrameHdual_holds
alias tauLatDual := _root_.Formalism.L2.DIV.tauLatticeDual_holds
alias roundLat := _root_.Formalism.L2.DIV.roundLattice_holds
theorem pairBDualStd : PairBDualStd := pairBDualStd_of weyl_eq_dual_nabla_holds
theorem pairBDualK : PairBDualK := pairBDualK_of pairBDualStd
theorem pairBDual : PairBDual := pairBDual_of pairBDualStd
theorem nabDelDual : NabDelDual := nabDelDual_of nablaDeltaDescent_holds pairBDualK

end Formalism.L2.DIV
