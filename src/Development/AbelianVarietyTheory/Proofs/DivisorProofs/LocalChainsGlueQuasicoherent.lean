import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CrdInjective
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPreChain
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExactAndSurjectiveAppOfExactOfEpi
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

namespace GlobalTheory.ChainDesc.SheafJ

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {B : Vert.Model O} {Λ : Type} [CommRing Λ]
  {p h o : ℕ} {Lie Om : AM B Λ} {π : Γ(B.X, ⊤)} {γ : ℕ → Γ(B.X, ⊤)} {M : Λ →+* Matrix (Fin h) (Fin h) ℤ}
  {E : ℕ → B.X.Modules} {ι : ∀ n, E n ⟶ freeModule B.X (Fin h)} {Q : AM B Λ} {t : E 0 ⟶ Q.V}

theorem mv_one {A A' : Type} [CommRing A] [CommRing A'] (g : A →+* A') (x : Fin h → A) : mv g 1 x = piMap g _ x := by
  rw [mv, Matrix.map_one _ Int.cast_zero Int.cast_one, Matrix.one_mulVec]; rfl

def IsJ (ι : ∀ n, E n ⟶ freeModule B.X (Fin h)) (t : E 0 ⟶ Q.V) {W : B.X.Opens} (D : ChainOn p h o Lie Om π γ W)
    (φ : Γ(Lie.V, W) →ₗ[Γ(B.X, W)] Γ(Q.V, W)) : Prop :=
  ∀ (s : Γ(Lie.V, W)) (x : Γ(E 0, W)) (y : D.L 0), y.1 = crd (ι 0) W x → D.j s = Submodule.Quotient.mk y →
    φ s = t.app W x

theorem exists_rep {W : B.X.Opens} {D : ChainOn p h o Lie Om π γ W} (hD : Fits ι D) (s : Γ(Lie.V, W)) :
    ∃ (x : Γ(E 0, W)) (y : D.L 0), y.1 = crd (ι 0) W x ∧ D.j s = Submodule.Quotient.mk y := by
  obtain ⟨y, hy⟩ := Submodule.Quotient.mk_surjective _ (D.j s)
  obtain ⟨x, hx⟩ : y.1 ∈ latOf (ι 0) W := hD 0 (Nat.zero_le _) ▸ y.2
  exact ⟨x, y, hx.symm, hy.symm⟩

theorem IsJ.res {W W' : B.X.Opens} (hle : W' ≤ W) {D : ChainOn p h o Lie Om π γ W} {D' : ChainOn p h o Lie Om π γ W'}
    (hD : Fits ι D) (r : ResMap hle D D') {φ : Γ(Lie.V, W) →ₗ[Γ(B.X, W)] Γ(Q.V, W)}
    {φ' : Γ(Lie.V, W') →ₗ[Γ(B.X, W')] Γ(Q.V, W')} (hφ : IsJ ι t D φ) (hφ' : IsJ ι t D' φ') (s : Γ(Lie.V, W)) :
    φ' (resM Lie.V hle s) = resM Q.V hle (φ s) := by
  obtain ⟨x, y, hy, hs⟩ := exists_rep hD s
  rw [hφ s x y hy hs, ← GlobalTheory.Twist.app_resM]
  refine hφ' _ _ ⟨_, r.mem 0 _ y.2⟩ ?_ (r.j s y _ rfl hs)
  rw [crd_resM, ← hy]
  exact mv_one _ _

end GlobalTheory.ChainDesc.SheafJ

end
