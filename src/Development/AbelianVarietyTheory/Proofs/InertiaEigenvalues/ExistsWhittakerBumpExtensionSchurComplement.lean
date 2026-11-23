module

public import Development.AbelianVarietyTheory.Definitions.Divisors.IsRapidInf
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsIdempotentElemIdemSf
public import Development.AbelianVarietyTheory.Definitions.Divisors.MirSet
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdelicWhittakerEquivariantBumpMirabolic
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AdelicGLProjectionsMulInfiniteAdelicGLStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AdelicGLProjectionsOnSupportedAtPlacesStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AdelicGLProjectionsUpperUnitriangularGenericCharStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlockDiagGLMemAdelicGLSupportedAtFinitePlacesStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContDiffOnChartSchurComplementExtensionStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EventuallyAdelicGLProjectionsFiniteNearOneStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSmoothWhittakerBumpAdelicGLStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchurComplementExtensionFunctionBlockDiagApplyStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchurFunctionCompactSupportModuloUnipotent
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchurFunctionSmoothRightInvariant
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchurFunctionWhittakerEquivariant
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Definitions.Divisors.UnrOutside

@[expose] public section

open NumberField IsDedekindDomain MeasureTheory GlobalTheory.CuspRep GlobalTheory.JSW Formalism.UG GlobalTheory.LFun Formalism.L2.Host
open scoped ENNReal ComplexConjugate ContDiff
open GlobalTheory.SchurExt
open scoped Topology

namespace GlobalTheory.SchurExt.Parts

alias L_glob := _root_.GlobalTheory.WhitBump.exists_bump_glob

alias L_equiv := _root_.GlobalTheory.SchurEquiv.schurF_equivariant

alias L_cpt := _root_.GlobalTheory.SchurExtCpt.exists_compact_support

alias L_inv := _root_.GlobalTheory.SchurExt.schurF_mul_finGL_eq

alias L_smooth := _root_.GlobalTheory.SchurExt.contDiffOn_chart_schurF

theorem L_block : ∀ (E : Type) [Field E] [NumberField E] [_root_.NumberField.IsTotallyComplex E] (m r : ℕ) (β : GA E (m + 1) → ℂ) (b₁ : GA E (r + 1) → ℂ) (χ : (Fin (r + 1) → Fin (m + 1) → Cinf E) → ℝ), ∀ h : GA E (m + 1), schurF β b₁ χ (GroundTheory.Automorphic.FourierWhittaker.blockGL (by omega : m + 1 ≤ m + r + 1 + 1) h) = β h * b₁ 1 * (χ 0 : ℂ) := GlobalTheory.T.schurComplementExtensionFunction_blockDiag_apply

alias L_projNA := _root_.GlobalTheory.SchurExt.prS_prO_NA_psiN

alias L_projSupS := _root_.GlobalTheory.SchurExt.prS_prO_supS

alias L_projInf := _root_.GlobalTheory.SchurExt.prS_prO_mul_infGL

alias L_projFin := _root_.GlobalTheory.SchurExt.eventually_prS_prO_finGL

theorem L_blockSupS : ∀ (E : Type) [Field E] [NumberField E] (m r : ℕ) (S : Finset (HeightOneSpectrum (𝓞 E))), ∀ h ∈ GlobalTheory.JSW.supS (E := E) (a := (m + 1)) S, GroundTheory.Automorphic.FourierWhittaker.blockGL (by omega : m + 1 ≤ m + r + 1 + 1) h ∈ GlobalTheory.JSW.supS (E := E) (a := (m + r + 1 + 1)) S := GlobalTheory.T.blockDiagGL_mem_adelicGLSupportedAtFinitePlaces

end GlobalTheory.SchurExt.Parts
open GlobalTheory.SchurExt.Parts

