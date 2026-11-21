import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThLiftMemLiftSpace
open GlobalTheory.ThK.SplitInv

namespace GlobalTheory.ThK.SplitInv

theorem mem_fixIn_iff {H : Type} [Group H] (S : Submodule ℂ (H → ℂ)) (K : Subgroup H) (φ : H → ℂ) :
    φ ∈ fixIn S K ↔ φ ∈ S ∧ ∀ k ∈ K, rt k φ = φ := Iff.rfl

theorem rt_sub {H : Type} [Group H] (k : H) (φ ψ : H → ℂ) : rt k (φ - ψ) = rt k φ - rt k ψ := rfl

end GlobalTheory.ThK.SplitInv
