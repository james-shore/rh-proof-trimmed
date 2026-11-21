import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)

namespace GlobalTheory.ThK.TorusCentre

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

theorem det_ne_zero_of_isSkew {B : Base F E} {d₁ : ℕ} {W₁ : Spc F E d₁} {r s : ℕ} (h : W₁.IsSkew σ B r s) :
    W₁.J.det ≠ 0 := by
  obtain ⟨w⟩ : Nonempty (InfinitePlace F) := inferInstance
  obtain ⟨hrs, A, hA⟩ := h.sig w
  set φ := (B.emb w).1
  let e : Fin r ⊕ Fin s ≃ Fin d₁ := finSumFinEquiv.trans (finCongr hrs)
  let A' : Matrix (Fin d₁) (Fin d₁) ℂ := A.submatrix id e.symm
  have h2 : A'ᵀ * (Complex.I • W₁.J.map φ) * A'.map star =
      (Matrix.fromBlocks 1 0 0 (-1) : Matrix (Fin r ⊕ Fin s) (Fin r ⊕ Fin s) ℂ).submatrix e.symm e.symm := by
    rw [← hA]
    ext i j
    simp [A', Matrix.mul_apply, Matrix.submatrix, Matrix.transpose_apply]
  have hD : ((Matrix.fromBlocks 1 0 0 (-1) : Matrix (Fin r ⊕ Fin s) (Fin r ⊕ Fin s) ℂ).submatrix e.symm e.symm).det ≠ 0 := by
    rw [Matrix.det_submatrix_equiv_self, Matrix.det_fromBlocks_zero₂₁]
    simp [Matrix.det_neg]
  rw [← h2, Matrix.det_mul, Matrix.det_mul, Matrix.det_smul] at hD
  intro h0
  apply hD
  have : (W₁.J.map φ).det = φ W₁.J.det := by
    simp [RingHom.map_det]
  rw [this, h0]
  simp

section Transfer

theorem incM_transpose {m n : ℕ} (A : Matrix (Fin m) (Fin n) E) : incM F Aᵀ = (incM F A)ᵀ := rfl

end Transfer

section Group

variable {d : ℕ} {J : Matrix (Fin d) (Fin d) E}

theorem mat_mul (g h : UA σ J) : mat (g * h) = mat g * mat h := rfl

theorem mat_one : mat (1 : UA σ J) = 1 := rfl

end Group

end GlobalTheory.ThK.TorusCentre
