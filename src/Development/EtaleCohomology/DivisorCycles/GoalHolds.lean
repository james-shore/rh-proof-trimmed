module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.CocharacterLieDivisors.DivWCoreLacUseType
public import Development.EtaleCohomology.DivisorCycles.FinBigCorner
public import Development.EtaleCohomology.DivisorCycles.FinDegAll
public import Development.EtaleCohomology.DivisorCycles.FinDenseAlg
public import Development.EtaleCohomology.DivisorCycles.FinFinDense
public import Development.EtaleCohomology.DivisorCycles.FinFinEmbed
public import Development.EtaleCohomology.DivisorCycles.FinFinPoly
public import Development.EtaleCohomology.DivisorCycles.FinFinSub
public import Development.EtaleCohomology.DivisorCycles.FinKey
public import Development.EtaleCohomology.DivisorCycles.FinMatUnits
public import Development.EtaleCohomology.DivisorCycles.FinRep
public import Development.EtaleCohomology.DivisorCycles.FinSemis
public import Development.EtaleCohomology.DivisorCycles.FinSpecLie
public import Development.EtaleCohomology.DivisorCycles.FinStruct
public import Development.EtaleCohomology.DivisorCycles.Imports
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
import Mathlib.Topology.Sheaves.Init

@[expose] public section

open Matrix PositivityTheory.AutomorphicGaloisHodgeTate.Div
namespace LateralTheory.DivDb

theorem goal_holds : DivWCoreLac :=
  goal_of _root_.LateralTheory.Fin.SpecLie.etale_spectrum_lie_algebra_instance _root_.LateralTheory.Fin.DegAll.etale_rep_image_degree_bound_all_holds_assembled _root_.LateralTheory.Fin.Struct.etale_algebra_structure_theorem_of_components _root_.LateralTheory.Fin.Key.etale_divisibility_key_criterion_of_components _root_.LateralTheory.DivDb.BigCorner₂.BigCorner_of _root_.LateralTheory.DivDb.SemisPf.Semis_of _root_.LateralTheory.DivDb.MatrixUnitConstruction.MatUnits_of _root_.LateralTheory.DivDb.RepPf.Rep_of _root_.LateralTheory.Fin.DenseAlg.etale_rep_dense_algebraic_hull_holds_assembled _root_.LateralTheory.DivDb.FiniteSubrepresentation.FinSub_of _root_.LateralTheory.Fin.FinDense.etale_finite_image_dense_holds_assembled _root_.LateralTheory.DivDb.FinPolyPf.FinPoly_of _root_.LateralTheory.DivDb.FinEmbedPf.FinEmbed_of

end LateralTheory.DivDb
