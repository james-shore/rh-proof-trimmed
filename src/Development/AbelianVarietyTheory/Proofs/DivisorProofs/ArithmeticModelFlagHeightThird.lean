import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSplitting
import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualNumberMorphismEqOfLocal
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.DualMapSOfIdToRingHom
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.GrNormPosOfBasis
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IntOIsLocalRing
import Development.AbelianVarietyTheory.Definitions.Divisors.NonemptyValExtOfOverLa
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.FrMapComp
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.BcField

open NumberField MvPolynomial Filter Topology Formalism.BasicNotions Formalism.MainNotions Formalism.DegreeFormula GlobalTheory.FlagPoly GlobalTheory.Mean4 GlobalTheory.Mean4O GlobalTheory.CovTop GlobalTheory.CovHt GlobalTheory.CovTest GlobalTheory.Published
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory GlobalTheory.ArInt
open Formalism.BasicNotions.DV Formalism.MainNotions.WeightThresholdDefs GlobalTheory.FlagAr GlobalTheory.ShFam.Pad GlobalTheory.VB GlobalTheory.ShFam GlobalTheory.TrueGeo Formalism.L2.Pj GlobalTheory.Toroidal
open Formalism.MainNotions.DIV.Cons (intO)
open GlobalTheory.ArLieBase

set_option autoImplicit false
noncomputable section
namespace GlobalTheory.ArLieBase

section Assign

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E}
  {Dw : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Datum H} {l : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Level H}
  {Xo : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Moduli Dw l} {c : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Coeff l} {Oz : Type} [CommRing Oz]
  {β : Oz →+* c.F} {Z : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Model Xo c β}

variable {F : Type} [Field F] {e : F ≃+* c.F} {X W : Scheme.{0}} {jB : W ⟶ X} {πB : W ⟶ gen Z} {r : ℕ}
  {τ : E →+* ℂ}

omit [NumberField E] [IsCMField E] in

def cf (dual : Bool) {M : X.Modules} {U V : X.Opens} {f : Fin r → Γ(M, U)} (hf : VB.IsFrame f)
    {g : Fin r → Γ(M, V)} (hg : VB.IsFrame g) {K : Type} [CommRing K] (z : Sp K ⟶ X) (h1 : ⊤ ≤ z ⁻¹ᵁ (V ⊓ U))
    (h2 : ⊤ ≤ z ⁻¹ᵁ (U ⊓ V)) (a b : Fin r) : K :=
  cond dual (TangentOrigin.evalPt z _ h2 (trCo hf g a b)) (TangentOrigin.evalPt z _ h1 (trCo hg f b a))

end Assign

end GlobalTheory.ArLieBase
