import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.IsTamagawa
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.TamagawaSpecialUnitary

open Matrix

namespace GlobalTheory.SkewCount

section Main

variable {R : Type} [CommRing R] {n : Type} [Fintype n] [DecidableEq n]

theorem cT_apply (τ : R →+* R) (M : Matrix n n R) (i j : n) : Formalism.UG.cT τ M i j = τ (M j i) := rfl

end Main

end GlobalTheory.SkewCount
