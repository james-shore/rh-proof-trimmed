import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilRepresentationPreservesSchwartz

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)

noncomputable section
namespace GlobalTheory.MixW.UnipHeis

theorem schr_schr {R : Type} [CommRing R] [Invertible (2 : R)] (ψ : AddChar R ℂ) {κ : Type} [Fintype κ]
    (a b : (κ → R) × (κ → R)) (h : a.1 ⬝ᵥ b.2 = b.1 ⬝ᵥ a.2) (φ : (κ → R) → ℂ) :
    schr ψ a (schr ψ b φ) = schr ψ (a + b) φ := by
  funext x
  simp only [schr, Prod.fst_add, Prod.snd_add, ← mul_assoc, ← AddChar.map_add_eq_mul]
  rw [show x + a.1 + b.1 = x + (a.1 + b.1) from add_assoc _ _ _]
  congr 2
  have h2 : ⅟(2 : R) * 2 = 1 := invOf_mul_self 2
  simp only [dotProduct_add, add_dotProduct]
  rw [dotProduct_comm b.1 a.2] at h ⊢
  linear_combination (1 - ⅟(2 : R)) * h - (a.2 ⬝ᵥ b.1) * h2

theorem rho_rho {R : Type} [CommRing R] [Invertible (2 : R)] {V : Type} [AddCommGroup V] [Module R V]
    {Bf : V → V → R} {κ : Type} [Fintype κ] (dc : Darboux Bf κ) (ψ : AddChar R ℂ) (w w' : V) (h : Bf w w' = 0)
    (φ : (κ → R) → ℂ) : dc.rho ψ w (dc.rho ψ w' φ) = dc.rho ψ (w + w') φ := by
  simp only [Darboux.rho, map_add]
  refine schr_schr ψ _ _ ?_ φ
  have := dc.form w w'
  rw [h] at this
  exact (sub_eq_zero.mp this.symm)

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

end GlobalTheory.MixW.UnipHeis
