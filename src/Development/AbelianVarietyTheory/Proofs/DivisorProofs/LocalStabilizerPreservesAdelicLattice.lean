import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OneMemKAtAlt
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IwasawaIsotropicStabilizerInertPlace
open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.IndLine

noncomputable section

namespace GlobalTheory.LatHatStab

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

def finToAd : Af F →ₗ[F] AF F := LinearMap.inr F (Ainf F) (Af F)

def putAt (v : Pl F) : Fv F v ⊗[F] E →ₗ[F] AF F ⊗[F] E :=
  TensorProduct.map (finToAd.comp (singleFin v)) LinearMap.id

theorem putAt_tmul (v : Pl F) (b : Fv F v) (y : E) :
    putAt (E := E) v (b ⊗ₜ[F] y) = finToAd (singleFin v b) ⊗ₜ[F] y := rfl

end GlobalTheory.LatHatStab

namespace GlobalTheory.LatHatStab
end GlobalTheory.LatHatStab

namespace GlobalTheory.LatHatStab
variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem evFin_finToAd (u : Pl F) (c : Af F) : evFin F u (finToAd c) = Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.evalV F u c := rfl

end GlobalTheory.LatHatStab

namespace GlobalTheory.LatHatStab
end GlobalTheory.LatHatStab

end
