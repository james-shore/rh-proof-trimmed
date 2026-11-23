module

public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.HodgeBundleWeights.ToKnownTheoremsOf
public import Development.AbelianVarietyTheory.Definitions.Divisors.MemLevEigenIffTransl
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.LiftLambdaBound
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeLevelCharacterBound
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.CoversOfLifts
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.HostN
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
public import Development.AbelianVarietyTheory.Definitions.Divisors.CongModRefl
import Development.AbelianVarietyTheory.Definitions.Divisors.CuspIso
import Development.AbelianVarietyTheory.Definitions.Divisors.GenRatios
import Development.AbelianVarietyTheory.Definitions.Divisors.Multiplier

@[expose] public section



section
section

noncomputable section
namespace GlobalTheory.CovTop.TypeLattice
end GlobalTheory.CovTop.TypeLattice
namespace GlobalTheory.CovTop.TypeLattice
section Main
open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Theta
open GlobalTheory GlobalTheory.CompHS GlobalTheory.CovTop GlobalTheory.BigTop GlobalTheory.HSApp GlobalTheory.DegVal GlobalTheory.DegCmp
open GlobalTheory.LevDesc (TypeFrame grpHR latN)
theorem exists_psi_latDeep_eq_latN_of_covers : _root_.GlobalTheory.CovTop.PublishedHodgeBundleTheorems → _root_.GlobalTheory.CovTop.GramCondition → _root_.GlobalTheory.CovTop.DeepGoodness → _root_.GlobalTheory.CovTop.CoversCondition fun Fm x _ ι p i Y _ _ => ∃ (fr : TypeFrame (dat p i) Y.d.l₂) (ψ : ∀ v : GlobalTheory.IndefiniteRowSideFullHecke.LevelCuspCharacters.Sq (Fm.D x ι).host, AddChar (ZMod ((Fm.D x ι).host.g v.1)) Y.d.c₂.F), (∀ v, ψ v ≠ 1) ∧ GlobalTheory.LevDesc.IsTypeLevel Y.d.l₂ ∧ latDeep p i Y = latN fr Y.U (Gk p i) ψ ∧ Real.log (Nat.card (grpHR fr)) ≤ 45 * zBase (Fm.L x ι) ^ 2 := by
  intro _ _ _
  refine _root_.GlobalTheory.CovTop.CovSz.covers_of_lifts_alt (_root_.GlobalTheory.CovTop.Sizes.hostN_alt 0) ?_
  intro eps Fm x hx ι p i C _ hN _ Y hY
  obtain ⟨fr, ψ, h1, h2, h3⟩ := latDeep_eq_latN p i Y hY.1
  exact ⟨fr, ψ, h1, h2, h3, log_card_le p i Y hY hN _⟩
end Main
end GlobalTheory.CovTop.TypeLattice
end
end
end
