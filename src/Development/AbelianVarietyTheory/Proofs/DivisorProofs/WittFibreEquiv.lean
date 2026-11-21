import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)
noncomputable section

namespace GlobalTheory.WittFibre

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem cA_inclR' (σ : E →ₐ[F] E) (e : E) : cA σ (inclR (F := F) (AF F) e) = inclR (F := F) (AF F) (σ e) := rfl

theorem mat_mul {σ : E →ₐ[F] E} {d : ℕ} {J : Matrix (Fin d) (Fin d) E} (g h : UA σ J) : mat (g * h) = mat g * mat h := rfl

end GlobalTheory.WittFibre

namespace GlobalTheory.WittFibre

end GlobalTheory.WittFibre

end
