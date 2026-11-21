import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OneMemFinPt

noncomputable section

namespace GlobalTheory.KInfGroup

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}
  {d : ℕ} {W : Spc F E d}

theorem mat_mul' (g h : UA σ W.J) : mat (g * h) = mat g * mat h := rfl

variable (F) in

def eInf : AF F := (1, 0)

theorem eInf_fin : (eInf F).2 = 0 := rfl

end GlobalTheory.KInfGroup

namespace GlobalTheory

end GlobalTheory
