import Mathlib
import Development.AbelianVarietyTheory.Definitions.Foundations.MatrixMeasurableSpace
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsSubquotientDetRepParInd
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.TranslationInvariantSchwartzBruhatMapFactorsInte
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LinearChangeOfVariablesLocalFieldMatrix

noncomputable section

namespace GlobalTheory.DetEqv.OpenPart

open Set Filter Topology Matrix MeasureTheory GlobalTheory.SplitWeil ValuativeRel

theorem mem_SB_of_subset {X : Type} [TopologicalSpace X] {f : X → ℂ} (hl : IsLocallyConstant f)
    {K : Set X} (hK : IsCompact K) (h : ∀ x, f x ≠ 0 → x ∈ K) : f ∈ SB X := by
  refine ⟨hl, ?_⟩
  have hcl : IsClosed (Function.support f) := (hl.isClopen_fiber 0).compl.isClosed
  refine hK.of_isClosed_subset (isClosed_tsupport _) ?_
  rw [tsupport, hcl.closure_eq]
  exact h

section Tens

variable {A Z : Type} [TopologicalSpace A] [TopologicalSpace Z]

def tens (χ : SB A) : SB Z →ₗ[ℂ] SB (A × Z) where
  toFun G := ⟨fun p => (χ : A → ℂ) p.1 * (G : Z → ℂ) p.2,
    mem_SB_of_subset ((χ.2.1.comp_continuous continuous_fst).mul (G.2.1.comp_continuous continuous_snd))
      (χ.2.2.isCompact.prod G.2.2.isCompact) fun p hp =>
        ⟨subset_tsupport _ (left_ne_zero_of_mul hp), subset_tsupport _ (right_ne_zero_of_mul hp)⟩⟩
  map_add' F G := by
    apply Subtype.ext
    funext x
    simp [mul_add]
  map_smul' c F := by
    apply Subtype.ext
    funext x
    simp [mul_left_comm]

theorem tens_apply (χ : SB A) (G : SB Z) (u : A) (z : Z) :
    (tens χ G : A × Z → ℂ) (u, z) = (χ : A → ℂ) u * (G : Z → ℂ) z := rfl

end Tens

end GlobalTheory.DetEqv.OpenPart
