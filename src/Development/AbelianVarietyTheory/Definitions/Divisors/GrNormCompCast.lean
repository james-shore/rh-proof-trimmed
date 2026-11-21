import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.GlobalHeightBoundIffAtGoodPrimes
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf

set_option autoImplicit false
set_option synthInstance.maxHeartbeats 400000

noncomputable section

open CategoryTheory Limits AlgebraicGeometry IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.DV Formalism.L2.Pj Formalism.L2.Geo
open GlobalTheory.QCoh GlobalTheory.CechPic GlobalTheory.Vert GlobalTheory.LocM GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.Mean4O GlobalTheory.MixedLocalChains
open GlobalTheory.Twist (resM)
open Formalism.MainNotions.DIV.Cons (intO)

namespace GlobalTheory.ChainPts

section Free

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}
  {Xo : ∀ l : Level H, Moduli Dw l} {p : ℕ} {W : ValuationSubring ℂ} {Y : LocalSystem Xo p W} {i₀ : Idx H p}

def coef {X : Scheme.{0}} {F : X.Modules} {r : ℕ} (d : Bool) {V V' : X.Opens} {e : Fin r → Γ(F, V)} {s : Fin r → Γ(F, V')}
    (he : GlobalTheory.VB.IsFrame e) (hs : GlobalTheory.VB.IsFrame s) (l i : Fin r) : Γ(X, V ⊓ V') :=
  match d with
  | false => (he.basis inf_le_left).repr (resM F inf_le_right (s i)) l
  | true => (hs.basis inf_le_right).repr (resM F inf_le_left (e l)) i

structure IsLat (Z : LocM.Mdl Y i₀) {X : Scheme.{0}} (h : X ⟶ Z.X) {r : ℕ} (x : Fin r → Letter Dw) (d b : Bool)
    (F : X.Modules) (s : ∀ a : Fin Z.m, Fin r → Γ(F, h ⁻¹ᵁ (Z.U a).1)) : Prop where

  frame : ∀ a, GlobalTheory.VB.IsFrame (s a)

  glue : ∀ (k : Type) [Field k] (w : Sp k ⟶ X) (a a' : Fin Z.m) (φ : Γ(Z.X, (Z.U a).1) →+* k)
    (φ' : Γ(Z.X, (Z.U a').1) →+* k), spMap φ ≫ Z.chart a = w ≫ h → spMap φ' ≫ Z.chart a' = w ≫ h → ∀ j,
      IsCombAtG (Y Z.i).t (w ≫ h ≫ Z.π) (fun i => (Z.fr a).bc φ (x i).1 (x i).2)
        (fun i => valF w _ (coef d (frame a) (frame a') i j)) ((Z.fr a').bc φ' (x j).1 (x j).2)

  norm : ∀ (y : Z.Pt) (w : Sp ↥(intO ↥y.C.S) ⟶ X), w ≫ h = y.z → ∀ (a : Fin Z.m) (φ : Γ(Z.X, (Z.U a).1) →+* ↥y.C.S),
    spMap φ ≫ Z.chart a = y.gen → ∀ (V : X.Opens) (e : Fin r → Γ(F, V)) (he : GlobalTheory.VB.IsFrame e), ⊤ ≤ w ⁻¹ᵁ V →
      ∀ (cf : Fin r → ↥y.C.S) (v : Sp (DualNumber ↥y.C.S) ⟶ (Y Z.i).t.G.left),
        IsCombAtG (Y Z.i).t (y.gen ≫ Z.π) (fun i => (Z.fr a).bc φ (x i).1 (x i).2) cf v →
          (v ∈ lat (Y Z.i).t p (y.gen ≫ Z.π) b ↔
            ∀ l, ‖∑ i, cf i * valF (spMap (intO ↥y.C.S).subtype ≫ w) _ (coef d he (frame a) l i)‖ ≤ 1)

end Free

end GlobalTheory.ChainPts

end
