import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OneMemKAtAlt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueLeviElement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLeviElementTorusPart
import Development.AbelianVarietyTheory.Definitions.Divisors.IsCompactIsOpenUnitsAt

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)

noncomputable section

namespace GlobalTheory.LineStabLevi

end GlobalTheory.LineStabLevi

namespace GlobalTheory.LineStabLevi

end GlobalTheory.LineStabLevi

namespace GlobalTheory.LineStabLevi

end GlobalTheory.LineStabLevi

namespace GlobalTheory.LineStabLevi

open GlobalTheory.PlaneLeviExt

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
variable {d d₁ : ℕ} {hd : d = d₁ + 2} {H : Plane E d d₁}

lemma mat_mul' {σ : E →ₐ[F] E} {J : Matrix (Fin d) (Fin d) E} (g h : UA σ J) : mat (g * h) = mat g * mat h := rfl

end GlobalTheory.LineStabLevi
