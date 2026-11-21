import Mathlib

set_option autoImplicit false

noncomputable section

open Finset

namespace GlobalTheory.PowerSumSmul

variable {ι : Type} [Fintype ι] {N : ℕ}

def psum (r : ι → Fin N → ℝ) (τ : ι) (m : ℕ) : ℝ := ∑ k ∈ (univ : Finset (Fin N)).filter (fun k : Fin N => k.val < m), r τ k

def DegData (j : ℕ) (q : ℝ) (r : ι → Fin N → ℝ) : Prop :=
  ∃ P e : ℝ, 0 ≤ P ∧ (q - 2) * P ≤ e ∧ (∀ τ (m : ℕ), 1 ≤ m → m < N → psum r τ m ≤ P) ∧
    (∀ τ, psum r τ N = 0) ∧ -2 * ∑ τ, psum r τ j = e

theorem psum_smul (r : ι → Fin N → ℝ) (c : ℝ) (τ : ι) (m : ℕ) :
    psum (fun τ i => c * r τ i) τ m = c * psum r τ m := by
  unfold psum
  rw [Finset.mul_sum]

theorem DegData.smul {j : ℕ} {q : ℝ} {r : ι → Fin N → ℝ} (h : DegData j q r) {c : ℝ} (hc : 0 ≤ c) :
    DegData j q (fun τ i => c * r τ i) := by
  obtain ⟨P, e, hP, hPe, h1, h2, h3⟩ := h
  refine ⟨c * P, c * e, mul_nonneg hc hP, ?_, fun τ m a b => ?_, fun τ => ?_, ?_⟩
  · nlinarith
  · rw [psum_smul]; exact mul_le_mul_of_nonneg_left (h1 τ m a b) hc
  · rw [psum_smul, h2, mul_zero]
  · simp only [psum_smul, ← Finset.mul_sum]; rw [← h3]; ring

theorem DegData.zero (j : ℕ) (q : ℝ) (hq : 2 ≤ q) : DegData j q (fun (_ : ι) (_ : Fin N) => (0 : ℝ)) :=
  ⟨0, 0, le_rfl, by simp, fun _ _ _ _ => by simp [psum], fun _ => by simp [psum], by simp [psum]⟩

end GlobalTheory.PowerSumSmul
