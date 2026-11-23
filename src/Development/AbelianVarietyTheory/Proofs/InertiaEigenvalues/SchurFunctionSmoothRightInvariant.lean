module

public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ConjLowUni
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsRapidInf
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNhdsOneConjLowerUnipotentSchurBlocksSmallStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FirstColumnInvFiniteMemCompactOnSupportStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsUnitBlockDetOfConjLower
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LastRowFiniteMemCompactOnSupportStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchurComplementMemAdelicGLSupportedAtFinitePlaceStatement
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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

@[expose] public section

open NumberField IsDedekindDomain GlobalTheory.CuspRep GlobalTheory.SchurExt
open scoped ContDiff Topology

noncomputable section

namespace GlobalTheory.SchurExt.InvParts

alias L_bridge := _root_.GlobalTheory.SchurExt.AdBridge.schur_data_mul_finGL

alias L_top := _root_.GlobalTheory.SchurNear.blocks_small

alias L_row := _root_.GlobalTheory.JSW.lastRow_finite_compact

alias L_col := _root_.GlobalTheory.NmUnfCol.finite_first_col_inv_compact

alias L_supSc := _root_.GlobalTheory.SchurExt.mkGL_Scof_mem_supS

end GlobalTheory.SchurExt.InvParts

namespace GlobalTheory.SchurExt

variable {E : Type} [Field E] [NumberField E]

theorem psi_sFin_of_mem {z : Af E} (hz : z ∈ GroundTheory.Global.integralFiniteAdeles (𝓞 E) E) : psi (sFin E z) = 1 := by
  have h := GroundTheory.Global.adelicChar_of_mem_invDifferentAdeles (K := E) (y := sFin E z)
    (GroundTheory.Global.mem_invDifferentAdeles.mpr (GroundTheory.Global.mem_finiteInvDifferent_of_mem_integralFiniteAdeles hz))
  have h0 : (sFin E z).1 = 0 := rfl
  rw [psi, h, h0]
  simp

theorem psi_add (a b : Ad E) : psi (a + b) = psi a * psi b := by
  simp only [psi, AddChar.map_add_eq_mul, Circle.coe_mul]

theorem supS_mul {a : ℕ} {S : Finset (HeightOneSpectrum (𝓞 E))} {x y : GA E a}
    (hx : x ∈ GlobalTheory.JSW.supS (E := E) (a := a) S) (hy : y ∈ GlobalTheory.JSW.supS (E := E) (a := a) S) : x * y ∈ GlobalTheory.JSW.supS (E := E) (a := a) S := by
  intro w hw
  rw [map_mul, hx w hw, hy w hw, mul_one]

theorem supS_inv {a : ℕ} {S : Finset (HeightOneSpectrum (𝓞 E))} {x : GA E a}
    (hx : x ∈ GlobalTheory.JSW.supS (E := E) (a := a) S) : x⁻¹ ∈ GlobalTheory.JSW.supS (E := E) (a := a) S := by
  intro w hw
  rw [map_inv, hx w hw, inv_one]

theorem finGL_mem_supS {a : ℕ} {S : Finset (HeightOneSpectrum (𝓞 E))} {k : GL (Fin a) (Af E)}
    (hk : finGL E a k ∈ GlobalTheory.JSW.supS (E := E) (a := a) S) (w : HeightOneSpectrum (𝓞 E)) (hw : w ∉ S) :
    Matrix.GeneralLinearGroup.map (pLoc E w) k = 1 := by
  have h := hk w hw
  rw [← h]
  refine Units.ext (Matrix.ext fun i j => ?_)
  change pLoc E w (k i j) = pLoc E w (pFin E ((finGL E a k : GA E a) i j))
  congr 1
  exact (congrArg (fun y : GL (Fin a) (Af E) => (y : Matrix (Fin a) (Fin a) (Af E)) i j) (pFin_finGL (E := E) k)).symm

end GlobalTheory.SchurExt


