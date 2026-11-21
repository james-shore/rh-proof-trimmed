import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.GeometricLemmaFiltration
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.HasFiniteLengthOfIsIrreducible
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.BernsteinUnitaryProductIrreducible
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivOfRangeEq
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.GeometricLemmaCellOneBlockSwapEquiv
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CellFunctorTorusCharacter
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemRelParabColEq
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InducedRepSigmaApplyQuotientStatement
open GlobalTheory.PRep GlobalTheory.SmGL Matrix

noncomputable section

namespace GlobalTheory.CellDetFirst

open scoped TensorProduct

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

theorem inducing_mk (χ₁ χ₂ : kˣ →* ℂˣ) (u v : ℕ) (p : relParab k (colEq u v)) (w : ℂ ⊗[ℂ] ℂ) :
    sigmaC χ₁ χ₂ u v p (Submodule.Quotient.mk w) =
    (((χ₂ * absPow k ((v : ℂ) / 2)) (GeneralLinearGroup.det (p.1 true)) *
      deltaHalf k (Two (Fin u) (Fin v))
        (leviProj k (two (stdSum (rfl : u + v = u + v))) ⟨p.1 false, (mem_relParab_colEq _).1 p.2⟩) *
      (χ₁ (GeneralLinearGroup.det (leviProj k (two (stdSum (rfl : u + v = u + v)))
          ⟨p.1 false, (mem_relParab_colEq _).1 p.2⟩ false)) *
        (χ₂ * absPow k (-(1 / 2))) (GeneralLinearGroup.det (leviProj k (two (stdSum (rfl : u + v = u + v)))
          ⟨p.1 false, (mem_relParab_colEq _).1 p.2⟩ true))) : ℂˣ) : ℂ) • Submodule.Quotient.mk w :=
  GlobalTheory.T.induced_rep_sigma_apply_quotient χ₁ χ₂ u v p w

abbrev rhoL (χ₁ χ₂ : kˣ →* ℂˣ) (u v : ℕ) :
    Representation ℂ (Levi k (Two (Fin u) (Fin v))) (ℂ ⊗[ℂ] ℂ) :=
  (extTensor (detRep (Fin u) χ₁) (detRep (Fin v) (χ₂ * absPow k (-(1 / 2))))).comp
    (leviTwo k (Fin u) (Fin v)).symm.toMonoidHom

def toFun (χ₁ χ₂ : kˣ →* ℂˣ) (u v : ℕ)
    (φ : IndSp (two (stdSum (rfl : u + v = u + v))) (rhoL (k := k) χ₁ χ₂ u v))
    (x : Levi k (Two (Fin (u + v)) (Fin 1))) :
    Jacquet (rhoM (k := k) χ₁ χ₂ u v) (relUnip k (rowEq u v)) :=
  (((χ₂ * absPow k ((v : ℂ) / 2)) (GeneralLinearGroup.det (x true)) : ℂˣ) : ℂ) •
    Submodule.Quotient.mk (φ.1.1 (x false))

theorem toFun_law (χ₁ χ₂ : kˣ →* ℂˣ) (u v : ℕ)
    (φ : IndSp (two (stdSum (rfl : u + v = u + v))) (rhoL (k := k) χ₁ χ₂ u v))
    (p : relParab k (colEq u v)) (x : Levi k (Two (Fin (u + v)) (Fin 1))) :
    toFun χ₁ χ₂ u v φ ((p : Levi k (Two (Fin (u + v)) (Fin 1))) * x) =
      sigmaC χ₁ χ₂ u v p (toFun χ₁ χ₂ u v φ x) := by
  have hq := (mem_relParab_colEq (p : Levi k (Two (Fin (u + v)) (Fin 1)))).1 p.2
  have h1 := parInd_law (two (stdSum (rfl : u + v = u + v))) (rhoL χ₁ χ₂ u v) φ ⟨_, hq⟩ (x false)
  have h2 : rhoL χ₁ χ₂ u v (leviProj k (two (stdSum (rfl : u + v = u + v))) ⟨_, hq⟩) (φ.1.1 (x false)) =
      ((χ₁ (GeneralLinearGroup.det (leviProj k (two (stdSum (rfl : u + v = u + v))) ⟨_, hq⟩ false)) *
        (χ₂ * absPow k (-(1 / 2))) (GeneralLinearGroup.det
          (leviProj k (two (stdSum (rfl : u + v = u + v))) ⟨_, hq⟩ true)) : ℂˣ) : ℂ) • φ.1.1 (x false) :=
    GlobalTheory.IndLineGL.CellTorus.extTensor_detRep_apply χ₁ (χ₂ * absPow k (-(1 / 2))) _ _
  unfold toFun
  rw [map_smul, inducing_mk]
  show (((χ₂ * absPow k ((v : ℂ) / 2)) (GeneralLinearGroup.det (p.1 true * x true)) : ℂˣ) : ℂ) •
    Submodule.Quotient.mk (φ.1.1 (p.1 false * x false)) = _
  rw [h1, h2]
  rw [map_mul, map_mul, Submodule.Quotient.mk_smul, Submodule.Quotient.mk_smul, smul_smul, smul_smul,
    smul_smul]
  congr 1
  simp only [Units.val_mul]
  ring

