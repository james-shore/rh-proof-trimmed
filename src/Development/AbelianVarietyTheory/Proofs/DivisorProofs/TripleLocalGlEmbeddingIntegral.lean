module

public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalLinearOperatorL2Isometry
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubledUnitaryElementActsLocalOperatorAtPlaceStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNonzeroComplementaryAdelicSchwartzFunction
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalWeilOperatorIsometrySchwartzBruhatStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProductFunctionOnSumCoordsMemAdelicSchwartzSpace
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
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfComponentTensorAdelicFunctionEq
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatAtVAtStable
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalLinearOperatorL2IsometryStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TripleLocalGlEmbeddingIntegral

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalLinearOperatorL2IsometryStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalLinearOperatorL2IsometryStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalLinearOperatorL2Isometry\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun
open scoped Matrix
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

theorem _root_.GlobalTheory.T.local_linear_operator_l2_isometry : ∀ {F : Type} [Field F] [NumberField F] {κ : Type} [Fintype κ] (v : Pl (F := F))
    (T : ((κ → Fv F v) → ℂ) → (κ → Fv F v) → ℂ),
    (∀ φ ∈ SB (κ → Fv F v), T φ ∈ SB (κ → Fv F v)) →
    (∀ φ ∈ SB (κ → Fv F v), ∀ φ' ∈ SB (κ → Fv F v), ∀ c : ℂ, T (c • φ + φ') = c • T φ + T φ') →
    ∀ μ : @MeasureTheory.Measure (κ → Fv F v) (borel _), @MeasureTheory.Measure.IsAddHaarMeasure _ _ _ (borel _) μ →
    (∀ φ ∈ SB (κ → Fv F v), ∫⁻ y, ‖T φ y‖ₑ ^ 2 ∂μ = ∫⁻ y, ‖φ y‖ₑ ^ 2 ∂μ) →
    ∀ φ₁ ∈ SB (κ → Fv F v), ∀ φ₂ ∈ SB (κ → Fv F v),
      ∫ x, T φ₁ x * starRingEnd ℂ (T (fun y => starRingEnd ℂ (φ₂ y)) x) ∂μ = ∫ x, φ₁ x * φ₂ x ∂μ := by
  first | exact @GlobalTheory.PolarSB.pairing_eq
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalLinearOperatorL2IsometryStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TripleLocalGlEmbeddingIntegral =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TripleLocalGlEmbeddingIntegral", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubledUnitaryElementActsLocalOperatorAtPlaceStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfComponentTensorAdelicFunctionEq\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNonzeroComplementaryAdelicSchwartzFunction\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatAtVAtStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalLinearOperatorL2IsometryStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalWeilOperatorIsometrySchwartzBruhatStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProductFunctionOnSumCoordsMemAdelicSchwartzSpace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun
open scoped Matrix
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section

namespace GlobalTheory.DblDiag

section Groups

variable {R E : Type} [CommRing R] [CommRing E] [Algebra R E] (c : E →ₐ[R] E) {β : Type} [Fintype β] [DecidableEq β]
  {J : Matrix β β E}

theorem fromBlocks_unit_left (k : UG c J) : (Matrix.fromBlocks ((k : GL β E) : Matrix β β E) 0 0 1)ᵀ * dbl J *
    (Matrix.fromBlocks ((k : GL β E) : Matrix β β E) 0 0 1).map c = dbl J := by
  have hk : ((k : GL β E) : Matrix β β E)ᵀ * J * ((k : GL β E) : Matrix β β E).map c = J := k.2
  have h1 : (1 : Matrix β β E).map c = 1 := Matrix.map_one _ (map_zero c) (map_one c)
  rw [dbl, Matrix.fromBlocks_transpose, Matrix.fromBlocks_map, Matrix.fromBlocks_multiply, Matrix.fromBlocks_multiply]
  simp only [Matrix.transpose_zero, Matrix.transpose_one, Matrix.zero_mul, Matrix.mul_zero, add_zero, zero_add,
    Matrix.map_zero _ (map_zero c), h1, Matrix.one_mul, Matrix.mul_one, hk]

