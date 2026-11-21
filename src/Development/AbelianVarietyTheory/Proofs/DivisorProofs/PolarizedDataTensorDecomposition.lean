import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat

noncomputable section

open NumberField MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.AdelicU GlobalTheory.SiegelSet GlobalTheory.UAut GlobalTheory.ThK.SquareIntegrability

namespace GlobalTheory.ThK.SoPolSplit

end GlobalTheory.ThK.SoPolSplit

namespace GlobalTheory.ThK.SoPolSplit

variable {F : Type} [Field F] [NumberField F]

def finPart {κ : Type} (φ : ∀ v : Pl F, (κ → Fv F v) → ℂ) (x : κ → AF F) : ℂ :=
  ∏ᶠ v, φ v fun i => evFin F v (x i)

def glue {κ : Type} (a : κ → mixedEmbedding.mixedSpace F) (y : κ → AF F) : κ → AF F :=
  fun i => (show Ainf F × Af F from
    ((InfiniteAdeleRing.ringEquiv_mixedSpace F).symm (a i), (y i).2))

theorem finPart_glue {κ : Type} (φ : ∀ v : Pl F, (κ → Fv F v) → ℂ) (a : κ → mixedEmbedding.mixedSpace F)
    (y : κ → AF F) : finPart φ (glue a y) = finPart φ y := rfl

theorem pure_eq {κ : Type} [Fintype κ] (f : SInf F κ) (φ : ∀ v : Pl F, (κ → Fv F v) → ℂ) (x : κ → AF F) :
    pure f φ x = f (fun i => evI F (x i)) * finPart φ x := rfl

end GlobalTheory.ThK.SoPolSplit

namespace GlobalTheory.ThK.SoPolSplit

end GlobalTheory.ThK.SoPolSplit
