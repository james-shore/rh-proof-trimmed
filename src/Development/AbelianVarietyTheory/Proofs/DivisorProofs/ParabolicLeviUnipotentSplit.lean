import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DiffsZeroOfLev
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLeviTorusElementCm
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameDualGram
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsLevi

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ThK.DescB
open GlobalTheory.Doubling (absE)

noncomputable section

namespace GlobalTheory.StabLineLevi

open Matrix

section Adelic

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

theorem mat_mul' {n : ℕ} {J : Matrix (Fin n) (Fin n) E} (a b : UA σ J) : mat (a * b) = mat a * mat b := rfl

theorem incM_transpose {m n : ℕ} (M : Matrix (Fin m) (Fin n) E) : (incM F M)ᵀ = incM F Mᵀ := rfl

end Adelic

end GlobalTheory.StabLineLevi
