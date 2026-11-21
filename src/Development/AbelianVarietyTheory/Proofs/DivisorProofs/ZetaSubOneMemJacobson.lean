import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.PrismaticDieudonnePerfdIff

set_option autoImplicit false

open CategoryTheory WittVector GlobalTheory GlobalTheory.PDivGroup GlobalTheory.Sandwich GlobalTheory.IndefiniteRowSideFullHecke.EpsilonPairingZeta GlobalTheory.Published GlobalTheory.PerfdLat
open scoped ChangeOfRings Pointwise

namespace GlobalTheory.PerfdLat.CycElem

theorem exists_add_one_pow {R : Type} [CommRing R] {p : ℕ} (hp : p.Prime) (x : R) :
    ∃ s : R, (x + 1) ^ p = x ^ p + 1 + p * x * (x * s + 1) := by
  have h := (Commute.one_right x).add_pow_prime_eq' hp
  have h1 : 1 ∈ Finset.Ioo 0 p := Finset.mem_Ioo.2 ⟨one_pos, hp.one_lt⟩
  rw [← Finset.add_sum_erase _ _ h1] at h
  have h2 : x ^ 2 ∣ ∑ k ∈ (Finset.Ioo 0 p).erase 1, x ^ k * 1 ^ (p - k) * ((p.choose k / p : ℕ) : R) :=
    Finset.dvd_sum fun k hk => by
      have h3 := Finset.mem_erase.1 hk
      have h4 := Finset.mem_Ioo.1 h3.2
      exact ((pow_dvd_pow x (by omega)).mul_right _).mul_right _
  obtain ⟨s, hs⟩ := h2
  rw [hs, Nat.choose_one_right, Nat.div_self hp.pos] at h
  exact ⟨s, by rw [h]; simp only [one_pow, Nat.cast_one]; ring⟩

variable {p : ℕ} [Fact p.Prime] (S : CycPerfd p)

theorem theta_phiInv_pow (a : Ainf p S.R) :
    Ideal.Quotient.mk (Ideal.span {(p : S.R)}) (fontaineTheta S.R p (phiInv p S.R a)) ^ p =
      Ideal.Quotient.mk _ (fontaineTheta S.R p a) := by
  have h : phiInv p S.R a ^ p - a ∈ Ideal.span {(p : Ainf p S.R)} := by
    rw [WittVector.mem_span_p_iff_coeff_zero_eq_zero, ← constantCoeff_apply, map_sub, map_pow, sub_eq_zero]
    conv_rhs => rw [← Dieudonne.frobenius_phiInv a]
    rw [constantCoeff_apply, constantCoeff_apply, coeff_frobenius_charP]
  obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.1 h
  rw [← map_pow, ← map_pow, Ideal.Quotient.eq, ← map_sub, ← hc, map_mul, map_natCast]
  exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _)

theorem exists_zeta_sub_one (k : ℕ) : ∃ s : S.R, zeta S.ε k - 1 =
    (zeta S.ε (k + 1) - 1) ^ p + p * (zeta S.ε (k + 1) - 1) * ((zeta S.ε (k + 1) - 1) * s + 1) := by
  obtain ⟨s, hs⟩ := exists_add_one_pow (Fact.out : p.Prime) (zeta S.ε (k + 1) - 1)
  rw [sub_add_cancel, zeta_succ_pow] at hs
  exact ⟨s, by linear_combination hs⟩

end GlobalTheory.PerfdLat.CycElem
