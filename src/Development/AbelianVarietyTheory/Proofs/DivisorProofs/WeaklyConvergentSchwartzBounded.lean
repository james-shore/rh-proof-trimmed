import Mathlib
open Filter Topology

namespace GlobalTheory.WeakBddSchwartz

variable {ι : Type}

lemma summable_norm_lp1 (c : lp (fun _ : ι => ℂ) 1) : Summable fun i => ‖c i‖ := by
  have h1 := (memℓp_gen_iff (p := 1) (by norm_num)).1 (lp.memℓp c)
  simpa using h1

lemma norm_lp1 (c : lp (fun _ : ι => ℂ) 1) : ‖c‖ = ∑' i, ‖c i‖ := by
  rw [lp.norm_eq_tsum_rpow (p := 1) (by norm_num)]
  simp

lemma summable_mul (c : lp (fun _ : ι => ℂ) 1) {a : ι → ℂ} {M : ℝ} (h : ∀ i, ‖a i‖ ≤ M) :
    Summable fun i => c i * a i := by
  refine Summable.of_norm_bounded ((summable_norm_lp1 c).mul_right M) (fun i => ?_)
  rw [norm_mul]; exact mul_le_mul_of_nonneg_left (h i) (norm_nonneg _)

lemma pair_le (c : lp (fun _ : ι => ℂ) 1) {a : ι → ℂ} {M : ℝ} (h : ∀ i, ‖a i‖ ≤ M) :
    ‖∑' i, c i * a i‖ ≤ M * ‖c‖ := by
  have hs := ((summable_norm_lp1 c).hasSum.mul_right M)
  refine (tsum_of_norm_bounded hs (fun i => ?_)).trans (le_of_eq ?_)
  · rw [norm_mul]; exact mul_le_mul_of_nonneg_left (h i) (norm_nonneg _)
  · rw [norm_lp1, mul_comm]

noncomputable def pair (a : ι → ℂ) (M : ℝ) (h : ∀ i, ‖a i‖ ≤ M) :
    lp (fun _ : ι => ℂ) 1 →L[ℂ] ℂ :=
  LinearMap.mkContinuous
    { toFun := fun c => ∑' i, c i * a i
      map_add' := fun c d => by
        simp only [lp.coeFn_add, Pi.add_apply, add_mul]
        exact (summable_mul c h).tsum_add (summable_mul d h)
      map_smul' := fun r c => by
        simp only [lp.coeFn_smul, Pi.smul_apply, smul_eq_mul, RingHom.id_apply, mul_assoc]
        exact tsum_mul_left }
    M (fun c => pair_le c h)

lemma pair_apply (a : ι → ℂ) (M : ℝ) (h : ∀ i, ‖a i‖ ≤ M) (c : lp (fun _ : ι => ℂ) 1) :
    pair a M h c = ∑' i, c i * a i := rfl

variable {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V]

end GlobalTheory.WeakBddSchwartz

namespace GlobalTheory.WeakBddSchwartz

end GlobalTheory.WeakBddSchwartz

namespace GlobalTheory

end GlobalTheory
