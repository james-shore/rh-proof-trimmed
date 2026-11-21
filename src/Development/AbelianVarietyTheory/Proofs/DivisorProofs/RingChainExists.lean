import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingRChain
import Development.AbelianVarietyTheory.Definitions.Divisors.GlobalHeightBoundIffAtGoodPrimes
import Development.AbelianVarietyTheory.Definitions.Divisors.PrismaticDieudonnePerfdIff
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProjectiveRangeOfCompEqSmul
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ZetaSubOneMemJacobson
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ZetaSuccSubOneDvd

set_option autoImplicit false

noncomputable section

open CategoryTheory WittVector
open scoped TensorProduct Pointwise ChangeOfRings

namespace GlobalTheory.RingChain.Exist

open GlobalTheory.PDivGroup GlobalTheory.Sandwich GlobalTheory.IndefiniteRowSideFullHecke.EpsilonPairingZeta GlobalTheory.Published GlobalTheory.PerfdLat

section Generic

variable {A R : Type} [CommRing A] [CommRing R] {σ : A →+* R} {M N M' N' : Type} [AddCommGroup M] [Module A M]
  [AddCommGroup N] [Module A N] [AddCommGroup M'] [Module R M'] [AddCommGroup N'] [Module R N']

def res (f : M →ₛₗ[σ] M') (H : Submodule R M') : H.comap f →ₛₗ[σ] H where
  toFun x := ⟨f x.1, x.2⟩
  map_add' _ _ := Subtype.ext (map_add f _ _)
  map_smul' _ _ := Subtype.ext (map_smulₛₗ f _ _)

variable [Algebra A R]

end Generic

section Group

variable {p : ℕ} [Fact p.Prime] (D : PrismData p) {S : CycPerfd p} {G : PDivGroup p S.R} (c : ConstTate (eps S) G)
  {A : Type} [CommRing A] [Algebra A S.R]

variable (A) in

abbrev lat (n : ℕ) : Submodule A (Fin G.height → A) := (H D c n).comap (piMap (algebraMap A S.R) _)

variable (A) in

abbrev up (n : ℕ) : lat D c A n →ₛₗ[algebraMap A S.R] H D c n := res _ _

variable {π : A} (hπ : algebraMap A S.R π = zeta S.ε 1 - 1) (mπ : ModIso S.R π)

include hπ mπ

variable {Lie : Type} [AddCommGroup Lie] [Module A Lie] (eL : S.R ⊗[A] Lie ≃ₗ[S.R] G.Lie)

end Group

end GlobalTheory.RingChain.Exist

end
