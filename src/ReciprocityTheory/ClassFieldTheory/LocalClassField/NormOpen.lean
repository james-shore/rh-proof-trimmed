module

public import ReciprocityTheory.ClassFieldTheory.LocalClassField.RecDefs
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
public import ReciprocityTheory.ClassFieldTheory.LocalClassField.GalBasic
public import ReciprocityTheory.ClassFieldTheory.LocalClassField.NormOpenA
public import ReciprocityTheory.ClassFieldTheory.LocalClassField.NormOpenB

@[expose] public section

namespace ReciprocityTheory.DiscreteGroups.LocalClassField

open _root_.Neutral.B1 ReciprocityTheory.Coh Function

variable (p : ℕ) [Fact p.Prime] (K L : IntermediateField ℚ_[p] (PadicAlgCl p))

variable {p K L}

theorem normHom_mem (hL : FiniteDimensional ℚ_[p] L) (h : K ≤ L) (y : KbarMult p) (hy : y ∈ multOf p L) :
    normHom p K L y ∈ multOf p K := normHom_mem_multiplicative_group hL y hy

theorem normHom_layer (h : K ≤ L) [(subG p K L).Normal] [Fintype (GalLK p K L)] (y : (layer p K L).V) :
    normHom p K L y.1 = (∑ g, (layer p K L).rho g y).1 := normHom_layer_eq_trace_sum y

theorem isOpen_normGrp (hK : FiniteDimensional ℚ_[p] K) (hL : FiniteDimensional ℚ_[p] L) (h : K ≤ L) :
    IsOpen (normGrp p K L : Set Kˣ) :=
  Subgroup.isOpen_mono (by rintro _ ⟨x, rfl⟩; exact _root_.ReciprocityTheory.DiscreteGroups.LocalClassField.pow_degree_mem_normGroup h x)
    (isOpen_range_pow' hK (degLK_pos hL))

theorem finiteIndex_normGrp (hK : FiniteDimensional ℚ_[p] K) (hL : FiniteDimensional ℚ_[p] L) (h : K ≤ L) :
    (normGrp p K L).FiniteIndex := by
  have := finiteIndex_range_pow' hK (degLK_pos (K := K) hL)
  exact Subgroup.finiteIndex_of_le (H := (powMonoidHom (degLK p K L) : Kˣ →* Kˣ).range)
    (by rintro _ ⟨x, rfl⟩; exact _root_.ReciprocityTheory.DiscreteGroups.LocalClassField.pow_degree_mem_normGroup h x)

end ReciprocityTheory.DiscreteGroups.LocalClassField
