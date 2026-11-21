import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilRepresentationPreservesSchwartz
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicStoneVonNeumannLagrangianUniquenessStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SkewAdaptedPairRestrictionThetaStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchrodingerSumCompositionStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LagrangianDirectSumExistsStatement

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)

noncomputable section
namespace GlobalTheory.EvZeroUniqDbl
open scoped Classical

theorem dblLagr : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E) (B : Base F E) (n d : ℕ) (X : Spc F E n) (W : Spc F E d)
    (M : Model σ X W) (χX χW : Chr F E) (om : Rep σ X W) (r s r' s' : ℕ), IsPair B M χX χW om r s r' s' →
    ∀ (d₁ : ℕ) (W₁ : Spc F E d₁) (H' : Plane E d d₁) (i₀ i₁ : ℕ) (M₁ : Model σ X W₁) (om₁ : Rep σ X W₁) (r₁ s₁ : ℕ),
      H'.IsAdapted σ B W W₁ i₀ i₁ → IsPair B M₁ χX χW om₁ r s r₁ s₁ →
      ∀ (dd : Darboux (symp (R := AF F) (cA σ) (-1) (incM F X.J) (dbl (incM F W.J))) (Fin n × Fin d ⊕ Fin n × Fin d))
        (dd₁ : Darboux (symp (R := AF F) (cA σ) (-1) (incM F X.J) (dbl (incM F W₁.J))) (Fin n × Fin d₁ ⊕ Fin n × Fin d₁)),
        IsDblCoord (cA σ) (-1) (incM F X.J) (incM F W.J) M.co dd → IsDblCoord (cA σ) (-1) (incM F X.J) (incM F W₁.J) M₁.co dd₁ →
      ∃ L : Submodule F ((Fin n × Fin d ⊕ Fin n × Fin d → F) × (Fin n × Fin d ⊕ Fin n × Fin d → F)),
        (∀ a ∈ L, ∀ b ∈ L, a.1 ⬝ᵥ b.2 = b.1 ⬝ᵥ a.2) ∧
        Module.finrank F L = Fintype.card (Fin n × Fin d ⊕ Fin n × Fin d) ∧
        ∀ (t : AF F), ∀ w ∈ L, ∃ y y' : Fin n → AE F E, ∃ z : Matrix (Fin n) (Fin d₁ ⊕ Fin d₁) (AE F E),
          (dd₁.e z).1 = 0 ∧ ∀ φ : (Fin n × Fin d ⊕ Fin n × Fin d → AF F) → ℂ,
            schr B.ψ (t • ((fun i => algebraMap F (AF F) (w.1 i)), (fun i => algebraMap F (AF F) (w.2 i)))) φ =
              dd.rho B.ψ (Matrix.fromCols (Matrix.vecMulVec y (incV F H'.x)) 0)
                (dd.rho B.ψ (Matrix.fromCols 0 (Matrix.vecMulVec y' (incV F H'.x)))
                  (dd.rho B.ψ (z * (Matrix.fromBlocks (incM F H'.ι) 0 0 (incM F H'.ι))ᵀ) φ)) := by
  intro F E _ _ _ _ _ σ B n d X W M χX χW om r s r' s' hP d₁ W₁ H' i₀ i₁ M₁ om₁ r₁ s₁ hA hP₁ dd dd₁ hdd hdd₁
  obtain ⟨L₀, hiso₀, hrank₀, hL₀⟩ :=
    GlobalTheory.T.skew_adapted_pair_restriction_theta F E σ B n d X W M χX χW om r s r' s' hP d₁ W₁ H' i₀ i₁ M₁ om₁ r₁ s₁ hA hP₁
  obtain ⟨L, hiso, hrank, hLw⟩ := GlobalTheory.T.lagrangian_direct_sum_exists L₀ hiso₀ hrank₀
  refine ⟨L, hiso, hrank, fun t w hw => ?_⟩
  obtain ⟨a, ha, b, hb, rfl⟩ := hLw w hw
  obtain ⟨ua, hua, za, hza, hea⟩ := hL₀ t a ha
  obtain ⟨ub, hub, zb, hzb, heb⟩ := hL₀ t b hb
  obtain ⟨ya, rfl⟩ := hua
  obtain ⟨yb, rfl⟩ := hub
  have h1 : incM F (1 : Matrix (Fin n) (Fin n) E) = 1 := Matrix.map_one _ (map_zero _) (map_one _)
  refine ⟨ya, yb, Matrix.fromCols za zb, ?_, fun φ => ?_⟩
  · rw [hdd₁]
    funext i
    cases i <;> simp [hza, hzb]
  · have hz : Matrix.fromCols za zb * (Matrix.fromBlocks (incM F H'.ι) 0 0 (incM F H'.ι))ᵀ =
        Matrix.fromCols (incM F (1 : Matrix (Fin n) (Fin n) E) * za * (incM F H'.ι)ᵀ)
          (incM F (1 : Matrix (Fin n) (Fin n) E) * zb * (incM F H'.ι)ᵀ) := by
      rw [h1, Matrix.fromBlocks_transpose, Matrix.fromCols_mul_fromBlocks]
      simp
    have hw : t • ((fun i => algebraMap F (AF F) ((Sum.elim a.1 b.1 : Fin n × Fin d ⊕ Fin n × Fin d → F) i)),
        (fun i => algebraMap F (AF F) ((Sum.elim a.2 (-b.2) : Fin n × Fin d ⊕ Fin n × Fin d → F) i))) =
        (Sum.elim (t • ((fun i => algebraMap F (AF F) (a.1 i)), (fun i => algebraMap F (AF F) (a.2 i)))).1
            (t • ((fun i => algebraMap F (AF F) (b.1 i)), (fun i => algebraMap F (AF F) (b.2 i)))).1,
         Sum.elim (t • ((fun i => algebraMap F (AF F) (a.1 i)), (fun i => algebraMap F (AF F) (a.2 i)))).2
            (-(t • ((fun i => algebraMap F (AF F) (b.1 i)), (fun i => algebraMap F (AF F) (b.2 i)))).2)) := by
      ext i <;> cases i <;> simp
    rw [hw, hz]
    simp only [Darboux.rho]
    rw [hdd, hdd, hdd]
    have e := GlobalTheory.T.schrodinger_sum_composition B.ψ _ _ _ _ _ _ hea heb φ
    simpa using e

theorem proj_zero_mem_adm (F : Type) [Field F] [NumberField F] (κ : Type) [Fintype κ] :
    (LinearMap.proj (R := ℂ) (φ := fun _ : (κ → AF F) => ℂ) 0) ∈ (adeleClass F).adm κ := by
  intro g _
  refine ⟨g 0 • (BoundedContinuousFunction.evalCLM ℂ 0).comp
    (SchwartzMap.toBoundedContinuousFunctionCLM ℂ (κ → mixedEmbedding.mixedSpace F) ℂ), fun f => ?_⟩
  have h1 : (fun i => InfiniteAdeleRing.ringEquiv_mixedSpace F ((0 : κ → AF F) i).1) = 0 := by
    funext i
    exact map_zero _
  have h2 : (fun i => ((0 : κ → AF F) i).2) = 0 := rfl
  show pureA F f g 0 = _
  rw [pureA, h1, h2]
  simp [mul_comm]

end GlobalTheory.EvZeroUniqDbl