theorem fromBlocks_unit_right (k : UG c J) : (Matrix.fromBlocks 1 0 0 ((k : GL β E) : Matrix β β E))ᵀ * dbl J *
    (Matrix.fromBlocks 1 0 0 ((k : GL β E) : Matrix β β E)).map c = dbl J := by
  have hk : ((k : GL β E) : Matrix β β E)ᵀ * J * ((k : GL β E) : Matrix β β E).map c = J := k.2
  have hn : ((k : GL β E) : Matrix β β E)ᵀ * (-J) * ((k : GL β E) : Matrix β β E).map c = -J := by
    rw [Matrix.mul_neg, Matrix.neg_mul, hk]
  have h1 : (1 : Matrix β β E).map c = 1 := Matrix.map_one _ (map_zero c) (map_one c)
  rw [dbl, Matrix.fromBlocks_transpose, Matrix.fromBlocks_map, Matrix.fromBlocks_multiply, Matrix.fromBlocks_multiply]
  simp only [Matrix.transpose_zero, Matrix.transpose_one, Matrix.zero_mul, Matrix.mul_zero, add_zero, zero_add,
    Matrix.map_zero _ (map_zero c), h1, Matrix.one_mul, Matrix.mul_one, hn]

def diagL (k : UG c J) : UG c (dbl J) :=
  ⟨⟨Matrix.fromBlocks ((k : GL β E) : Matrix β β E) 0 0 1, Matrix.fromBlocks (((k : GL β E)⁻¹ : GL β E) : Matrix β β E) 0 0 1,
    by rw [Matrix.fromBlocks_multiply]; simp [Matrix.fromBlocks_one],
    by rw [Matrix.fromBlocks_multiply]; simp [Matrix.fromBlocks_one]⟩, fromBlocks_unit_left c k⟩

def diagR (k : UG c J) : UG c (dbl J) :=
  ⟨⟨Matrix.fromBlocks 1 0 0 ((k : GL β E) : Matrix β β E), Matrix.fromBlocks 1 0 0 (((k : GL β E)⁻¹ : GL β E) : Matrix β β E),
    by rw [Matrix.fromBlocks_multiply]; simp [Matrix.fromBlocks_one],
    by rw [Matrix.fromBlocks_multiply]; simp [Matrix.fromBlocks_one]⟩, fromBlocks_unit_right c k⟩

end Groups

section Local

variable {F : Type} [Field F] [NumberField F]

theorem boxFun_mem_SB {k : Type} [CommRing k] [TopologicalSpace k] [T2Space k] {κ κ' : Type}
    {φ₁ : (κ → k) → ℂ} {φ₂ : (κ' → k) → ℂ} (h₁ : φ₁ ∈ SB (κ → k)) (h₂ : φ₂ ∈ SB (κ' → k)) :
    boxFun φ₁ φ₂ ∈ SB (κ ⊕ κ' → k) := by
  have cl : Continuous fun x : κ ⊕ κ' → k => x ∘ Sum.inl := continuous_pi fun i => continuous_apply _
  have cr : Continuous fun x : κ ⊕ κ' → k => x ∘ Sum.inr := continuous_pi fun i => continuous_apply _
  refine ⟨(h₁.1.comp_continuous cl).mul (h₂.1.comp_continuous cr), ?_⟩
  let e := (Homeomorph.sumArrowHomeomorphProdArrow (X := k) (ι := κ) (ι' := κ'))
  refine HasCompactSupport.intro ((h₁.2.prod h₂.2).image e.symm.continuous) fun x hx => ?_
  have hx' : e x ∉ tsupport φ₁ ×ˢ tsupport φ₂ := fun h => hx ⟨e x, h, e.symm_apply_apply x⟩
  rw [Homeomorph.sumArrowHomeomorphProdArrow_apply, Set.mem_prod, not_and_or] at hx'
  simp only [boxFun]
  rcases hx' with h | h
  · rw [image_eq_zero_of_notMem_tsupport h, zero_mul]
  · rw [image_eq_zero_of_notMem_tsupport h, mul_zero]

theorem conj_mem_SB {Y : Type} [TopologicalSpace Y] {φ : Y → ℂ} (h : φ ∈ SB Y) :
    (fun y => starRingEnd ℂ (φ y)) ∈ SB Y :=
  ⟨h.1.comp _, h.2.comp_left (map_zero _)⟩

theorem tens_boxFun (v : Pl (F := F)) {κ κ' : Type} (φ₁ : (κ → Fv F v) → ℂ) (φ₂ : (κ' → Fv F v) → ℂ)
    (r₁ : (κ → AF F) → ℂ) (r₂ : (κ' → AF F) → ℂ) :
    tens (evFin F v) (boxFun φ₁ φ₂) (boxFun r₁ r₂) = boxFun (tens (evFin F v) φ₁ r₁) (tens (evFin F v) φ₂ r₂) := by
  funext x
  simp only [tens, boxFun, Function.comp_def]
  ring

theorem rest_boxFun (v : Pl (F := F)) {κ κ' : Type} [Fintype κ] [Fintype κ'] {φ₁ : (κ → Fv F v) → ℂ} {φ₂ : (κ' → Fv F v) → ℂ}
    {r₁ : (κ → AF F) → ℂ} {r₂ : (κ' → AF F) → ℂ} (h₁ : Rest (evFin F v) φ₁ r₁) (h₂ : Rest (evFin F v) φ₂ r₂) :
    Rest (evFin F v) (boxFun φ₁ φ₂) (boxFun r₁ r₂) := by
  refine ⟨fun x z hz => ?_, ?_⟩
  · have hz1 : At (evFin F v) (z ∘ Sum.inl) := fun u hu => by
      funext i; exact congrFun (hz u hu) (Sum.inl i)
    have hz2 : At (evFin F v) (z ∘ Sum.inr) := fun u hu => by
      funext i; exact congrFun (hz u hu) (Sum.inr i)
    show r₁ ((x + z) ∘ Sum.inl) * r₂ ((x + z) ∘ Sum.inr) = r₁ (x ∘ Sum.inl) * r₂ (x ∘ Sum.inr)
    rw [show (x + z) ∘ Sum.inl = x ∘ Sum.inl + z ∘ Sum.inl from rfl,
      show (x + z) ∘ Sum.inr = x ∘ Sum.inr + z ∘ Sum.inr from rfl, h₁.1 _ _ hz1, h₂.1 _ _ hz2]
  · rw [tens_boxFun]
    exact GlobalTheory.SchwartzBox.boxFun_mem_schA F _ _ _ h₁.2 _ h₂.2

theorem eq_of_tens_eq_of_ne (v : Pl (F := F)) {κ : Type} {ψ₁ ψ₂ : (κ → Fv F v) → ℂ} {r : (κ → AF F) → ℂ}
    (hr : ∀ x z, At (evFin F v) z → r (x + z) = r x) {x₀ : κ → AF F} (h0 : r x₀ ≠ 0)
    (h : tens (evFin F v) ψ₁ r = tens (evFin F v) ψ₂ r) : ψ₁ = ψ₂ := by
  funext y
  let z : κ → AF F := fun i => GlobalTheory.LatVac.liftV v (y i - evFin F v (x₀ i))
  have hz : At (evFin F v) z := by
    intro u hu; funext i; exact GlobalTheory.LatVac.at_liftV v _ u hu
  have hev : (fun i => evFin F v ((x₀ + z) i)) = y := by
    funext i
    simp only [Pi.add_apply, z, map_add (f := _), GlobalTheory.LatVac.evFin_liftV]
    abel
  have e := congrFun h (x₀ + z)
  simp only [tens, hev, hr x₀ z hz] at e
  exact mul_right_cancel₀ h0 e

theorem acts_comp (v : Pl (F := F)) {κ : Type} [Fintype κ] {T₁ T₂ : ((κ → AF F) → ℂ) → (κ → AF F) → ℂ}
    (hT₂ : ∀ f ∈ schA F κ, T₂ f ∈ schA F κ) {φ φ₁ φ₂ : (κ → Fv F v) → ℂ}
    (h₂ : Acts (evFin F v) T₂ φ φ₁) (h₁ : Acts (evFin F v) T₁ φ₁ φ₂) :
    Acts (evFin F v) (fun f => T₁ (T₂ f)) φ φ₂ := by
  intro r hr
  have e := h₂ r hr
  have hr₁ : Rest (evFin F v) φ₁ r := ⟨hr.1, e ▸ hT₂ _ hr.2⟩
  show T₁ (T₂ _) = _
  rw [e, h₁ r hr₁]

end Local

end GlobalTheory.DblDiag
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TripleLocalGlEmbeddingIntegral =====
