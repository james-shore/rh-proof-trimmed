import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DrViaNonneg
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IoOfLeOneIff
import Development.AbelianVarietyTheory.Definitions.Divisors.NonemptyValExtOfOverLa
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentVectorsUniversalBasis

open NumberField IsDedekindDomain Filter Topology
open Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Pj ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.AllWt GlobalTheory.CompHt GlobalTheory.CovTop GlobalTheory.CovHt GlobalTheory.CovHt.Link GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.TrueGeo GlobalTheory.ProjVar GlobalTheory.Cartier GlobalTheory.Mean4 GlobalTheory.Mean4O
open scoped ENNReal
open AlgebraicGeometry CategoryTheory
open Formalism.MainNotions.DIV.Cons (intO)

set_option autoImplicit false

noncomputable section

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.CovHt.Link.drVia_isometry_invariant

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {X : Scheme.{0}}
  (t : SAB H X)

variable {C : Type} [NontriviallyNormedField C] [IsUltrametricDist C]

section Via

open GlobalTheory.Toroidal Formalism.L2.Geo

variable {D : D7} {A : Amb D} {N j : ℕ} {S : Sig A N j} {κ : Lv A} {s : FinalTheorems S κ} (Φ : s.Flag) (k : s.Comp)

private def drViaAny (la : AllWt.Weight S.Dw) (p : ℕ) {K : Type} [Field K] (y : Sp K ⟶ (Φ.C k).Y.X)
    {L : Type} [NontriviallyNormedField L] [IsUltrametricDist L] (φ : K →+* L) (f : (Φ.C k).Y.Fn) : ℝ :=
  ‖φ (GlobalTheory.TrueGeo.valAt y (f * ((∏ z : Letter S.Dw, (((Φ.C k).gr_spec (below y)).choose_spec.choose_spec.choose z.1 z.2) ^
      expo S.Dw (drSym la) z : (Φ.C k).Y.Fnˣ) : (Φ.C k).Y.Fn)))‖ *
    Real.exp ((drSym la).sum fun a n => (n : ℝ) * lnStep s.T.Z.t
      (spMap (φ.comp (Scheme.stalkClosedPointTo y).hom) ≫ stalkPt (Φ.C k).Y (below y) ≫ (Φ.C k).π ≫ genι s.T.Z)
      (fun τ i => spMap (dualMap (φ.comp (Scheme.stalkClosedPointTo y).hom)) ≫
        ((Φ.C k).gr_spec (below y)).choose_spec.choose.v τ i) p (a.1 p) a.2.2)

private theorem drVia_eq_drViaAny (la : AllWt.Weight S.Dw) (p : ℕ) [Fact p.Prime] {K : Type} [Field K]
    (y : Sp K ⟶ (Φ.C k).Y.X) (φ : K →+* ℂ_[p]) (f : (Φ.C k).Y.Fn) :
    drVia Φ k la p y φ f = drViaAny Φ k la p y φ f := rfl

end Via

end GlobalTheory.CovHt.Link.drVia_isometry_invariant
