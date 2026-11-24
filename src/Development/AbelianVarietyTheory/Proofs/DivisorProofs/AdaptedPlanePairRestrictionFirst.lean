module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjLinApply
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjLocalOperator
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalOperatorLeftPartialPure
public import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
public import Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicSchwartzConjMem
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSchwartzNe
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardTraceAddCharIsStandardCharOfAdmissibleCM
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
import Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjLocalOperatorStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PartREqPartLSwap, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalOperatorRightPartialPure, Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdaptedPlanePairRestrictionFirst

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjLocalOperatorStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjLocalOperatorStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjLinApply\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjLocalOperator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts\n\n"}
section -- clump:auto
@[expose] public section

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.DblEval

theorem _root_.GlobalTheory.T.conj_local_operator : ∀ {F : Type} [Field F] [NumberField F] {κ κ₁ : Type} [Fintype κ] [Fintype κ₁] (e : ((κ → AF F) → ℂ) →ₗ[ℂ] (κ₁ → AF F) → ℂ), IsLocOp e → IsLocOp (conjLin e) := by
  first | exact @GlobalTheory.DblEval.ConjLoc.isLocOp_conjLin
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjLocalOperatorStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PartREqPartLSwap =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PartREqPartLSwap", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjLinApply\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts\n\n"}
section -- clump:auto
@[expose] public section

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.DblEval

noncomputable section

namespace GlobalTheory.DblEval.BlockSwap

section Generic

variable {A : Type} {κ κ' κ₁' : Type}

