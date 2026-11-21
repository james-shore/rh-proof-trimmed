import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CombineApply
open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open scoped Matrix TensorProduct

namespace GlobalTheory.ThKUTr

noncomputable def intRestr {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E]
    [Algebra F E] (σ : E →ₐ[F] E) : 𝓞 E →ₐ[𝓞 F] 𝓞 E :=
  { RingOfIntegers.mapRingHom (σ : E →+* E) with
    commutes' := fun r => by
      apply Subtype.ext
      exact σ.commutes (r : F) }

theorem intRestr_coe {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E]
    [Algebra F E] (σ : E →ₐ[F] E) (x : 𝓞 E) :
    algebraMap (𝓞 E) E (intRestr σ x) = σ (algebraMap (𝓞 E) E x) := rfl

end GlobalTheory.ThKUTr
