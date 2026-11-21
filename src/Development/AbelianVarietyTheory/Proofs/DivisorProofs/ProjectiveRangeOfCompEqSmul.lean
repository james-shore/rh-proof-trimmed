import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.PrismaticDieudonnePerfdIff

set_option autoImplicit false

noncomputable section

open CategoryTheory WittVector TensorProduct

namespace GlobalTheory.PerfdLat

open GlobalTheory.PDivGroup GlobalTheory.Sandwich GlobalTheory.IndefiniteRowSideFullHecke.EpsilonPairingZeta GlobalTheory.Published
open scoped Pointwise

variable {p : ℕ} [Fact p.Prime]

def thetaPhiInv (S : CycPerfd p) (n : ℕ) : Ainf p S.R →+* S.R := (fontaineTheta S.R p).comp (phiInv p S.R ^ n)

theorem thetaPhiInv_apply (S : CycPerfd p) (n : ℕ) (a : Ainf p S.R) :
    thetaPhiInv S n a = fontaineTheta S.R p ((phiInv p S.R)^[n] a) := by
  rw [thetaPhiInv, RingHom.comp_apply, RingHom.coe_pow]

instance thetaPhiInv_surjective (S : CycPerfd p) (n : ℕ) : RingHomSurjective (thetaPhiInv S n) :=
  ⟨fun x => by
    obtain ⟨a, rfl⟩ := S.surj x
    obtain ⟨b, rfl⟩ := (Function.RightInverse.surjective (Dieudonne.phiInv_frobenius (p := p) (O := S.R))).iterate n a
    exact ⟨b, thetaPhiInv_apply S n b⟩⟩

variable (D : PrismData p) {S : CycPerfd p} {G : PDivGroup p S.R} (c : ConstTate (eps S) G)

end GlobalTheory.PerfdLat
