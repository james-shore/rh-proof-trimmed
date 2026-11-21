import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsFlagBundleRankOne

set_option autoImplicit false

noncomputable section

open MvPolynomial GlobalTheory.ArInt GlobalTheory.CovTest

namespace GlobalTheory.SwapTrue

variable {ι : Type} {N j : ℕ}

theorem block_lt (hj : j ≤ N) (z : Σ a : ι × Bool, Fin (rkB ι N j a)) : cond z.1.2 0 j + (z.2 : ℕ) < N := by
  obtain ⟨⟨τ, b⟩, i⟩ := z
  have hi := i.2
  cases b <;> simp only [rkB, cond_true, cond_false] at hi ⊢ <;> omega

def blockEquiv (ι : Type) (N j : ℕ) (hj : j ≤ N) : (Σ a : ι × Bool, Fin (rkB ι N j a)) ≃ ι × Fin N where
  toFun z := (z.1.1, ⟨cond z.1.2 0 j + z.2, block_lt hj z⟩)
  invFun x := if h : (x.2 : ℕ) < j then ⟨(x.1, true), ⟨x.2, by simpa [rkB] using h⟩⟩
    else ⟨(x.1, false), ⟨x.2 - j, by have := x.2.2; simp only [rkB, cond_false]; omega⟩⟩
  left_inv z := by
    obtain ⟨⟨τ, b⟩, i⟩ := z
    have hi := i.2
    cases b
    · simp only [rkB, cond_false] at hi
      have h : ¬ (j + (i : ℕ) < j) := by omega
      simp only [cond_false, h, dite_false]
      exact Sigma.ext rfl (heq_of_eq (Fin.ext (by simp)))
    · simp only [rkB, cond_true] at hi
      have h : (0 + (i : ℕ) < j) := by omega
      simp only [cond_true, h, dite_true]
      exact Sigma.ext rfl (heq_of_eq (Fin.ext (by simp)))
  right_inv x := by
    obtain ⟨τ, k⟩ := x
    dsimp only
    by_cases h : (k : ℕ) < j
    · rw [dif_pos h]
      exact Prod.ext rfl (Fin.ext (by simp))
    · rw [dif_neg h]
      exact Prod.ext rfl (Fin.ext (by simp; omega))

@[simp] theorem blockEquiv_fst (hj : j ≤ N) (z : Σ a : ι × Bool, Fin (rkB ι N j a)) :
    (blockEquiv ι N j hj z).1 = z.1.1 := rfl

@[simp] theorem blockEquiv_snd (hj : j ≤ N) (z : Σ a : ι × Bool, Fin (rkB ι N j a)) :
    ((blockEquiv ι N j hj z).2 : ℕ) = cond z.1.2 0 j + z.2 := rfl

end GlobalTheory.SwapTrue
