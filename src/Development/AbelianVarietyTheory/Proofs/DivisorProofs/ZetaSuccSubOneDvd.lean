import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.PrismaticDieudonnePerfdIff
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ZetaSubOneMemJacobson

set_option autoImplicit false

noncomputable section

open CategoryTheory WittVector GlobalTheory GlobalTheory.PDivGroup GlobalTheory.Sandwich GlobalTheory.IndefiniteRowSideFullHecke.EpsilonPairingZeta GlobalTheory.Published GlobalTheory.PerfdLat
open scoped ChangeOfRings Pointwise

namespace GlobalTheory.PerfdLat.FrobQuot

variable {p : ℕ} [Fact p.Prime] (S : CycPerfd p)

theorem theta_frobenius (a : Ainf p S.R) :
    ∃ t : S.R, fontaineTheta S.R p (frobenius a) = fontaineTheta S.R p a ^ p + p * t := by
  have h := CycElem.theta_phiInv_pow S (frobenius a)
  rw [Dieudonne.phiInv_frobenius, ← map_pow, Ideal.Quotient.eq, Ideal.mem_span_singleton'] at h
  obtain ⟨t, ht⟩ := h
  exact ⟨-t, by linear_combination ht⟩

theorem zeta_sub_one_dvd_p (n : ℕ) : zeta S.ε (n + 1) - 1 ∣ (p : S.R) :=
  (zeta_sub_one_dvd S n).trans (zeta_one_sub_one_dvd S)

theorem mem_base_iff {h : ℕ} (x : Fin h → S.R) : x ∈ base S h ↔ ∀ j, ∃ v, x j = (zeta S.ε 1 - 1) * v := by
  rw [mem_base]
  constructor
  · rintro ⟨y, rfl⟩ j
    exact ⟨y j, rfl⟩
  · intro h
    choose v hv using h
    exact ⟨v, funext fun j => (hv j).symm⟩

theorem step_base (r : ℕ) (a : Ainf p S.R) (x y w : S.R)
    (hx : (zeta S.ε 1 - 1) * fontaineTheta S.R p a = (zeta S.ε (r + 2) - 1) * x)
    (hy : (zeta S.ε 1 - 1) * fontaineTheta S.R p (frobenius a) = (zeta S.ε (r + 1) - 1) * y)
    (hw : x = (zeta S.ε 1 - 1) * w) : ∃ v, y = (zeta S.ε 1 - 1) * v := by
  have hπ : IsSMulRegular S.R (zeta S.ε 1 - 1) := isSMulRegular_zeta_sub_one S 0
  have h1 : fontaineTheta S.R p a = (zeta S.ε (r + 2) - 1) * w := hπ (by
    simp only [smul_eq_mul]
    rw [hx, hw]
    ring)
  obtain ⟨t, ht⟩ := theta_frobenius S a
  obtain ⟨s, hs⟩ := CycElem.exists_zeta_sub_one S (r + 1)
  obtain ⟨q, hq⟩ := zeta_sub_one_dvd_p S r
  set m := (zeta S.ε (r + 1 + 1) - 1) * ((zeta S.ε (r + 1 + 1) - 1) * s + 1)
  have h2 : fontaineTheta S.R p (frobenius a) = (zeta S.ε (r + 1) - 1) * (w ^ p + q * (t - m * w ^ p)) := by
    rw [ht, h1, mul_pow]
    have hs' : zeta S.ε (r + 1) - 1 = (zeta S.ε (r + 2) - 1) ^ p + p * m := by rw [hs]; ring
    linear_combination (t - m * w ^ p) * hq - w ^ p * hs'
  refine ⟨w ^ p + q * (t - m * w ^ p), isSMulRegular_zeta_sub_one S r ?_⟩
  simp only [smul_eq_mul]
  rw [← hy, h2]
  ring

end GlobalTheory.PerfdLat.FrobQuot

namespace GlobalTheory.PerfdLat.FrobQuot

variable {p : ℕ} [Fact p.Prime] (D : PrismData p) {S : CycPerfd p} {G : PDivGroup p S.R} (c : ConstTate (eps S) G)

def Rel (r : ℕ) {n : ℕ} (k : Fin n → Ainf p S.R) (x y : Fin n → S.R) : Prop :=
  (zeta S.ε 1 - 1) • piMap (fontaineTheta S.R p) _ k = (zeta S.ε (r + 2) - 1) • x ∧
    (zeta S.ε 1 - 1) • piMap (fontaineTheta S.R p) _ (piMap frobenius _ k) = (zeta S.ε (r + 1) - 1) • y

variable {D c}

theorem Rel.sub {r n : ℕ} {k k' : Fin n → Ainf p S.R} {x x' y y' : Fin n → S.R} (h : Rel r k x y)
    (h' : Rel r k' x' y') : Rel r (k - k') (x - x') (y - y') :=
  ⟨by rw [map_sub, smul_sub, smul_sub, h.1, h'.1], by rw [map_sub, map_sub, smul_sub, smul_sub, h.2, h'.2]⟩

theorem Rel.add {r n : ℕ} {k k' : Fin n → Ainf p S.R} {x x' y y' : Fin n → S.R} (h : Rel r k x y)
    (h' : Rel r k' x' y') : Rel r (k + k') (x + x') (y + y') :=
  ⟨by rw [map_add, smul_add, smul_add, h.1, h'.1], by rw [map_add, map_add, smul_add, smul_add, h.2, h'.2]⟩

theorem Rel.zero (r n : ℕ) : Rel (S := S) r (0 : Fin n → Ainf p S.R) 0 0 :=
  ⟨by simp, by simp⟩

theorem Rel.smul {r n : ℕ} {k : Fin n → Ainf p S.R} {x y : Fin n → S.R} (h : Rel r k x y) (a : Ainf p S.R) :
    Rel r (a • k) (fontaineTheta S.R p a • x) (fontaineTheta S.R p (frobenius a) • y) :=
  ⟨by rw [map_smulₛₗ, smul_comm, h.1, smul_comm], by rw [map_smulₛₗ, map_smulₛₗ, smul_comm, h.2, smul_comm]⟩

theorem Rel.base {r n : ℕ} {k : Fin n → Ainf p S.R} {x y : Fin n → S.R} (h : Rel r k x y) :
    x ∈ GlobalTheory.PerfdLat.base S n → y ∈ GlobalTheory.PerfdLat.base S n := by
  rw [mem_base_iff, mem_base_iff]
  intro hx j
  obtain ⟨w, hw⟩ := hx j
  exact step_base S r (k j) (x j) (y j) w (congrFun h.1 j) (congrFun h.2 j) hw

variable (D c)

variable {D c}

variable (D c)

end GlobalTheory.PerfdLat.FrobQuot

namespace GlobalTheory.PerfdLat.FrobQuot

end GlobalTheory.PerfdLat.FrobQuot

namespace GlobalTheory.PerfdLat.FrobQuot

end GlobalTheory.PerfdLat.FrobQuot

namespace GlobalTheory.PerfdLat

end GlobalTheory.PerfdLat
