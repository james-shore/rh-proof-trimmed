module

public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.StdGap
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.EqZeroOfDatumEmbeddingEqZero
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.ExistenceG2.FormulaF
public import Mathlib.Analysis.InnerProductSpace.Positive
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.HasDerivAtInvExpCurveEntry
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ExpInPPosDef
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.FormulaFA
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.ContinuousUnitaryMatrix
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TensorRepresentations.HidaSetting
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TensorRepresentations.ExistsKEquivariantMap
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TensorRepresentations.AestronglyMeasurablePsiInner
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Algebra.Ring.IsFormallyReal
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
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
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
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TensorRepresentations.PosSemidefWeightedInnerNonneg
import Mathlib.Analysis.Matrix.Order
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.AnalyticVectors.ConjTransposeEqOfInG
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.AnalyticVectors.PolarJmConjTranspose
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TensorRepresentations.CuspProjectionOrthogonality
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.DatumA
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TensorRepresentations.OccBLowKShiftF

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.AestronglyMeasurablePsiInner, ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.PosSemidefWeightedInnerNonneg, ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.CuspProjectionOrthogonality, ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.OccBLowKShiftF

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.AestronglyMeasurablePsiInner =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.AestronglyMeasurablePsiInner", "h": "module\n\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TensorRepresentations.AestronglyMeasurablePsiInner\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.StdGap\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.EqZeroOfDatumEmbeddingEqZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.ExistenceG2.FormulaF\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset MeasureTheory
open scoped Matrix

namespace ReciprocityTheory.ChartRestriction.DS.G2

variable {n : ℕ}

def ob3PsiCoef (dual : Bool) {ε : Fin n → Bool} {Λ : Fin n → ℝ} {T : S7.KType ε Λ}
    (Ψ : Matrix (Fin n) (Fin n) ℂ → (T.V →L[ℂ] T.V)) (ξ ζ : Fin n → T.V) (g : Matrix (Fin n) (Fin n) ℂ) : ℂ :=
  ∑ c, inner ℂ (ξ c) (∑ d, (cond dual ((g⁻¹) d c) (g c d)) • Ψ g (ζ d))

section Psi