def swapV (z : κ' ⊕ κ → A) : κ ⊕ κ' → A := z ∘ Sum.swap

theorem partR_eq_partL_swap (T : ((κ' → A) → ℂ) → (κ₁' → A) → ℂ) (Φ : (κ ⊕ κ' → A) → ℂ) (y : κ ⊕ κ₁' → A) :
    partR T Φ y = partL T (fun z : κ' ⊕ κ → A => Φ (swapV z)) (swapV y) := by
  simp only [partR, partL, swapV]
  congr 1
  funext x
  congr 1
  funext i
  cases i <;> rfl

end Generic

section Adelic

open scoped Classical

variable {F : Type} [Field F] [NumberField F]

def swapCLE (M : Type) [NormedAddCommGroup M] [NormedSpace ℝ M] (κ κ' : Type) : (κ' ⊕ κ → M) ≃L[ℝ] (κ ⊕ κ' → M) :=
  { LinearEquiv.funCongrLeft ℝ M (Equiv.sumComm κ κ') with
    continuous_toFun := continuous_pi fun _ => continuous_apply _
    continuous_invFun := continuous_pi fun _ => continuous_apply _ }

def swapH (X : Type) [TopologicalSpace X] (κ κ' : Type) : (κ' ⊕ κ → X) ≃ₜ (κ ⊕ κ' → X) where
  toFun := swapV
  invFun := swapV
  left_inv z := by funext i; cases i <;> rfl
  right_inv z := by funext i; cases i <;> rfl
  continuous_toFun := continuous_pi fun _ => continuous_apply _
  continuous_invFun := continuous_pi fun _ => continuous_apply _

theorem sb_swap {X : Type} [TopologicalSpace X] {κ κ' : Type} {g : (κ ⊕ κ' → X) → ℂ} (hg : g ∈ SB (κ ⊕ κ' → X)) :
    (fun z : κ' ⊕ κ → X => g (swapV z)) ∈ SB (κ' ⊕ κ → X) :=
  ⟨hg.1.comp_continuous (swapH X κ κ').continuous, hg.2.comp_homeomorph (swapH X κ κ')⟩

theorem partR_of_partL {κ κ' κ₁' : Type} [Fintype κ] [Fintype κ'] [Fintype κ₁']
    (e : ((κ' → AF F) → ℂ) →ₗ[ℂ] (κ₁' → AF F) → ℂ)
    (hL : ∃ P : SInf F (κ' ⊕ κ) →L[ℂ] SInf F (κ₁' ⊕ κ), ∀ g ∈ SB (κ' ⊕ κ → Af F), ∃ g₁ ∈ SB (κ₁' ⊕ κ → Af F),
      ∀ f : SInf F (κ' ⊕ κ), partL e (pureA F f g) = pureA F (P f) g₁) :
    ∃ P : SInf F (κ ⊕ κ') →L[ℂ] SInf F (κ ⊕ κ₁'), ∀ g ∈ SB (κ ⊕ κ' → Af F), ∃ g₁ ∈ SB (κ ⊕ κ₁' → Af F),
      ∀ f : SInf F (κ ⊕ κ'), partR e (pureA F f g) = pureA F (P f) g₁ := by
  obtain ⟨PL, hPL⟩ := hL
  refine ⟨(SchwartzMap.compCLMOfContinuousLinearEquiv ℂ (swapCLE _ κ₁' κ)).comp
    (PL.comp (SchwartzMap.compCLMOfContinuousLinearEquiv ℂ (swapCLE _ κ κ'))), fun g hg => ?_⟩
  obtain ⟨g₁, hg₁, h⟩ := hPL _ (sb_swap hg)
  refine ⟨fun w => g₁ (swapV w), sb_swap hg₁, fun f => ?_⟩
  funext y
  rw [partR_eq_partL_swap]
  have hpure : (fun z : κ' ⊕ κ → AF F => pureA F (⇑f) g (swapV z)) =
      pureA F (⇑(SchwartzMap.compCLMOfContinuousLinearEquiv ℂ (swapCLE _ κ κ') f)) (fun w => g (swapV w)) := rfl
  rw [hpure, h]
  rfl

end Adelic

end GlobalTheory.DblEval.BlockSwap

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PartREqPartLSwap =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalOperatorRightPartialPure =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalOperatorRightPartialPure", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjLinApply\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalOperatorLeftPartialPure\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PartREqPartLSwap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts\n\n"}
section -- clump:auto
@[expose] public section

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.DblEval

namespace GlobalTheory.DblEval.BlockSwap

theorem partR_pureA {F : Type} [Field F] [NumberField F] {κ κ' κ₁' : Type} [Fintype κ]
    [Fintype κ'] [Fintype κ₁']
    (e : ((κ' → AF F) → ℂ) →ₗ[ℂ] (κ₁' → AF F) → ℂ) (he : IsLocOp e) :
    ∃ P : SInf F (κ ⊕ κ') →L[ℂ] SInf F (κ ⊕ κ₁'), ∀ g ∈ SB (κ ⊕ κ' → Af F),
      ∃ g₁ ∈ SB (κ ⊕ κ₁' → Af F), ∀ f : SInf F (κ ⊕ κ'),
        partR e (pureA F f g) = pureA F (P f) g₁ :=
  GlobalTheory.DblEval.BlockSwap.partR_of_partL e (_root_.GlobalTheory.DblEval.PartLStr.exists_partL_pureA e he)

end GlobalTheory.DblEval.BlockSwap
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalOperatorRightPartialPure =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdaptedPlanePairRestrictionFirst =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdaptedPlanePairRestrictionFirst", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjLinApply\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicSchwartzConjMem\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjLocalOperatorStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSchwartzNe\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalOperatorLeftPartialPure\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalOperatorRightPartialPure\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardTraceAddCharIsStandardCharOfAdmissibleCM\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts\n\n"}
section -- clump:auto
@[expose] public section

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.DblEval
open GlobalTheory.Doubling (absE)

noncomputable section

namespace GlobalTheory.DblEval

section Alg

variable {A : Type} {κ κ₁ κ₂ κ' κ₁' κ₂' : Type}

theorem partL_partL (T : ((κ₁ → A) → ℂ) → (κ₂ → A) → ℂ) (U : ((κ → A) → ℂ) → (κ₁ → A) → ℂ)
    (Φ : (κ ⊕ κ' → A) → ℂ) : partL T (partL U Φ) = partL (fun φ => T (U φ)) Φ := by
  funext y; simp only [partL, Sum.elim_comp_inl, Sum.elim_comp_inr]

theorem partR_partR (T : ((κ₁' → A) → ℂ) → (κ₂' → A) → ℂ) (U : ((κ' → A) → ℂ) → (κ₁' → A) → ℂ)
    (Φ : (κ ⊕ κ' → A) → ℂ) : partR T (partR U Φ) = partR (fun φ => T (U φ)) Φ := by
  funext y; simp only [partR, Sum.elim_comp_inl, Sum.elim_comp_inr]

theorem partL_congr {T T' : ((κ → A) → ℂ) → (κ₁ → A) → ℂ} {Φ : (κ ⊕ κ' → A) → ℂ}
    (h : ∀ b : κ' → A, T (fun x => Φ (Sum.elim x b)) = T' (fun x => Φ (Sum.elim x b))) : partL T Φ = partL T' Φ := by
  funext y; simp only [partL, h]

theorem partR_congr {T T' : ((κ' → A) → ℂ) → (κ₁' → A) → ℂ} {Φ : (κ ⊕ κ' → A) → ℂ}
    (h : ∀ a : κ → A, T (fun x => Φ (Sum.elim a x)) = T' (fun x => Φ (Sum.elim a x))) : partR T Φ = partR T' Φ := by
  funext y; simp only [partR, h]

theorem partL_partR_mt [Add A] (e : ((κ → A) → ℂ) →ₗ[ℂ] (κ₁ → A) → ℂ) (c : (κ' → A) → ℂ) (a : κ' → A)
    (Φ : (κ ⊕ κ' → A) → ℂ) :
    partL e (partR (fun φ x => c x * φ (x + a)) Φ) = partR (fun φ x => c x * φ (x + a)) (partL e Φ) := by
  funext y
  simp only [partL, partR, Sum.elim_comp_inl, Sum.elim_comp_inr]
  rw [show (fun x => c (y ∘ Sum.inr) * Φ (Sum.elim x (y ∘ Sum.inr + a))) =
    c (y ∘ Sum.inr) • fun x => Φ (Sum.elim x (y ∘ Sum.inr + a)) from rfl, map_smul]
  rfl

theorem partR_partL_mt [Add A] (e : ((κ' → A) → ℂ) →ₗ[ℂ] (κ₁' → A) → ℂ) (c : (κ → A) → ℂ) (a : κ → A)
    (Φ : (κ ⊕ κ' → A) → ℂ) :
    partR e (partL (fun φ x => c x * φ (x + a)) Φ) = partL (fun φ x => c x * φ (x + a)) (partR e Φ) := by
  funext y
  simp only [partL, partR, Sum.elim_comp_inl, Sum.elim_comp_inr]
  rw [show (fun x => c (y ∘ Sum.inl) * Φ (Sum.elim (y ∘ Sum.inl + a) x)) =
    c (y ∘ Sum.inl) • fun x => Φ (Sum.elim (y ∘ Sum.inl + a) x) from rfl, map_smul]
  rfl

end Alg

section Heis

variable {R : Type} [CommRing R] [Invertible (2 : R)]

theorem rho_dbl {E : Type} [CommRing E] [Algebra R E] (c : E →ₐ[R] E) (ξ : E) {α β : Type} [Fintype α] [DecidableEq α]
    [Fintype β] [DecidableEq β] (JA : Matrix α α E) (JB : Matrix β β E) {κ : Type} [Fintype κ]
    (d : Darboux (symp c ξ JA JB) κ) (dd : Darboux (symp c ξ JA (dbl JB)) (κ ⊕ κ)) (h : IsDblCoord c ξ JA JB d dd)
    (ψ : AddChar R ℂ) (w₁ w₂ : Matrix α β E) (Φ : (κ ⊕ κ → R) → ℂ) :
    dd.rho ψ (Matrix.fromCols w₁ w₂) Φ = partL (d.rho ψ w₁) (partR (d.rho ψ⁻¹ w₂) Φ) := by
  funext y
  obtain ⟨u, v, rfl⟩ : ∃ u v, y = Sum.elim u v := ⟨_, _, (Sum.elim_comp_inl_inr y).symm⟩
  have h' := h w₁ w₂
  simp only [Darboux.rho, partL, partR, h', schr, Sum.elim_comp_inl, Sum.elim_comp_inr, sumElim_dotProduct_sumElim,
    Sum.elim_add_add, AddChar.inv_apply, ← mul_assoc, ← AddChar.map_add_eq_mul]
  congr 2
  simp only [dotProduct_neg]
  ring

variable {κ : Type} [Fintype κ] (ψ : AddChar R ℂ) (hψ : ∀ t, ‖ψ t‖ = 1)
include hψ

theorem conj_psi (t : R) : starRingEnd ℂ (ψ t) = ψ⁻¹ t := by
  rw [AddChar.inv_apply, AddChar.map_neg_eq_inv]
  refine eq_inv_of_mul_eq_one_right ?_
  rw [Complex.mul_conj, Complex.normSq_eq_norm_sq, hψ t]
  norm_num

theorem conj_schr (w : (κ → R) × (κ → R)) (φ : (κ → R) → ℂ) (x : κ → R) :
    starRingEnd ℂ (schr ψ w φ x) = schr ψ⁻¹ w (fun x => starRingEnd ℂ (φ x)) x := by
  simp only [schr, map_mul, conj_psi ψ hψ]

theorem conj_schr_inv (w : (κ → R) × (κ → R)) (φ : (κ → R) → ℂ) (x : κ → R) :
    starRingEnd ℂ (schr ψ⁻¹ w φ x) = schr ψ w (fun x => starRingEnd ℂ (φ x)) x := by
  simp only [schr, map_mul, AddChar.inv_apply, conj_psi ψ hψ, neg_neg]

end Heis

section Glue

variable {A : Type} {κ κ₁ κ' κ₁' : Type}

theorem partL_id (Φ : (κ ⊕ κ' → A) → ℂ) : partL (fun φ => φ) Φ = Φ := by
  funext y; simp only [partL, Sum.elim_comp_inl_inr]

theorem partR_id (Φ : (κ ⊕ κ' → A) → ℂ) : partR (fun φ => φ) Φ = Φ := by
  funext y; simp only [partR, Sum.elim_comp_inl_inr]

theorem partL_intertwine {κa κb κc κd : Type} (T : ((κb → A) → ℂ) → (κd → A) → ℂ)
    (U : ((κa → A) → ℂ) → (κb → A) → ℂ) (U' : ((κc → A) → ℂ) → (κd → A) → ℂ) (T₀ : ((κa → A) → ℂ) → (κc → A) → ℂ)
    (S : Set ((κa → A) → ℂ)) (h : ∀ φ ∈ S, T (U φ) = U' (T₀ φ)) {Φ : (κa ⊕ κ' → A) → ℂ}
    (hΦ : ∀ b, (fun x => Φ (Sum.elim x b)) ∈ S) : partL T (partL U Φ) = partL U' (partL T₀ Φ) := by
  rw [partL_partL, partL_partL]
  exact partL_congr fun b => h _ (hΦ b)

theorem partR_intertwine {κa κb κc κd : Type} (T : ((κb → A) → ℂ) → (κd → A) → ℂ)
    (U : ((κa → A) → ℂ) → (κb → A) → ℂ) (U' : ((κc → A) → ℂ) → (κd → A) → ℂ) (T₀ : ((κa → A) → ℂ) → (κc → A) → ℂ)
    (S : Set ((κa → A) → ℂ)) (h : ∀ φ ∈ S, T (U φ) = U' (T₀ φ)) {Φ : (κ ⊕ κa → A) → ℂ}
    (hΦ : ∀ a, (fun x => Φ (Sum.elim a x)) ∈ S) : partR T (partR U Φ) = partR U' (partR T₀ Φ) := by
  rw [partR_partR, partR_partR]
  exact partR_congr fun a => h _ (hΦ a)

end Glue

section Rho

variable {R : Type} [CommRing R] [Invertible (2 : R)] {Wt : Type} [AddCommGroup Wt] [Module R Wt] {Bf : Wt → Wt → R}
  {κ κ₁ κ' κ₁' : Type} [Fintype κ] [Fintype κ']

theorem partL_partR_rho (e : ((κ → R) → ℂ) →ₗ[ℂ] (κ₁ → R) → ℂ) (D : Darboux Bf κ') (ψ : AddChar R ℂ) (w : Wt)
    (Φ : (κ ⊕ κ' → R) → ℂ) : partL e (partR (D.rho ψ w) Φ) = partR (D.rho ψ w) (partL e Φ) :=
  partL_partR_mt e (fun x => ψ (x ⬝ᵥ (D.e w).2 + ⅟(2 : R) * ((D.e w).1 ⬝ᵥ (D.e w).2))) (D.e w).1 Φ

theorem partR_partL_rho (e : ((κ' → R) → ℂ) →ₗ[ℂ] (κ₁' → R) → ℂ) (D : Darboux Bf κ) (ψ : AddChar R ℂ) (w : Wt)
    (Φ : (κ ⊕ κ' → R) → ℂ) : partR e (partL (D.rho ψ w) Φ) = partL (D.rho ψ w) (partR e Φ) :=
  partR_partL_mt e (fun x => ψ (x ⬝ᵥ (D.e w).2 + ⅟(2 : R) * ((D.e w).1 ⬝ᵥ (D.e w).2))) (D.e w).1 Φ

theorem sliceL_partR_rho (D : Darboux Bf κ') (ψ : AddChar R ℂ) (w : Wt) (Φ : (κ ⊕ κ' → R) → ℂ) (b : κ' → R) :
    (fun x => partR (D.rho ψ w) Φ (Sum.elim x b)) =
      ψ (b ⬝ᵥ (D.e w).2 + ⅟(2 : R) * ((D.e w).1 ⬝ᵥ (D.e w).2)) • fun x => Φ (Sum.elim x (b + (D.e w).1)) := by
  funext x; simp [partR, Darboux.rho, schr]

end Rho

section Main

variable {F : Type} [Field F] [NumberField F]

theorem sliceL_mem {κ κ' : Type} [Fintype κ] [Fintype κ'] {Φ : (κ ⊕ κ' → AF F) → ℂ} (hΦ : Φ ∈ schA F (κ ⊕ κ'))
    (b : κ' → AF F) : (fun x => Φ (Sum.elim x b)) ∈ schA F κ := by
  have e1 : (fun x => Φ (Sum.elim x b)) = fun x => Φ (GlobalTheory.ThK.Adapt.glue (Equiv.sumComm κ κ') b x) :=
    funext fun x => congrArg Φ (funext fun k => by cases k <;> rfl)
  rw [e1]
  exact GlobalTheory.ThK.Adapt.slice_mem_schA (Equiv.sumComm κ κ') b hΦ

theorem sliceR_mem {κ κ' : Type} [Fintype κ] [Fintype κ'] {Φ : (κ ⊕ κ' → AF F) → ℂ} (hΦ : Φ ∈ schA F (κ ⊕ κ'))
    (a : κ → AF F) : (fun x => Φ (Sum.elim a x)) ∈ schA F κ' :=
  GlobalTheory.ThK.Adapt.slice_mem_schA (Equiv.refl (κ ⊕ κ')) a hΦ

variable {κ κ₁ κ' κ₁' : Type} [Fintype κ] [Fintype κ₁] [Fintype κ'] [Fintype κ₁']

theorem partL_mem (e : ((κ → AF F) → ℂ) →ₗ[ℂ] (κ₁ → AF F) → ℂ) (he : IsLocOp e) :
    ∀ Φ ∈ schA F (κ ⊕ κ'), partL e Φ ∈ schA F (κ₁ ⊕ κ') := by
  obtain ⟨P, hP⟩ := _root_.GlobalTheory.DblEval.PartLStr.exists_partL_pureA (κ' := κ') e he
  intro Φ hΦ
  induction hΦ using Submodule.span_induction with
  | mem Φ h =>
    obtain ⟨f, g, hg, rfl⟩ := h
    obtain ⟨g₁, hg₁, h1⟩ := hP g hg
    rw [h1 f]
    exact Submodule.subset_span ⟨P f, g₁, hg₁, rfl⟩
  | zero => show partLₗ e 0 ∈ _; rw [map_zero]; exact zero_mem _
  | add x y _ _ hx hy => show partLₗ e (x + y) ∈ _; rw [map_add]; exact add_mem hx hy
  | smul c x _ hx => show partLₗ e (c • x) ∈ _; rw [map_smul]; exact Submodule.smul_mem _ c hx

theorem partR_mem (e : ((κ' → AF F) → ℂ) →ₗ[ℂ] (κ₁' → AF F) → ℂ) (he : IsLocOp e) :
    ∀ Φ ∈ schA F (κ ⊕ κ'), partR e Φ ∈ schA F (κ ⊕ κ₁') := by
  obtain ⟨P, hP⟩ := _root_.GlobalTheory.DblEval.BlockSwap.partR_pureA (κ := κ) e he
  intro Φ hΦ
  induction hΦ using Submodule.span_induction with
  | mem Φ h =>
    obtain ⟨f, g, hg, rfl⟩ := h
    obtain ⟨g₁, hg₁, h1⟩ := hP g hg
    rw [h1 f]
    exact Submodule.subset_span ⟨P f, g₁, hg₁, rfl⟩
  | zero => show partRₗ e 0 ∈ _; rw [map_zero]; exact zero_mem _
  | add x y _ _ hx hy => show partRₗ e (x + y) ∈ _; rw [map_add]; exact add_mem hx hy
  | smul c x _ hx => show partRₗ e (c • x) ∈ _; rw [map_smul]; exact Submodule.smul_mem _ c hx

theorem partL_adm (e : ((κ → AF F) → ℂ) →ₗ[ℂ] (κ₁ → AF F) → ℂ) (he : IsLocOp e) :
    ∀ l ∈ (adeleClass F).adm (κ₁ ⊕ κ'), l ∘ₗ partLₗ e ∈ (adeleClass F).adm (κ ⊕ κ') := by
  obtain ⟨P, hP⟩ := _root_.GlobalTheory.DblEval.PartLStr.exists_partL_pureA (κ' := κ') e he
  intro l hl g hg
  obtain ⟨g₁, hg₁, h1⟩ := hP g hg
  obtain ⟨T, hT⟩ := hl g₁ hg₁
  exact ⟨T.comp P, fun f => by rw [LinearMap.comp_apply, partLₗ_apply, h1 f, hT, ContinuousLinearMap.comp_apply]⟩

theorem partR_adm (e : ((κ' → AF F) → ℂ) →ₗ[ℂ] (κ₁' → AF F) → ℂ) (he : IsLocOp e) :
    ∀ l ∈ (adeleClass F).adm (κ ⊕ κ₁'), l ∘ₗ partRₗ e ∈ (adeleClass F).adm (κ ⊕ κ') := by
  obtain ⟨P, hP⟩ := _root_.GlobalTheory.DblEval.BlockSwap.partR_pureA (κ := κ) e he
  intro l hl g hg
  obtain ⟨g₁, hg₁, h1⟩ := hP g hg
  obtain ⟨T, hT⟩ := hl g₁ hg₁
  exact ⟨T.comp P, fun f => by rw [LinearMap.comp_apply, partRₗ_apply, h1 f, hT, ContinuousLinearMap.comp_apply]⟩

end Main

section Ev

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

theorem isLocOp_of_isEv {B : Base F E} {n d n₁ d₁ : ℕ} {X : Spc F E n} {W : Spc F E d} {X₁ : Spc F E n₁}
    {W₁ : Spc F E d₁} {M : Model σ X W} {M₁ : Model σ X₁ W₁} {ι : Matrix (Fin n) (Fin n₁) E}
    {ι' : Matrix (Fin d) (Fin d₁) E} {I : Set (Matrix (Fin n) (Fin d) (AE F E))} {e : Fn F n d →ₗ[ℂ] Fn F n₁ d₁}
    (hM : M.IsGood B.ψ) (hM₁ : M₁.IsGood B.ψ) (he : IsEv B M M₁ ι ι' I e) : IsLocOp e := by
  obtain ⟨ei, ev, -, hev, hloc⟩ := he.loc
  refine ⟨ei, ev, fun v φ hφ => (hev v).2 ▸ Submodule.mem_map_of_mem hφ, (hM.std.and hM₁.std).mono fun v h => ?_,
    fun f φ hφ hstd => hloc f φ hφ ((hstd.and hM.std).mono fun v h => h.1.trans h.2.symm)⟩
  show ev v (Set.indicator _ 1) = Set.indicator _ 1
  rw [← h.1, (hev v).1, h.2]

end Ev

end GlobalTheory.DblEval
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdaptedPlanePairRestrictionFirst =====
