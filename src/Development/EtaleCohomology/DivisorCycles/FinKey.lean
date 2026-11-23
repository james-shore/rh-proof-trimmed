module

public import Development.EtaleCohomology.DivisorCycles.CycleCount
public import Development.EtaleCohomology.DivisorCycles.ChainPf
public import Development.EtaleCohomology.DivisorCycles.ConjugateIdempotents
public import Development.EtaleCohomology.DivisorCycles.CycleCount2
public import Development.EtaleCohomology.DivisorCycles.DegPoly2
public import Development.EtaleCohomology.DivisorCycles.ExpVanPf
public import Development.EtaleCohomology.DivisorCycles.GenSpecProof
public import Development.EtaleCohomology.DivisorCycles.MatUnitsOf
public import Development.EtaleCohomology.DivisorCycles.SpecPtPf
public import Development.EtaleCohomology.DivisorCycles.SumMulSum
public import Development.EtaleCohomology.DivisorCycles.TangentDegree
public import Development.EtaleCohomology.DivisorCycles.TangentFieldExtension
public import Development.EtaleCohomology.DivisorCycles.TangentIndexDvd
public import Development.EtaleCohomology.DivisorCycles.TorusPtPf
public import Development.EtaleCohomology.DivisorCycles.UnipotentPartTrivial
public import Development.EtaleCohomology.DivisorCycles.UnitFactorizationTheorem
public import Development.EtaleCohomology.DivisorCycles.ZclMulPf
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

namespace LateralTheory.Fin.Key
alias etale_matrix_units_system_of_key := _root_.LateralTheory.DivDb.MatrixUnitConstruction.MatUnits_of
theorem etale_zariski_closure_mul_closed_of_key : LateralTheory.DivDb.ZclMul := by
  apply LateralTheory.DivDb.ZclMul_of <;> first | exact _root_.LateralTheory.DivDb.ChainPf.chain_of
theorem etale_tangent_index_divides_of_key : LateralTheory.DivDb.TanIndex := by
  apply LateralTheory.DivDb.TangentIndexDvd.TanIndex_of <;> first | exact _root_.LateralTheory.DivDb.ChainPf.chain_of | exact etale_zariski_closure_mul_closed_of_key
theorem etale_tangent_field_extension_of_key : LateralTheory.DivDb.TanField := by
  apply LateralTheory.DivDb.TangentFieldExtension.TanField_of <;> first | exact _root_.LateralTheory.DivDb.ChainPf.chain_of
theorem etale_exponent_vanishing_of_key : LateralTheory.DivDb.ExpVan := by
  apply LateralTheory.DivDb.ExpVan_of <;> first | exact etale_tangent_field_extension_of_key
theorem etale_unipotent_part_trivial_of_key : LateralTheory.DivDb.Unip := by
  apply LateralTheory.DivDb.UnipotentPartTrivial.Unip_of <;> first | exact etale_exponent_vanishing_of_key
theorem etale_torus_point_exists_of_key : LateralTheory.DivDb.TorusPt := by
  apply LateralTheory.DivDb.TorusPtPf.TorusPt_of <;> first | exact etale_exponent_vanishing_of_key | exact _root_.LateralTheory.DivDb.SpecPtPf.SpecPt_of
theorem etale_tangent_degree_bound_of_key : LateralTheory.DivDb.TanDeg := by
  apply LateralTheory.DivDb.TangentDegree.TanDeg_of <;> first | exact etale_exponent_vanishing_of_key | exact _root_.LateralTheory.DivDb.DegPoly₂.DegPoly_of
theorem etale_divisibility_key_criterion_of_components : LateralTheory.DivDb.Key := by
  apply LateralTheory.DivDb.KeyPf.Key_of <;> first | exact _root_.LateralTheory.DivDb.ConjugateIdempotents.IdemConj_of | exact etale_matrix_units_system_of_key | exact _root_.LateralTheory.DivDb.UnitFactorizationTheorem.UnitFactor_of | exact etale_tangent_index_divides_of_key | exact etale_unipotent_part_trivial_of_key | exact etale_zariski_closure_mul_closed_of_key | exact _root_.LateralTheory.DivDb.GenSpecProof.GenSpec_of | exact etale_torus_point_exists_of_key | exact etale_tangent_degree_bound_of_key | exact _root_.LateralTheory.DivDb.CycleCount₂.CycleCount_of
end LateralTheory.Fin.Key
