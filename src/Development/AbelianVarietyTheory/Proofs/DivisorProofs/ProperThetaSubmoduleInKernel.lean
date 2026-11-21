import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMaxThOne
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.HoweDualityReal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PureLApply
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RealLinePolynomialEquivariance

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open scoped TensorProduct

noncomputable section

namespace GlobalTheory.ThetaKerMaxInf

section Local

variable {F : Type} [Field F] [NumberField F] {κ : Type} [Fintype κ]

def mkA (a : InfiniteAdeleRing F) (b : FiniteAdeleRing (𝓞 F) F) : AF F := (a, b)

@[simp] theorem mkA_fst (a : InfiniteAdeleRing F) (b : FiniteAdeleRing (𝓞 F) F) : (mkA a b).1 = a := rfl

@[simp] theorem mkA_snd (a : InfiniteAdeleRing F) (b : FiniteAdeleRing (𝓞 F) F) : (mkA a b).2 = b := rfl

end Local

end GlobalTheory.ThetaKerMaxInf
