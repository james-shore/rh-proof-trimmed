import Mathlib
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsSubquotientDetRepParInd
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocFieldFv

noncomputable section

namespace GlobalTheory.IndLineGL

open GlobalTheory.SmGL GlobalTheory.PRep
open scoped TensorProduct

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

def leviTgt {m : ℕ} {P₁ : Type} [AddCommGroup P₁] [Module ℂ P₁] (σ₁ : Representation ℂ (GL (Fin m) k) P₁)
    (ξ₁ ξ₂ : kˣ →* ℂˣ) : Representation ℂ (Levi k fun i : Fin 3 => Fin (blk3 m i)) P₁ :=
  twist (σ₁.comp (Pi.evalMonoidHom (fun i : Fin 3 => GL (Fin (blk3 m i)) k) 1))
    (ξ₁.comp (Matrix.GeneralLinearGroup.det.comp (Pi.evalMonoidHom (fun i : Fin 3 => GL (Fin (blk3 m i)) k) 0)) *
      ξ₂.comp (Matrix.GeneralLinearGroup.det.comp (Pi.evalMonoidHom (fun i : Fin 3 => GL (Fin (blk3 m i)) k) 2)))

theorem leviTgt_apply {m : ℕ} {P₁ : Type} [AddCommGroup P₁] [Module ℂ P₁] (σ₁ : Representation ℂ (GL (Fin m) k) P₁)
    (ξ₁ ξ₂ : kˣ →* ℂˣ) (l : Levi k fun i : Fin 3 => Fin (blk3 m i)) (y : P₁) :
    leviTgt σ₁ ξ₁ ξ₂ l y = ((ξ₁ (Matrix.GeneralLinearGroup.det (l 0)) * ξ₂ (Matrix.GeneralLinearGroup.det (l 2)) : ℂˣ) : ℂ) •
      σ₁ (l 1) y := rfl

variable (k) in

def detPair (a a' : ℕ) (α₀ β₀ : kˣ →* ℂˣ) : Representation ℂ (Levi k (Two (Fin a) (Fin a'))) (ℂ ⊗[ℂ] ℂ) :=
  (extTensor (detRep (Fin a) α₀) (detRep (Fin a') β₀)).comp (leviTwo k (Fin a) (Fin a')).symm.toMonoidHom

theorem prod₂_detRep_eq (a a' : ℕ) (α₀ β₀ : kˣ →* ℂˣ) :
    prod₂ (detRep (Fin a) α₀) (detRep (Fin a') β₀) = parInd (two (stdSum rfl)) (detPair k a a' α₀ β₀) := rfl

end GlobalTheory.IndLineGL

namespace GlobalTheory.IndLineGL

end GlobalTheory.IndLineGL
