module

public import Formalism.HermitianCurvature.StatementU
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.AdditiveCharacterPsi
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.Block3MulBlocks
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BudgetTopConvergence
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChangeOfVariablesXy
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CoordinateSizesOfHypotheses
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CorollaryU1Plain
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CorollaryU1Truncated
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PhiBoundPartsOfRadicalParametrisation
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SeminormCompletion
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixMul
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixTranspose
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.TopCellsOfParts
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.WeakToStrongSmoothnessReal
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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

namespace Formalism.FourierDecayAlt.P

theorem coordinate_sizes_in_norm : Formalism.FourierDecayAlt.U.SliceCoordinateSizes :=
  _root_.Formalism.FourierDecayAlt.P.Ux6.coordinate_sizes_of_parts_holds _root_.Formalism.FourierDecayAlt.P.Ux2.sliceMem block3_apply_embedding aux_statement_17 _root_.Formalism.FourierDecayAlt.P.Ux3.zhSlice level_determinant_z

theorem norm_decay_in_coordinates : Formalism.FourierDecayAlt.U.CoordinateDecay :=
  _root_.Formalism.FourierDecayAlt.P.Ux6.norm_decay_of_coordinate_sizes_holds coordinate_sizes_in_norm

theorem phi_pointwise_bound : Formalism.FourierDecayAlt.U.PointwiseIntegralBound :=
  phi_bound_of_parts _root_.Formalism.FourierDecayAlt.P.Ux2.sliceMem derivative_cost_bound norm_decay_in_coordinates _root_.Formalism.FourierDecayAlt.P.Ux6.weight_integrability_holds

theorem theorem_u : Formalism.FourierDecayAlt.U.TheoremU :=
  theorem_u_of_parts phi_pointwise_bound phi_support_determinant weak_to_strong_smoothness

theorem phi_support_level_function : Formalism.FourierDecayAlt.U.PhiSuppG :=
  _root_.Formalism.FourierDecayAlt.P.Ux8.phiSuppGOfParts _root_.Formalism.FourierDecayAlt.P.Ux3.gfSlice level_determinant_z _root_.Formalism.FourierDecayAlt.P.Ux3.zhSlice

theorem corollary_u2_germ_hypothesis : Formalism.FourierDecayAlt.U.GermExpansionHypothesis :=
  _root_.Formalism.FourierDecayAlt.P.Ux8.corollary_u2_of_parts_holds theorem_u corollary_u1_truncated_alt _root_.Formalism.FourierDecayAlt.P.Ux8.starPi _root_.Formalism.FourierDecayAlt.P.Ux7.budget_second_corollary_holds
    _root_.Formalism.FourierDecayAlt.P.Ux7.thresholds_second_corollary_holds phi_support_level_function

theorem germ_expansion_applies : Formalism.FourierDecayAlt.U.UseGerm :=
  _root_.Formalism.FourierDecayAlt.P.Ux8.useGermOfParts germ_rate det_weyl_matrix corollary_u2_germ_hypothesis _root_.Formalism.FourierDecayAlt.P.Ux7.derivBoundOfDecay
    _root_.Formalism.FourierDecayAlt.P.Ux7.powerMatch scale_matching

theorem germ_expansion_top_level : Formalism.FourierDecayAlt.U.UseGermTop :=
  _root_.Formalism.FourierDecayAlt.P.Ux8.useGermTopOfParts germ_rate det_weyl_matrix top_cells _root_.Formalism.FourierDecayAlt.P.Ux7.derivBoundOfDecay

end Formalism.FourierDecayAlt.P
