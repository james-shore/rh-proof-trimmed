module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.IsFirstChernThickening
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.DividedPowerReduction.JEqPdPow
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ClsEqOfEq
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoefficientReductionFirstChernClassTateTwist
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueIsFirstChernTorsionFree
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FirstChernPullback
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsFirstChernThickeningMuBOfIsFirstChernDeRham
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullRetype
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullSqLePullToSq
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullUnitClass
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedKillsToSome
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedMCup
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedMorCupOne
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedTrans
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

@[expose] public section

set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false
set_option linter.unusedVariables false

noncomputable section

open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.Pb

alias red_nm := _root_.GlobalTheory.CompanionTheory.RedNat.red_nm

alias red_tr := _root_.GlobalTheory.CompanionTheory.RedTrans.red_trans

theorem nmHM_redM : ∀ {O A A' : Type} [CommRing O] [CommRing A] [CommRing A'] [Algebra O A] [Algebra O A'] {I : Ideal A} {I' : Ideal A'}
    {γ : DividedPowers I} {γ' : DividedPowers I'} {X X' : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O)} {q' : X' ⟶ Spec (CommRingCat.of O)}
    {σ : A →+* A'} (m : NMor γ q (κA O I) γ' q' (κA O I') σ) (l s : ℕ) (r : Option ℤ) (n j : ℕ) (z : HO (TS γ q l s {⊤}) j),
    nmHM m l s r n j (redM (TS γ q l s {⊤}) r ((l : A) ^ n) j z) = redM (TS γ' q' l s {⊤}) r ((l : A') ^ n) j (nmHO m l s j z) := @GlobalTheory.CompanionTheory.RedPull.nmHM_redM

end CrystallineSemistableComparison.Pb