theorem toFun_smooth {χ₁ χ₂ : kˣ →* ℂˣ} (hχ₂ : IsSmoothChar χ₂) (u v : ℕ)
    (φ : IndSp (two (stdSum (rfl : u + v = u + v))) (rhoL (k := k) χ₁ χ₂ u v)) :
    (⟨toFun χ₁ χ₂ u v φ, fun p x => toFun_law χ₁ χ₂ u v φ p x⟩ :
      indSpace (relParab k (colEq u v)) (sigmaC χ₁ χ₂ u v)) ∈
        smoothPart (ind (relParab k (colEq u v)) (sigmaC χ₁ χ₂ u v)) := by
  have hc : IsSmoothChar (χ₂ * absPow k ((v : ℂ) / 2)) :=
    hχ₂.mul (isSmoothChar_of_isUnram (isUnram_absPow k _))
  have hd := (hc.detChar (n := Fin 1)).comp
    (Pi.evalMonoidHom (fun j => GL (Two (Fin (u + v)) (Fin 1) j) k) true) (continuous_apply true)
  have hφ : IsOpen {g : GL (Fin (u + v)) k | ind _ _ g φ.1 = φ.1} := φ.2
  refine mem_smoothPart_of_nhds (Filter.mem_of_superset
    (((hφ.preimage (continuous_apply false)).inter hd).mem_nhds ⟨by simp, by simp⟩) ?_)
  rintro y ⟨hy1, hy2⟩
  have hy2' : (χ₂ * absPow k ((v : ℂ) / 2)) (GeneralLinearGroup.det (y true)) = 1 := MonoidHom.mem_ker.1 hy2
  refine Subtype.ext (funext fun x => ?_)
  show toFun χ₁ χ₂ u v φ (x * y) = toFun χ₁ χ₂ u v φ x
  have h3 : φ.1.1 (x false * y false) = φ.1.1 (x false) :=
    congrArg (fun F => F.1 (x false)) (show ind _ _ (y false) φ.1 = φ.1 from hy1)
  unfold toFun
  rw [Pi.mul_apply, Pi.mul_apply, h3, map_mul, map_mul, hy2', mul_one]

def toCell {χ₁ χ₂ : kˣ →* ℂˣ} (hχ₂ : IsSmoothChar χ₂) (u v : ℕ) :
    IndSp (two (stdSum (rfl : u + v = u + v))) (rhoL (k := k) χ₁ χ₂ u v) →ₗ[ℂ]
      smoothPart (ind (relParab k (colEq u v)) (sigmaC (k := k) χ₁ χ₂ u v)) where
  toFun φ := ⟨⟨toFun χ₁ χ₂ u v φ, fun p x => toFun_law χ₁ χ₂ u v φ p x⟩, toFun_smooth hχ₂ u v φ⟩
  map_add' φ ψ := Subtype.ext (Subtype.ext (funext fun x => by
    show toFun χ₁ χ₂ u v (φ + ψ) x = toFun χ₁ χ₂ u v φ x + toFun χ₁ χ₂ u v ψ x
    simp only [toFun]
    rw [← smul_add, ← Submodule.Quotient.mk_add]
    rfl))
  map_smul' c φ := Subtype.ext (Subtype.ext (funext fun x => by
    show toFun χ₁ χ₂ u v (c • φ) x = c • toFun χ₁ χ₂ u v φ x
    simp only [toFun]
    rw [smul_comm, ← Submodule.Quotient.mk_smul]
    rfl))

theorem toCell_apply {χ₁ χ₂ : kˣ →* ℂˣ} (hχ₂ : IsSmoothChar χ₂) (u v : ℕ)
    (φ : IndSp (two (stdSum (rfl : u + v = u + v))) (rhoL (k := k) χ₁ χ₂ u v)) (x) :
    (toCell hχ₂ u v φ).1.1 x = toFun χ₁ χ₂ u v φ x := rfl

def incl (u v : ℕ) : GL (Fin (u + v)) k →* Levi k (Two (Fin (u + v)) (Fin 1)) :=
  (leviTwo k (Fin (u + v)) (Fin 1)).toMonoidHom.comp (MonoidHom.inl _ _)

theorem incl_false (u v : ℕ) (x₁ : GL (Fin (u + v)) k) : incl u v x₁ false = x₁ := rfl

theorem incl_true (u v : ℕ) (x₁ : GL (Fin (u + v)) k) : incl u v x₁ true = 1 := rfl

end GlobalTheory.CellDetFirst
