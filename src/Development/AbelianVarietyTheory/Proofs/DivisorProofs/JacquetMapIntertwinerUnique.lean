import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IndicatorIntMMemSB
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InducedRepresentationIrreducible
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsSubquotientDetRepParInd
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocFieldFv
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.ExistsCellOfIsSubquotient
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSmoothDetPair
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.JacquetHomLeviTgtBound
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CellFunctorTorusCharacter
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.CentralExponentBoundOver
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AlgebraMapIntertwiningMapBijectiveOfIsSmooth
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsIrreducibleSecondFactorOfIrreducibleProduct
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ParabolicInductionColumnEquiv
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.BernsteinUnitaryProductIrreducible
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.GeometricLemmaFiltration
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.HasFiniteLengthOfIsIrreducible
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.NotInSupportOfSubsingleton
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.JacquetModuleMapInjectiveOfInjective
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIrreducibleSmoothQuotient
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeviBlockRepEquivFirst
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IrreducibleRestrictionMirabolicRight
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SubSmulMemOfEquiv
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FirstCellFunctorEquiv
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSmoothColRep
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.GeometricLemmaCellOneBlockSwapEquiv
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LowerEquivUpperSwap
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.JacquetDetPairFiltrationSwapLeft
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.JacquetDetPairFiltrationSwapRight
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ParabolicProductHasFiniteLengthGL

noncomputable section

open Matrix GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.KSplit GlobalTheory.RankFibre GlobalTheory.IndLineGL
open scoped TensorProduct

namespace GlobalTheory.JacLineGL

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

abbrev PSp (ν β : kˣ →* ℂˣ) (a b : ℕ) : Type :=
  IndSp (two (stdSum (rfl : a + b = a + b)))
    ((extTensor (detRep (Fin a) (ν * β)) (detRep (Fin b) β)).comp (leviTwo k (Fin a) (Fin b)).symm.toMonoidHom)

abbrev pRep (ν β : kˣ →* ℂˣ) (a b : ℕ) : Representation ℂ (GL (Fin (a + b)) k) (PSp ν β a b) :=
  prod₂ (detRep (Fin a) (ν * β)) (detRep (Fin b) β)

theorem indSp_mul (ν β : kˣ →* ℂˣ) (a b : ℕ) : indSp a b (ν * β) β = indScal ν β a b := by
  rw [indSp_eq_indScal]
  congr 1
  ext x
  simp

theorem val_mem (ν β : kˣ →* ℂˣ) (a b : ℕ) (F : PSp ν β a b) : indScalVal ν β a b F ∈ indSp a b (ν * β) β := by
  rw [indSp_mul]
  refine ⟨mem_smoothPart_of_nhds ?_, fun p x => ?_⟩
  · have ho : IsOpen {g | pRep ν β a b g F = F} := isSmooth_prod₂ _ _ F
    refine Filter.mem_of_superset (ho.mem_nhds (by simp)) fun g hg => funext fun x => ?_
    have hg' : pRep ν β a b g F = F := hg
    show TensorProduct.lid ℂ ℂ (F.1.1 (x * g)) = TensorProduct.lid ℂ ℂ (F.1.1 x)
    exact congrArg (fun G : PSp ν β a b => TensorProduct.lid ℂ ℂ (G.1.1 x)) hg'
  · have h := F.1.2 p x
    show TensorProduct.lid ℂ ℂ (F.1.1 (p * x)) = ofChar _ p (TensorProduct.lid ℂ ℂ (F.1.1 x))
    rw [h]
    obtain ⟨c, hc⟩ := (TensorProduct.lid ℂ ℂ).symm.surjective (F.1.1 x)
    rw [← hc]
    simp only [MonoidHom.coe_comp, Function.comp_apply, twist_apply, MonoidHom.coe_coe]
    simp [parChar, detRep, ofChar_apply]
    ring

def scalEquiv (ν β : kˣ →* ℂˣ) (a b : ℕ) : PSp ν β a b ≃ₗ[ℂ] indSp a b (ν * β) β :=
  LinearEquiv.ofBijective ((indScalVal ν β a b).codRestrict _ (val_mem ν β a b))
    ⟨fun F G h => Subtype.ext (Subtype.ext (funext fun x =>
      (TensorProduct.lid ℂ ℂ).injective (congrFun (congrArg Subtype.val h) x))),
     fun f => ⟨indScalLift ν β a b (indSp_mul ν β a b ▸ f.2), Subtype.ext (indScal_scal_lift ν β a b _)⟩⟩

theorem scalEquiv_rep (ν β : kˣ →* ℂˣ) (a b : ℕ) (g x : GL (Fin (a + b)) k) (F : PSp ν β a b) :
    (scalEquiv ν β a b (pRep ν β a b g F) : GL (Fin (a + b)) k → ℂ) x =
      (scalEquiv ν β a b F : GL (Fin (a + b)) k → ℂ) (x * g) := rfl

section Frob

variable {a b : ℕ} {α β : kˣ →* ℂˣ} {P P₁ : Type} [AddCommGroup P] [Module ℂ P] [AddCommGroup P₁] [Module ℂ P₁]
  (π : Representation ℂ (GL (Fin (a + (b + 2))) k) P) (σ : Representation ℂ (GL (Fin (a + b)) k) P₁)
  (E : P ≃ₗ[ℂ] indSp a (b + 2) α β) (E₁ : P₁ ≃ₗ[ℂ] indSp a b α β)

def frob (φ : indSp a (b + 2) α β →ₗ[ℂ] indSp a b α β) : P →ₗ[ℂ] (GL (Fin (a + (b + 2))) k → P₁) :=
  LinearMap.pi fun h => E₁.symm.toLinearMap ∘ₗ φ ∘ₗ E.toLinearMap ∘ₗ π h

theorem frob_apply (φ : indSp a (b + 2) α β →ₗ[ℂ] indSp a b α β) (x : P) (h : GL (Fin (a + (b + 2))) k) :
    frob π E E₁ φ x h = E₁.symm (φ (E (π h x))) := rfl

end Frob

end GlobalTheory.JacLineGL

end
