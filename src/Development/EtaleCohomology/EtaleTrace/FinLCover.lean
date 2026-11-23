module

public import Development.EtaleCohomology.EtaleTrace.PNBasicPf
public import Development.EtaleCohomology.EtaleTrace.GenInPf
public import Development.EtaleCohomology.EtaleTrace.GenOutGluePf
public import Development.EtaleCohomology.EtaleTrace.GenUsePf
public import Development.EtaleCohomology.EtaleTrace.ChartGenOnPfCut
public import Development.EtaleCohomology.EtaleTrace.GenEtalePfCut
public import Development.EtaleCohomology.EtaleTrace.ChartGenOnPf
public import Development.EtaleCohomology.EtaleTrace.ChartOverKPf
public import Development.EtaleCohomology.EtaleTrace.FibreOfEtalePf
public import Development.EtaleCohomology.EtaleTrace.FieldDimPf
public import Development.EtaleCohomology.EtaleTrace.FinSurjPfAll
public import Development.EtaleCohomology.EtaleTrace.GenAwayEvalPf
public import Development.EtaleCohomology.EtaleTrace.GenEtaleAtBotPf
public import Development.EtaleCohomology.EtaleTrace.GenEtalePfData
public import Development.EtaleCohomology.EtaleTrace.GenOfAwayPf
public import Development.EtaleCohomology.EtaleTrace.GenOnAgreePf
public import Development.EtaleCohomology.EtaleTrace.GenUseBackPf
public import Development.EtaleCohomology.EtaleTrace.HomRelPf
public import Development.EtaleCohomology.EtaleTrace.JetIndepPf
public import Development.EtaleCohomology.EtaleTrace.JetSpanPf
public import Development.EtaleCohomology.EtaleTrace.JetUnramPf
public import Development.EtaleCohomology.EtaleTrace.PNIntegralPf
public import Development.EtaleCohomology.EtaleTrace.ProjectPf
public import Development.EtaleCohomology.EtaleTrace.RatPtInPf
public import Development.EtaleCohomology.EtaleTrace.StepPf
public import Development.EtaleCohomology.EtaleTrace.TrdegLePf
public import Development.EtaleCohomology.KummerExtensions.EtaleProjectiveChartGenericValuationIdentity
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

@[expose] public section

namespace LateralTheory.Fin.LCover
theorem projective_space_standard_chart_basic_properties : LateralTheory.EtaleTrace.Cov.PNBasic := by
  apply LateralTheory.EtaleTrace.Cov.PNBasic_of <;> first | exact _root_.LateralTheory.EtaleTrace.Cov.PNIntegral_of
theorem projective_coordinates_generate_inside_chart : LateralTheory.EtaleTrace.Cov.GenIn := by
  apply LateralTheory.EtaleTrace.Cov.GenIn_of <;> first | exact _root_.LateralTheory.EtaleTrace.Cov.GenInPf.GenAwayEval_of | exact _root_.LateralTheory.EtaleTrace.Cov.GenInPf.GenOfAway_of
theorem projective_chart_generic_section_on_open : LateralTheory.EtaleTrace.Cov.ChartGenOn := by
  apply LateralTheory.EtaleTrace.Cov.ChartGenOn_of_val <;> first | exact _root_.SchemeAppLEComposition.Cb.etale_projective_chart_generic_valuation_identity
theorem projective_coordinate_sections_generate_on_chart : LateralTheory.EtaleTrace.Cov.GenOutChart := by
  apply LateralTheory.EtaleTrace.Cov.GenOutChart_of_two <;> first | exact _root_.LateralTheory.EtaleTrace.Cov.ChartOverK_of | exact projective_chart_generic_section_on_open
theorem projective_coordinate_sections_glue_across_charts : LateralTheory.EtaleTrace.Cov.GenOutGlue := by
  apply LateralTheory.EtaleTrace.Cov.GenOutGlue_of_agree <;> first | exact _root_.LateralTheory.EtaleTrace.Cov.GenOnAgree_of
theorem projective_coordinate_sections_generate_outside_hyperplane : LateralTheory.EtaleTrace.Cov.GenOut := by
  apply LateralTheory.EtaleTrace.Cov.GenOut_of <;> first | exact projective_coordinate_sections_generate_on_chart | exact projective_coordinate_sections_glue_across_charts
theorem projective_coordinates_generate_function_field : LateralTheory.EtaleTrace.Cov.GenUse := by
  apply LateralTheory.EtaleTrace.Cov.GenUse_of <;> first | exact _root_.LateralTheory.EtaleTrace.Cov.GenUseBack_of
theorem linear_projection_etale_cover_exists : LateralTheory.EtaleTrace.Cov.Project := by
  apply LateralTheory.EtaleTrace.Cov.Project_of <;> first | exact _root_.LateralTheory.EtaleTrace.StepPf.Step_of | exact _root_.LateralTheory.EtaleTrace.Cov.HomRel_of
theorem linear_projection_finite_surjective_onto_affine_space : LateralTheory.EtaleTrace.Cov.FinSurj := by
  apply LateralTheory.EtaleTrace.Cov.FinSurj_of_full <;> first | exact projective_space_standard_chart_basic_properties
theorem finite_surjective_unramified_generically_etale : LateralTheory.EtaleTrace.Cov.GenEtale := by
  apply LateralTheory.EtaleTrace.Cov.GenEtale_of_atBot <;> first | exact _root_.LateralTheory.EtaleTrace.Cov.GenEtaleAtBotPf.genEtaleAtBot
theorem finite_cover_etale_fibre_over_rational_point : LateralTheory.EtaleTrace.Cov.Fibre := by
  apply LateralTheory.EtaleTrace.Cov.Fibre_of <;> first | exact finite_surjective_unramified_generically_etale | exact _root_.LateralTheory.EtaleTrace.Cov.RatPtIn_of | exact _root_.LateralTheory.EtaleTrace.Cov.FibreOfEtale_of
theorem etale_finite_cover_of_smooth_variety : LateralTheory.EtaleTrace.LCover := by
  apply LateralTheory.EtaleTrace.Cov.goal_of <;> first | exact projective_space_standard_chart_basic_properties | exact projective_coordinates_generate_inside_chart | exact projective_coordinate_sections_generate_outside_hyperplane | exact projective_coordinates_generate_function_field | exact _root_.LateralTheory.EtaleTrace.Cov.JetSpan_of | exact _root_.LateralTheory.EtaleTrace.Cov.TrdegLe_of | exact _root_.LateralTheory.EtaleTrace.Cov.HomRel_of | exact _root_.LateralTheory.EtaleTrace.StepPf.Step_of | exact linear_projection_etale_cover_exists | exact _root_.LateralTheory.EtaleTrace.Cov.JetIndep_of | exact _root_.LateralTheory.EtaleTrace.Cov.JetUnram_of | exact _root_.LateralTheory.EtaleTrace.Cov.FieldDim_of | exact linear_projection_finite_surjective_onto_affine_space | exact finite_cover_etale_fibre_over_rational_point
alias intersectionNumber_baseChange := _root_.LateralTheory.Fin.LCover.etale_finite_cover_of_smooth_variety
end LateralTheory.Fin.LCover
