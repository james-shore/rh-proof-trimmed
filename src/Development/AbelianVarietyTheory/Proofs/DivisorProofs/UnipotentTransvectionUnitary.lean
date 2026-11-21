import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnipotentFundamentalDomain
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeisenbergMatrixPreservesForm
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCentralUnipotentTranslate

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK

noncomputable section

namespace GlobalTheory.HermAnisConstTerm

open GlobalTheory.UnipMass

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem hA_swap_herm (σ : E →ₐ[F] E) (hσ : ∀ a, σ (σ a) = a) {n : ℕ} (J : Matrix (Fin n) (Fin n) E)
    (hJ : ∀ i j, σ (J j i) = J i j) (v w : Fin n → AE F E) :
    hA σ J w v = cA σ (hA σ J v w) := by
  simp only [hA, dotProduct, Matrix.mulVec, map_sum, map_mul, Unitary.cA_invol σ hσ, incM, Matrix.map_apply,
    Unitary.cA_inclR, hJ, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  ring

variable {σ : E →ₐ[F] E} {n : ℕ} {J : Matrix (Fin n) (Fin n) E}

theorem unipotent_transvection_mulVec (x : Fin n → AE F E) (c : AE F E) (v : Fin n → AE F E) :
    nmat σ J x 0 c *ᵥ v = v - (hA σ J v x * c) • x := by
  rw [nmat_mulVec, hA_zero_right, zero_smul, sub_zero, zero_add, smul_smul]

theorem unipotent_transvection_mul (x : Fin n → AE F E) (hxx : hA σ J x x = 0) (c c' : AE F E) :
    nmat σ J x 0 c * nmat σ J x 0 c' = nmat σ J x 0 (c + c') := by
  refine Matrix.ext_of_mulVec_single fun i => ?_
  rw [← Matrix.mulVec_mulVec, unipotent_transvection_mulVec, unipotent_transvection_mulVec, unipotent_transvection_mulVec, Unitary.hA_sub_left, Unitary.hA_smul_left,
    hxx, mul_zero, sub_zero, sub_sub, ← add_smul]
  congr 2
  ring

theorem unipotent_transvection_unitary (hσ : ∀ a, σ (σ a) = a) (hJ : ∀ i j, σ (J j i) = J i j) (x : Fin n → AE F E)
    (hxx : hA σ J x x = 0) (c : AE F E) (hc : cA σ c = -c) :
    (nmat σ J x 0 c)ᵀ * incM F J * (nmat σ J x 0 c).map (cA σ) = incM F J := by
  have key : ∀ v w : Fin n → AE F E, hA σ J (nmat σ J x 0 c *ᵥ v) (nmat σ J x 0 c *ᵥ w) = hA σ J v w := by
    intro v w
    rw [unipotent_transvection_mulVec, unipotent_transvection_mulVec]
    have hxw : hA σ J x w = cA σ (hA σ J w x) := hA_swap_herm σ hσ J hJ _ _
    simp only [Unitary.hA_sub_left, Unitary.hA_sub_right, Unitary.hA_smul_left, Unitary.hA_smul_right, hxx, hxw,
      map_mul]
    linear_combination (-(hA σ J v x * cA σ (hA σ J w x))) * hc
  ext i j
  rw [Unitary.entry_eq, key, ← Unitary.entry_J hσ]

def cz (hσ : ∀ a, σ (σ a) = a) (hJ : ∀ i j, σ (J j i) = J i j) (x : Fin n → AE F E) (hxx : hA σ J x x = 0)
    (c : AE F E) (hc : cA σ c = -c) : UA σ J :=
  ⟨⟨nmat σ J x 0 c, nmat σ J x 0 (-c), by rw [unipotent_transvection_mul x hxx, add_neg_cancel, nmat_zero],
    by rw [unipotent_transvection_mul x hxx, neg_add_cancel, nmat_zero]⟩, unipotent_transvection_unitary hσ hJ x hxx c hc⟩

theorem mat_cz (hσ : ∀ a, σ (σ a) = a) (hJ : ∀ i j, σ (J j i) = J i j) (x : Fin n → AE F E)
    (hxx : hA σ J x x = 0) (c : AE F E) (hc : cA σ c = -c) : mat (cz hσ hJ x hxx c hc) = nmat σ J x 0 c := rfl

end GlobalTheory.HermAnisConstTerm
