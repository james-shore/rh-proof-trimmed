import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.MemKFinOfIsLocallyConstant
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsotropicComplGram
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockMatrixTwoByTwoFinTranspose
import Development.AbelianVarietyTheory.Definitions.Divisors.IsLocallyConstantLinOm
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsStdMulShift

noncomputable section

open scoped Matrix NNReal TensorProduct
open MeasureTheory NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU GlobalTheory.WeilM GlobalTheory.LocIntw
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.SWLit

namespace GlobalTheory.AwayFix

section Idem

variable {F : Type} [Field F] [NumberField F]

open Classical in

def awayFin (S : Finset (HeightOneSpectrum (𝓞 F))) : Af F :=
  ⟨fun v => if v ∈ S then 0 else 1, Filter.Eventually.of_forall fun v => by
    by_cases h : v ∈ S
    · simp only [h, if_true]; exact zero_mem _
    · simp only [h, if_false]; exact one_mem _⟩

def awayIdem (S : Finset (HeightOneSpectrum (𝓞 F))) : AF F := pairA F 0 (awayFin S)

theorem awayIdem_fst (S : Finset (HeightOneSpectrum (𝓞 F))) : (awayIdem S).1 = 0 := rfl

end Idem

end GlobalTheory.AwayFix
