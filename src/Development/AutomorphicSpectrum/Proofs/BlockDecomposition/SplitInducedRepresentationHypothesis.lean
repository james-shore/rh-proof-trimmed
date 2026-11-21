import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocalWhittakerDuality.FibProp
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SplitRepresentationHypothesis

open MeasureTheory Matrix GroundTheory.LocalField GroundTheory.Automorphic Ad3 Ad3.K.GL2LocalData
open scoped ValuativeRel

noncomputable section

namespace GlobalTheory.CompanionTheory.SplitPi

open GlobalTheory.CompanionTheory.SplitRep

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  [MeasurableSpace F] [BorelSpace F]

def one1 (h : GL (Fin 2) F) : Matrix (Fin 2) (Fin 2) F :=
  !![h.val 0 0 / (h.val).det, h.val 0 1; h.val 1 0 / (h.val).det, h.val 1 1]

def cst (c₁ : Fˣ →* ℂˣ) (h : GL (Fin 2) F) : ℂ :=
  ((c₁ (GeneralLinearGroup.det h) : ℂˣ) : ℂ) * mp (GeneralLinearGroup.det h) (1 / 2)

theorem piS_eq (χ : AddChar F Circle) (c₁ : Fˣ →* ℂˣ) (h : GL (Fin 2) F) (Φ : F × F → ℂ) :
    piS χ c₁ h Φ = fun x => cst c₁ h * rWS χ (one1 h) (fun y => Φ (y * ((h.val).det, 1))) x :=
  rfl

end GlobalTheory.CompanionTheory.SplitPi
