module

public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsAuxiliaryVectorWittDec
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FourierJacobiDepthLatticeLineComponentsMemStatement
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.JacobiStepCoreComponentMemCoreDepthLatticeStatement
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
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExtendByZeroTrivialDecomposition

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.SepRows GlobalTheory.Asc
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.FinPl (Lat idAt idOff intAt grpAt grpOff MxAt latV latA InK MonoAt OrthAt PrimAt ColsAt)
open scoped nonZeroDivisors ContDiff
open GlobalTheory.AscFin

namespace GlobalTheory.BoxFB

theorem vacG_boxT {D : D7} {ψ : AddChar (AF D.host.F) ℂ} {T A B S : HSp D} (d : OrthDec T A B)
    {Γ : AddSubgroup (WO S T)} {ΓA : AddSubgroup (WO S A)} {ΓB : AddSubgroup (WO S B)}
    (hA : ∀ u ∈ Γ, (d.resT S u).1 ∈ ΓA) (hB : ∀ u ∈ Γ, (d.resT S u).2 ∈ ΓB)
    {fA : WO S A → ℂ} {fB : WO S B → ℂ} (vA : VacG ψ S A ΓA fA) (vB : VacG ψ S B ΓB fB) :
    VacG ψ S T Γ (d.boxT S fA fB) := by
  refine ⟨d.isThetaFunO_boxT vA.1 vB.1, fun u hu => ?_, fun e he u hu hh => ?_⟩
  · rw [d.heisO_boxT, map_nsmul, Prod.smul_fst, Prod.smul_snd, vA.2.1 _ (hA u hu), vB.2.1 _ (hB u hu)]
  · rw [d.heisO_boxT, vA.2.2 e he _ (hA u hu) (by rw [d.resT_apply]; exact _root_.GlobalTheory.AscInh.isHalf_mul _ hh),
      vB.2.2 e he _ (hB u hu) (by rw [d.resT_apply]; exact _root_.GlobalTheory.AscInh.isHalf_mul _ hh)]

end GlobalTheory.BoxFB

namespace GlobalTheory.BoxFB

theorem core_mem : OnStd fun {D} _ _ {sc} {G} W F => ∀ σ (h : 2 * (σ + 1) + 2 ≤ D.R.m) (h' : 2 * σ + 2 ≤ D.R.m), ∀ u ∈ (pcFB W F σ h h').Γ₀, ((F.oB σ h').resT _ u).1 ∈ latCore G (2 * σ + 2) := GlobalTheory.T.jacobi_step_core_component_mem_core_depth_lattice

theorem line_mem : OnStd fun {D} _ _ {sc} {G} W F => ∀ σ (h : 2 * (σ + 1) + 2 ≤ D.R.m) (h' : 2 * σ + 2 ≤ D.R.m), ∀ u ∈ (pcFB W F σ h h').Γ₀, ((F.oB σ h').resT _ u).2 ∈ lineLat F (σ + 1) := GlobalTheory.T.fourierJacobi_depth_lattice_line_components_mem

theorem vacG_boxT_fb : OnStd fun {D} _ _ {sc} {G} W F => ∀ σ (h : 2 * (σ + 1) + 2 ≤ D.R.m) (h' : 2 * σ + 2 ≤ D.R.m), ∀ Ξ₁ Φ₀, VacG W.ψ _ _ (latCore G (2 * σ + 2)) Ξ₁ → VacG W.ψ _ _ (lineLat F (σ + 1)) Φ₀ → VacG W.ψ _ _ (pcFB W F σ h h').Γ₀ ((F.oB σ h').boxT _ Ξ₁ Φ₀) := by
  intro D hD T L μ0 hL sc G W M hM F hF σ h h' Ξ₁ Φ₀ hΞ hΦ
  exact vacG_boxT (F.oB σ h') (_root_.GlobalTheory.CoreComp.core_mem_latCore D hD T L μ0 hL sc G W M hM F hF σ h h')
    (_root_.GlobalTheory.LineFB.line_mem D hD T L μ0 hL sc G W M hM F hF σ h h') hΞ hΦ

end GlobalTheory.BoxFB

end
