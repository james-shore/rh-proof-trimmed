import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DiffsZeroOfLev
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsShear

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)
open GlobalTheory.ConeSmallMidJB

noncomputable section

namespace GlobalTheory.SwapShearLines

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

theorem incV_add' {n : ℕ} (a b : Fin n → E) : incV F (a + b) = incV F a + incV F b := by
  ext i; simp [incV]

theorem incV_smul' {n : ℕ} (c : E) (a : Fin n → E) : incV F (c • a) = inclR (F := F) (AF F) c • incV F a := by
  ext i; simp [incV]

theorem incV_zero' {n : ℕ} : incV F (0 : Fin n → E) = 0 := by ext i; simp [incV]

theorem incM_mulVec' {m n : ℕ} (A : Matrix (Fin m) (Fin n) E) (v : Fin n → E) :
    incM F A *ᵥ incV F v = incV F (A *ᵥ v) := by
  ext i; simp [incM, incV, Matrix.mulVec, dotProduct, map_sum]

theorem incV_dot' {n : ℕ} (a b : Fin n → E) : incV F a ⬝ᵥ incV F b = inclR (F := F) (AF F) (a ⬝ᵥ b) := by
  simp [incV, dotProduct, map_sum]

theorem incM_mul' {m n k : ℕ} (A : Matrix (Fin m) (Fin n) E) (B : Matrix (Fin n) (Fin k) E) :
    incM F (A * B) = incM F A * incM F B := by
  simp [incM, Matrix.map_mul]

theorem cA_inclR' (c : E) : cA σ (inclR (F := F) (AF F) c) = inclR (F := F) (AF F) (σ c) := by
  simp [cA, inclR]

theorem mat_mul'' {n : ℕ} {J : Matrix (Fin n) (Fin n) E} (g h : UA σ J) : mat (g * h) = mat g * mat h := rfl

theorem mat_one'' {n : ℕ} {J : Matrix (Fin n) (Fin n) E} : mat (1 : UA σ J) = 1 := rfl

theorem mat_inv_mul'' {n : ℕ} {J : Matrix (Fin n) (Fin n) E} (g : UA σ J) : mat g⁻¹ * mat g = 1 := by
  show (g.1⁻¹ * g.1 : GL (Fin n) (AE F E)).1 = 1
  simp

theorem inv_mulVec_of {n : ℕ} {J : Matrix (Fin n) (Fin n) E} (g : UA σ J) {u v : Fin n → AE F E}
    (h : mat g *ᵥ v = u) : mat g⁻¹ *ᵥ u = v := by
  rw [← h, Matrix.mulVec_mulVec, mat_inv_mul'', Matrix.one_mulVec]

theorem pair_incV {d : ℕ} (J : Matrix (Fin d) (Fin d) E) (u z : Fin d → E) :
    incV F u ⬝ᵥ incV F (J *ᵥ fun i => σ (z i)) = inclR (F := F) (AF F) (form σ J u z) := by
  rw [incV_dot']; rfl

theorem incV_sub' {n : ℕ} (a b : Fin n → E) : incV F (a - b) = incV F a - incV F b := by
  ext i; simp [incV]

end GlobalTheory.SwapShearLines

namespace GlobalTheory.SwapShearLines

end GlobalTheory.SwapShearLines
