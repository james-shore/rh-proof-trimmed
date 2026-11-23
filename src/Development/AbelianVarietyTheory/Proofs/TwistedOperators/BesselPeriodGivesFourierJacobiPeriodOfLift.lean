module

public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.TowerEx
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.EqZeroOfLintegralEqZero
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FlatMapIntertwinesCoreHeisenbergOperators
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.UnfoldingLevelsAndStepsHaarMeasuresExist
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.BesselHandedFunctionProductEqCoreLiftMulPairingStatement
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.BesselPeriodHandedDownIsTameThetaFunctionalStatement
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.TameFunctionalVacuumIrreducibilityStatement
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.VanishingDescendsFourierJacobiToBesselStatement
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

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.SepRows
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Asc

namespace GlobalTheory.UpFromBessel

variable {D : D7}

theorem per_smul {ρ : ℕ} (B : BesL D ρ) (ψ : AddChar (AF D.host.F) ℂ) (c : ℂ) (φ : GA D B.A → ℂ) (f : GA D B.V → ℂ) :
    B.per ψ (c • φ) f = c * B.per ψ φ f := by
  simp only [BesL.per, besPer, besFun, Pi.smul_apply, smul_eq_mul, mul_assoc, integral_const_mul]

theorem upFB : ∀ D : D7, UpFB D := by
  intro D ψ σ J B s 𝒮 Γ₀ K hL χA χz omb omz hχ hb hz φ G hφ hG hK Ξ₁ Φ₀ hΞ hΦ hne hvac hper
  by_contra hcon
  push_neg at hcon
  have hψ := s.weil.std
  obtain ⟨vL⟩ := (GlobalTheory.Unf.VolExist.measures_exist D).2.2.1 B.L.rank J.W₀.rank
  have hvan := GlobalTheory.T.vanishing_descends_fourierJacobi_to_bessel D ψ σ J B s 𝒮 Γ₀ K hL vL _ _ omz hz φ G Φ₀ hφ hG hΦ hK hcon
  have htame := GlobalTheory.T.besselPeriod_handedDown_isTameThetaFunctional D ψ σ J B s vL _ _ omz hz φ G Φ₀ hφ hG hΦ
  obtain ⟨Φ, hΦS, hfl⟩ := hL.ne
  have hall := GlobalTheory.T.tame_functional_vacuum_irreducibility D ψ hψ J.W₀ B.V₀ Γ₀ _ htame _ (hL.vac Φ hΦS) hfl (fun w hw => by
    have h1 := (GlobalTheory.FlatHeis.flatAt_heisO D ψ hψ J.W J.W₀ B.V B.V₀ (σ + 1) σ J.d B.d s.vS s.vT s.vU
      (xLast B.d (vecB B.o B.ζ)) 0 Φ (hL.theta Φ hΦS)).2.1 w
    have h2 := hvan _ (hL.core Φ hΦS w hw)
    simp only [flFB, flatS] at h2 ⊢
    rw [h1] at h2
    exact h2) _ hvac
  have hlink := GlobalTheory.T.besselHandedFunction_product_eq_coreLift_mul_pairing D ψ σ J B s vL χA χz omb omz hχ hb hz φ Ξ₁ Φ₀ Φ₀ hΞ hΦ hΦ
  simp only [hlink, per_smul] at hall
  exact hper ((mul_eq_zero.1 hall).resolve_left (_root_.GlobalTheory.Irr.thPair_self_ne_zero hψ vL hΦ hne))

end GlobalTheory.UpFromBessel
