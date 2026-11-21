import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConeIntZero
open MeasureTheory Filter NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ConeSoB
open scoped TensorProduct

noncomputable section

namespace GlobalTheory.VanishLoc

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

def liftT (v : Pl F) : Fv F v ⊗[F] E →ₗ[F] AE F E := (GlobalTheory.LatVac.liftV v).rTensor E

variable {n n₁ d d₁ : ℕ}

end GlobalTheory.VanishLoc