theorem GlobalTheory.SchurExt.exists_ext : ∀ (E : Type) [Field E] [NumberField E] [_root_.NumberField.IsTotallyComplex E] (m r : ℕ) (S : Finset (HeightOneSpectrum (𝓞 E)))
    (β : GA E (m + 1) → ℂ),
    (∀ u ∈ GlobalTheory.JSW.NA (E := E) (a := (m + 1)), ∀ g, β (u * g) = GlobalTheory.JSW.psiN u * β g) →
    (∃ C : Set (GA E (m + 1)), IsCompact C ∧ ∀ h ∈ GlobalTheory.JSW.supS (E := E) (a := (m + 1)) S, β h ≠ 0 →
      ∃ u ∈ GlobalTheory.JSW.NA (E := E) (a := (m + 1)), u⁻¹ * h ∈ C) →
    (∃ U : Subgroup (GL (Fin (m + 1)) (Af E)), IsOpen (U : Set (GL (Fin (m + 1)) (Af E))) ∧
      ∀ u ∈ U, ∀ g, β (g * finGL E (m + 1) u) = β g) →
    (∀ g, ContDiffOn ℝ ∞ (chart β g) (invSet E (m + 1))) →
    ∃ b : GA E (m + r + 1 + 1) → ℂ,
      (∀ u ∈ GlobalTheory.JSW.NA (E := E) (a := (m + r + 1 + 1)), ∀ g, b (u * g) = GlobalTheory.JSW.psiN u * b g) ∧
      (∃ C : Set (GA E (m + r + 1 + 1)), IsCompact C ∧ ∀ p ∈ (GlobalTheory.JSW.supS (E := E) (a := (m + r + 1) + 1) S ∩ GlobalTheory.JSW.mirSet (GlobalTheory.CuspRep.Ad E) (m + r + 1)), b p ≠ 0 →
        ∃ u ∈ GlobalTheory.JSW.NA (E := E) (a := (m + r + 1 + 1)), u⁻¹ * p ∈ C) ∧
      (∃ U : Subgroup (GL (Fin (m + r + 1 + 1)) (Af E)), IsOpen (U : Set (GL (Fin (m + r + 1 + 1)) (Af E))) ∧
        ∀ u ∈ U, ∀ g, b (g * finGL E (m + r + 1 + 1) u) = b g) ∧
      (∀ g, ContDiffOn ℝ ∞ (chart b g) (invSet E (m + r + 1 + 1))) ∧
      ∀ h ∈ GlobalTheory.JSW.supS (E := E) (a := (m + 1)) S, b (GroundTheory.Automorphic.FourierWhittaker.blockGL (by omega : m + 1 ≤ m + r + 1 + 1) h) = β h := by
  intro E _ _ _ m r S β hβN hβC hβU hβS
  obtain ⟨b₁, h1one, h1N, h1C, h1U, h1S⟩ := L_glob E r
  obtain ⟨Φ, hΦ1, hΦN, -, ⟨UΦ, hUΦo, hUΦ⟩, -⟩ := GlobalTheory.WhitBump.exists_bump E (m + r + 1) S
  let f : ContDiffBump (0 : Fin (r + 1) → Fin (m + 1) → Cinf E) := ⟨1, 2, one_pos, one_lt_two⟩
  obtain ⟨C, hC, hCp⟩ := L_cpt E m r S β b₁ f hβC h1C f.hasCompactSupport
  obtain ⟨W, hW, hWk⟩ := L_inv E m r S β b₁ f hβU hβC h1U h1C
  refine ⟨extB S β b₁ f Φ, ?_, ⟨C, hC, ?_⟩, ?_, ?_, ?_⟩
  · intro u hu g
    obtain ⟨h1, h2, h3⟩ := L_projNA E (m + r + 1 + 1) S u hu
    simp only [extB, map_mul]
    rw [L_equiv E m r β b₁ f hβN h1N _ h1, hΦN _ h2, ← h3]
    ring
  · intro p hp hne
    obtain ⟨e1, e2⟩ := (L_projSupS E _ S).1 p hp.1
    refine hCp p hp fun h0 => hne ?_
    simp only [extB, e1, e2, h0, zero_mul]
  · let U : Subgroup (GL (Fin (m + r + 1 + 1)) (Af E)) :=
      { carrier := {k | ∀ g, extB S β b₁ f Φ (g * finGL E _ k) = extB S β b₁ f Φ g}
        mul_mem' := fun {a b} ha hb g => by
          simp only [Set.mem_setOf_eq] at ha hb ⊢
          rw [map_mul, ← mul_assoc, hb, ha]
        one_mem' := fun g => by simp only [map_one, mul_one]
        inv_mem' := fun {a} ha g => by
          simp only [Set.mem_setOf_eq] at ha ⊢
          have := ha (g * finGL E _ a⁻¹)
          rw [mul_assoc, ← map_mul, inv_mul_cancel, map_one, mul_one] at this
          exact this.symm }
    refine ⟨U, Subgroup.isOpen_of_mem_nhds U (g := 1) ?_, fun u hu g => hu g⟩
    have hV' : (UΦ : Set _) ∈ 𝓝 (1 : GL (Fin (m + r + 1 + 1)) (Af E)) := hUΦo.mem_nhds UΦ.one_mem
    filter_upwards [L_projFin E _ S W _ hW hV'] with k hk
    obtain ⟨⟨k', hk'W, hk'⟩, ⟨k'', hk''V, hk''⟩⟩ := hk
    intro g
    simp only [extB, map_mul, hk', hk'']
    rw [hWk k' hk'W (hk' ▸ (L_projSupS E _ S).2 _) _ ((L_projSupS E _ S).2 g), hUΦ k'' hk''V]
  · intro g
    have hs := (L_smooth E m r β b₁ f hβS h1S h1C f.contDiff (prS S _ g)).mul
      (contDiffOn_const (c := Φ (prO S _ g)))
    refine hs.congr fun x hx => ?_
    have hx' : IsUnit (Matrix.of x) := hx
    obtain ⟨e1, e2⟩ := L_projInf E _ S g hx'.unit
    simp only [chart, dif_pos hx', extB, e1, e2]
  · intro h hh
    obtain ⟨e1, e2⟩ := (L_projSupS E _ S).1 _ (L_blockSupS E m r S h hh)
    have hf0 : f 0 = 1 := f.one_of_mem_closedBall (Metric.mem_closedBall_self f.rIn_pos.le)
    simp only [extB, e1, e2, hΦ1, mul_one, L_block, h1one, hf0, Complex.ofReal_one]
