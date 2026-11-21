import Mathlib
open SchwartzMap Filter Topology
open scoped Nat

namespace GlobalTheory

theorem hasDerivAt_iteratedFDeriv_line {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V]
    (f : V → ℂ) (hf : ContDiff ℝ ((⊤ : ℕ∞) : WithTop ℕ∞) f) (x : V) (j : ℕ) (t : ℝ) :
    HasDerivAt (fun s : ℝ => iteratedFDeriv ℝ j f (s • x) (fun _ => x))
      (iteratedFDeriv ℝ (j + 1) f (t • x) (fun _ => x)) t := by
  have h1 : HasFDerivAt (iteratedFDeriv ℝ j f) (fderiv ℝ (iteratedFDeriv ℝ j f) (t • x)) (t • x) :=
    ((hf.differentiable_iteratedFDeriv (by exact_mod_cast ENat.coe_lt_top j)) (t • x)).hasFDerivAt
  have h2 : HasDerivAt (fun s : ℝ => s • x) x t := by
    simpa using (hasDerivAt_id t).smul_const x
  have h3 := h1.comp_hasDerivAt t h2
  have h4 := (ContinuousMultilinearMap.apply ℝ (fun _ : Fin j => V) ℂ
    (fun _ => x)).hasFDerivAt.comp_hasDerivAt t h3
  rw [iteratedFDeriv_succ_apply_left]
  exact h4

end GlobalTheory
