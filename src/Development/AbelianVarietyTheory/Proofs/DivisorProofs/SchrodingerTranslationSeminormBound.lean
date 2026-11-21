import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPairingStdP

open scoped SchwartzMap ContDiff

noncomputable section

namespace GlobalTheory.SchrGrowth

open GlobalTheory.ArchUniq

variable {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V]

variable [FiniteDimensional ℝ V]

def pairCLM {P : V → V → ℝ} (h : IsPairing P) : V →L[ℝ] V →L[ℝ] ℝ :=
  LinearMap.toContinuousLinearMap
    ((LinearMap.toContinuousLinearMap : (V →ₗ[ℝ] ℝ) ≃ₗ[ℝ] (V →L[ℝ] ℝ)).toLinearMap ∘ₗ
      LinearMap.mk₂ ℝ P h.addL (fun c x y => by simpa [smul_eq_mul] using h.smulL c x y) h.addR
        (fun c x y => by simpa [smul_eq_mul] using h.smulR c x y))

theorem pairCLM_apply {P : V → V → ℝ} (h : IsPairing P) (x y : V) : pairCLM h x y = P x y := rfl

def phase {P : V → V → ℝ} (h : IsPairing P) (b : V) : V →L[ℝ] ℂ :=
  (-(2 * Real.pi * Complex.I)) • (Complex.ofRealCLM.comp ((pairCLM h).flip b))

theorem phase_apply {P : V → V → ℝ} (h : IsPairing P) (b y : V) :
    phase h b y = -(2 * Real.pi * Complex.I) * ((P y b : ℝ) : ℂ) := rfl

end GlobalTheory.SchrGrowth

namespace GlobalTheory.SchrGrowth

end GlobalTheory.SchrGrowth
