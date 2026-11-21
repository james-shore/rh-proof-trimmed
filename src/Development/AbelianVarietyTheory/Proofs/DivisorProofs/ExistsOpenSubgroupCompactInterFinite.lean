import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFundamentalDomainMulRight
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryCompactPreimage
open NumberField IsDedekindDomain MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.SiegelSet GlobalTheory.UAut GlobalTheory.ThK.SquareIntegrability GlobalTheory.ThetaCplV

open scoped TensorProduct

noncomputable section

namespace GlobalTheory.ThetaCplV

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

variable (F E) in

def infPartE : AE F E →ₐ[F] Ainf F ⊗[F] E := Algebra.TensorProduct.map (fstA F) (AlgHom.id F E)

variable (F E) in

def infInclE : Ainf F ⊗[F] E →ₗ[F] AE F E :=
  TensorProduct.map (LinearMap.inl F (Ainf F) (Af F)) LinearMap.id

theorem infInclE_tmul (r : Ainf F) (b : E) : infInclE F E (r ⊗ₜ[F] b) = (show AF F from (r, 0)) ⊗ₜ[F] b := rfl

theorem infPartE_tmul (a : AF F) (b : E) : infPartE F E (a ⊗ₜ[F] b) = (fstA F a) ⊗ₜ[F] b := rfl

end GlobalTheory.ThetaCplV
