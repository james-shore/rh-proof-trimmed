import Mathlib
import GroundTheory.GlobalFields.TateThesis.HeckeChar
import GroundTheory.HeightsAndTheta.Theta.EisensteinZeta.UnitLevels.KrCharsStatements

noncomputable section

namespace GroundTheory.Heights₂.Theta

open NumberField NumberField.InfinitePlace IsDedekindDomain IsDedekindDomain.HeightOneSpectrum
  ComplexConjugate WithZero
open GroundTheory.Global
open scoped nonZeroDivisors

section Objects

variable (E : Type*) [Field E] [NumberField E]

def IsOneModTimes (𝔪 : Ideal (𝓞 E)) (α : E) : Prop :=
  ∀ v : HeightOneSpectrum (𝓞 E), v.asIdeal ∣ 𝔪 →
    v.valuation E (α - 1) ≤ exp (-(multiplicity v.asIdeal 𝔪 : ℤ))

variable (LL : Type*) [Field LL] (ι : LL →+* ℂ)

structure AlgHeckeCharacter where

  modulus : Ideal (𝓞 E)
  modulus_ne_bot : modulus ≠ ⊥

  toHom : idealsPrimeTo modulus →* LLˣ

  infType : (E →+* ℂ) → ℤ

  map_principal : ∀ (α : Eˣ) (I : idealsPrimeTo modulus),
    ((I : (FractionalIdeal (𝓞 E)⁰ E)ˣ) : FractionalIdeal (𝓞 E)⁰ E) =
      FractionalIdeal.spanSingleton (𝓞 E)⁰ (α : E) →
    IsOneModTimes E modulus (α : E) →
    ι (toHom I : LL) = ∏ σ : E →+* ℂ, σ (α : E) ^ (-infType σ)

namespace AlgHeckeCharacter

variable {E LL ι} (ch : AlgHeckeCharacter E LL ι)

def IsAttached (w : ℤ) (χ : HeckeCharacter E) : Prop :=
  (∀ (x : IdeleGroup E) (hx : x ∈ IdeleGroup.primeToLevel ch.modulus),
    ((χ.toIdele x : Circle) : ℂ) =
      ι (ch.toHom ⟨IdeleGroup.toFractionalIdeal x,
          IdeleGroup.toFractionalIdeal_mem_idealsPrimeTo hx⟩ : LL) *
        (((FractionalIdeal.absNorm ((IdeleGroup.toFractionalIdeal x :
          (FractionalIdeal (𝓞 E)⁰ E)ˣ) : FractionalIdeal (𝓞 E)⁰ E) : ℚ) : ℝ) ^
            (-(w : ℝ) / 2) : ℝ)) ∧
  ∀ σ : E →+* ℂ, HasAngularType χ σ (ch.infType σ - ch.infType (ComplexEmbedding.conjugate σ))

end AlgHeckeCharacter

end Objects

section NormCharacter

variable (E : Type*) [Field E] [NumberField E] [IsTotallyComplex E]
variable (LL : Type*) [Field LL] [CharZero LL] (ι : LL →+* ℂ)

def absNormUnits : (FractionalIdeal (𝓞 E)⁰ E)ˣ →* ℚˣ :=
  Units.map (FractionalIdeal.absNorm : FractionalIdeal (𝓞 E)⁰ E →*₀ ℚ).toMonoidHom

omit [IsTotallyComplex E] in
theorem absNormUnits_apply (I : (FractionalIdeal (𝓞 E)⁰ E)ˣ) :
    ((absNormUnits E I : ℚˣ) : ℚ) = FractionalIdeal.absNorm (I : FractionalIdeal (𝓞 E)⁰ E) :=
  rfl

variable {E LL ι}

end NormCharacter

end GroundTheory.Heights₂.Theta
