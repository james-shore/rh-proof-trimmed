import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SemiposAtOfPositive
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormsAtOfNorms
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsLinearMapMultilinearMapBaseChange
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SplitKOfIsAlgClosed
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MapPairDetCovec

set_option autoImplicit false

noncomputable section

open CategoryTheory AlgebraicGeometry NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Formalism.BasicNotions Formalism.L2.Pj GlobalTheory GlobalTheory.Cartier GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.Mean4O GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.TrivFlag GlobalTheory.LineNorm
open Formalism.MainNotions.DIV.Cons (intO)
open scoped TensorProduct Matrix
open MonObj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.RootFrame

section Chars

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}
  {l : Level H} {Xo : Moduli Dw l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F}

def IsLabel (Z : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Model Xo c β) {K : Type} [Field K] (y : Sp K ⟶ Xo.XF c) (q : ℕ)
    (lb : Dw.La → (Over.mk y ⟶ Z.oF.t.G)) (ζ : Kˣ) : Prop :=
  IsPrimitiveRoot ζ q ∧ (∀ a b, lb (a + b) = lb a * lb b) ∧ (∀ (o : 𝓞 E) a, lb (o • a) = lb a ≫ Z.oF.t.act.act o) ∧
    (∀ σ : Over.mk y ⟶ Z.oF.t.G, σ ^ q = 1 ↔ ∃ a, lb a = σ) ∧
    ∀ a b, Out.WeilIs Z.oF.t.G Z.oF.t.PP.L (q : ℤ) (lb a) (lb b) (unitOn (ζ ^ Dw.EF a b))

def WeilLab (Z : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Model Xo c β) {R K : Type} [CommRing R] [Field K] (io : R →+* K) (x : Sp R ⟶ Z.X)
    (y : Sp K ⟶ Xo.XF c) (q : ℕ) (ch : Dw.La → TorsChar Z.t x q) : Prop :=
  ∃ (lb : Dw.La → (Over.mk y ⟶ Z.oF.t.G)) (ζ : Kˣ), IsLabel Z y q lb ζ ∧
    ∀ a b (w : Over.mk (spMap (algebraMap R R) ≫ x) ⟶ Z.t.G),
      w ^ q = 1 → (lb b).left ≫ Z.m.φ = spMap io ≫ w.left → io ((ch a).χ R w : Rˣ) = (ζ ^ Dw.EF a b : Kˣ)

variable (Dw) in

def pr {K : Type} [CommRing K] (y : K ⊗[ℤ] Dw.La) (a : Dw.La) : K := Dw.EF.baseChange K y (1 ⊗ₜ a)

end Chars

section Fam

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}
  {X : Scheme.{0}} {F : Type} [Field F] [NumberField F] {Y : Var F}

variable (Dw) in

structure Charts (t : SAB H X) (V : Cover Y) (ρ' : V.X ⟶ X) (J : Type) : Type 1 where
  U : J → V.X.Opens
  aff : ∀ a, IsAffineOpen (U a)
  g : J → ℕ
  e : ∀ a, Fin (g a) → (Sp (DualNumber Γ(V.X, U a)) ⟶ t.G.left)
  basis : ∀ a, IsTanBasis t (R := Γ(V.X, U a)) ((aff a).fromSpec ≫ ρ') (e a)
  h : ∀ a, Dw.La → Fin (g a) → Γ(V.X, U a)

end Fam

end GlobalTheory.RootFrame

end
