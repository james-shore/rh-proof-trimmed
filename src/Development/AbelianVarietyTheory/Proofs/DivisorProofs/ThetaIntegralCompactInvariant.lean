import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicUnitaryLocallyCompactHausdorff
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.AdelicUnitaryGroupStabilisersUnimodular

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK

noncomputable section

namespace GlobalTheory.ThetaKInv

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem cA_eq_sigR (σ : E →ₐ[F] E) (x : AE F E) : cA σ x = sigR (AF F) σ x := by
  induction x using TensorProduct.induction_on with
  | zero => simp
  | tmul a b => rfl
  | add x y hx hy => rw [map_add, map_add, hx, hy]

theorem UG_eq_HR (σ : E →ₐ[F] E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E) :
    UG (cA σ) (incM F J) = HR (AF F) σ Jᵀ := by
  ext g
  have hc : (g : Matrix (Fin n) (Fin n) (AE F E)).map (cA σ) = (g : Matrix (Fin n) (Fin n) (AE F E)).map (sigR (AF F) σ) := by
    ext i j; exact cA_eq_sigR σ _
  have hJ : JR (AF F) Jᵀ = (incM F J)ᵀ := rfl
  change (g : Matrix (Fin n) (Fin n) (AE F E))ᵀ * incM F J * (g : Matrix (Fin n) (Fin n) (AE F E)).map (cA σ) = incM F J ↔
    Formalism.UG.cT (sigR (AF F) σ) (g : Matrix (Fin n) (Fin n) (AE F E)) * JR (AF F) Jᵀ * (g : Matrix (Fin n) (Fin n) (AE F E)) = JR (AF F) Jᵀ
  rw [hc, hJ, Formalism.UG.cT]
  constructor
  · intro h
    have := congrArg Matrix.transpose h
    simpa [Matrix.transpose_mul, Matrix.mul_assoc] using this
  · intro h
    have := congrArg Matrix.transpose h
    simpa [Matrix.transpose_mul, Matrix.mul_assoc] using this

end GlobalTheory.ThetaKInv

namespace GlobalTheory.ThetaKInv

end GlobalTheory.ThetaKInv

namespace GlobalTheory.ThetaKInv

end GlobalTheory.ThetaKInv

namespace GlobalTheory.ThetaKInv

end GlobalTheory.ThetaKInv
