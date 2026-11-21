import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Definitions.Divisors.IsCompactIsOpenUnitsAt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbsPowApply

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ThK.LemF
open GlobalTheory.Doubling (absE)
open GlobalTheory.ThK.LemF.QuotInv
noncomputable section

namespace GlobalTheory.LeviSectionH

open Matrix

section Alg

variable {R : Type} [CommRing R] {n : ℕ}

theorem vmv_mul_vmv (a b u w : Fin n → R) : vecMulVec a b * vecMulVec u w = (b ⬝ᵥ u) • vecMulVec a w := by
  ext i j; simp only [mul_apply, vecMulVec_apply, dotProduct, Matrix.smul_apply, smul_eq_mul, Finset.sum_mul]
  exact Finset.sum_congr rfl fun k _ => by ring

theorem vmv_mul (a b : Fin n → R) (M : Matrix (Fin n) (Fin n) R) : vecMulVec a b * M = vecMulVec a (b ᵥ* M) :=
  Matrix.vecMulVec_mul a b M

theorem mul_vmv (M : Matrix (Fin n) (Fin n) R) (a b : Fin n → R) : M * vecMulVec a b = vecMulVec (M *ᵥ a) b :=
  Matrix.mul_vecMulVec M a b

variable (c : R →+* R) (J : Matrix (Fin n) (Fin n) R)

def cv (u : Fin n → R) : Fin n → R := fun i => c (u i)

def levH (x y : Fin n → R) (s r : R) : Matrix (Fin n) (Fin n) R :=
  1 + (s - 1) • vecMulVec x (J *ᵥ cv c y) + (r - 1) • vecMulVec y (J *ᵥ cv c x)

variable {c J}

