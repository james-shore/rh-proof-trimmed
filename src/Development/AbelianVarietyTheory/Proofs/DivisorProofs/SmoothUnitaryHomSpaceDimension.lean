import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsGenericIffIsGenericFor
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IndicatorIntMMemSB
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.HoweDualityOfMinguez
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisGeometry₂.HypothesesAbsDet
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisGeometry₂.HoweDualityGL
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ThetaPairContragredientQuotient
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsParahoricVec
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SmoothContragredientIrreducibleAndReflexiveStatement
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ThetaCorrespondenceLargeRank
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.EventuallyCompSideMulEq

noncomputable section

open GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.ThetaGL GlobalTheory.SplitFlip Matrix
open scoped TensorProduct

namespace GlobalTheory.HoweFlipPair

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

def trH (m n : ℕ) : Matrix (Fin m) (Fin n) k ≃ₜ Matrix (Fin n) (Fin m) k where
  toFun := Matrix.transpose
  invFun := Matrix.transpose
  left_inv := Matrix.transpose_transpose
  right_inv := Matrix.transpose_transpose
  continuous_toFun := continuous_id.matrix_transpose
  continuous_invFun := continuous_id.matrix_transpose

def trSB (m n : ℕ) : SB (Matrix (Fin m) (Fin n) k) →ₗ[ℂ] SB (Matrix (Fin n) (Fin m) k) where
  toFun Φ := ⟨fun Y => (Φ : Matrix (Fin m) (Fin n) k → ℂ) Yᵀ,
    Φ.2.1.comp_continuous continuous_id.matrix_transpose, Φ.2.2.comp_homeomorph (trH n m)⟩
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

@[simp] theorem trSB_apply (m n : ℕ) (Φ : SB (Matrix (Fin m) (Fin n) k)) (Y : Matrix (Fin n) (Fin m) k) :
    (trSB m n Φ : Matrix (Fin n) (Fin m) k → ℂ) Y = (Φ : Matrix (Fin m) (Fin n) k → ℂ) Yᵀ := rfl

variable {n d : ℕ} {ν α : kˣ →* ℂˣ} {U W : Type} [AddCommGroup U] [Module ℂ U] [AddCommGroup W] [Module ℂ W]

end GlobalTheory.HoweFlipPair

