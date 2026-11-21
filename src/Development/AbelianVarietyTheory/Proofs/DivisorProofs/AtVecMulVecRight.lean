import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinRel
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TrPApply
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinRelAlt

noncomputable section

namespace GlobalTheory.ArchSchB

open scoped TensorProduct Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ArchSch

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}
  {n d n₁ d₁ : ℕ} {X : Spc F E n} {W : Spc F E d} {X₁ : Spc F E n₁} {W₁ : Spc F E d₁}

theorem at_vecMulVec_right {m k : ℕ} (x : Fin m → AE F E) {a : Fin k → AE F E} (ha : At (evI F) a) :
    At (evI F) (Matrix.vecMulVec x a) := by
  intro u hu
  have h := ha u hu
  ext i j
  have hj : u • a j = 0 := by simpa using congrFun h j
  simp only [Matrix.smul_apply, Matrix.vecMulVec_apply, Matrix.zero_apply]
  rw [← mul_smul_comm, hj, mul_zero]

theorem at_vecMulVec_left {m k : ℕ} {x : Fin m → AE F E} (hx : At (evI F) x) (a : Fin k → AE F E) :
    At (evI F) (Matrix.vecMulVec x a) := by
  intro u hu
  have h := hx u hu
  ext i j
  have hi : u • x i = 0 := by simpa using congrFun h i
  simp only [Matrix.smul_apply, Matrix.vecMulVec_apply, Matrix.zero_apply]
  rw [← smul_mul_assoc, hi, zero_mul]

theorem at_mulVec {m k : ℕ} (A : Matrix (Fin m) (Fin k) (AE F E)) {c : Fin k → AE F E} (hc : At (evI F) c) :
    At (evI F) (A *ᵥ c) := by
  intro u hu
  rw [← Matrix.mulVec_smul, hc u hu, Matrix.mulVec_zero]

theorem arch_zero' {κ : Type} : arch F (0 : κ → AF F) = 0 := by
  funext i
  show InfiniteAdeleRing.ringEquiv_mixedSpace F (0 : AF F).1 = 0
  exact map_zero _

theorem vecMulVec_zero' {m k : ℕ} (x : Fin m → AE F E) : Matrix.vecMulVec x (0 : Fin k → AE F E) = 0 := by
  ext i j; simp [Matrix.vecMulVec_apply]

end GlobalTheory.ArchSchB
