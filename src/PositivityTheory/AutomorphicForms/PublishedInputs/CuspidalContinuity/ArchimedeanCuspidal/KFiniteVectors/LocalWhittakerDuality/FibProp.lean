import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocalWhittakerDuality.DampedFunctionalEquationAtPoint

noncomputable section

open MeasureTheory Matrix GroundTheory.LocalField GroundTheory.Automorphic
open scoped ValuativeRel

namespace Ad3.K.GL2LocalData

section G

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  [MeasurableSpace F] [BorelSpace F]
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] [MeasurableSpace E]

def rWm (χ : AddChar F Circle) (σ : E ≃ₐ[F] E) (μE : Measure E) (lam : ℂ) (g : Matrix (Fin 2) (Fin 2) F) :
    (E → ℂ) → E → ℂ :=
  rW χ σ μE lam (g 0 0) (g 0 1) (g 1 0) (g 1 1)

def FTs (χ : AddChar F Circle) (σ : E ≃ₐ[F] E) (μE : Measure E) (Φ : E → ℂ) (u : E) : ℂ :=
  ∫ z, Φ z * (χ (Algebra.trace F E (σ u * z)) : ℂ) ∂μE

open Classical in

def piG (χ : AddChar F Circle) (σ : E ≃ₐ[F] E) (μE : Measure E) (lam : ℂ) (c : Eˣ →* ℂˣ) (g : GL (Fin 2) F)
    (Φ : E → ℂ) (x : E) : ℂ :=
  if h : ∃ t : Eˣ, Algebra.norm F (t : E) = (g.val).det then
    ((c h.choose : ℂˣ) : ℂ) * (((modulus (g.val).det : ℝ) : ℂ) ^ (1 / 2 : ℂ)) *
      rW χ σ μE lam (g.val 0 0 / (g.val).det) (g.val 0 1) (g.val 1 0 / (g.val).det) (g.val 1 1)
        (fun y => Φ (y * (h.choose : E))) x
  else 0

variable (E) in

def SBE : Set (E → ℂ) := {Φ | IsLocallyConstant Φ ∧ HasCompactSupport Φ}

end G

section WF

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  [MeasurableSpace F] [BorelSpace F]
variable {E : Type} [Field E] [ValuativeRel E] [TopologicalSpace E] [IsNonarchimedeanLocalField E]
  [MeasurableSpace E] [BorelSpace E] [Algebra F E]

variable (E) in

abbrev muE (χ : AddChar F Circle) : Measure E := selfDualMeasure (chE E χ)

end WF

section SP

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  [MeasurableSpace F] [BorelSpace F]

abbrev muS (χ : AddChar F Circle) : Measure (F × F) := (selfDualMeasure χ).prod (selfDualMeasure χ)

abbrev rWS (χ : AddChar F Circle) : Matrix (Fin 2) (Fin 2) F → (F × F → ℂ) → F × F → ℂ := rWm χ swapE (muS χ) 1

def piS (χ : AddChar F Circle) (c₁ : Fˣ →* ℂˣ) (h : GL (Fin 2) F) (Φ : F × F → ℂ) (x : F × F) : ℂ :=
  ((c₁ (GeneralLinearGroup.det h) : ℂˣ) : ℂ) * mp (GeneralLinearGroup.det h) (1 / 2) *
    rW χ swapE (muS χ) 1 (h.val 0 0 / (h.val).det) (h.val 0 1) (h.val 1 0 / (h.val).det) (h.val 1 1)
      (fun y => Φ (y * ((h.val).det, 1))) x

end SP

end Ad3.K.GL2LocalData
