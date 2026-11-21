import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DifferentCoprimeAtGoodPlaces

open NumberField IsDedekindDomain GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU
open scoped nonZeroDivisors Matrix TensorProduct
open Formalism.L2.Host (aboveF)

noncomputable section

namespace GlobalTheory.PlaneSkewIdeal

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E} {n : ℕ}

omit [NumberField F] [NumberField E] in

def formL (σ : E →ₐ[F] E) (J : Matrix (Fin n) (Fin n) E) (y : Fin n → E) : (Fin n → E) →ₗ[E] E where
  toFun x := form σ J x y
  map_add' a b := add_dotProduct _ _ _
  map_smul' c a := smul_dotProduct _ _ _

omit [NumberField F] [NumberField E] in
theorem formL_apply (J : Matrix (Fin n) (Fin n) E) (y x : Fin n → E) : formL σ J y x = form σ J x y := rfl

variable {v : HeightOneSpectrum (𝓞 F)}

end GlobalTheory.PlaneSkewIdeal
