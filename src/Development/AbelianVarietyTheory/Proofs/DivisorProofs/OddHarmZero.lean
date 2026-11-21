import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsFlagBundleRankOne
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.RegularAlteration
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OfSwap2

set_option autoImplicit false

noncomputable section

open MvPolynomial GlobalTheory.CovTest

namespace GlobalTheory.BlockPoint

def oddHarm (k : ℕ) : ℝ := ∑ m ∈ Finset.range k, 1 / (2 * (m : ℝ) + 1)

@[simp] theorem oddHarm_zero : oddHarm 0 = 0 := rfl

end GlobalTheory.BlockPoint

end
