import Mathlib
import Development.AbelianVarietyTheory.Definitions.Foundations.AltCoeffRho

noncomputable section
open MvPolynomial Finset GlobalTheory.FlagHook Formalism.DegreeFormula

namespace GlobalTheory.HookSchur

def hs {R : Type} [CommRing R] (x : ℕ → R) (N : ℕ) : ℕ → ℕ → R :=
  Nat.rec (motive := fun _ => ℕ → ℕ → R)
    (fun a => Nat.rec (motive := fun _ => ℕ → R) (fun r => if r = 0 then 1 else 0)
      (fun _ _ _ => 0) a)
    (fun N prev a => Nat.rec (motive := fun _ => ℕ → R) (fun r => if r = 0 then 1 else 0)
      (fun a cur r => x N * cur r + prev (a + 1) r +
        (if r = 0 then 0 else x N * prev (a + 1) (r - 1))) a) N

section
variable {R : Type} [CommRing R] (x : ℕ → R)

theorem hs_zero_variables (a r : ℕ) : hs x 0 (a + 1) r = 0 := rfl

theorem hs_succ (N a r : ℕ) : hs x (N + 1) (a + 1) r =
    x N * hs x (N + 1) a r + hs x N (a + 1) r +
      (if r = 0 then 0 else x N * hs x N (a + 1) (r - 1)) := rfl

end

end GlobalTheory.HookSchur
