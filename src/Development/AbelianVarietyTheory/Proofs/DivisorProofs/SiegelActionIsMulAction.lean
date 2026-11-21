import Mathlib
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.SiegelReframe

open Matrix MeasureTheory GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe
open scoped Real ContDiff

namespace GlobalTheory.SympUnivGroup

variable {g : ℕ}

def cx {m n : Type} (M : Matrix m n ℝ) : Matrix m n ℂ := M.map (fun t : ℝ => (t : ℂ))

theorem den_eq (γ : Sp g) (τ : Matrix (Fin g) (Fin g) ℂ) :
    den γ τ = cx γ.mat.toBlocks₂₁ * τ + cx γ.mat.toBlocks₂₂ := rfl

theorem moeb_eq (γ : Sp g) (τ : Matrix (Fin g) (Fin g) ℂ) :
    moeb γ τ = (cx γ.mat.toBlocks₁₁ * τ + cx γ.mat.toBlocks₁₂) * (den γ τ)⁻¹ := rfl

end GlobalTheory.SympUnivGroup

namespace GlobalTheory.SympUnivGroup

end GlobalTheory.SympUnivGroup
