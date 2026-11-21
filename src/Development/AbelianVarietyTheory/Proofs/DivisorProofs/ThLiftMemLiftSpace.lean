import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThLiftDef
import Development.AbelianVarietyTheory.Definitions.Divisors.IsCompactIsOpenUnitsAt

noncomputable section

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ThK.LiftConst

namespace GlobalTheory.ThK.SplitInv

section Abstract

variable {H : Type} [Group H]

def rt (k : H) (φ : H → ℂ) : H → ℂ := fun g => φ (g * k)

def fixIn (S : Submodule ℂ (H → ℂ)) (K : Subgroup H) : Submodule ℂ (H → ℂ) where
  carrier := {φ | φ ∈ S ∧ ∀ k ∈ K, rt k φ = φ}
  add_mem' := fun {φ ψ} hφ hψ => ⟨S.add_mem hφ.1 hψ.1, fun k hk => by
    show rt k φ + rt k ψ = φ + ψ
    rw [hφ.2 k hk, hψ.2 k hk]⟩
  zero_mem' := ⟨S.zero_mem, fun _ _ => rfl⟩
  smul_mem' := fun c φ hφ => ⟨S.smul_mem c hφ.1, fun k hk => by
    show c • rt k φ = c • φ
    rw [hφ.2 k hk]⟩

end Abstract

end GlobalTheory.ThK.SplitInv

end
