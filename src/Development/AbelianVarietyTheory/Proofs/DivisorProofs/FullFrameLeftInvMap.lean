import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FullFrameRight
open GlobalTheory.WholeFlag GlobalTheory.WholeFlag.Glue
open scoped Matrix

set_option autoImplicit false

namespace GlobalTheory.WholeFlag.Glue.FrameMap

variable {R R' : Type} [CommRing R] [CommRing R'] (f : R →+* R')

theorem leftInv_eq {S : Type} [CommRing S] {g : ℕ} (U : Matrix (Fin (g + g)) (Fin g) S) (τ : Fin g → Fin (g + g)) :
    leftInv U τ = @HMul.hMul (Matrix (Fin g) (Fin g) S) (Matrix (Fin g) (Fin (g + g)) S) (Matrix (Fin g) (Fin (g + g)) S)
      Matrix.instHMulOfFintypeOfMulOfAddCommMonoid (rowSel τ * U : Matrix (Fin g) (Fin g) S)⁻¹ (rowSel τ) := rfl

end GlobalTheory.WholeFlag.Glue.FrameMap

namespace GlobalTheory.WholeFlag.Glue

end GlobalTheory.WholeFlag.Glue
