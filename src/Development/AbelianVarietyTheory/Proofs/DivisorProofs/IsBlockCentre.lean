import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeviBlockSizesSum

noncomputable section

open NumberField Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU GlobalTheory.SiegelSet Matrix
open Formalism.UG (cT)
open scoped TensorProduct

namespace GlobalTheory.LeviBlockRealization

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  (σ : E →ₐ[F] E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E) {r : ℕ}

def leftTr (h : GAd σ J) : Module.End ℂ (GAd σ J → ℂ) := LinearMap.funLeft ℂ ℂ (fun g => h * g)

@[simp] theorem leftTr_apply (h : GAd σ J) (f : GAd σ J → ℂ) (g : GAd σ J) : leftTr σ J h f g = f (h * g) := rfl

end GlobalTheory.LeviBlockRealization

end
