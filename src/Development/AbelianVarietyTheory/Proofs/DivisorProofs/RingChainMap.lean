import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingRChain
import Development.AbelianVarietyTheory.Definitions.Divisors.PrismaticDieudonnePerfdIff
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.PrismaticDieudonnePerfd

set_option autoImplicit false

noncomputable section

open CategoryTheory WittVector
open scoped TensorProduct Pointwise ChangeOfRings

namespace GlobalTheory.RingChain.RingMap

open GlobalTheory.PDivGroup GlobalTheory.Sandwich GlobalTheory.IndefiniteRowSideFullHecke.EpsilonPairingZeta GlobalTheory.Published GlobalTheory.PerfdLat

section Tr

variable {A B A' B' : Type} [CommRing A] [CommRing B] [CommRing A'] [CommRing B'] {a b h : ℕ} (e : a = h) (e' : b = h)
  (M : Matrix (Fin h) (Fin h) ℤ)

def tr (σ : A →+* B) : (Fin a → A) →ₛₗ[σ] (Fin b → B) where
  toFun x j := mv σ M (fun i => x (Fin.cast e.symm i)) (Fin.cast e' j)
  map_add' x y := funext fun j => by simp [mv, Matrix.mulVec, dotProduct, mul_add, Finset.sum_add_distrib]
  map_smul' c x := funext fun j => by simp [mv, Matrix.mulVec, dotProduct, Finset.mul_sum, mul_left_comm]

theorem tr_apply (σ : A →+* B) (x : Fin a → A) (j : Fin b) :
    tr e e' M σ x j = ∑ i, (M (Fin.cast e' j) i : B) * σ (x (Fin.cast e.symm i)) := rfl

end Tr

end GlobalTheory.RingChain.RingMap

end
