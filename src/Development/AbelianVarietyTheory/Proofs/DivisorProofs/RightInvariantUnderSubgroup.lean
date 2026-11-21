import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThLiftMemLiftSpace
open GlobalTheory.ThK.SplitInv

namespace GlobalTheory.ThK.SplitInv.TrivQuot

variable {H : Type} [Group H]

def rtL (k : H) : (H → ℂ) →ₗ[ℂ] (H → ℂ) := LinearMap.funLeft ℂ ℂ (fun g => g * k)

theorem rtL_apply (k : H) (φ : H → ℂ) : rtL k φ = rt k φ := rfl

end GlobalTheory.ThK.SplitInv.TrivQuot
