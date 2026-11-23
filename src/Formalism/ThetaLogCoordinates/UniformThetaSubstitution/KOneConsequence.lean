module

public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.StatementE
import Formalism.GaussJetBounds.GaussJetProofs.ConstantCoeffAevalLinP
import Formalism.GrowthSums.FactorialBaseGrowth.PathBasisOfCount
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FinalS
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.ABArith
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.EDecomp
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.EntryAOneParity
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.EntryATwoAndB
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.FinsuppStepInduction
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.MinorProdBlockDegree
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.NormLeOfDvd
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.NormNatCastLeOfDvd
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

theorem hitsCapPos : HitsCapPos := HitsCapPos_of _root_.Formalism.InvariantFactorPaths.G7.e_one_vanish_of _root_.Formalism.InvariantFactorPaths.G7.minor_hits
theorem hitsColumnsPos : HitsColumnsPos := HitsColumnsPos_of _root_.Formalism.InvariantFactorPaths.G7.e_one_vanish_of _root_.Formalism.InvariantFactorPaths.G7.minor_hits
theorem termBound : TermBound := TermBound_of _root_.Formalism.InvariantFactorPaths.G7.e_one_identity_of _root_.Formalism.InvariantFactorPaths.G7.e_one_integral_of
theorem entryStar : EntryStar :=
  EntryStar_of termBound _root_.Formalism.InvariantFactorPaths.G7.decomposition_of_hh _root_.Formalism.InvariantFactorPaths.G7.class_substitution Formalism.DworkPowerSeriesWeights.jet_pair_linearity _root_.Formalism.InvariantFactorPaths.G7.gainFactorialInequality _root_.Formalism.InvariantFactorPaths.G7.hasseDerivSupport
    _root_.Formalism.InvariantFactorPaths.G7.minorProdBlockDegree

theorem entry_a_one : EntryExcessBound := entryExcessBound_of entryStar hitsCapPos _root_.Formalism.InvariantFactorPaths.G7.excessGainBound _root_.Formalism.InvariantFactorPaths.G7.cyclicShiftLeast
theorem entry_a_two : EntryCappedBound := entryCappedBound_of entryStar hitsCapPos Formalism.GrowthSums.cappedGainSubLE
theorem entryB : EntryB := EntryB_of entryStar hitsCapPos hitsColumnsPos _root_.Formalism.InvariantFactorPaths.G7.cappedGainBound

end Formalism.InvariantFactorPaths.G7.Top
