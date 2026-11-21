import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.IsCompactIsOpenUnitsAt
import Development.AbelianVarietyTheory.Definitions.Foundations.ExistsFinsetOfEventually
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.LintegralFintypeProdEqProd
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IdemSmulUnitary
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DOpMemDStep
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MulRealAdEqZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ActsDIffDOp
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockVacuaSpanFiniteDimensionalDualPairStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteDimensionalArchimedeanSchwartzFockOperatorStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HeisenbergEquivariantIsometry
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConeIntZero
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEigenIntertwinerModels
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchHeisenbergDerivativesExistStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EigenIntertwinerGoodModelsStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFinPartNeZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzHadamardLemma
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzDenseHasCompactSupport
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzContinuousAtOfPointwiseOfBounded
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFourierSuperposition
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFamilyPairingIntegralCommute
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchHeisenbergDerivativesExist
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsArchimedeanAdeleCMPrescribedEmbeddingValue
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RealScalarArchimedeanAdeleSmulMatrixRealPlace
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LinHasTemperateGrowth
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SkewHermitianCartanInvolutionSystemsConjugateArc

open scoped TensorProduct NNReal Matrix ENNReal
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ThK.ConeEuler
open GlobalTheory.ThK.EvAt0.PolD GlobalTheory.ArchUniq GlobalTheory.ArchUniq.Coord
open GlobalTheory.Doubling (absE absEv unitFin ideleAt)
open Classical

noncomputable section

namespace GlobalTheory.ShiftEvPol

section Core

variable {M₀ M₁ ι ι₁ : Type} [AddCommGroup M₀] [Module ℂ M₀] [AddCommGroup M₁] [Module ℂ M₁]

def wordsIn (D : ι → M₀ →ₗ[ℂ] M₀) (S : Set ι) (P : Submodule ℂ M₀) (m : ℕ) : Submodule ℂ M₀ :=
  Nat.rec (motive := fun _ => Submodule ℂ M₀) P
    (fun _ Q => Q ⊔ Submodule.span ℂ {h | ∃ c ∈ S, ∃ x ∈ Q, h = D c x}) m

theorem wordsIn_succ (D : ι → M₀ →ₗ[ℂ] M₀) (S : Set ι) (P : Submodule ℂ M₀) (m : ℕ) :
    wordsIn D S P (m + 1) = wordsIn D S P m ⊔ Submodule.span ℂ {h | ∃ c ∈ S, ∃ x ∈ wordsIn D S P m, h = D c x} := rfl

end Core

variable {F : Type} [Field F] [NumberField F]

end GlobalTheory.ShiftEvPol

