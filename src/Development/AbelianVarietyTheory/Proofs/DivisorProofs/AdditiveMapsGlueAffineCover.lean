import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CrdInjective
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFrob
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPreChain
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExactAndSurjectiveAppOfExactOfEpi
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.RestrictPullbackIsoHomAppPullbackSections
import Development.AbelianVarietyTheory.Definitions.QuasicoherentCohomology.IsQuasicoherentOfLocallyIso

set_option autoImplicit false
set_option synthInstance.maxHeartbeats 400000

noncomputable section

open CategoryTheory Limits AlgebraicGeometry IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.DV Formalism.L2.Pj Formalism.L2.Geo
open GlobalTheory.QCoh GlobalTheory.CechPic GlobalTheory.Vert GlobalTheory.LocM GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.Mean4O GlobalTheory.MixedLocalChains
open GlobalTheory.Twist (resM)
open Formalism.MainNotions.DIV.Cons (intO)
open GlobalTheory.GroupBplus (AffOp)
open GlobalTheory.RingChain (RChain mv baseOf Qt IsFrobLin)
open GlobalTheory.ChainPts.PullHT (pullA)
open GlobalTheory.PerfdLat (piMap)
open scoped TensorProduct Pointwise
open GlobalTheory.ChainPts
open GlobalTheory.ChainDesc

namespace GlobalTheory.ChainPts.FrobGlue

section Glue

variable {X : Scheme.{0}} {Λ : Type} [CommRing Λ] (p : ℕ) [Fact p.Prime]

def IsSig (q : ℕ) (F H : Action X.Modules Λ) (τ : ∀ W : X.Opens, Γ(F.V, W) →+ Γ(H.V, W)) : Prop :=
  (∀ (a : Λ) (W : X.Opens) (s : Γ(F.V, W)), (H.ρ a : H.V ⟶ H.V).app W (τ W s) = τ W ((F.ρ a : F.V ⟶ F.V).app W s)) ∧
  (∀ (W W' : X.Opens) (hle : W' ≤ W) (s : Γ(F.V, W)), resM H.V hle (τ W s) = τ W' (resM F.V hle s)) ∧
  ∀ W : X.Opens, IsAffineOpen W → IsFrobLin Γ(X, W) p q (τ W)

theorem IsSig.comp {k k' : ℕ} {F H K : Action X.Modules Λ} {τ : ∀ W : X.Opens, Γ(F.V, W) →+ Γ(H.V, W)}
    {σ : ∀ W : X.Opens, Γ(H.V, W) →+ Γ(K.V, W)} (h : IsSig p (p ^ k) F H τ) (h' : IsSig p (p ^ k') H K σ) :
    IsSig p (p ^ (k + k')) F K fun W => (σ W).comp (τ W) := by
  refine ⟨fun a W s => ?_, fun W W' hle s => ?_, fun W hW => ?_⟩
  · rw [AddMonoidHom.comp_apply, AddMonoidHom.comp_apply, h'.1, h.1]
  · rw [AddMonoidHom.comp_apply, AddMonoidHom.comp_apply, h'.2.1, h.2.1]
  · exact (GlobalTheory.RingChain.FrobLin.main _ p _ _ _).2.2.1 k k' _ _ (h.2.2 W hW) (h'.2.2 W hW)

end Glue

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (p : ℕ) [Fact p.Prime] {B : GlobalTheory.Vert.Model O}
  {Λ : Type} [CommRing Λ] (hp : (p : Γ((fibI p B).subscheme, ⊤)) = 0)

end GlobalTheory.ChainPts.FrobGlue

end
