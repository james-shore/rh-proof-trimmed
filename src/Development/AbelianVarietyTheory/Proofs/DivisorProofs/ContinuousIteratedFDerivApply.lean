import Mathlib
open MeasureTheory

namespace GlobalTheory.SchwInt

noncomputable def iterEvalCLM {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V] (n : ℕ) (x : V) :
    SchwartzMap V ℂ →L[ℂ] ContinuousMultilinearMap ℝ (fun _ : Fin n => V) ℂ :=
  SchwartzMap.mkCLMtoNormedSpace (σ := RingHom.id ℂ) (fun f => iteratedFDeriv ℝ n f x)
    (fun f g => by
      show iteratedFDeriv ℝ n (⇑f + ⇑g) x = _
      exact iteratedFDeriv_add_apply (f.smooth n).contDiffAt (g.smooth n).contDiffAt)
    (fun a f => by
      show iteratedFDeriv ℝ n (a • ⇑f) x = _
      exact iteratedFDeriv_const_smul_apply (f.smooth n).contDiffAt)
    ⟨{(0, n)}, 1, zero_le_one, fun f => by
      simpa [Finset.sup_singleton, SchwartzMap.schwartzSeminormFamily_apply] using f.le_seminorm ℂ 0 n x⟩

@[simp] theorem iterEvalCLM_apply {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V] (n : ℕ) (x : V)
    (f : SchwartzMap V ℂ) : iterEvalCLM n x f = iteratedFDeriv ℝ n f x := rfl

end GlobalTheory.SchwInt
