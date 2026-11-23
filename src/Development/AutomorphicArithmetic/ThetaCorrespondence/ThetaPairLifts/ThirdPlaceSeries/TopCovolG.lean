module

public import Development.AbelianVarietyTheory.Definitions.Divisors.HypothesesX
public import Development.AbelianVarietyTheory.Definitions.Divisors.WellChosen
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.GrothendieckDeformation
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ModelSmall
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.HodgeBundleWeights.VolumeEstimateHypotheses
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.LiftLambdaBound
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.AnchorHoldsStatement
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.CoreLeOfGramMeasRatStatement
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.CoveringBadLocusOfDescentSteps
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.CoveringCutOfLocalTraces
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.CoveringDegreeMultiplicative
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.CoveringDescentMapsCompatible
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.CoveringGramMatrixOfLocalTraces
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.CoveringLambdaInvariantBound
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.CoveringLowDefectBound
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.CoveringMeasureReductionBound
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.CoveringMinGenusBound
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.CoveringRankOfDescentSteps
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.CoveringRationalOfLocalTraces
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.CovolXOfStepsStatement
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.DeepGoodReductionStatement
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.ExistsDeepCoveringLevel
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.FlatBoundOfAnchor
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.FlatDegreeStatement
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.HeightLowerBoundGeneral
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.HilbertSamuelLowerBoundOfComponents
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.LowOfCoverHypothesesStatement
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.RecAtOfGramAtStatement
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.RingOfCoveringDescent
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.ShareStatementOfKnownTheorems
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.SizeAltBisStatement
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.SumCOfDeepGoodStatement
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.ULowOfStatement
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
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

@[expose] public section



section
section
open GlobalTheory.CovTop GlobalTheory.BigTop
namespace SelfIntersectionVolumeEstimates

theorem topCovolG_alt_alt : _root_.SelfIntersectionVolumeEstimates.VolumeEstimateHypotheses → GlobalTheory.CovTop.HypothesesX → _root_.GlobalTheory.CovTop.PublishedHodgeBundleTheorems → GlobalTheory.CovHt.HypothesesH → GlobalTheory.Published.GrothendieckDeformation → GlobalTheory.HSCore.Quoted → GlobalTheory.CompanionTheory.Ar.Plug.DeepStR → _root_.GlobalTheory.CovTop.CovolumeBoundOfX :=
  by
  intro hSB hX hP hH hGD hQ hD
  have hS := hH.sieg
  have hK := hX.ks
  have hN := hX.lie
  have gram := _root_.GlobalTheory.CovTop.covering_gram_matrix_of_local_traces_alt hP
  have size := _root_.GlobalTheory.CovTop.SizeRows.size_alt_bis
  have meas := _root_.GlobalTheory.CovTop.MeasRd.covering_measure_reduction_alt hP
  have anc := _root_.GlobalTheory.CovTop.anchor_holds_alt
  have dex := _root_.GlobalTheory.CovTop.DeepExist.exists_deep_covering_level_alt hP
  have dg := _root_.GlobalTheory.CovTop.DeepGoodAll.deepGood_alt_alt hP hGD hQ hS hK hN
  have fd := _root_.GlobalTheory.CovTop.FlatDegProof.flatDeg_alt_alt hP
  have deg := _root_.GlobalTheory.CovTop.DegProof.covering_degree_eq_alt hX hP hS hK hGD hQ hN dg size fd
  have sh := _root_.GlobalTheory.CovTop.ShareRowsNef.share_alt_alt hX hP hS hK hGD hQ hN dg size fd deg
  have ht := _root_.SelfIntersectionVolumeEstimates.height_lower_bound_general_alt hSB hX hGD hQ hP hH hD dg size deg fd
  have hs := _root_.GlobalTheory.CovTop.ShortRoad.hilbertSamuel_of_component_estimates_alt hX hP hGD hQ hS hK hN dg size fd deg sh
  have ul := _root_.GlobalTheory.CovTop.FromComp.u_low_of_cover_hyps dg size deg sh ht hs (_root_.GlobalTheory.CovTop.sumC_of_deepGood_alt dg)
  have low := _root_.GlobalTheory.CovTop.LowCover.low_of_cover_hypotheses size (_root_.GlobalTheory.CovTop.DefLow.covering_low_defect_alt hP gram anc) dex dg (_root_.GlobalTheory.CovTop.RingStep.ring_of_covering_descent_alt hP gram dg) (_root_.GlobalTheory.CovTop.DescentMaps.covering_descent_maps_compatible_alt hP hGD hQ hS hK hN gram dg size fd) (_root_.GlobalTheory.CovTop.covering_rank_of_descent_steps_alt hX hP hGD hQ hS hK hN dg size fd deg sh) (_root_.GlobalTheory.CovGminTop.covering_gmin_of_gram_deep_size hP gram dg size) (_root_.GlobalTheory.FlatSplit.flat_alt_alt hP dg fd anc) ul
  exact _root_.GlobalTheory.CovTop.Assembly.covolX_of_lift_bounds_and_coreLe gram (_root_.GlobalTheory.CovTop.liftRecursive_of_gram gram) (_root_.GlobalTheory.CovTop.covering_cut_of_local_traces_alt hP) (_root_.GlobalTheory.CovTop.covering_bad_locus_of_descent_steps_alt hX hP hGD hQ hS hK hN hX.green gram dex dg size fd deg sh) (_root_.GlobalTheory.CovTop.LamAll.covering_lambda_all_places_alt hP gram meas) size (_root_.GlobalTheory.CoreSlope.coreLe_of_gram_meas_rat_alt gram meas (_root_.GlobalTheory.CovTop.covering_rational_of_local_traces_alt hP)) low
end SelfIntersectionVolumeEstimates
end
end
