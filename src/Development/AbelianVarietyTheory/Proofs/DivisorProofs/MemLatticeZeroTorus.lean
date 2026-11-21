import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoreConcl
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLineReps

noncomputable section

open scoped TensorProduct Matrix
open NumberField Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes

namespace GlobalTheory.EisRestrict

variable {F E : Type} [Field F] [Field E] [Algebra F E] (σ : E →ₐ[F] E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E)

theorem hE_eq_dot (x z : Fin n → E) : hE σ J x z = (fun i => σ (x i)) ⬝ᵥ (J *ᵥ z) := by
  simp only [hE, Formalism.UG.hform, dotProduct, Matrix.mulVec, Finset.mul_sum]
  exact Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by simp [mul_assoc]

def hRight (x : Fin n → E) : (Fin n → E) →ₗ[E] E where
  toFun z := hE σ J x z
  map_add' z z' := by simp only [hE_eq_dot, Matrix.mulVec_add, dotProduct_add]
  map_smul' c z := by simp only [hE_eq_dot, Matrix.mulVec_smul, dotProduct_smul, smul_eq_mul, RingHom.id_apply]

variable {r : ℕ} (X Y : Matrix (Fin n) (Fin (r + 1)) E)

def V0 : Submodule E (Fin n → E) :=
  LinearMap.ker (hRight σ J (GlobalTheory.EisMidHt.firstColumn X)) ⊓ LinearMap.ker (hRight σ J (GlobalTheory.EisMidHt.firstColumn Y))

theorem mem_invariant_forms {z : Fin n → E} :
    z ∈ V0 σ J X Y ↔ hE σ J (GlobalTheory.EisMidHt.firstColumn X) z = 0 ∧ hE σ J (GlobalTheory.EisMidHt.firstColumn Y) z = 0 := Iff.rfl

abbrev dim : ℕ := Module.finrank E (V0 σ J X Y)

def bas : Module.Basis (Fin (dim σ J X Y)) E (V0 σ J X Y) := Module.finBasis E _

def P : Matrix (Fin n) (Fin (dim σ J X Y)) E := Matrix.of fun i j => (bas σ J X Y j : Fin n → E) i

def ι : (Fin (dim σ J X Y) → E) →ₗ[E] (Fin n → E) := (P σ J X Y).mulVecLin

def L0 (L : Submodule (𝓞 E) (Fin n → E)) : Submodule (𝓞 E) (Fin (dim σ J X Y) → E) :=
  L.comap ((ι σ J X Y).restrictScalars (𝓞 E))

theorem mem_lattice_zeroTorus {L : Submodule (𝓞 E) (Fin n → E)} {u : Fin (dim σ J X Y) → E} :
    u ∈ L0 σ J X Y L ↔ P σ J X Y *ᵥ u ∈ L := Iff.rfl

theorem ι_apply (u : Fin (dim σ J X Y) → E) : ι σ J X Y u = P σ J X Y *ᵥ u := rfl

end GlobalTheory.EisRestrict

end
