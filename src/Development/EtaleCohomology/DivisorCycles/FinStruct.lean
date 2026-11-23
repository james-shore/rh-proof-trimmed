module

public import Development.EtaleCohomology.DivisorCycles.CycleCountPf
public import Development.EtaleCohomology.DivisorCycles.AlgStruct2
public import Development.EtaleCohomology.DivisorCycles.ChainPf
public import Development.EtaleCohomology.DivisorCycles.CoeMulInv
public import Development.EtaleCohomology.DivisorCycles.CycSpecQzkPf
public import Development.EtaleCohomology.DivisorCycles.DegPoly2
public import Development.EtaleCohomology.DivisorCycles.DiagScalar2
public import Development.EtaleCohomology.DivisorCycles.ExpVanPf
public import Development.EtaleCohomology.DivisorCycles.FixScalOf
public import Development.EtaleCohomology.DivisorCycles.GradePf
public import Development.EtaleCohomology.DivisorCycles.ProjPf
public import Development.EtaleCohomology.DivisorCycles.SemisPf
public import Development.EtaleCohomology.DivisorCycles.StructPf
public import Development.EtaleCohomology.DivisorCycles.TanLiePf
public import Development.EtaleCohomology.DivisorCycles.TangentDegree
public import Development.EtaleCohomology.DivisorCycles.TangentFieldExtension
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

namespace LateralTheory.Fin.Struct
theorem etale_tangent_field_extension_of_key : LateralTheory.DivDb.TanField := by
  apply LateralTheory.DivDb.TangentFieldExtension.TanField_of <;> first | exact _root_.LateralTheory.DivDb.ChainPf.chain_of
theorem etale_exponent_vanishing_of_key : LateralTheory.DivDb.ExpVan := by
  apply LateralTheory.DivDb.ExpVan_of <;> first | exact etale_tangent_field_extension_of_key
theorem etale_tangent_degree_bound_of_key : LateralTheory.DivDb.TanDeg := by
  apply LateralTheory.DivDb.TangentDegree.TanDeg_of <;> first | exact etale_exponent_vanishing_of_key | exact _root_.LateralTheory.DivDb.DegPoly₂.DegPoly_of
theorem etale_tangent_lie_algebra_of_structure : LateralTheory.DivDb.TanLie := by
  apply LateralTheory.DivDb.TanLie_of <;> first | exact etale_tangent_field_extension_of_key
theorem etale_cycle_count_eigenvalues_of_key : LateralTheory.DivDb.CycleCount := by
  apply LateralTheory.DivDb.CycleCountPf.CycleCount_of <;> first | exact _root_.LateralTheory.DivDb.CycSpec_qzkPf.CycSpec_of | exact _root_.LateralTheory.DivDb.ScalarFixedPointsUnderAeval.FixScal_of
theorem etale_diagonal_scalar_of_structure : LateralTheory.DivDb.DiagScalar := by
  apply LateralTheory.DivDb.DiagScalar_of <;> first | exact etale_cycle_count_eigenvalues_of_key
theorem etale_envelope_stabilizer_of_structure : LateralTheory.DivDb.EnvStab := by
  apply LateralTheory.DivDb.EnvStab_of <;> first | exact _root_.LateralTheory.DivDb.ChainPf.chain_of
theorem etale_algebra_structure_theorem_of_components : LateralTheory.DivDb.Struct := by
  apply LateralTheory.DivDb.StructPf.Struct_of <;> first | exact etale_tangent_degree_bound_of_key | exact _root_.LateralTheory.DivDb.Proj_of | exact etale_tangent_lie_algebra_of_structure | exact _root_.LateralTheory.DivDb.Grade_of | exact etale_diagonal_scalar_of_structure | exact _root_.LateralTheory.DivDb.AlgStruct₂.AlgStruct_of | exact etale_envelope_stabilizer_of_structure | exact _root_.LateralTheory.DivDb.SemisPf.Semis_of
end LateralTheory.Fin.Struct
