import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubledUnitaryCharacterTrivialOfSiegelStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DetNeZeroOfIsSkew
import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PairRestrictToSubspaceLeft
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousExtensionDoubledUnitaryStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PairRestrictToSubspaceRight

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)

noncomputable section

namespace GlobalTheory.DblCompare

theorem extL : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E) (B : Base F E),
    B.IsGood σ → ∀ (d d₁ : ℕ) (W : Spc F E d) (W₁ : Spc F E d₁) (H' : Plane E d d₁) (i₀ i₁ r' s' r₁ s₁ : ℕ),
    W.IsSkew σ B r' s' → W₁.IsSkew σ B r₁ s₁ → H'.IsAdapted σ B W W₁ i₀ i₁ →
    ∃ ext : UG (cA σ) (dbl (incM F W₁.J)) → UG (cA σ) (dbl (incM F W.J)), Continuous ext ∧
      ∀ (g₁ : UG (cA σ) (dbl (incM F W₁.J))) (g : UG (cA σ) (dbl (incM F W.J))),
        ((g.1.1 : Matrix (Fin d ⊕ Fin d) (Fin d ⊕ Fin d) (AE F E)) * Matrix.fromBlocks (incM F H'.ι) 0 0 (incM F H'.ι) =
          Matrix.fromBlocks (incM F H'.ι) 0 0 (incM F H'.ι) * (g₁.1.1 : Matrix (Fin d₁ ⊕ Fin d₁) (Fin d₁ ⊕ Fin d₁) (AE F E)) ∧
        (g.1.1 : Matrix (Fin d ⊕ Fin d) (Fin d ⊕ Fin d) (AE F E)) *ᵥ Sum.elim (incV F H'.x) (0 : Fin d → AE F E) = Sum.elim (incV F H'.x) (0 : Fin d → AE F E) ∧
        (g.1.1 : Matrix (Fin d ⊕ Fin d) (Fin d ⊕ Fin d) (AE F E)) *ᵥ Sum.elim (0 : Fin d → AE F E) (incV F H'.x) = Sum.elim (0 : Fin d → AE F E) (incV F H'.x) ∧
        (g.1.1 : Matrix (Fin d ⊕ Fin d) (Fin d ⊕ Fin d) (AE F E)) *ᵥ Sum.elim (incV F H'.y) (0 : Fin d → AE F E) = Sum.elim (incV F H'.y) (0 : Fin d → AE F E) ∧
        (g.1.1 : Matrix (Fin d ⊕ Fin d) (Fin d ⊕ Fin d) (AE F E)) *ᵥ Sum.elim (0 : Fin d → AE F E) (incV F H'.y) = Sum.elim (0 : Fin d → AE F E) (incV F H'.y)) ↔ g = ext g₁ := GlobalTheory.T.continuous_extension_doubled_unitary

open scoped Classical in

theorem proj_mem_adm (F : Type) [Field F] [NumberField F] (κ : Type) [Fintype κ] (x : κ → AF F) :
    (LinearMap.proj (R := ℂ) (φ := fun _ : (κ → AF F) => ℂ) x) ∈ (adeleClass F).adm κ := by
  intro g _
  refine ⟨g (fun i => (x i).2) • (BoundedContinuousFunction.evalCLM ℂ
    (fun i => InfiniteAdeleRing.ringEquiv_mixedSpace F (x i).1)).comp
    (SchwartzMap.toBoundedContinuousFunctionCLM ℂ (κ → mixedEmbedding.mixedSpace F) ℂ), fun f => ?_⟩
  show pureA F f g x = _
  simp [pureA, mul_comm]

theorem vecMulVec_mul_transpose {m k : Type} [Fintype k] {R : Type} [CommRing R] (y : m → R) (w : k → R)
    (G : Matrix k k R) : Matrix.vecMulVec y w * Gᵀ = Matrix.vecMulVec y (G *ᵥ w) := by
  ext i j
  simp only [Matrix.mul_apply, Matrix.vecMulVec_apply, Matrix.transpose_apply, Matrix.mulVec, dotProduct,
    Finset.mul_sum]
  exact Finset.sum_congr rfl fun _ _ => by ring

theorem fromCols_vecMulVec_zero {m k : Type} {R : Type} [CommRing R] (y : m → R) (w : k → R) :
    Matrix.fromCols (Matrix.vecMulVec y w) (0 : Matrix m k R) = Matrix.vecMulVec y (Sum.elim w 0) := by
  ext i (j | j) <;> simp [Matrix.vecMulVec_apply]

theorem fromCols_zero_vecMulVec {m k : Type} {R : Type} [CommRing R] (y : m → R) (w : k → R) :
    Matrix.fromCols (0 : Matrix m k R) (Matrix.vecMulVec y w) = Matrix.vecMulVec y (Sum.elim 0 w) := by
  ext i (j | j) <;> simp [Matrix.vecMulVec_apply]

end GlobalTheory.DblCompare
