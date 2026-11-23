import Mathlib
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.BoundAtTwoAndThreeForFamily
import Formalism.SharpRestriction.LevelLetterCocycles.JumpAndLengthOfAdmitted
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DecompositionLocalAway
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TorsionExponentKillsInvariantsNoJumpZeroStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CrystallineLatticeWachModuleExistsProofStatement

open NumberField IsDedekindDomain Formalism Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions Formalism.MainNotions.N Formalism.WeaklyAdmissibleFiltrations GlobalTheory.NLink

namespace GlobalTheory.NLink.PowerSmulVanishing

theorem pow_smul_eq_zero_of_le {O M : Type} [CommRing O] [AddCommGroup M] [Module O M] (p : O) {a b : ℕ}
    (h : a ≤ b) {x : M} (hx : p ^ a • x = 0) : p ^ b • x = 0 := by
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le h
  rw [pow_add, mul_comm, ← smul_smul, hx, smul_zero]

end GlobalTheory.NLink.PowerSmulVanishing
