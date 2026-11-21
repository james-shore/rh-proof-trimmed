import Mathlib
import Development.AbelianVarietyTheory.Definitions.Foundations.MatrixMeasurableSpace
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsSubquotientDetRepParInd
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsGenericIffIsGenericFor
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian

noncomputable section

open GlobalTheory.SmGL

namespace GlobalTheory.DetEqv.BlockForm

variable {k : Type} [Field k] [TopologicalSpace k]

def pullSB {A B : Type} [TopologicalSpace A] [TopologicalSpace B] (e : A ≃ₜ B) :
    GlobalTheory.SplitWeil.SB B →ₗ[ℂ] GlobalTheory.SplitWeil.SB A where
  toFun F := ⟨(F : B → ℂ) ∘ e, F.2.1.comp_continuous e.continuous, F.2.2.comp_homeomorph e⟩
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

theorem pullSB_apply {A B : Type} [TopologicalSpace A] [TopologicalSpace B] (e : A ≃ₜ B)
    (F : GlobalTheory.SplitWeil.SB B) (a : A) : (pullSB e F : A → ℂ) a = (F : B → ℂ) (e a) := rfl

end GlobalTheory.DetEqv.BlockForm