theorem form_swap (hc : ∀ r, c (c r) = r) (hJ : ∀ i j, c (J j i) = J i j) (u w : Fin n → R) :
    c (u ⬝ᵥ J *ᵥ cv c w) = w ⬝ᵥ J *ᵥ cv c u := by
  simp only [dotProduct, mulVec, cv, map_sum, map_mul, hc, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  rw [hJ]; ring

theorem vecMul_J (hc : ∀ r, c (c r) = r) (hJ : ∀ i j, c (J j i) = J i j) (u : Fin n → R) :
    u ᵥ* J = cv c (J *ᵥ cv c u) := by
  ext j
  simp only [vecMul, mulVec, dotProduct, cv, map_sum, map_mul, hc, hJ]
  exact Finset.sum_congr rfl fun i _ => mul_comm _ _

theorem cv_dot (a b : Fin n → R) : cv c a ⬝ᵥ cv c b = c (a ⬝ᵥ b) := by
  simp [dotProduct, cv, map_sum]

variable {x y : Fin n → R}

section Rel
variable (hxx : x ⬝ᵥ J *ᵥ cv c x = 0) (hyy : y ⬝ᵥ J *ᵥ cv c y = 0) (hxy : x ⬝ᵥ J *ᵥ cv c y = 1)
  (hyx : y ⬝ᵥ J *ᵥ cv c x = 1)
include hxx hyy hxy hyx

theorem levH_mul (s r s' r' : R) : levH c J x y s r * levH c J x y s' r' = levH c J x y (s * s') (r * r') := by
  simp only [levH, Matrix.add_mul, Matrix.mul_add, Matrix.one_mul, Matrix.mul_one, Matrix.smul_mul, Matrix.mul_smul,
    vmv_mul_vmv]
  rw [dotProduct_comm (J *ᵥ cv c y) x, hxy, dotProduct_comm (J *ᵥ cv c y) y, hyy,
    dotProduct_comm (J *ᵥ cv c x) x, hxx, dotProduct_comm (J *ᵥ cv c x) y, hyx]
  module

end Rel

theorem levH_one (x y : Fin n → R) : levH c J x y 1 1 = 1 := by simp [levH]

theorem levH_unitary (hc : ∀ r, c (c r) = r) (hJ : ∀ i j, c (J j i) = J i j) (hxx : x ⬝ᵥ J *ᵥ cv c x = 0)
    (hyy : y ⬝ᵥ J *ᵥ cv c y = 0) (hxy : x ⬝ᵥ J *ᵥ cv c y = 1) (hyx : y ⬝ᵥ J *ᵥ cv c x = 1) (s r : R)
    (h1 : s * c r = 1) (h2 : c s * r = 1) :
    (levH c J x y s r)ᵀ * J * (levH c J x y s r).map c = J := by
  have hm : (levH c J x y s r).map c = 1 + (c s - 1) • vecMulVec (cv c x) (cv c (J *ᵥ cv c y)) +
      (c r - 1) • vecMulVec (cv c y) (cv c (J *ᵥ cv c x)) := by
    ext i j; by_cases h : i = j <;> simp [levH, cv, one_apply, h, vecMulVec_apply]
  have ht : (levH c J x y s r)ᵀ = 1 + (s - 1) • vecMulVec (J *ᵥ cv c y) x + (r - 1) • vecMulVec (J *ᵥ cv c x) y := by
    simp [levH, Matrix.transpose_add, Matrix.transpose_smul, Matrix.transpose_vecMulVec]
  have hA : vecMulVec (J *ᵥ cv c y) x * J = vecMulVec (J *ᵥ cv c y) (cv c (J *ᵥ cv c x)) := by
    rw [vmv_mul, vecMul_J hc hJ]
  have hB : vecMulVec (J *ᵥ cv c x) y * J = vecMulVec (J *ᵥ cv c x) (cv c (J *ᵥ cv c y)) := by
    rw [vmv_mul, vecMul_J hc hJ]
  have hC : J * vecMulVec (cv c x) (cv c (J *ᵥ cv c y)) = vecMulVec (J *ᵥ cv c x) (cv c (J *ᵥ cv c y)) := mul_vmv _ _ _
  have hD : J * vecMulVec (cv c y) (cv c (J *ᵥ cv c x)) = vecMulVec (J *ᵥ cv c y) (cv c (J *ᵥ cv c x)) := mul_vmv _ _ _
  have d1 : cv c (J *ᵥ cv c x) ⬝ᵥ cv c x = 0 := by rw [cv_dot, dotProduct_comm, hxx, map_zero]
  have d2 : cv c (J *ᵥ cv c x) ⬝ᵥ cv c y = 1 := by rw [cv_dot, dotProduct_comm, hyx, map_one]
  have d3 : cv c (J *ᵥ cv c y) ⬝ᵥ cv c x = 1 := by rw [cv_dot, dotProduct_comm, hxy, map_one]
  have d4 : cv c (J *ᵥ cv c y) ⬝ᵥ cv c y = 0 := by rw [cv_dot, dotProduct_comm, hyy, map_zero]
  rw [hm, ht]
  simp only [Matrix.add_mul, Matrix.mul_add, Matrix.one_mul, Matrix.mul_one, Matrix.smul_mul, Matrix.mul_smul, hA, hB,
    hC, hD, vmv_mul_vmv, d1, d2, d3, d4, zero_smul, one_smul, smul_zero]
  linear_combination (norm := module) h1 • vecMulVec (J *ᵥ cv c y) (cv c (J *ᵥ cv c x)) +
    h2 • vecMulVec (J *ᵥ cv c x) (cv c (J *ᵥ cv c y))

end Alg

section Adelic

open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E} {n : ℕ}

theorem cA_inclR (e : E) : cA σ (inclR (AF F) e) = inclR (AF F) (σ e) := by
  simp [cA, inclR]

theorem cA_cA_of (hσ : ∀ x, σ (σ x) = x) (z : AE F E) : cA σ (cA σ z) = z := by
  induction z using TensorProduct.induction_on with
  | zero => simp
  | tmul a e => simp [cA, hσ]
  | add x y hx hy => rw [map_add, map_add, hx, hy]

theorem cv_incV (w : Fin n → E) : cv (cA σ).toRingHom (incV F w) = incV F (fun i => σ (w i)) := by
  ext i; exact cA_inclR (w i)

theorem dot_incV (J : Matrix (Fin n) (Fin n) E) (u w : Fin n → E) :
    incV F u ⬝ᵥ incM F J *ᵥ cv (cA σ).toRingHom (incV F w) = inclR (AF F) (form σ J u w) := by
  rw [cv_incV]
  simp [dotProduct, mulVec, incV, incM, form, map_sum, map_mul]

