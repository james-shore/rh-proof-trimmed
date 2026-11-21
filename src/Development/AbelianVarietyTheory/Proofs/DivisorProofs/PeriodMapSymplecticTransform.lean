import Mathlib
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.SiegelReframe
import ReciprocityTheory.ThetaQuasiPeriods.PeriodLattice

open Matrix MeasureTheory GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe
open scoped Real ContDiff

noncomputable section

namespace GlobalTheory.SympBase

variable {g : ℕ}

abbrev rc {m n : Type} (M : Matrix m n ℝ) : Matrix m n ℂ := M.map (fun t : ℝ => (t : ℂ))

def numer (γ : Sp g) (τ : Matrix (Fin g) (Fin g) ℂ) : Matrix (Fin g) (Fin g) ℂ :=
  rc γ.mat.toBlocks₁₁ * τ + rc γ.mat.toBlocks₁₂

theorem moeb_eq (γ : Sp g) (τ : Matrix (Fin g) (Fin g) ℂ) :
    moeb γ τ = numer γ τ * (den γ τ)⁻¹ := rfl

end GlobalTheory.SympBase
