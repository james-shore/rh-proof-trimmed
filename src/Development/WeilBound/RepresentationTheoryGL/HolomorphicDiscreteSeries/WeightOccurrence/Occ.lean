module

public import Development.WeilBound.RepresentationTheoryGL.HolomorphicDiscreteSeries.WeightOccurrence.OccSome
public import Development.WeilBound.RepresentationTheoryGL.HolomorphicDiscreteSeries.EmbeddedFrames.Imports
public import Development.WeilBound.RepresentationTheoryGL.HolomorphicDiscreteSeries.FlipDecomposition.DecompositionExistenceHolds
public import Development.WeilBound.RepresentationTheoryGL.HolomorphicDiscreteSeries.HarishChandraDescent.FarClosed
public import Development.WeilBound.RepresentationTheoryGL.HolomorphicDiscreteSeries.IntertwinerAdjoints.Imports
public import Development.WeilBound.RepresentationTheoryGL.HolomorphicDiscreteSeries.LowestKTypeModels.Models
public import Development.WeilBound.RepresentationTheoryGL.HolomorphicDiscreteSeries.WordSpans.StepM
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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

namespace PositivityTheory.RgHe

theorem occ : Occ :=
  _root_.PositivityTheory.RgHe.Dec.occurrence_of_walk (_root_.PositivityTheory.RgHe.Sl.stepL_of _root_.PositivityTheory.RgHe.LowestKTypeUnitIntegral.models_holds _root_.PositivityTheory.RgHe.LowestKTypeUnitIntegral.of_integral_holds _root_.PositivityTheory.RgHe.LowestKTypeUnitIntegral.lowestKTypeModel Dec.decomposition_existence_holds)
    (_root_.PositivityTheory.RgHe.SM.model_walk_of_inputs _root_.PositivityTheory.RgHe.LowestKTypeUnitIntegral.models_holds _root_.PositivityTheory.RgHe.LowestKTypeUnitIntegral.of_integral_holds _root_.PositivityTheory.RgHe.LowestKTypeUnitIntegral.lowestKTypeModel Dec.decomposition_existence_holds)
    (PositivityTheory.RgHe3.base _root_.PositivityTheory.RgHe.LowestKTypeUnitIntegral.models_holds _root_.PositivityTheory.RgHe.FrameA.frame)

end PositivityTheory.RgHe
