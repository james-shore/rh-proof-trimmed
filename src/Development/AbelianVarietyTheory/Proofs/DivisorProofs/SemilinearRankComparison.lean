import Mathlib

open Module Submodule

namespace GlobalTheory.HodgeConjLength

section General
variable {R : Type} [CommRing R] {A B C : Type} [AddCommGroup A] [Module R A] [AddCommGroup B]
  [Module R B] [AddCommGroup C] [Module R C]

def torsMap (f : A →ₗ[R] B) : torsion R A →ₗ[R] torsion R B :=
  f.restrict fun x hx => by
    obtain ⟨r, hr⟩ := (mem_torsion_iff x).1 hx
    refine (mem_torsion_iff _).2 ⟨r, ?_⟩
    rw [Submonoid.smul_def] at hr ⊢
    rw [← map_smul, hr, map_zero]

@[simp] theorem coe_torsMap (f : A →ₗ[R] B) (x : torsion R A) : (torsMap f x : B) = f x := rfl

end General

end GlobalTheory.HodgeConjLength
