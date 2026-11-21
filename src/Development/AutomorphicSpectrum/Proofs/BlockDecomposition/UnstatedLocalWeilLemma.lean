import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocalWhittakerDuality.FibProp
import GroundTheory.LocalFields.QuadraticAbelian.WeilRepQuadratic

open MeasureTheory Matrix GroundTheory.LocalField GroundTheory.Automorphic Ad3 Ad3.K.GL2LocalData
open GroundTheory.LocalField.FiltrationCocycleLiftCriterion.WeilRep
open scoped ValuativeRel

noncomputable section

namespace GlobalTheory.CompanionTheory.WeilSB

section VE

variable {F E : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  [Field E] [ValuativeRel E] [TopologicalSpace E] [IsNonarchimedeanLocalField E] [Algebra F E]

theorem isClosedEmbedding_algebraMap (h : Continuous (algebraMap F E)) :
    Topology.IsClosedEmbedding (algebraMap F E) := by
  let := nontriviallyNormedField F
  have := completeSpace_nontriviallyNormedField F
  have := t2Space_of_isNonarchimedeanLocalField E
  have : ContinuousSMul F E := continuousSMul_of_algebraMap F E h
  exact LinearMap.isClosedEmbedding_of_injective (f := Algebra.linearMap F E)
    (LinearMap.ker_eq_bot.mpr (algebraMap F E).injective)

end VE

theorem isLocallyConstant_char {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F]
    [IsNonarchimedeanLocalField F] {χ : AddChar F Circle} (hχ : Continuous χ) (hχ1 : χ ≠ 1) :
    IsLocallyConstant (fun x => (χ x : ℂ)) :=
  isLocallyConstant_of_add_valBall (N := addCharConductor χ) fun x h hh => by
    rw [AddChar.map_add_eq_mul, isTrivialOn_addCharConductor hχ hχ1 h hh, mul_one]

section SB

variable {E : Type} [TopologicalSpace E]

theorem sb_comp (φ : E ≃ₜ E) {H : E → ℂ} (hH : H ∈ SBE E) : (fun z => H (φ z)) ∈ SBE E :=
  ⟨hH.1.comp_continuous φ.continuous, hH.2.comp_homeomorph φ⟩

theorem sb_mul {f H : E → ℂ} (hf : IsLocallyConstant f) (hH : H ∈ SBE E) :
    (fun z => f z * H z) ∈ SBE E :=
  ⟨hf.mul hH.1, hH.2.mul_left⟩

end SB

section Main

variable {F E : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  [MeasurableSpace F] [BorelSpace F]
  [Field E] [ValuativeRel E] [TopologicalSpace E] [IsNonarchimedeanLocalField E]
  [MeasurableSpace E] [BorelSpace E] [Algebra F E]
  [ValuativeExtension F E] [FiniteDimensional F E] [Algebra.IsSeparable F E]
  [Fact (Module.finrank F E = 2)]

theorem continuous_norm_of (h : Continuous (algebraMap F E)) :
    Continuous (Algebra.norm F : E → F) := by
  rw [(isClosedEmbedding_algebraMap h).isInducing.continuous_iff]
  have e : (algebraMap F E) ∘ (Algebra.norm F : E → F) = fun x => x * conj F E x :=
    funext algebraMap_norm_eq_mul_conj
  rw [e]
  exact continuous_id.mul continuous_conj

end Main

end GlobalTheory.CompanionTheory.WeilSB