variable {ε : Fin n → Bool} {lam lam' : Fin n → ℝ} {T : S7.KType ε (lowK ε lam)} {T' : S7.KType ε (lowK ε lam')}
  {Ψ : Matrix (Fin n) (Fin n) ℂ → (T.V →L[ℂ] T.V)} {Ψ' : Matrix (Fin n) (Fin n) ℂ → (T'.V →L[ℂ] T'.V)}

theorem psi_weighted_memLp {v₀ : T.V} (hgap : StdGap ε lam) (hP : IsPsiFor ε lam T Ψ) (hv₀ : v₀ ≠ 0)
    (hW : ∀ v ∈ genSub (smE ε (rreg ε)) (datumV ε Ψ v₀), ∀ w ∈ genSub (smE ε (rreg ε)) (datumV ε Ψ v₀),
      MemLp (fun g : Formalism.REAL.UJ ε => ((Real.sqrt (S7.hs (Formalism.MainNotions.S.umat g)) : ℝ) : ℂ) *
        inner ℂ ((w : smD ε (rreg ε)) : L2 ε) (rreg ε (Formalism.MainNotions.S.umat g) ((v : smD ε (rreg ε)) : L2 ε))) 2 (Formalism.REAL.muG ε))
    (v w : T.V) :
    MemLp (fun g : Formalism.REAL.UJ ε => ((Real.sqrt (S7.hs (Formalism.MainNotions.S.umat g)) : ℝ) : ℂ) *
      inner ℂ w (Ψ (Formalism.MainNotions.S.umat g) v)) 2 (Formalism.REAL.muG ε) := by
  have hC : ((‖uniformisationL2 ε Ψ v₀ T.w‖ ^ 2 : ℝ) : ℂ) ≠ 0 := by
    have h := datumEmbedding_highest_ne_zero hgap hP hv₀
    exact_mod_cast pow_ne_zero 2 (norm_ne_zero_iff.2 h)
  have hmem : ∀ u, (⟨uniformisationL2 ε Ψ v₀ u, datumEmbedding_mem_smooth hP v₀ u⟩ : smD ε (rreg ε)) ∈
      genSub (smE ε (rreg ε)) (datumV ε Ψ v₀) := fun u =>
    Submodule.mem_sInf.2 (fun S hS => hS.1 (Submodule.mem_comap.2 (Submodule.subset_span ⟨u, rfl⟩)))
  have h := (hW _ (hmem v) _ (hmem w)).const_mul (((‖uniformisationL2 ε Ψ v₀ T.w‖ ^ 2 : ℝ) : ℂ)⁻¹)
  refine h.congr_norm ?_ (Filter.Eventually.of_forall fun g => ?_)
  · exact h.aestronglyMeasurable.congr (Filter.Eventually.of_forall fun g => by
      simp only
      rw [formulaF hgap hP hv₀ (g := Formalism.MainNotions.S.umat g) g.2 v w]
      field_simp)
  · simp only
    rw [formulaF hgap hP hv₀ (g := Formalism.MainNotions.S.umat g) g.2 v w]
    congr 1
    field_simp

end Psi

theorem norm_unitary_inv_entry {ε : Fin n → Bool} (g : Formalism.REAL.UJ ε) (c d : Fin n) :
    ‖(Formalism.MainNotions.S.umat g)⁻¹ d c‖ = ‖Formalism.MainNotions.S.umat g c d‖ := by
  apply ReciprocityTheory.ChartRestriction.DS.norm_unitary_inv_entry

theorem norm_unitary_entry_le_sqrt_hs {ε : Fin n → Bool} (g : Formalism.REAL.UJ ε) (c d : Fin n) :
    ‖Formalism.MainNotions.S.umat g c d‖ ≤ Real.sqrt (S7.hs (Formalism.MainNotions.S.umat g)) := by
  apply ReciprocityTheory.ChartRestriction.DS.norm_unitary_entry_le_sqrt_hs

theorem norm_dual_entry_le_sqrt_hs (dual : Bool) {ε : Fin n → Bool} (g : Formalism.REAL.UJ ε) (c d : Fin n) :
    ‖cond dual ((Formalism.MainNotions.S.umat g)⁻¹ d c) (Formalism.MainNotions.S.umat g c d)‖ ≤ Real.sqrt (S7.hs (Formalism.MainNotions.S.umat g)) := by
  cases dual
  · exact norm_unitary_entry_le_sqrt_hs g c d
  · simp only [cond]; rw [norm_unitary_inv_entry]; exact norm_unitary_entry_le_sqrt_hs g c d

theorem continuous_dual_entry (dual : Bool) {ε : Fin n → Bool} (c d : Fin n) :
    Continuous (fun g : Formalism.REAL.UJ ε => cond dual ((Formalism.MainNotions.S.umat g)⁻¹ d c) (Formalism.MainNotions.S.umat g c d)) := by
  apply ReciprocityTheory.ChartRestriction.DS.continuous_dual_entry

section Psi2

variable {ε : Fin n → Bool} {lam lam' : Fin n → ℝ} {T : S7.KType ε (lowK ε lam)} {T' : S7.KType ε (lowK ε lam')}
  {Ψ : Matrix (Fin n) (Fin n) ℂ → (T.V →L[ℂ] T.V)} {Ψ' : Matrix (Fin n) (Fin n) ℂ → (T'.V →L[ℂ] T'.V)}

theorem aestronglyMeasurable_psi_inner (hP : IsPsiFor ε lam T Ψ) (x y : T.V) :
    AEStronglyMeasurable (fun g : Formalism.REAL.UJ ε => inner ℂ x (Ψ (Formalism.MainNotions.S.umat g) y)) (Formalism.REAL.muG ε) := by
  have hΨm : AEStronglyMeasurable (fun g : Formalism.REAL.UJ ε => Ψ (Formalism.MainNotions.S.umat g)) (Formalism.REAL.muG ε) :=
    (hP.2.2.2.2 (Formalism.REAL.muG ε) (Formalism.REAL.instIsHaarMuG n ε)).aestronglyMeasurable
  exact (continuous_const.inner (continuous_id.clm_apply continuous_const)).comp_aestronglyMeasurable hΨm

theorem psi_inner_memLp (hP : IsPsiFor ε lam T Ψ) (x y : T.V) :
    MemLp (fun g : Formalism.REAL.UJ ε => inner ℂ x (Ψ (Formalism.MainNotions.S.umat g) y)) 2 (Formalism.REAL.muG ε) := by
  apply ReciprocityTheory.ChartRestriction.DS.psi_inner_memLp <;> assumption

theorem psi_coef_memLp_of_weighted (dual : Bool) (hP : IsPsiFor ε lam T Ψ)
    (hWT : ∀ v w : T.V, MemLp (fun g : Formalism.REAL.UJ ε => ((Real.sqrt (S7.hs (Formalism.MainNotions.S.umat g)) : ℝ) : ℂ) *
      inner ℂ w (Ψ (Formalism.MainNotions.S.umat g) v)) 2 (Formalism.REAL.muG ε)) (ξ ζ : Fin n → T.V) :
    MemLp (fun g : Formalism.REAL.UJ ε => ob3PsiCoef dual Ψ ξ ζ (Formalism.MainNotions.S.umat g)) 2 (Formalism.REAL.muG ε) := by
  apply ReciprocityTheory.ChartRestriction.DS.psi_coef_memLp_of_weighted <;> assumption

theorem psi_pairing_integrable (dual : Bool) (hP : IsPsiFor ε lam T Ψ) (hP' : IsPsiFor ε lam' T' Ψ')
    (hWT : ∀ v w : T.V, MemLp (fun g : Formalism.REAL.UJ ε => ((Real.sqrt (S7.hs (Formalism.MainNotions.S.umat g)) : ℝ) : ℂ) *
      inner ℂ w (Ψ (Formalism.MainNotions.S.umat g) v)) 2 (Formalism.REAL.muG ε)) (ξ ζ : Fin n → T.V) (u' v' : T'.V) :
    Integrable (fun g : Formalism.REAL.UJ ε => starRingEnd ℂ (ob3PsiCoef dual Ψ ξ ζ (Formalism.MainNotions.S.umat g)) *
      inner ℂ u' (Ψ' (Formalism.MainNotions.S.umat g) v')) (Formalism.REAL.muG ε) :=
  (psi_coef_memLp_of_weighted dual hP hWT ξ ζ).star.integrable_mul (psi_inner_memLp hP' u' v')

end Psi2

theorem clm_mul_apply_eq_comp {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E] (A B : E →L[ℂ] E) (x : E) :
    (A * B) x = A (B x) := rfl

theorem dual_entry_mul_sum (dual : Bool) (K H : Matrix (Fin n) (Fin n) ℂ) (c d : Fin n) :
    cond dual ((K * H)⁻¹ d c) ((K * H) c d) =
      ∑ e, cond dual (K⁻¹ e c) (K c e) * cond dual (H⁻¹ d e) (H e d) := by
  cases dual
  · simp only [cond, Matrix.mul_apply]
  · simp only [cond, Matrix.mul_inv_rev, Matrix.mul_apply]
    exact Finset.sum_congr rfl fun e _ => mul_comm _ _

section Psi3

variable {ε : Fin n → Bool} {lam lam' : Fin n → ℝ} {T : S7.KType ε (lowK ε lam)} {T' : S7.KType ε (lowK ε lam')}
  {Ψ : Matrix (Fin n) (Fin n) ℂ → (T.V →L[ℂ] T.V)} {Ψ' : Matrix (Fin n) (Fin n) ℂ → (T'.V →L[ℂ] T'.V)}

theorem psi_k_left_equivariant {Λ : Fin n → ℝ} {T : S7.KType ε Λ} {Ψ : Matrix (Fin n) (Fin n) ℂ → (T.V →L[ℂ] T.V)}
    (hK : ∀ (k₁ k₂ : S7.KG ε) (g : Matrix (Fin n) (Fin n) ℂ), inUJ ε g →
      Ψ (S7.toMK k₁ * g * S7.toMK k₂) = T.op k₁ * Ψ g * T.op k₂) (k : S7.KG ε) (h : Formalism.REAL.UJ ε) :
    Ψ (S7.toMK k * Formalism.MainNotions.S.umat h) = T.op k * Ψ (Formalism.MainNotions.S.umat h) := by
  have e := hK k 1 (Formalism.MainNotions.S.umat h) h.2
  have h1 : S7.toMK (1 : S7.KG ε) = 1 := rfl
  have h2 : T.op 1 = 1 := by simp [S7.KType.op]
  rwa [h1, mul_one, h2, mul_one] at e

theorem psi_coef_k_left_translate (dual : Bool) (hP : IsPsiFor ε lam T Ψ) (k : S7.KG ε) (h : Formalism.REAL.UJ ε)
    (ξ ζ : Fin n → T.V) :
    ob3PsiCoef dual Ψ ξ ζ (S7.toMK k * Formalism.MainNotions.S.umat h) =
      ob3PsiCoef dual Ψ (fun e => ∑ c, starRingEnd ℂ (cond dual ((S7.toMK k)⁻¹ e c) (S7.toMK k c e)) •
        (ContinuousLinearMap.adjoint (T.op k)) (ξ c)) ζ (Formalism.MainNotions.S.umat h) := by
  apply ReciprocityTheory.ChartRestriction.DS.psi_coef_k_left_translate <;> assumption

theorem psi_pairing_vanishing_spread (dual : Bool) (hP : IsPsiFor ε lam T Ψ) (hP' : IsPsiFor ε lam' T' Ψ') {v₀' : T'.V} (hv₀' : v₀' ≠ 0)
    (hWT : ∀ v w : T.V, MemLp (fun g : Formalism.REAL.UJ ε => ((Real.sqrt (S7.hs (Formalism.MainNotions.S.umat g)) : ℝ) : ℂ) *
      inner ℂ w (Ψ (Formalism.MainNotions.S.umat g) v)) 2 (Formalism.REAL.muG ε))
    (h0 : ∀ (ξ ζ : Fin n → T.V) (v' : T'.V), ∫ g : Formalism.REAL.UJ ε,
      starRingEnd ℂ (ob3PsiCoef dual Ψ ξ ζ (Formalism.MainNotions.S.umat g)) * inner ℂ v₀' (Ψ' (Formalism.MainNotions.S.umat g) v')
        ∂(Formalism.REAL.muG ε) = 0) :
    ∀ (ξ ζ : Fin n → T.V) (u' v' : T'.V), ∫ g : Formalism.REAL.UJ ε,
      starRingEnd ℂ (ob3PsiCoef dual Ψ ξ ζ (Formalism.MainNotions.S.umat g)) * inner ℂ u' (Ψ' (Formalism.MainNotions.S.umat g) v')
        ∂(Formalism.REAL.muG ε) = 0 := by
  apply ReciprocityTheory.ChartRestriction.DS.psi_pairing_vanishing_spread <;> assumption

end Psi3

end ReciprocityTheory.ChartRestriction.DS.G2
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.AestronglyMeasurablePsiInner =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.PosSemidefWeightedInnerNonneg =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.PosSemidefWeightedInnerNonneg", "h": "module\n\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TensorRepresentations.PosSemidefWeightedInnerNonneg\npublic import Mathlib.Analysis.InnerProductSpace.Positive\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.EqZeroOfDatumEmbeddingEqZero\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.HasDerivAtInvExpCurveEntry\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Matrix.Order\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.AnalyticVectors.ConjTransposeEqOfInG\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.AnalyticVectors.PolarJmConjTranspose\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirCoefficients.ExpInPPosDef\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.FormulaFA\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset MeasureTheory
open scoped ComplexOrder Matrix

namespace ReciprocityTheory.ChartRestriction.DS.G2

variable {n : ℕ}

def ob2TauF (dual : Bool) {ε : Fin n → Bool} {Λ : Fin n → ℝ} (T : S7.KType ε Λ) (k : S7.KG ε)
    (ξ : Fin n → T.V) : Fin n → T.V :=
  fun c => ∑ d, (cond dual (star (S7.toMK k c d)) (S7.toMK k c d)) • T.op k (ξ d)

def ob2PsiCoef (dual : Bool) {ε : Fin n → Bool} {Λ : Fin n → ℝ} {T : S7.KType ε Λ}
    (Ψ : Matrix (Fin n) (Fin n) ℂ → (T.V →L[ℂ] T.V)) (ξ ζ : Fin n → T.V) (g : Matrix (Fin n) (Fin n) ℂ) : ℂ :=
  ∑ c, inner ℂ (ξ c) (∑ d, (cond dual ((g⁻¹) d c) (g c d)) • Ψ g (ζ d))

def ob2SI {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V] (ξ η : Fin n → V) : ℂ :=
  ∑ c, inner ℂ (ξ c) (η c)

theorem onb_sum_inner_independent {E V : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    [NormedAddCommGroup V] [InnerProductSpace ℂ V] {ι κ : Type*} [Fintype ι] [Fintype κ]
    (b : OrthonormalBasis ι ℂ E) (c : OrthonormalBasis κ ℂ E) (F G : E →ₗ[ℂ] V) :
    ∑ j, inner ℂ (F (b j)) (G (b j)) = ∑ i, inner ℂ (F (c i)) (G (c i)) := by
  apply ReciprocityTheory.ChartRestriction.DS.onb_sum_inner_independent

theorem onb_sum_vector_inner_independent {E V : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    [NormedAddCommGroup V] [InnerProductSpace ℂ V] {ι κ : Type*} [Fintype ι] [Fintype κ]
    (b : OrthonormalBasis ι ℂ E) (c : OrthonormalBasis κ ℂ E) (F G : E →ₗ[ℂ] (Fin n → V)) :
    ∑ j, ob2SI (F (b j)) (G (b j)) = ∑ i, ob2SI (F (c i)) (G (c i)) := by
  unfold ob2SI
  rw [Finset.sum_comm]
  conv_rhs => rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun d _ =>
    onb_sum_inner_independent b c ((LinearMap.proj d).comp F) ((LinearMap.proj d).comp G)

theorem onb_expand_vector_inner {E V : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    [NormedAddCommGroup V] [InnerProductSpace ℂ V] {ι : Type*} [Fintype ι]
    (b : OrthonormalBasis ι ℂ E) (ι₀ : E →ₗ[ℂ] (Fin n → V)) (z : Fin n → V) (y : E) :
    ∑ i, starRingEnd ℂ (ob2SI (ι₀ (b i)) z) * inner ℂ (b i) y = ob2SI z (ι₀ y) := by
  conv_rhs => rw [← b.sum_repr' y]

  simp only [ob2SI, map_sum, map_smul, Finset.sum_apply, Pi.smul_apply, inner_sum, inner_smul_right,
  inner_conj_symm, Finset.sum_mul]
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun c _ => Finset.sum_congr rfl fun i _ => by ring

theorem k_type_op_inner_preserved {ε : Fin n → Bool} {Λ : Fin n → ℝ} (T : S7.KType ε Λ) (k : S7.KG ε) (x y : T.V) :
    inner ℂ (T.op k x) (T.op k y) = inner ℂ x y :=
  ContinuousLinearMap.inner_map_map_of_mem_unitary (T.τ k).2 x y

theorem k_matrix_conjTranspose_mul_self {ε : Fin n → Bool} (k : S7.KG ε) :
    (S7.toMK k)ᴴ * S7.toMK k = 1 := by
  have hk : S7.toMK k ∈ Kset ε := k.2
  have := (Matrix.mem_unitaryGroup_iff').1 hk.1
  simpa [Matrix.star_eq_conjTranspose] using this

theorem k_matrix_columns_orthonormal {ε : Fin n → Bool} (k : S7.KG ε) (e f : Fin n) :
    ∑ c, star (S7.toMK k c e) * S7.toMK k c f = if e = f then 1 else 0 := by
  have := congrFun (congrFun (k_matrix_conjTranspose_mul_self k) e) f
  simpa [Matrix.mul_apply, Matrix.one_apply] using this

theorem k_twist_vector_inner_preserved (dual : Bool) {ε : Fin n → Bool} {Λ : Fin n → ℝ} (T : S7.KType ε Λ) (k : S7.KG ε)
    (ξ η : Fin n → T.V) : ob2SI (ob2TauF dual T k ξ) (ob2TauF dual T k η) = ob2SI ξ η := by
  apply ReciprocityTheory.ChartRestriction.DS.k_twist_vector_inner_preserved

def ob2B (dual : Bool) {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V]
    (Ψ : Matrix (Fin n) (Fin n) ℂ → (V →L[ℂ] V)) (g : Matrix (Fin n) (Fin n) ℂ) :
    (Fin n → V) →ₗ[ℂ] (Fin n → V) where
  toFun ζ c := ∑ d, oa1Phi dual g c d • Ψ g (ζ d)
  map_add' ζ ζ' := by funext c; simp [smul_add, Finset.sum_add_distrib]
  map_smul' a ζ := by funext c; simp [Finset.smul_sum, smul_comm a]

theorem psi_coef_eq_inner_twist (dual : Bool) {ε : Fin n → Bool} {Λ : Fin n → ℝ} {T : S7.KType ε Λ}
    (Ψ : Matrix (Fin n) (Fin n) ℂ → (T.V →L[ℂ] T.V)) (ξ ζ : Fin n → T.V) (g : Matrix (Fin n) (Fin n) ℂ) :
    ob2PsiCoef dual Ψ ξ ζ g = ob2SI ξ (ob2B dual Ψ g ζ) := rfl

theorem tensor_phi_k_mul (dual : Bool) {ε : Fin n → Bool} (k : S7.KG ε) (E : Matrix (Fin n) (Fin n) ℂ)
    (c d : Fin n) :
    oa1Phi dual (S7.toMK k * E) c d =
      ∑ e, cond dual (star (S7.toMK k c e)) (S7.toMK k c e) * oa1Phi dual E e d := by
  cases dual
  · simp [oa1Phi, Matrix.mul_apply]
  · have hki : (S7.toMK k)⁻¹ = (S7.toMK k)ᴴ := Matrix.inv_eq_left_inv (k_matrix_conjTranspose_mul_self k)
    simp only [oa1Phi, cond_true, Matrix.mul_inv_rev, hki, Matrix.mul_apply, Matrix.conjTranspose_apply]
    exact Finset.sum_congr rfl fun e _ => mul_comm _ _

theorem psi_twist_k_mul (dual : Bool) {ε : Fin n → Bool} {Λ : Fin n → ℝ} (T : S7.KType ε Λ)
    (Ψ : Matrix (Fin n) (Fin n) ℂ → (T.V →L[ℂ] T.V)) (k : S7.KG ε) (E : Matrix (Fin n) (Fin n) ℂ)
    (hΨ : Ψ (S7.toMK k * E) = T.op k * Ψ E) (ζ : Fin n → T.V) :
    ob2B dual Ψ (S7.toMK k * E) ζ = ob2TauF dual T k (ob2B dual Ψ E ζ) := by
  funext c

  simp only [ob2B, LinearMap.coe_mk, AddHom.coe_mk, ob2TauF, hΨ, tensor_phi_k_mul, ContinuousLinearMap.mul_apply,
  map_sum, map_smul, Finset.smul_sum, Finset.sum_smul, smul_smul]
  rw [Finset.sum_comm]

open scoped MatrixOrder in
theorem posSemidef_weighted_inner_nonneg {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V]
    {M : Matrix (Fin n) (Fin n) ℂ} (hM : M.PosSemidef) {R : V →L[ℂ] V} (hR : R.IsPositive)
    (u : Fin n → V) : 0 ≤ ∑ c, ∑ d, M c d * inner ℂ (u c) (R (u d)) := by
  apply ReciprocityTheory.ChartRestriction.DS.posSemidef_weighted_inner_nonneg <;> assumption

theorem vector_inner_smul_right {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V] (ξ η : Fin n → V) (a : ℂ) :
    ob2SI ξ (a • η) = a * ob2SI ξ η := by
  simp [ob2SI, Finset.mul_sum]

theorem psi_pairing_eq_inner (dual : Bool) {ε : Fin n → Bool} {Λ Λ' : Fin n → ℝ} {T : S7.KType ε Λ} {T' : S7.KType ε Λ'}
    (Ψ : Matrix (Fin n) (Fin n) ℂ → (T.V →L[ℂ] T.V)) (Ψ' : Matrix (Fin n) (Fin n) ℂ → (T'.V →L[ℂ] T'.V))
    (ι₀ : T'.V →ₗ[ℂ] (Fin n → T.V)) (g : Matrix (Fin n) (Fin n) ℂ) :
    (∑ i, ∑ j, starRingEnd ℂ (ob2PsiCoef dual Ψ (ι₀ (stdOrthonormalBasis ℂ T'.V i))
        (ι₀ (stdOrthonormalBasis ℂ T'.V j)) g) *
      inner ℂ (stdOrthonormalBasis ℂ T'.V i) (Ψ' g (stdOrthonormalBasis ℂ T'.V j))) =
    ∑ j, ob2SI (ob2B dual Ψ g (ι₀ (stdOrthonormalBasis ℂ T'.V j)))
      (ι₀ (Ψ' g (stdOrthonormalBasis ℂ T'.V j))) := by
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun j _ => ?_
  simp only [psi_coef_eq_inner_twist]
  exact onb_expand_vector_inner _ ι₀ _ _

theorem psi_twist_exp_positive (dual : Bool) {ε : Fin n → Bool} {Λ : Fin n → ℝ} {T : S7.KType ε Λ}
    (Ψ : Matrix (Fin n) (Fin n) ℂ → (T.V →L[ℂ] T.V)) {Y : Matrix (Fin n) (Fin n) ℂ} (hY : inP ε Y)
    (hR : (Ψ (NormedSpace.exp Y)).IsPositive) (u : Fin n → T.V) :
    0 ≤ ob2SI (ob2B dual Ψ (NormedSpace.exp Y) u) u := by
  apply ReciprocityTheory.ChartRestriction.DS.psi_twist_exp_positive <;> assumption

theorem k_matrix_of_one {ε : Fin n → Bool} : S7.toMK (1 : S7.KG ε) = 1 := rfl

theorem k_type_op_one {ε : Fin n → Bool} {Λ : Fin n → ℝ} (T : S7.KType ε Λ) : T.op 1 = 1 := by
  simp [S7.KType.op]

theorem psi_pairing_nonneg (dual : Bool) {ε : Fin n → Bool} {lam lam' : Fin n → ℝ} {T : S7.KType ε (lowK ε lam)}
    {T' : S7.KType ε (lowK ε lam')}
    {Ψ : Matrix (Fin n) (Fin n) ℂ → (T.V →L[ℂ] T.V)} {Ψ' : Matrix (Fin n) (Fin n) ℂ → (T'.V →L[ℂ] T'.V)}
    (hP : IsPsiFor ε lam T Ψ) (hP' : IsPsiFor ε lam' T' Ψ')
    (hpos : ∀ X, inP ε X → (Ψ (NormedSpace.exp X)).IsPositive)
    (hpos' : ∀ X, inP ε X → (Ψ' (NormedSpace.exp X)).IsPositive)
    (ι₀ : T'.V →ₗ[ℂ] (Fin n → T.V))
    (hK : ∀ (k : S7.KG ε) (v : T'.V), ι₀ (T'.op k v) = ob2TauF dual T k (ι₀ v))
    {g : Matrix (Fin n) (Fin n) ℂ} (hg : inUJ ε g) :
    0 ≤ ∑ i, ∑ j, starRingEnd ℂ (ob2PsiCoef dual Ψ (ι₀ (stdOrthonormalBasis ℂ T'.V i))
        (ι₀ (stdOrthonormalBasis ℂ T'.V j)) g) *
      inner ℂ (stdOrthonormalBasis ℂ T'.V i) (Ψ' g (stdOrthonormalBasis ℂ T'.V j)) := by
  apply ReciprocityTheory.ChartRestriction.DS.psi_pairing_nonneg <;> assumption

end ReciprocityTheory.ChartRestriction.DS.G2
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.PosSemidefWeightedInnerNonneg =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.CuspProjectionOrthogonality =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.CuspProjectionOrthogonality", "h": "module\n\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TensorRepresentations.CuspProjectionOrthogonality\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.PosSemidefWeightedInnerNonneg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.DatumA\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.FormulaFA\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.ContinuousUnitaryMatrix\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset MeasureTheory
open scoped ComplexOrder

namespace ReciprocityTheory.ChartRestriction.DS.G2

variable {n : ℕ}

theorem psi_coef_expand (dual : Bool) {ε : Fin n → Bool} {Λ : Fin n → ℝ} {T : S7.KType ε Λ}
    (Ψ : Matrix (Fin n) (Fin n) ℂ → (T.V →L[ℂ] T.V)) (ξ ζ : Fin n → T.V) (g : Matrix (Fin n) (Fin n) ℂ) :
    ob2PsiCoef dual Ψ ξ ζ g = ∑ c, ∑ d, oa1Phi dual g c d * inner ℂ (ξ c) (Ψ g (ζ d)) := by
  simp only [ob2PsiCoef, inner_sum, inner_smul_right, oa1Phi]

section Psi

variable {ε : Fin n → Bool} {lam lam' : Fin n → ℝ} {T : S7.KType ε (lowK ε lam)} {T' : S7.KType ε (lowK ε lam')}
  {Ψ : Matrix (Fin n) (Fin n) ℂ → (T.V →L[ℂ] T.V)} {Ψ' : Matrix (Fin n) (Fin n) ℂ → (T'.V →L[ℂ] T'.V)}

theorem continuous_spherical_psi (hP : IsPsiFor ε lam T Ψ) :
    Continuous (fun g : Formalism.REAL.UJ ε => Ψ (Formalism.MainNotions.S.umat g)) :=
  (ffa_continuousOn hP.2.2.1).comp_continuous continuous_umat' (fun g => g.2)

theorem psi_twist_coef_memLp (dual : Bool) (hP : IsPsiFor ε lam T Ψ)
    (hWT : ∀ v w : T.V, MemLp (fun g : Formalism.REAL.UJ ε => ((Real.sqrt (S7.hs (Formalism.MainNotions.S.umat g)) : ℝ) : ℂ) *
      inner ℂ w (Ψ (Formalism.MainNotions.S.umat g) v)) 2 (Formalism.REAL.muG ε)) (ξ ζ : Fin n → T.V) :
    MemLp (fun g : Formalism.REAL.UJ ε => ob2PsiCoef dual Ψ ξ ζ (Formalism.MainNotions.S.umat g)) 2 (Formalism.REAL.muG ε) := by
  apply ReciprocityTheory.ChartRestriction.DS.psi_twist_coef_memLp <;> assumption

theorem psi_term_integrable (dual : Bool) (hP : IsPsiFor ε lam T Ψ) (hP' : IsPsiFor ε lam' T' Ψ')
    (hWT : ∀ v w : T.V, MemLp (fun g : Formalism.REAL.UJ ε => ((Real.sqrt (S7.hs (Formalism.MainNotions.S.umat g)) : ℝ) : ℂ) *
      inner ℂ w (Ψ (Formalism.MainNotions.S.umat g) v)) 2 (Formalism.REAL.muG ε)) (ξ ζ : Fin n → T.V) (u v : T'.V) :
    Integrable (fun g : Formalism.REAL.UJ ε => starRingEnd ℂ (ob2PsiCoef dual Ψ ξ ζ (Formalism.MainNotions.S.umat g)) *
      inner ℂ u (Ψ' (Formalism.MainNotions.S.umat g) v)) (Formalism.REAL.muG ε) := by
  have h1 := (psi_twist_coef_memLp dual hP hWT ξ ζ).star
  have h2 : MemLp (fun g : Formalism.REAL.UJ ε => inner ℂ u (Ψ' (Formalism.MainNotions.S.umat g) v)) 2 (Formalism.REAL.muG ε) :=
    memLp_muG_of_haar ε (fun x => inner ℂ u (Ψ' x v)) 2
      (fun μ hμ => (pdA_coef u v).comp_memLp' (hP'.2.2.2.2 μ hμ))
  exact h1.integrable_mul h2

end Psi

theorem psi_twist_at_one (dual : Bool) {ε : Fin n → Bool} {Λ : Fin n → ℝ} {T : S7.KType ε Λ}
    (Ψ : Matrix (Fin n) (Fin n) ℂ → (T.V →L[ℂ] T.V)) (hΨ : Ψ 1 = 1) (u : Fin n → T.V) :
    ob2B dual Ψ 1 u = u := by
  apply ReciprocityTheory.ChartRestriction.DS.psi_twist_at_one <;> assumption

section Main

variable {ε : Fin n → Bool} {lam lam' : Fin n → ℝ} {T : S7.KType ε (lowK ε lam)} {T' : S7.KType ε (lowK ε lam')}
  {Ψ : Matrix (Fin n) (Fin n) ℂ → (T.V →L[ℂ] T.V)} {Ψ' : Matrix (Fin n) (Fin n) ℂ → (T'.V →L[ℂ] T'.V)}

def ob2Fij (dual : Bool) (Ψ : Matrix (Fin n) (Fin n) ℂ → (T.V →L[ℂ] T.V))
    (Ψ' : Matrix (Fin n) (Fin n) ℂ → (T'.V →L[ℂ] T'.V)) (ι₀ : T'.V →ₗ[ℂ] (Fin n → T.V))
    (i j : Fin (Module.finrank ℂ T'.V)) (g : Formalism.REAL.UJ ε) : ℂ :=
  starRingEnd ℂ (ob2PsiCoef dual Ψ (ι₀ (stdOrthonormalBasis ℂ T'.V i)) (ι₀ (stdOrthonormalBasis ℂ T'.V j))
    (Formalism.MainNotions.S.umat g)) *
  inner ℂ (stdOrthonormalBasis ℂ T'.V i) (Ψ' (Formalism.MainNotions.S.umat g) (stdOrthonormalBasis ℂ T'.V j))

theorem psi_pairing_at_one_re_pos (dual : Bool) (hP : IsPsiFor ε lam T Ψ) (hP' : IsPsiFor ε lam' T' Ψ')
    (ι₀ : T'.V →ₗ[ℂ] (Fin n → T.V)) (hι₀ : ι₀ ≠ 0) :
    0 < (∑ i, ∑ j, ob2Fij (ε := ε) dual Ψ Ψ' ι₀ i j 1).re := by
  apply ReciprocityTheory.ChartRestriction.DS.psi_pairing_at_one_re_pos <;> assumption

theorem continuous_psi_pairing_sum (dual : Bool) (hP : IsPsiFor ε lam T Ψ) (hP' : IsPsiFor ε lam' T' Ψ')
    (ι₀ : T'.V →ₗ[ℂ] (Fin n → T.V)) :
    Continuous (fun g : Formalism.REAL.UJ ε => ∑ i, ∑ j, ob2Fij dual Ψ Ψ' ι₀ i j g) := by
  apply ReciprocityTheory.ChartRestriction.DS.continuous_psi_pairing_sum <;> assumption

theorem psi_pairing_trace_pos (dual : Bool) (hP : IsPsiFor ε lam T Ψ) (hP' : IsPsiFor ε lam' T' Ψ')
    (hpos : ∀ X, inP ε X → (Ψ (NormedSpace.exp X)).IsPositive)
    (hpos' : ∀ X, inP ε X → (Ψ' (NormedSpace.exp X)).IsPositive)
    (hWT : ∀ v w : T.V, MemLp (fun g : Formalism.REAL.UJ ε => ((Real.sqrt (S7.hs (Formalism.MainNotions.S.umat g)) : ℝ) : ℂ) *
      inner ℂ w (Ψ (Formalism.MainNotions.S.umat g) v)) 2 (Formalism.REAL.muG ε))
    (ι₀ : T'.V →ₗ[ℂ] (Fin n → T.V)) (hι₀ : ι₀ ≠ 0)
    (hK : ∀ (k : S7.KG ε) (v : T'.V), ι₀ (T'.op k v) = ob2TauF dual T k (ι₀ v)) :
    0 < (∑ i, ∑ j, ∫ g : Formalism.REAL.UJ ε,
      starRingEnd ℂ (ob2PsiCoef dual Ψ (ι₀ (stdOrthonormalBasis ℂ T'.V i)) (ι₀ (stdOrthonormalBasis ℂ T'.V j))
        (Formalism.MainNotions.S.umat g)) *
      inner ℂ (stdOrthonormalBasis ℂ T'.V i) (Ψ' (Formalism.MainNotions.S.umat g) (stdOrthonormalBasis ℂ T'.V j))
        ∂(Formalism.REAL.muG ε)).re := by
  apply ReciprocityTheory.ChartRestriction.DS.psi_pairing_trace_pos <;> assumption

end Main

end ReciprocityTheory.ChartRestriction.DS.G2
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.CuspProjectionOrthogonality =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.OccBLowKShiftF =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.OccBLowKShiftF", "h": "module\n\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TensorRepresentations.OccBLowKShiftF\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TensorRepresentations.HidaSetting\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.StdGap\npublic import Mathlib.Analysis.InnerProductSpace.Positive\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.EqZeroOfDatumEmbeddingEqZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.AestronglyMeasurablePsiInner\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.CuspProjectionOrthogonality\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TensorRepresentations.ExistsKEquivariantMap\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset MeasureTheory

namespace ReciprocityTheory.ChartRestriction.DS.G2

variable {n : ℕ}

def occTauF (dual : Bool) {ε : Fin n → Bool} {Λ : Fin n → ℝ} (T : S7.KType ε Λ) (k : S7.KG ε)
    (ξ : Fin n → T.V) : Fin n → T.V :=
  fun c => ∑ d, (cond dual (star (S7.toMK k c d)) (S7.toMK k c d)) • T.op k (ξ d)

def occPsiCoef (dual : Bool) {ε : Fin n → Bool} {Λ : Fin n → ℝ} {T : S7.KType ε Λ}
    (Ψ : Matrix (Fin n) (Fin n) ℂ → (T.V →L[ℂ] T.V)) (ξ ζ : Fin n → T.V) (g : Matrix (Fin n) (Fin n) ℂ) : ℂ :=
  ∑ c, inner ℂ (ξ c) (∑ d, (cond dual ((g⁻¹) d c) (g c d)) • Ψ g (ζ d))

theorem occB_lowK_shiftF (dual : Bool) (ε : Fin n → Bool) (lam : Fin n → ℝ) (s : Fin n) :
    lowK ε (shiftF dual lam s) = cond dual (lowK ε lam - Pi.single s 1) (lowK ε lam + Pi.single s 1) := by
  exact lowWeight_shifted dual ε lam s

theorem occB_pieri (dual : Bool) {ε : Fin n → Bool} {Λ Λ' : Fin n → ℝ} (T : S7.KType ε Λ) (T' : S7.KType ε Λ')
    (s : Fin n) (hΛ : Λ' = cond dual (Λ - Pi.single s 1) (Λ + Pi.single s 1)) :
    ∃ ι₀ : T'.V →ₗ[ℂ] (Fin n → T.V), ι₀ ≠ 0 ∧
      ∀ (k : S7.KG ε) (v : T'.V), ι₀ (T'.op k v) = occTauF dual T k (ι₀ v) := by
  exact pieri_standard_embedding dual T T' s hΛ

section Psi

variable {ε : Fin n → Bool} {lam lam' : Fin n → ℝ} {T : S7.KType ε (lowK ε lam)} {T' : S7.KType ε (lowK ε lam')}
  {Ψ : Matrix (Fin n) (Fin n) ℂ → (T.V →L[ℂ] T.V)} {Ψ' : Matrix (Fin n) (Fin n) ℂ → (T'.V →L[ℂ] T'.V)}

theorem occB_memLp_psi {v₀ : T.V} (hgap : StdGap ε lam) (hP : IsPsiFor ε lam T Ψ) (hv₀ : v₀ ≠ 0)
    (hW : ∀ v ∈ genSub (smE ε (rreg ε)) (datumV ε Ψ v₀), ∀ w ∈ genSub (smE ε (rreg ε)) (datumV ε Ψ v₀),
      MemLp (fun g : Formalism.REAL.UJ ε => ((Real.sqrt (S7.hs (Formalism.MainNotions.S.umat g)) : ℝ) : ℂ) *
        inner ℂ ((w : smD ε (rreg ε)) : L2 ε) (rreg ε (Formalism.MainNotions.S.umat g) ((v : smD ε (rreg ε)) : L2 ε))) 2 (Formalism.REAL.muG ε))
    (v w : T.V) :
    MemLp (fun g : Formalism.REAL.UJ ε => ((Real.sqrt (S7.hs (Formalism.MainNotions.S.umat g)) : ℝ) : ℂ) *
      inner ℂ w (Ψ (Formalism.MainNotions.S.umat g) v)) 2 (Formalism.REAL.muG ε) := by
  exact psi_weighted_memLp hgap hP hv₀ hW v w

theorem occB_trace_pos (dual : Bool) (hP : IsPsiFor ε lam T Ψ) (hP' : IsPsiFor ε lam' T' Ψ')
    (hpos : ∀ X, inP ε X → (Ψ (NormedSpace.exp X)).IsPositive)
    (hpos' : ∀ X, inP ε X → (Ψ' (NormedSpace.exp X)).IsPositive)
    (hWT : ∀ v w : T.V, MemLp (fun g : Formalism.REAL.UJ ε => ((Real.sqrt (S7.hs (Formalism.MainNotions.S.umat g)) : ℝ) : ℂ) *
      inner ℂ w (Ψ (Formalism.MainNotions.S.umat g) v)) 2 (Formalism.REAL.muG ε))
    (ι₀ : T'.V →ₗ[ℂ] (Fin n → T.V)) (hι₀ : ι₀ ≠ 0)
    (hK : ∀ (k : S7.KG ε) (v : T'.V), ι₀ (T'.op k v) = occTauF dual T k (ι₀ v)) :
    0 < (∑ i, ∑ j, ∫ g : Formalism.REAL.UJ ε,
      starRingEnd ℂ (occPsiCoef dual Ψ (ι₀ (stdOrthonormalBasis ℂ T'.V i)) (ι₀ (stdOrthonormalBasis ℂ T'.V j))
        (Formalism.MainNotions.S.umat g)) *
      inner ℂ (stdOrthonormalBasis ℂ T'.V i) (Ψ' (Formalism.MainNotions.S.umat g) (stdOrthonormalBasis ℂ T'.V j))
        ∂(Formalism.REAL.muG ε)).re := by
  exact psi_pairing_trace_pos dual hP hP' hpos hpos' hWT ι₀ hι₀ hK

theorem occB_spread (dual : Bool) (hP : IsPsiFor ε lam T Ψ) (hP' : IsPsiFor ε lam' T' Ψ') {v₀' : T'.V} (hv₀' : v₀' ≠ 0)
    (hWT : ∀ v w : T.V, MemLp (fun g : Formalism.REAL.UJ ε => ((Real.sqrt (S7.hs (Formalism.MainNotions.S.umat g)) : ℝ) : ℂ) *
      inner ℂ w (Ψ (Formalism.MainNotions.S.umat g) v)) 2 (Formalism.REAL.muG ε))
    (h0 : ∀ (ξ ζ : Fin n → T.V) (v' : T'.V), ∫ g : Formalism.REAL.UJ ε,
      starRingEnd ℂ (occPsiCoef dual Ψ ξ ζ (Formalism.MainNotions.S.umat g)) * inner ℂ v₀' (Ψ' (Formalism.MainNotions.S.umat g) v')
        ∂(Formalism.REAL.muG ε) = 0) :
    ∀ (ξ ζ : Fin n → T.V) (u' v' : T'.V), ∫ g : Formalism.REAL.UJ ε,
      starRingEnd ℂ (occPsiCoef dual Ψ ξ ζ (Formalism.MainNotions.S.umat g)) * inner ℂ u' (Ψ' (Formalism.MainNotions.S.umat g) v')
        ∂(Formalism.REAL.muG ε) = 0 := by
  exact psi_pairing_vanishing_spread dual hP hP' hv₀' hWT h0

theorem occB_pairing_ne (dual : Bool) (hP : IsPsiFor ε lam T Ψ) (hP' : IsPsiFor ε lam' T' Ψ') {v₀' : T'.V}
    (hv₀' : v₀' ≠ 0)
    (hpos : ∀ X, inP ε X → (Ψ (NormedSpace.exp X)).IsPositive)
    (hpos' : ∀ X, inP ε X → (Ψ' (NormedSpace.exp X)).IsPositive)
    (hWT : ∀ v w : T.V, MemLp (fun g : Formalism.REAL.UJ ε => ((Real.sqrt (S7.hs (Formalism.MainNotions.S.umat g)) : ℝ) : ℂ) *
      inner ℂ w (Ψ (Formalism.MainNotions.S.umat g) v)) 2 (Formalism.REAL.muG ε))
    (s : Fin n) (hlam' : lam' = shiftF dual lam s) :
    ∃ (ξ ζ : Fin n → T.V) (v' : T'.V), ∫ g : Formalism.REAL.UJ ε,
      starRingEnd ℂ (occPsiCoef dual Ψ ξ ζ (Formalism.MainNotions.S.umat g)) * inner ℂ v₀' (Ψ' (Formalism.MainNotions.S.umat g) v')
        ∂(Formalism.REAL.muG ε) ≠ 0 := by
  apply ReciprocityTheory.ChartRestriction.DS.occB_pairing_ne <;> assumption

end Psi

end ReciprocityTheory.ChartRestriction.DS.G2
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.ExceptionalGroupG2.TensorProductsG2.OccBLowKShiftF =====
