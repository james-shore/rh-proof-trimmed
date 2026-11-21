import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPreChain
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PiMapMemLocalSpan

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

namespace GlobalTheory.ChainDesc

section Crd

variable {X : Scheme.{0}} {h : ℕ} {E : X.Modules} (ι : E ⟶ freeModule X (Fin h))

def crd (W : X.Opens) : Γ(E, W) →ₗ[Γ(X, W)] (Fin h → Γ(X, W)) :=
  (GlobalTheory.LatGlue.coords X h W).toLinearMap ∘ₗ appLinear ι W

theorem crd_apply (W : X.Opens) (s : Γ(E, W)) (i : Fin h) :
    crd ι W s i = ((GlobalTheory.VB.isFrame_freeFrame X (Fin h)).basis le_top).repr (ι.app W s) i := rfl

theorem crd_resM {W W' : X.Opens} (hle : W' ≤ W) (s : Γ(E, W)) :
    crd ι W' (resM E hle s) = piMap (resG X hle) (Fin h) (crd ι W s) := by
  change GlobalTheory.LatGlue.coords X h W' (ι.app W' (resM E hle s)) = _
  rw [GlobalTheory.Twist.app_resM, GlobalTheory.LatGlue.coords_resM]
  rfl

abbrev latOf (W : X.Opens) : Submodule Γ(X, W) (Fin h → Γ(X, W)) := LinearMap.range (crd ι W)

end Crd

section Loc

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {B : Vert.Model O} {Λ : Type} [CommRing Λ]
  {h : ℕ}

abbrev baseOn (h : ℕ) (π : Γ(B.X, ⊤)) (W : B.X.Opens) : Submodule Γ(B.X, W) (Fin h → Γ(B.X, W)) :=
  baseOf (resG B.X le_top π) h

abbrev ChainOn (p h o : ℕ) (Lie Om : AM B Λ) (π : Γ(B.X, ⊤)) (γ : ℕ → Γ(B.X, ⊤)) (W : B.X.Opens) : Type :=
  RChain p Γ(B.X, W) h o (resG B.X le_top π) (fun n => resG B.X le_top (γ n)) Γ(Lie.V, W) Γ(Om.V, W)

variable {p o : ℕ} {Lie Om : AM B Λ} {π : Γ(B.X, ⊤)} {γ : ℕ → Γ(B.X, ⊤)}

def Fits {E : ℕ → B.X.Modules} (ι : ∀ n, E n ⟶ freeModule B.X (Fin h)) {W : B.X.Opens}
    (D : ChainOn p h o Lie Om π γ W) : Prop := ∀ n ≤ o, D.L n = latOf (ι n) W

def ResMap {W W' : B.X.Opens} (hle : W' ≤ W) (D : ChainOn p h o Lie Om π γ W) (D' : ChainOn p h o Lie Om π γ W') : Prop :=
  D.Map D' (resG B.X hle) 1 (resM Lie.V hle) (resM Om.V hle)

end Loc

end GlobalTheory.ChainDesc

end
