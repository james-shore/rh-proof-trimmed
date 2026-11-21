import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnipParLeUnipFlag
import Development.AbelianVarietyTheory.Definitions.Foundations.ConstTermOnMulLeftOfNormalizer
import Development.AbelianVarietyTheory.Definitions.Divisors.IsSquareIntegrableIffMemL2
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.LanglandsSquareIntegrable
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HyperbolicPlaneComplementDet
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DiffsZeroOfLev
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPurelyImaginaryElement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogAbsEEqZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnipotentStabilizerLeviDecomposition
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MeasureFundDomLtTop
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoreConcl
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConstantTermUnipotentIntegral
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryCompactPreimage
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnipotentMemIffWeightRaising

open scoped TensorProduct NNReal Matrix ComplexConjugate
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ThK.DescB GlobalTheory.ThK.FlagCT GlobalTheory.ThK.FlagPar

noncomputable section

namespace GlobalTheory.ThK.LeviPartCpt

open Matrix GlobalTheory.ThK.SquareIntegrability

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

def Acts {n n₁ : ℕ} (W : Spc F E n) (W₁ : Spc F E n₁) (H : Plane E n n₁) (g : UA σ W.J) (y : UA σ W₁.J) : Prop :=
  (∃ t : (AE F E)ˣ, mat g *ᵥ incV F H.x = t.1 • incV F H.x) ∧
    ∀ z, ∃ a : AE F E, mat g *ᵥ (incM F H.ι *ᵥ z) = incM F H.ι *ᵥ (mat y *ᵥ z) + a • incV F H.x

variable {n n₁ : ℕ} {W : Spc F E n} {W₁ : Spc F E n₁} {H : Plane E n n₁}

omit [NumberField E] in
theorem Acts.mul {g g' : UA σ W.J} {y y' : UA σ W₁.J} (h : Acts W W₁ H g y) (h' : Acts W W₁ H g' y') :
    Acts W W₁ H (g * g') (y * y') := by
  obtain ⟨⟨t, ht⟩, hz⟩ := h
  obtain ⟨⟨t', ht'⟩, hz'⟩ := h'
  have e : mat (g * g') = mat g * mat g' := rfl
  have e' : mat (y * y') = mat y * mat y' := rfl
  refine ⟨⟨t' * t, by rw [e, ← mulVec_mulVec, ht', mulVec_smul, ht, smul_smul, Units.val_mul]⟩, fun z => ?_⟩
  obtain ⟨p, hp⟩ := hz' z
  obtain ⟨q, hq⟩ := hz (mat y' *ᵥ z)
  refine ⟨q + p * t.1, ?_⟩
  rw [e, e', ← mulVec_mulVec, hp, mulVec_add, mulVec_smul, hq, ht, add_smul, smul_smul, ← mulVec_mulVec z (mat y), add_assoc]

omit [NumberField E] in
theorem Acts.inv {g : UA σ W.J} {y : UA σ W₁.J} (h : Acts W W₁ H g y) : Acts W W₁ H g⁻¹ y⁻¹ := by
  obtain ⟨⟨t, ht⟩, hz⟩ := h
  have e : mat g⁻¹ * mat g = 1 := Units.inv_mul g.1
  have e' : mat y * mat y⁻¹ = 1 := Units.mul_inv y.1
  have hx : mat g⁻¹ *ᵥ incV F H.x = (t⁻¹).1 • incV F H.x := by
    have := congrArg (fun v => (t⁻¹).1 • mat g⁻¹ *ᵥ v) ht
    simp only [mulVec_mulVec, e, one_mulVec, mulVec_smul, smul_smul, Units.inv_mul, one_smul] at this
    exact this.symm
  refine ⟨⟨t⁻¹, hx⟩, fun z => ?_⟩
  obtain ⟨q, hq⟩ := hz (mat y⁻¹ *ᵥ z)
  refine ⟨-(q * (t⁻¹).1), ?_⟩
  have := congrArg (fun v => mat g⁻¹ *ᵥ v) hq
  rw [mulVec_mulVec _ (mat g⁻¹) (mat g), e, one_mulVec, mulVec_add, mulVec_smul, hx, mulVec_mulVec z (mat y), e',
    one_mulVec, smul_smul] at this
  rw [neg_smul, ← sub_eq_add_neg, eq_sub_iff_add_eq]
  exact this.symm

end GlobalTheory.ThK.LeviPartCpt

end
