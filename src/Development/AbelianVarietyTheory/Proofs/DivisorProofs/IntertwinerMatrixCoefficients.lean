import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToEndDApply
open GlobalTheory.LocFinIso

namespace GlobalTheory.IntwLeftMul

noncomputable def colMap {V : Type} [AddCommGroup V] [Module ℂ V] (D : Submodule ℂ V) {m : ℕ}
    (b : Fin m → V) (hbD : ∀ i, b i ∈ D) (j : Fin m) :
    EuclideanSpace ℂ (Fin (m * m)) →ₗ[ℂ] D where
  toFun v := ⟨∑ i, v (finProdFinEquiv (i, j)) • b i,
    Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _ (hbD i)⟩
  map_add' v w := by
    ext; simp [add_smul, Finset.sum_add_distrib]
  map_smul' c v := by
    ext; simp [Finset.smul_sum, smul_smul]

theorem colMap_val {V : Type} [AddCommGroup V] [Module ℂ V] (D : Submodule ℂ V) {m : ℕ}
    (b : Fin m → V) (hbD : ∀ i, b i ∈ D) (j : Fin m) (v : EuclideanSpace ℂ (Fin (m * m))) :
    ((colMap D b hbD j v : D) : V) = ∑ i, v (finProdFinEquiv (i, j)) • b i := rfl

end GlobalTheory.IntwLeftMul
