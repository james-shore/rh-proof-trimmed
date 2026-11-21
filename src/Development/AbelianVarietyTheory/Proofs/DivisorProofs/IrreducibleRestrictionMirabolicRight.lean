import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.GeometricLemmaFiltration
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.HasFiniteLengthOfIsIrreducible
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.BernsteinUnitaryProductIrreducible
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.JacquetModuleMapInjectiveOfInjective
open GlobalTheory.PRep GlobalTheory.SmGL Matrix

noncomputable section

namespace GlobalTheory.RightEnd

open Polynomial

section Cells

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
  {M : Bool → Type} [∀ j, Fintype (M j)] [∀ j, DecidableEq (M j)]
  {c : Bool → Bool → Type} [∀ i j, Fintype (c i j)] [∀ i j, DecidableEq (c i j)]
  {W : Type} [AddCommGroup W] [Module ℂ W]

def lineRep (τ : Representation ℂ (GL (M false) k) W) (ψ : GL (M true) k →* ℂˣ) :
    Representation ℂ (Levi k M) W :=
  twist (τ.comp (Pi.evalMonoidHom (fun j => GL (M j) k) false))
    (ψ.comp (Pi.evalMonoidHom (fun j => GL (M j) k) true))

omit [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] in
theorem lineRep_apply (τ : Representation ℂ (GL (M false) k) W) (ψ : GL (M true) k →* ℂˣ)
    (l : Levi k M) (v : W) : lineRep τ ψ l v = (ψ (l true) : ℂ) • τ (l false) v := rfl

end Cells

end GlobalTheory.RightEnd
