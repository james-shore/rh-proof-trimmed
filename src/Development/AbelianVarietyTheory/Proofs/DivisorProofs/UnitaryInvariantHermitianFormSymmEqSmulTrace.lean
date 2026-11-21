import Mathlib

open Matrix

namespace GlobalTheory
namespace SymSqForm

variable {n : ℕ}

def Good (f : Matrix (Fin n) (Fin n) ℂ → Matrix (Fin n) (Fin n) ℂ → ℂ) : Prop :=
  (∀ (a : ℂ) Z Z' W, f (a • Z + Z') W = a * f Z W + f Z' W) ∧ (∀ Z W, f W Z = star (f Z W)) ∧
    (∀ (k : Matrix.unitaryGroup (Fin n) ℂ) Z W, Z.IsSymm → W.IsSymm →
      f (k.1 * Z * k.1ᵀ) (k.1 * W * k.1ᵀ) = f Z W)

variable {f : Matrix (Fin n) (Fin n) ℂ → Matrix (Fin n) (Fin n) ℂ → ℂ}

lemma Good.add_left (hf : Good f) (Z Z' W) : f (Z + Z') W = f Z W + f Z' W := by
  simpa using hf.1 1 Z Z' W

lemma Good.zero_left (hf : Good f) (W) : f 0 W = 0 := by
  have := hf.add_left 0 0 W
  simpa using this

lemma Good.smul_left (hf : Good f) (a : ℂ) (Z W) : f (a • Z) W = a * f Z W := by
  simpa [hf.zero_left] using hf.1 a Z 0 W

lemma Good.smul_right (hf : Good f) (a : ℂ) (Z W) : f Z (a • W) = star a * f Z W := by
  rw [hf.2.1 (a • W) Z, hf.smul_left, star_mul, ← hf.2.1 W Z, mul_comm]

end SymSqForm

end GlobalTheory
