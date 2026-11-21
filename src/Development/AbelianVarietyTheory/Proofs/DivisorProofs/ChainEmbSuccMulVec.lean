import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChainEmbZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsLevi
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConstantTermUnipotentIntegral

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ThK.DescB GlobalTheory.ThK.FlagCT
open GlobalTheory.LeviUnitary

noncomputable section

namespace GlobalTheory.ThK.FlagSemi

open Matrix

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

theorem mat_mul {n : ℕ} {J : Matrix (Fin n) (Fin n) E} (g h : UA σ J) : mat (g * h) = mat g * mat h := rfl

theorem mat_one {n : ℕ} {J : Matrix (Fin n) (Fin n) E} : mat (1 : UA σ J) = 1 := rfl

theorem mat_inv_mul {n : ℕ} {J : Matrix (Fin n) (Fin n) E} (g : UA σ J) : mat g⁻¹ * mat g = 1 := by
  rw [← mat_mul, inv_mul_cancel, mat_one]

theorem mat_mul_inv {n : ℕ} {J : Matrix (Fin n) (Fin n) E} (g : UA σ J) : mat g * mat g⁻¹ = 1 := by
  rw [← mat_mul, mul_inv_cancel, mat_one]

theorem mat_ext {n : ℕ} {J : Matrix (Fin n) (Fin n) E} {g h : UA σ J} (e : mat g = mat h) : g = h :=
  Subtype.ext (Units.ext e)

theorem ext_mulVec_single {R : Type} [CommRing R] {k n : ℕ} {A B : Matrix (Fin k) (Fin n) R}
    (h : ∀ j, A *ᵥ Pi.single j 1 = B *ᵥ Pi.single j 1) : A = B := by
  ext i j
  have := congrFun (h j) i
  rwa [mulVec_single_one, mulVec_single_one] at this

theorem incM_one {n : ℕ} : incM F (1 : Matrix (Fin n) (Fin n) E) = 1 := Matrix.map_one _ (map_zero _) (map_one _)

theorem incV_zero {n : ℕ} : incV F (0 : Fin n → E) = 0 := by funext i; exact map_zero _

variable (σ) in

def IsProj {n m : ℕ} (J : Matrix (Fin n) (Fin n) E) (J₁ : Matrix (Fin m) (Fin m) E) (ι : Matrix (Fin n) (Fin m) E)
    (π : Matrix (Fin m) (Fin n) E) : Prop :=
  π * ι = 1 ∧ J * ι.map σ = πᵀ * J₁ ∧ ιᵀ * J = J₁ * π.map σ

section Proj

variable {n m k : ℕ} {J : Matrix (Fin n) (Fin n) E} {J₁ : Matrix (Fin m) (Fin m) E} {J₂ : Matrix (Fin k) (Fin k) E}
  {ι : Matrix (Fin n) (Fin m) E} {π : Matrix (Fin m) (Fin n) E} {ι' : Matrix (Fin m) (Fin k) E} {π' : Matrix (Fin k) (Fin m) E}

