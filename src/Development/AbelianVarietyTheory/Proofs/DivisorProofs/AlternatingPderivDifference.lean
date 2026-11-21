import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsFlagBundleRankOne
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OddHarmZero

open MvPolynomial GlobalTheory.CovTest GlobalTheory.ArInt GlobalTheory.BlockPoint

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.AltPrim

theorem expo_apply (n : ℕ) (τ : Equiv.Perm (Fin (n + 1))) (k : Fin (n + 1)) :
    (Finsupp.equivFunOnFinite.symm (fun k : Fin (n + 1) => n - ((τ.symm k : Fin (n + 1)) : ℕ))) k = n - (τ.symm k : ℕ) := rfl

end GlobalTheory.AltPrim

namespace GlobalTheory.AltPrim

end GlobalTheory.AltPrim