open GlobalTheory.SchurExt.InvParts in
theorem GlobalTheory.SchurExt.schurF_mul_finGL_eq : ∀ (E : Type) [Field E] [NumberField E] [_root_.NumberField.IsTotallyComplex E] (m r : ℕ) (S : Finset (HeightOneSpectrum (𝓞 E))) (β : GA E (m + 1) → ℂ) (b₁ : GA E (r + 1) → ℂ) (χ : (Fin (r + 1) → Fin (m + 1) → Cinf E) → ℝ), (∃ U : Subgroup (GL (Fin (m + 1)) (Af E)), IsOpen (U : Set (GL (Fin (m + 1)) (Af E))) ∧ ∀ u ∈ U, ∀ g, β (g * finGL E (m + 1) u) = β g) → (∃ C : Set (GA E (m + 1)), IsCompact C ∧ ∀ h ∈ GlobalTheory.JSW.supS (E := E) (a := (m + 1)) S, β h ≠ 0 → ∃ u ∈ GlobalTheory.JSW.NA (E := E) (a := (m + 1)), u⁻¹ * h ∈ C) → (∃ U : Subgroup (GL (Fin (r + 1)) (Af E)), IsOpen (U : Set (GL (Fin (r + 1)) (Af E))) ∧ ∀ u ∈ U, ∀ g, b₁ (g * finGL E (r + 1) u) = b₁ g) → (∃ C : Set (GA E (r + 1)), IsCompact C ∧ ∀ p, b₁ p ≠ 0 → ∃ u ∈ GlobalTheory.JSW.NA (E := E) (a := (r + 1)), u⁻¹ * p ∈ C) → ∃ W ∈ 𝓝 (1 : GL (Fin (m + r + 1 + 1)) (Af E)), ∀ k ∈ W, finGL E (m + r + 1 + 1) k ∈ GlobalTheory.JSW.supS (E := E) (a := (m + r + 1 + 1)) S → ∀ x ∈ GlobalTheory.JSW.supS (E := E) (a := (m + r + 1 + 1)) S, schurF β b₁ χ (x * finGL E (m + r + 1 + 1) k) = schurF β b₁ χ x := by
  intro E _ _ _ m r S β b₁ χ ⟨Uβ, hUβo, hUβ⟩ hβC ⟨Ub, hUbo, hUb⟩ hbC
  obtain ⟨Krow, hKr, hKrow⟩ := L_row E m S β hβC
  obtain ⟨Kcol, hKc, hKcol⟩ := L_col E r b₁ hbC
  obtain ⟨W₀, hW₀, hW⟩ := L_top E m r S Uβ Ub hUβo hUbo Krow Kcol hKr hKc
  have fwd : ∀ k ∈ W₀, finGL E (m + r + 1 + 1) k ∈ GlobalTheory.JSW.supS (E := E) (a := (m + r + 1 + 1)) S →
      ∀ x ∈ GlobalTheory.JSW.supS (E := E) (a := (m + r + 1 + 1)) S, schurF β b₁ χ x ≠ 0 →
        schurF β b₁ χ (x * finGL E (m + r + 1 + 1) k) = schurF β b₁ χ x := by
    intro k hk hkS x hx hF
    classical
    have hD : IsUnit (Dof (x : Matrix (Fin (m + r + 1 + 1)) (Fin (m + r + 1 + 1)) (Ad E))).det := by
      by_contra hD
      exact hF (by rw [schurF, ite_eq_right hD])
    rw [schurF, ite_eq_left hD] at hF
    have hβ0 := left_ne_zero_of_mul (left_ne_zero_of_mul (left_ne_zero_of_mul hF))
    have hβ0' := right_ne_zero_of_mul (left_ne_zero_of_mul (left_ne_zero_of_mul hF))
    have hb0 := right_ne_zero_of_mul (left_ne_zero_of_mul hF)
    have hχ0 := right_ne_zero_of_mul hF
    have hYint : ∀ i j, pFin E (Yof (x : Matrix (Fin (m + r + 1 + 1)) (Fin (m + r + 1 + 1)) (Ad E)) i j) ∈
        GroundTheory.Global.integralFiniteAdeles (𝓞 E) E := by
      by_contra hY
      exact hχ0 (by rw [chiF, ite_eq_right hY, mul_zero])
    obtain ⟨hdu, hdU, hsU, hyI, hX⟩ := hW k hk (finGL_mem_supS hkS)
      ((Yof (x : Matrix (Fin (m + r + 1 + 1)) (Fin (m + r + 1 + 1)) (Ad E))).map (pFin E)) (fun i j => hYint i j)
    obtain ⟨hSc, hD', eD, eSc, eYi, eYf, eX⟩ := L_bridge E m r x k hD hdu
    have hrow := hKrow _ (L_supSc E m r S x hx hD) hβ0'
    have hcol := hKcol _ hb0
    rw [coe_mkGL hSc] at hrow
    rw [Matrix.coe_units_inv, coe_mkGL hD] at hcol
    have hz := hX _ hrow _ hcol
    have hchi : chiF χ (Yof ((x * finGL E (m + r + 1 + 1) k : GA E (m + r + 1 + 1)) :
        Matrix (Fin (m + r + 1 + 1)) (Fin (m + r + 1 + 1)) (Ad E))) =
        chiF χ (Yof (x : Matrix (Fin (m + r + 1 + 1)) (Fin (m + r + 1 + 1)) (Ad E))) := by
      have h1 : (fun i j => pInf E (Yof ((x * finGL E (m + r + 1 + 1) k : GA E (m + r + 1 + 1)) :
          Matrix (Fin (m + r + 1 + 1)) (Fin (m + r + 1 + 1)) (Ad E)) i j)) =
          fun i j => pInf E (Yof (x : Matrix (Fin (m + r + 1 + 1)) (Fin (m + r + 1 + 1)) (Ad E)) i j) :=
        funext fun i => funext fun j => eYi i j
      have h2 : ∀ i j, pFin E (Yof ((x * finGL E (m + r + 1 + 1) k : GA E (m + r + 1 + 1)) :
          Matrix (Fin (m + r + 1 + 1)) (Fin (m + r + 1 + 1)) (Ad E)) i j) ∈ GroundTheory.Global.integralFiniteAdeles (𝓞 E) E :=
        fun i j => by rw [eYf]; exact add_mem (hYint i j) (hyI i j)
      rw [chiF, chiF, h1, ite_eq_left h2, ite_eq_left hYint]
    rw [schurF, ite_eq_left hD', eD, eSc, hUb _ hdU, hUβ _ hsU, hchi, eX, psi_add, psi_sFin_of_mem hz, mul_one, schurF, ite_eq_left hD]
  open scoped Pointwise in
  exact by
    refine ⟨W₀ ∩ W₀⁻¹, Filter.inter_mem hW₀ (inv_mem_nhds_one _ hW₀), ?_⟩
    intro k hk hkS x hx
    by_cases h0 : schurF β b₁ χ x = 0
    · by_cases h1 : schurF β b₁ χ (x * finGL E (m + r + 1 + 1) k) = 0
      · rw [h0, h1]
      · have h2 := fwd k⁻¹ hk.2 (by rw [map_inv]; exact supS_inv hkS) _ (supS_mul hx hkS) h1
        rw [mul_assoc, ← map_mul, mul_inv_cancel, map_one, mul_one] at h2
        exact absurd (h2.symm.trans h0) h1
    · exact fwd k hk.1 hkS x hx h0
