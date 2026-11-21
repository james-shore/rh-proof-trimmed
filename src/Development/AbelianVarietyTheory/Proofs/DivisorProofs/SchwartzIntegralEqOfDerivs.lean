import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousIteratedFDerivApply
open MeasureTheory

namespace GlobalTheory.SchwClm

abbrev WeightedTarget (V : Type) [NormedAddCommGroup V] [NormedSpace ℝ V] (s : Finset (ℕ × ℕ)) :
    Type :=
  (i : s) → BoundedContinuousFunction V (ContinuousMultilinearMap ℝ (fun _ : Fin i.1.2 => V) ℂ)

variable {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V]

noncomputable def weightedDeriv (k n : ℕ) (f : SchwartzMap V ℂ) :
    BoundedContinuousFunction V (ContinuousMultilinearMap ℝ (fun _ : Fin n => V) ℂ) :=
  BoundedContinuousFunction.ofNormedAddCommGroup
    (fun x => (‖x‖ ^ k : ℝ) • iteratedFDeriv ℝ n f x)
    ((continuous_norm.pow k).smul ((f.smooth n).continuous_iteratedFDeriv (le_refl _)))
    (SchwartzMap.seminorm ℂ k n f)
    (fun x => by
      rw [norm_smul, Real.norm_eq_abs, abs_of_nonneg (by positivity)]
      exact f.le_seminorm ℂ k n x)

theorem weightedDeriv_apply (k n : ℕ) (f : SchwartzMap V ℂ) (x : V) :
    weightedDeriv k n f x = (‖x‖ ^ k : ℝ) • GlobalTheory.SchwInt.iterEvalCLM n x f := rfl

theorem norm_weightedDeriv_le (k n : ℕ) (f : SchwartzMap V ℂ) :
    ‖weightedDeriv k n f‖ ≤ SchwartzMap.seminorm ℂ k n f :=
  (BoundedContinuousFunction.norm_le (apply_nonneg _ _)).2 fun x => by
    rw [weightedDeriv_apply, norm_smul, Real.norm_eq_abs, abs_of_nonneg (by positivity)]
    exact f.le_seminorm ℂ k n x

noncomputable def toWeighted (s : Finset (ℕ × ℕ)) : SchwartzMap V ℂ →L[ℂ] WeightedTarget V s :=
  SchwartzMap.mkCLMtoNormedSpace (σ := RingHom.id ℂ) (fun f i => weightedDeriv i.1.1 i.1.2 f)
    (fun f g => by
      funext i
      ext1 x
      simp only [weightedDeriv_apply, map_add, smul_add, Pi.add_apply,
        BoundedContinuousFunction.coe_add])
    (fun a f => by
      funext i
      ext1 x
      simp only [weightedDeriv_apply, map_smul, RingHom.id_apply, Pi.smul_apply,
        BoundedContinuousFunction.coe_smul]
      exact smul_comm _ _ _)
    ⟨s, 1, zero_le_one, fun f => by
      rw [one_mul]
      refine (pi_norm_le_iff_of_nonneg (apply_nonneg _ _)).2 fun i => ?_
      refine (norm_weightedDeriv_le _ _ f).trans ?_
      have := Seminorm.le_finset_sup_apply (p := schwartzSeminormFamily ℂ V ℂ) (x := f) i.2
      exact this⟩

theorem toWeighted_apply (s : Finset (ℕ × ℕ)) (f : SchwartzMap V ℂ) (i : s) :
    toWeighted s f i = weightedDeriv i.1.1 i.1.2 f := rfl

end GlobalTheory.SchwClm

namespace GlobalTheory.SchwClm

end GlobalTheory.SchwClm
