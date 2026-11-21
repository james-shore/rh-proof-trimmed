import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DiffsZeroOfLev
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLieElementsGenerateOneParamLines
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DerivedAdjoint

noncomputable section

namespace GlobalTheory.ThK.RealK

open scoped TensorProduct Matrix GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open NumberField Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.BasicNotions.TH GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.FockAlg GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.RealLift
open GlobalTheory.RealLift.OneParam GlobalTheory.ThK.DescB

section Alg

variable {R S : ℕ} {V W : Type} [AddCommGroup V] [Module ℂ V] [AddCommGroup W] [Module ℂ W]

theorem mem_wtSub {act : Mat R S →ₗ[ℂ] Module.End ℂ V} {μ : Ix R S → ℚ} {v : V} :
    v ∈ wtSub act μ ↔ ∀ a, act (Eab a a) v = (μ a : ℂ) • v := by
  simp [wtSub, Submodule.mem_iInf, sub_eq_zero]

variable {a : Mat R S →ₗ[ℂ] Module.End ℂ V} {b : Mat R S →ₗ[ℂ] Module.End ℂ W} {π : V →ₗ[ℂ] W}

end Alg

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E} {n R S : ℕ}
  {J : Matrix (Fin n) (Fin n) E}

def rT (h : UA σ J) : (UA σ J → ℂ) →ₗ[ℂ] (UA σ J → ℂ) := LinearMap.funLeft ℂ ℂ (· * h)

@[simp] theorem rT_apply (h : UA σ J) (f : UA σ J → ℂ) (g : UA σ J) : rT h f g = f (g * h) := rfl

def cmp {w : InfinitePlace F} (τ : EmbOver E w) (g : UA σ J) : Matrix (Fin n) (Fin n) ℂ := (mat g).map (piInf τ)

variable (τ : ∀ w : InfinitePlace F, EmbOver E w) (w : InfinitePlace F)

variable {τ w} {C : Matrix (Fin n) (Ix R S) ℂ} {T : Submodule ℂ (UA σ J → ℂ)}

def stdWt (c : Ix R S) : Ix R S → ℚ := fun d => if d = c then 1 else 0

theorem single_mem_wtSub (c : Ix R S) :
    Pi.single c (1 : ℂ) ∈ wtSub (Matrix.toLin' : Mat R S ≃ₗ[ℂ] _).toLinearMap (stdWt c) := mem_wtSub.2 fun d => by
  ext e
  by_cases h : d = c <;> simp [Eab, stdWt, h, Matrix.single_apply, Pi.single_apply, eq_comm]

variable (R S) in

abbrev stdMod : GKMod R S where
  V := Ix R S → ℂ
  act := (Matrix.toLin' : Mat R S ≃ₗ[ℂ] _).toLinearMap
  lie := fun X Y => by simp [Matrix.toLin'_mul, Module.End.mul_eq_comp]
  kfin := fun _ => ⟨⊤, inferInstance, trivial, fun _ _ _ _ => trivial⟩
  wts := fun v => by
    rw [pi_eq_sum_univ' v]
    exact Submodule.sum_mem _ fun c _ => Submodule.smul_mem _ _ (Submodule.mem_iSup_of_mem _ (single_mem_wtSub c))

def coef (τ : EmbOver E w) (C : Matrix (Fin n) (Ix R S) ℂ) (i : Fin n) : (Ix R S → ℂ) →ₗ[ℂ] (UA σ J → ℂ) :=
  LinearMap.pi fun g => LinearMap.proj i ∘ₗ Matrix.toLin' (cmp τ g * C)

theorem coef_apply (τ : EmbOver E w) (i : Fin n) (v : Ix R S → ℂ) (g : UA σ J) :
    coef τ C i v g = ((cmp τ g * C) *ᵥ v) i := rfl

end GlobalTheory.ThK.RealK

end
