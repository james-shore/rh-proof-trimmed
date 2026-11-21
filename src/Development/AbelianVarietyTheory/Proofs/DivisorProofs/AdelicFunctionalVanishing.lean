import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EigenIntertwinerGoodModels
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilRepresentationPreservesSchwartz
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaTransformRationalTranslateQuasiInvariant
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharacterInvariantAdelicFormEqMulEvalZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslationInvariantFunctionalRestrict
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRealisedOnAdelicSchwartzLeviInverseTranspose
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCompactOpenSeparating
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraceFormMapSurjective

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)

noncomputable section

open scoped Classical

namespace GlobalTheory.CharKerSub

def projS {R : Type} [Zero R] {κ : Type} (s : Set κ) (z : κ → R) : κ → R := fun i => if i ∈ s then z i else 0

def projH {R : Type} [AddCommGroup R] {κ : Type} (s : Set κ) : (κ → R) →+ (κ → R) where
  toFun := projS s
  map_zero' := funext fun i => by simp [projS]
  map_add' a b := funext fun i => by simp only [projS, Pi.add_apply]; split_ifs <;> simp

theorem projH_apply {R : Type} [AddCommGroup R] {κ : Type} (s : Set κ) (z : κ → R) : projH s z = projS s z := rfl

end GlobalTheory.CharKerSub
