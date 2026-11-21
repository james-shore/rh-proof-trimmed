import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMaxThOne
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.HoweDualityReal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PureLApply
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFactorPureTensorComponentAtPlace
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatAtVAtStable
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DerivOpSpec
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RealLinePolynomialEquivariance
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaActionExists
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaLiftLeftInvariant
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfComponentTensorAdelicFunctionEq

noncomputable section

namespace GlobalTheory.ThetaFibMaxG

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.ThetaFibMax
open scoped TensorProduct

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}
  {n d : ℕ} {Y : Spc F E n} {W : Spc F E d}

def pureSpanG (M : Model σ Y W) (Gd : (∀ v : Pl F, (Fin n × Fin d → Fv F v) → ℂ) → Prop)
    (P : Submodule ℂ (SInf F (Fin n × Fin d))) : Submodule ℂ (Fn F n d) :=
  Submodule.span ℂ {Φ | ∃ f ∈ P, ∃ φ, Gd φ ∧ Φ = pure f φ}

abbrev DG (B : Base F E) (M : Model σ Y W) (Gd : (∀ v : Pl F, (Fin n × Fin d → Fv F v) → ℂ) → Prop) :
    Submodule ℂ (Fn F n d) :=
  pureSpanG M Gd (M.Pol B.ψ B.emb)

end GlobalTheory.ThetaFibMaxG

namespace GlobalTheory.ThetaFibMaxG

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.ThetaFibMax
open scoped TensorProduct

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}
  {n d : ℕ} {Y : Spc F E n} {W : Spc F E d}

abbrev AlgG (B : Base F E) (M : Model σ Y W) (om : Rep σ Y W)
    (Gd : (∀ v : Pl F, (Fin n × Fin d → Fv F v) → ℂ) → Prop) : Type :=
  Algebra.adjoin ℂ (ops B om (DG B M Gd))

theorem nrG_stable (B : Base F E) (M : Model σ Y W) (om : Rep σ Y W)
    (Gd : (∀ v : Pl F, (Fin n × Fin d → Fv F v) → ℂ) → Prop) (N : Submodule ℂ (Fn F n d))
    (hN : GlobalTheory.ThetaFac.WStable B om (DG B M Gd) N) :
    ∀ A ∈ ops B om (DG B M Gd), ∀ x ∈ N.comap (DG B M Gd).subtype, A x ∈ N.comap (DG B M Gd).subtype := by
  rintro A (⟨γ, hγ, hex, rfl⟩ | ⟨k, hk, hk', rfl⟩) x hx
  · exact hN.lie γ hγ x.1 hx _ (derivOp _ _ hex x).2 (derivOp_spec hex x)
  · exact hN.cpt k hk x.1 hx

set_option synthInstance.maxHeartbeats 400000

instance instTowerAlgG (B : Base F E) (M : Model σ Y W) (om : Rep σ Y W)
    (Gd : (∀ v : Pl F, (Fin n × Fin d → Fv F v) → ℂ) → Prop) :
    IsScalarTower ℂ (AlgG B M om Gd) (DG B M Gd) := inferInstance

def NrG (B : Base F E) (M : Model σ Y W) (om : Rep σ Y W)
    (Gd : (∀ v : Pl F, (Fin n × Fin d → Fv F v) → ℂ) → Prop) (N : Submodule ℂ (Fn F n d))
    (hN : GlobalTheory.ThetaFac.WStable B om (DG B M Gd) N) : Submodule (AlgG B M om Gd) (DG B M Gd) :=
  subOf _ (N.comap (DG B M Gd).subtype) (nrG_stable B M om Gd N hN)

instance instModQG (B : Base F E) (M : Model σ Y W) (om : Rep σ Y W)
    (Gd : (∀ v : Pl F, (Fin n × Fin d → Fv F v) → ℂ) → Prop) (N : Submodule ℂ (Fn F n d))
    (hN : GlobalTheory.ThetaFac.WStable B om (DG B M Gd) N) : Module (AlgG B M om Gd) (DG B M Gd ⧸ NrG B M om Gd N hN) :=
  inferInstance

instance instModQCG (B : Base F E) (M : Model σ Y W) (om : Rep σ Y W)
    (Gd : (∀ v : Pl F, (Fin n × Fin d → Fv F v) → ℂ) → Prop) (N : Submodule ℂ (Fn F n d))
    (hN : GlobalTheory.ThetaFac.WStable B om (DG B M Gd) N) : Module ℂ (DG B M Gd ⧸ NrG B M om Gd N hN) :=
  inferInstance

instance instTowerQG (B : Base F E) (M : Model σ Y W) (om : Rep σ Y W)
    (Gd : (∀ v : Pl F, (Fin n × Fin d → Fv F v) → ℂ) → Prop) (N : Submodule ℂ (Fn F n d))
    (hN : GlobalTheory.ThetaFac.WStable B om (DG B M Gd) N) :
    IsScalarTower ℂ (AlgG B M om Gd) (DG B M Gd ⧸ NrG B M om Gd N hN) :=
  inferInstance

def iotaG (B : Base F E) (M : Model σ Y W) (om : Rep σ Y W)
    (Gd : (∀ v : Pl F, (Fin n × Fin d → Fv F v) → ℂ) → Prop) (N : Submodule ℂ (Fn F n d))
    (hN : GlobalTheory.ThetaFac.WStable B om (DG B M Gd) N) (φ : ∀ v : Pl F, (Fin n × Fin d → Fv F v) → ℂ) (hφ : Gd φ) :
    M.Pol B.ψ B.emb →ₗ[ℂ] DG B M Gd ⧸ NrG B M om Gd N hN where
  toFun f := Submodule.Quotient.mk ⟨pure f.1 φ, Submodule.subset_span ⟨f.1, f.2, φ, hφ, rfl⟩⟩
  map_add' f g := by
    rw [← Submodule.Quotient.mk_add]
    congr 1
    apply Subtype.ext
    exact (map_add (GlobalTheory.ThetaFacInf.pureL φ) f.1 g.1)
  map_smul' c f := by
    rw [RingHom.id_apply, ← Submodule.Quotient.mk_smul]
    congr 1
    apply Subtype.ext
    exact (map_smul (GlobalTheory.ThetaFacInf.pureL φ) c f.1)

theorem iotaG_apply (B : Base F E) (M : Model σ Y W) (om : Rep σ Y W)
    (Gd : (∀ v : Pl F, (Fin n × Fin d → Fv F v) → ℂ) → Prop) (N : Submodule ℂ (Fn F n d))
    (hN : GlobalTheory.ThetaFac.WStable B om (DG B M Gd) N) (φ : ∀ v : Pl F, (Fin n × Fin d → Fv F v) → ℂ) (hφ : Gd φ)
    (f : M.Pol B.ψ B.emb) :
    iotaG B M om Gd N hN φ hφ f =
      (NrG B M om Gd N hN).mkQ ⟨pure f.1 φ, Submodule.subset_span ⟨f.1, f.2, φ, hφ, rfl⟩⟩ :=
  rfl

end GlobalTheory.ThetaFibMaxG

namespace GlobalTheory.ThetaFibMaxG

end GlobalTheory.ThetaFibMaxG

end
