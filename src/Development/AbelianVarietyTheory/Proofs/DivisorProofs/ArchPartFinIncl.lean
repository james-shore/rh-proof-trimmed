import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CombineApply

noncomputable section

namespace GlobalTheory.ArchFinSplit

open NumberField IsDedekindDomain GlobalTheory.AdelicU GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open scoped TensorProduct

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

variable (F E) in

def finIncl : E ⊗[F] FiniteAdeleRing (𝓞 F) F →ₗ[F] AE F E :=
  (LinearMap.rTensor E (LinearMap.inr F (InfiniteAdeleRing F) (FiniteAdeleRing (𝓞 F) F))).comp
    (TensorProduct.comm F E (FiniteAdeleRing (𝓞 F) F)).toLinearMap

theorem finIncl_tmul (x : E) (a : FiniteAdeleRing (𝓞 F) F) :
    finIncl F E (x ⊗ₜ[F] a) = ((0, a) : AdeleRing (𝓞 F) F) ⊗ₜ[F] x := rfl

end GlobalTheory.ArchFinSplit
