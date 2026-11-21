import Mathlib
import GroundTheory.GlobalFields.TateThesis.HeckeChar
import GroundTheory.GlobalFields.IdeleGroups.IdeleNorms.BaseChange
import GroundTheory.GlobalFields.IdeleGroups.GaloisOnAdeles.Places
import GroundTheory.HeightsAndTheta.Theta.EisensteinZeta.UnitLevels.KrFieldExample

noncomputable section

namespace GroundTheory.Heights₂.Theta

open NumberField NumberField.InfinitePlace IsDedekindDomain ComplexConjugate
open GroundTheory.Global GroundTheory.Global.AdeleBaseChange
open scoped NumberField.AdeleRing nonZeroDivisors

section Objects

variable (F E : Type*) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

variable {F E}

open Classical in

def extAt (τ : E →+* ℂ) : (InfinitePlace.mk τ).Completion →+* ℂ :=
  if (InfinitePlace.mk τ).embedding = τ then Completion.extensionEmbedding (InfinitePlace.mk τ)
  else (starRingEnd ℂ).comp (Completion.extensionEmbedding (InfinitePlace.mk τ))

def HasAngularType (χ : HeckeCharacter E) (τ : E →+* ℂ) (k : ℤ) : Prop :=
  ∀ z : ((InfinitePlace.mk τ).Completion)ˣ,
    ((χ.infiniteComponent (InfinitePlace.mk τ) z : Circle) : ℂ) =
      (extAt τ (z : (InfinitePlace.mk τ).Completion) /
        (‖extAt τ (z : (InfinitePlace.mk τ).Completion)‖ : ℂ)) ^ k

end Objects

end GroundTheory.Heights₂.Theta
