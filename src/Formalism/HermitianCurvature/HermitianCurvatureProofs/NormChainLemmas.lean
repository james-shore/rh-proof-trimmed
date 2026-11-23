module

public import Formalism.HermitianCurvature.StatementPN
public import Formalism.FlagUnipotentLattices.AlgebraicIdentityHigherDegree
public import Formalism.FlagUnipotentLattices.CardSubgroupsOfIndexLe
public import Formalism.FlagUnipotentLattices.ValuationProductBound
public import Formalism.HermitianCurvature.HeisenbergConjugationMeasurePreserving
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
import Mathlib.Topology.Sheaves.Init

@[expose] public section

namespace Formalism.FourierDecayAlt.P.NormChainLemmas

open Formalism.FourierDecayAlt.PN Finset NumberField

open scoped ComplexOrder ComplexConjugate

open Classical

theorem exactCores : Formalism.FourierDecayAlt.PN.ExactCores :=
  ⟨Formalism.HermitianLatticeCounting.Final.S4.step4, _root_.Formalism.HermitianLatticeCounting.P.S4aux.orbit_count_formula, _root_.Formalism.HermitianLatticeCounting.P.S4aux.weighted_cauchy_schwarz,
   _root_.Formalism.HermitianLatticeCounting.P.block_minor_sum_pow_sixty_four⟩

theorem loopCores : Formalism.FourierDecayAlt.PN.LoopCores :=
  ⟨_root_.Formalism.HermitianLatticeCounting.P.sumNondegenerateRowsLe, _root_.Formalism.HermitianLatticeCounting.P.sumDegenerateRowsLe, _root_.Formalism.HermitianLatticeCounting.P.singleRowBound,
   _root_.Formalism.HermitianLatticeCounting.P.invSqrtPowLeExp, _root_.Formalism.HermitianLatticeCounting.P.expSumLe', _root_.Formalism.FourierDecayAlt.P.GrowthPolynomialOperator.t_LoopsJoint,
   _root_.Formalism.FourierDecayAlt.P.GrowthPolynomialOperator.t_LoopsGiveRows⟩

theorem nGChain : Formalism.FourierDecayAlt.PN.NGChain :=
  ⟨exactCores, _root_.Formalism.FourierDecayAlt.P.HermitianFormNormLemmas.C.t_ClassSquaresSum, _root_.Formalism.FourierDecayAlt.P.HermitianFormNormLemmas.E.t_RowFromClasses,
   _root_.Formalism.FourierDecayAlt.P.HermitianFormNormLemmas.C.t_ClassCS, _root_.Formalism.FourierDecayAlt.P.HermitianFormNormLemmas.D1.t_FirstBracket, _root_.Formalism.FourierDecayAlt.P.HermitianFormNormLemmas.D2.t_SecondBracket,
   _root_.Formalism.FourierDecayAlt.P.HermitianFormNormLemmas.B.t_MeanAmpJoint, _root_.Formalism.FourierDecayAlt.P.HermitianFormNormLemmas.E.t_RowNGAbstract, _root_.Formalism.FourierDecayAlt.P.pn_norm_bound,
   _root_.Formalism.FourierDecayAlt.P.HermitianFormNormLemmas.A.t_FramePassage, _root_.Formalism.FourierDecayAlt.P.HermitianFormNormLemmas.A.t_NormRe, _root_.Formalism.FourierDecayAlt.P.HermitianFormNormLemmas.D1.t_ExponentSum,
   _root_.Formalism.FourierDecayAlt.P.HermitianFormNormLemmas.D3.t_NGNumbers⟩

end Formalism.FourierDecayAlt.P.NormChainLemmas

namespace Formalism.FourierDecayAlt.P

end Formalism.FourierDecayAlt.P