theorem IsProj.mul (h : IsProj σ J J₁ ι π) (h' : IsProj σ J₁ J₂ ι' π') : IsProj σ J J₂ (ι * ι') (π' * π) := by
  have mul : ∀ {k l p : ℕ} (A : Matrix (Fin k) (Fin l) E) (A' : Matrix (Fin l) (Fin p) E),
      (A * A').map σ = A.map σ * A'.map σ := fun A A' => Matrix.map_mul (f := σ.toRingHom)
  refine ⟨?_, ?_, ?_⟩
  · rw [Matrix.mul_assoc, ← Matrix.mul_assoc π, h.1, Matrix.one_mul, h'.1]
  · rw [mul, ← Matrix.mul_assoc, h.2.1, Matrix.mul_assoc, h'.2.1, transpose_mul, Matrix.mul_assoc]
  · rw [mul, transpose_mul, Matrix.mul_assoc, h.2.2, ← Matrix.mul_assoc, h'.2.2, Matrix.mul_assoc]

theorem IsProj.q1 (h : IsProj σ J J₁ ι π) : incM F π * incM F ι = 1 := by rw [← incM_mul, h.1, incM_one]

theorem IsProj.q2 (h : IsProj σ J J₁ ι π) : incM F J * (incM F ι).map (cA σ).toRingHom = (incM F π)ᵀ * incM F J₁ := by
  rw [incM_conj, ← incM_mul, h.2.1, incM_mul]; rfl

theorem IsProj.q3 (h : IsProj σ J J₁ ι π) : (incM F ι)ᵀ * incM F J = incM F J₁ * (incM F π).map (cA σ).toRingHom := by
  rw [incM_conj, ← incM_mul, ← h.2.2, incM_mul]; rfl

def IsProj.levi (h : IsProj σ J J₁ ι π) : UA σ J₁ →* UA σ J where
  toFun g := ⟨⟨1 + incM F ι * (mat g - 1) * incM F π, 1 + incM F ι * (mat g⁻¹ - 1) * incM F π,
    by rw [ext_mul h.q1, mat_mul_inv]; simp, by rw [ext_mul h.q1, mat_inv_mul]; simp⟩,
    ext_unitary (cA σ).toRingHom h.q1 h.q2 h.q3 g.2⟩
  map_one' := mat_ext (show 1 + incM F ι * (1 - 1) * incM F π = 1 by simp)
  map_mul' g g' := mat_ext (ext_mul h.q1 (mat g) (mat g')).symm

theorem IsProj.mat_levi (h : IsProj σ J J₁ ι π) (g : UA σ J₁) :
    mat (h.levi g) = 1 + incM F ι * (mat g - 1) * incM F π := rfl

end Proj

variable (σ) in

def IsFrame {n m : ℕ} (J : Matrix (Fin n) (Fin n) E) (J₁ : Matrix (Fin m) (Fin m) E) (H : Plane E n m)
    (π : Matrix (Fin m) (Fin n) E) : Prop :=
  IsProj σ J J₁ H.ι π ∧ π *ᵥ H.x = 0 ∧ π *ᵥ H.y = 0 ∧
    H.ι * π + vecMulVec H.x (J *ᵥ fun i => σ (H.y i)) - vecMulVec H.y (J *ᵥ fun i => σ (H.x i)) = 1

section Frame

variable {n m : ℕ} {J : Matrix (Fin n) (Fin n) E} {J₁ : Matrix (Fin m) (Fin m) E} {H : Plane E n m}
  {π : Matrix (Fin m) (Fin n) E}

theorem IsFrame.πx (h : IsFrame σ J J₁ H π) : incM F π *ᵥ incV F H.x = 0 := by rw [incM_mulVec, h.2.1, incV_zero]

theorem IsFrame.decomp (h : IsFrame σ J J₁ H π) (v : Fin n → AE F E) :
    v = incM F H.ι *ᵥ (incM F π *ᵥ v) + (incV F (J *ᵥ fun i => σ (H.y i)) ⬝ᵥ v) • incV F H.x -
      (incV F (J *ᵥ fun i => σ (H.x i)) ⬝ᵥ v) • incV F H.y := by
  have e := congrArg (incM F) h.2.2.2
  have hv : ∀ a b : Fin n → E, incM F (vecMulVec a b) = vecMulVec (incV F a) (incV F b) := fun a b => by
    ext i j; simp [incM, incV, vecMulVec_apply]
  rw [incM_one, incM, Matrix.map_sub _ (map_sub _), Matrix.map_add _ (map_add _), ← incM, ← incM, ← incM, hv, hv,
    incM_mul] at e
  conv_lhs => rw [← one_mulVec v, ← e]
  rw [sub_mulVec, add_mulVec, vecMulVec_mulVec, vecMulVec_mulVec, ← mulVec_mulVec]
  ext i
  simp only [Pi.add_apply, Pi.sub_apply, Pi.smul_apply, MulOpposite.smul_eq_mul_unop, MulOpposite.unop_op, smul_eq_mul]
  ring

theorem IsFrame.ext (h : IsFrame σ J J₁ H π) {k : ℕ} {A A' : Matrix (Fin k) (Fin n) (AE F E)}
    (hx : A *ᵥ incV F H.x = A' *ᵥ incV F H.x) (hy : A *ᵥ incV F H.y = A' *ᵥ incV F H.y)
    (hι : A * incM F H.ι = A' * incM F H.ι) : A = A' := by
  refine ext_mulVec_single fun j => ?_
  rw [h.decomp (Pi.single j 1)]
  simp only [mulVec_sub, mulVec_add, mulVec_smul, hx, hy]
  rw [mulVec_mulVec _ A, hι, ← mulVec_mulVec]

theorem IsFrame.act (h : IsFrame σ J J₁ H π) (g : UA σ J) (hg : mat g *ᵥ incV F H.x = incV F H.x) :
    ∃ a : Fin m → AE F E, incM F H.ι * (incM F π * mat g * incM F H.ι) =
      mat g * incM F H.ι - replicateCol Unit (incV F H.x) * replicateRow Unit a := by
  set c := (cA σ : AE F E →ₐ[AF F] AE F E).toRingHom with hc
  have hu : (mat g)ᵀ * incM F J * (mat g).map c = incM F J := g.2
  have hx : incV F (fun i => σ (H.x i)) = fun i => c (incV F H.x i) := by
    funext i; exact (GlobalTheory.LeviTorus.cA_incl σ (H.x i)).symm
  have hmv : ∀ {k : ℕ} (A : Matrix (Fin k) (Fin n) (AE F E)) (v : Fin n → AE F E),
      A.map c *ᵥ (fun i => c (v i)) = fun i => c ((A *ᵥ v) i) := fun A v => by
    funext i; simp [mulVec, dotProduct, map_sum, map_mul]
  have h0 : ∀ z, incV F (J *ᵥ fun i => σ (H.x i)) ⬝ᵥ (mat g *ᵥ (incM F H.ι *ᵥ z)) = 0 := by
    intro z
    have e1 : (fun i => c (incV F H.x i)) = (mat g).map c *ᵥ fun i => c (incV F H.x i) := by rw [hmv, hg]
    rw [← incM_mulVec, hx, e1, dotProduct_comm, mulVec_mulVec, mulVec_mulVec, ← vecMul_transpose, ← dotProduct_mulVec,
      mulVec_mulVec, transpose_mul, Matrix.mul_assoc, ← Matrix.mul_assoc (mat g)ᵀ, hu, h.1.q3, ← mulVec_mulVec, hmv, h.πx]
    simp [mulVec, dotProduct]
  refine ⟨fun j => incV F (J *ᵥ fun i => σ (H.y i)) ⬝ᵥ (mat g *ᵥ (incM F H.ι *ᵥ Pi.single j 1)), ?_⟩
  refine ext_mulVec_single fun j => ?_
  have e := h.decomp (mat g *ᵥ (incM F H.ι *ᵥ Pi.single j 1))
  rw [h0, zero_smul, sub_zero] at e
  rw [sub_mulVec, eq_sub_iff_add_eq]
  simp only [← mulVec_mulVec]
  refine Eq.trans ?_ e.symm
  congr 1
  ext i
  simp [mulVec, dotProduct, Pi.single_apply, mul_comm]

end Frame

end GlobalTheory.ThK.FlagSemi

end

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ThK.DescB GlobalTheory.ThK.FlagCT
open GlobalTheory.LeviUnitary

namespace GlobalTheory.ThK.FlagSemi

end GlobalTheory.ThK.FlagSemi