end Adelic

section Hom

open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E} {n : ℕ}
variable (σ) in

def levU (J : Matrix (Fin n) (Fin n) E) (x y : Fin n → E) (t : (AE F E)ˣ) : Matrix (Fin n) (Fin n) (AE F E) :=
  levH (cA σ).toRingHom (incM F J) (incV F x) (incV F y) t (cA σ ((t⁻¹ : (AE F E)ˣ) : AE F E))

section Rels
variable {J : Matrix (Fin n) (Fin n) E} {x y : Fin n → E} (hσ : ∀ e, σ (σ e) = e) (hJ : ∀ i j, σ (J j i) = J i j)
  (hxx : form σ J x x = 0) (hyy : form σ J y y = 0) (hxy : form σ J x y = 1)
include hσ hJ hxx hyy hxy

theorem rels : (∀ i j, (cA σ).toRingHom (incM F J j i) = incM F J i j) ∧
    incV F x ⬝ᵥ incM F J *ᵥ cv (cA σ).toRingHom (incV F x) = 0 ∧
    incV F y ⬝ᵥ incM F J *ᵥ cv (cA σ).toRingHom (incV F y) = 0 ∧
    incV F x ⬝ᵥ incM F J *ᵥ cv (cA σ).toRingHom (incV F y) = 1 ∧
    incV F y ⬝ᵥ incM F J *ᵥ cv (cA σ).toRingHom (incV F x) = 1 := by
  have hJA : ∀ i j, (cA σ).toRingHom (incM F J j i) = incM F J i j := fun i j => by
    show cA σ (inclR (AF F) (J j i)) = inclR (AF F) (J i j)
    rw [cA_inclR, hJ]
  have hXY : incV F x ⬝ᵥ incM F J *ᵥ cv (cA σ).toRingHom (incV F y) = 1 := by rw [dot_incV, hxy, map_one]
  refine ⟨hJA, by rw [dot_incV, hxx, map_zero], by rw [dot_incV, hyy, map_zero], hXY, ?_⟩
  rw [← form_swap (cA_cA_of hσ) hJA, hXY, map_one]

theorem levU_mul (t s : (AE F E)ˣ) : levU σ J x y t * levU σ J x y s = levU σ J x y (t * s) := by
  obtain ⟨_, h1, h2, h3, h4⟩ := rels hσ hJ hxx hyy hxy
  rw [levU, levU, levU, levH_mul h1 h2 h3 h4, _root_.mul_inv_rev, Units.val_mul, Units.val_mul]
  congr 1; rw [map_mul, mul_comm]

omit hσ hJ hxx hyy hxy in
theorem levU_one : levU σ J x y 1 = 1 := by
  rw [levU, inv_one, Units.val_one, map_one, levH_one]

variable (x y) in

def leviU : (AE F E)ˣ →* UA σ J where
  toFun t := ⟨⟨levU σ J x y t, levU σ J x y t⁻¹, by rw [levU_mul hσ hJ hxx hyy hxy, mul_inv_cancel, levU_one],
    by rw [levU_mul hσ hJ hxx hyy hxy, inv_mul_cancel, levU_one]⟩, by
    obtain ⟨h0, h1, h2, h3, h4⟩ := rels hσ hJ hxx hyy hxy
    show (levU σ J x y t)ᵀ * incM F J * (levU σ J x y t).map (cA σ) = incM F J
    exact levH_unitary (cA_cA_of hσ) h0 h1 h2 h3 h4 _ _
      (by show (t : AE F E) * cA σ (cA σ _) = 1; rw [cA_cA_of hσ, Units.mul_inv])
      (by show cA σ (t : AE F E) * cA σ _ = 1; rw [← map_mul, Units.mul_inv, map_one])⟩
  map_one' := Subtype.ext (Units.ext levU_one)
  map_mul' t s := Subtype.ext (Units.ext (levU_mul hσ hJ hxx hyy hxy t s).symm)

theorem mat_leviU (t : (AE F E)ˣ) : mat (leviU x y hσ hJ hxx hyy hxy t) = levU σ J x y t := rfl

end Rels
end Hom

end GlobalTheory.LeviSectionH
