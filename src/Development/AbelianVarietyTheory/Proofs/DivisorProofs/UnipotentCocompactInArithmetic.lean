import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogAbsEEqZero
import Development.AbelianVarietyTheory.Definitions.Foundations.ConstTermOnMulLeftOfNormalizer
import Development.AbelianVarietyTheory.Definitions.Divisors.IsSquareIntegrableIffMemL2
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConstantTermUnipotentIntegral
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPurelyImaginaryElement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DetNeZeroOfSkewHermitianSelfDualLatticeSpace
open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)

noncomputable section

namespace GlobalTheory.UnipCocompact

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

theorem form_add {n : ℕ} (J : Matrix (Fin n) (Fin n) E) (x v w : Fin n → E) :
    form σ J x (v + w) = form σ J x v + form σ J x w := by
  simp only [form, dotProduct, Matrix.mulVec, Pi.add_apply, map_add, mul_add, Finset.sum_add_distrib]

theorem form_smul {n : ℕ} (J : Matrix (Fin n) (Fin n) E) (x v : Fin n → E) (s : E) :
    form σ J x (s • v) = σ s * form σ J x v := by
  simp only [form, dotProduct, Matrix.mulVec, Pi.smul_apply, smul_eq_mul, map_mul, Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  exact Finset.sum_congr rfl fun j _ => by ring

end GlobalTheory.UnipCocompact

namespace GlobalTheory.UnipCocompact

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

theorem exists_decomp {B : Base F E} {n n₁ : ℕ} {H : Plane E n n₁} {Y : Spc F E n} {Y₁ : Spc F E n₁} {i₀ i₁ : ℕ}
    (hL : Y.L.IsLattice E) (hH : H.IsAdapted σ B Y Y₁ i₀ i₁) (v : Fin n → E) :
    ∃ (s t : E) (u : Fin n₁ → E), v = s • H.x + H.ι *ᵥ u + t • H.y := by
  let S : Submodule E (Fin n → E) :=
    { carrier := {v | ∃ (s t : E) (u : Fin n₁ → E), v = s • H.x + H.ι *ᵥ u + t • H.y}
      add_mem' := by
        rintro _ _ ⟨s, t, u, rfl⟩ ⟨s', t', u', rfl⟩
        exact ⟨s + s', t + t', u + u', by rw [Matrix.mulVec_add, add_smul, add_smul]; abel⟩
      zero_mem' := ⟨0, 0, 0, by simp⟩
      smul_mem' := by
        rintro r _ ⟨s, t, u, rfl⟩
        exact ⟨r * s, r * t, r • u, by rw [Matrix.mulVec_smul, smul_add, smul_add, smul_smul, smul_smul]⟩ }
  have hle : Submodule.span E (Y.L : Set (Fin n → E)) ≤ S := Submodule.span_le.2 fun z hz => by
    obtain ⟨s, t, u, -, -, -, e⟩ := hH.split z hz
    exact ⟨s, t, u, e⟩
  rw [hL.span_eq_top] at hle
  exact hle (Submodule.mem_top (x := v))

end GlobalTheory.UnipCocompact

namespace GlobalTheory.UnipCocompact

end GlobalTheory.UnipCocompact
