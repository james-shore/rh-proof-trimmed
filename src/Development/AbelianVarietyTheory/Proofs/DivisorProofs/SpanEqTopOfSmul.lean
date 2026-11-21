import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMulInvolEqOfFixed

open NumberField Module
open scoped nonZeroDivisors

noncomputable section

namespace GlobalTheory.ModularLattice

section Lattices

variable {E : Type} [Field E] [NumberField E]

abbrev conjO (σ : E →+* E) : 𝓞 E →+* 𝓞 E := RingOfIntegers.mapRingHom σ

theorem map_algebraMap (σ : E →+* E) (o : 𝓞 E) :
    σ (algebraMap (𝓞 E) E o) = algebraMap (𝓞 E) E (conjO σ o) := rfl

variable {d : ℕ}

variable {σ : E →+* E} {h : (Fin d → E) → (Fin d → E) → E}

end Lattices

end GlobalTheory.ModularLattice
