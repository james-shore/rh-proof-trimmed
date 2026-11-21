import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.ExistsStandardIndModule

noncomputable section

open Matrix Formalism.REAL Formalism.MainNotions.S Formalism.L2.Theta GlobalTheory.Count GlobalTheory.FlagMeas GlobalTheory.FlagLeviGroup GlobalTheory.RealInd GlobalTheory.FlagMeas.Model

namespace GlobalTheory.LeviFactor.Model

variable {n a : ℕ} {ε : Fin n → Bool} {j : Fin a → ℕ} {W : Flag n a}

variable (ε) in

def neg : UJ ε := ⟨-1, by
  change inUJ ε (-1)
  simp [inUJ]⟩

theorem uMat_neg : uMat (neg ε) = -1 := rfl

def emb : (Fin 2 → ℂ) →ₗ[ℂ] (Fin 4 → ℂ) where
  toFun v := ![v 0, v 1, v 0, v 1]
  map_add' u v := by ext i; fin_cases i <;> simp
  map_smul' c v := by ext i; fin_cases i <;> simp

end GlobalTheory.LeviFactor.Model

end
