import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ScholzeWeinsteinB
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsFlagBundleRankOne
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.RegularAlteration
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLieFrames
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpecializationMapCompUniversalSection
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsValuationSubringDominatingSubring
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj
import Development.AbelianVarietyTheory.Proofs.GenericRegularity.ExistsChartFiniteType
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.DualGramInterpGram
import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.IsOpenOfMemIrreducibleComponentsOfFinite
import Formalism.LocalToGlobal.LatticeGeometry.CmTypeMeetsConjugatePair
import Development.AutomorphicArithmetic.LocalEmbeddings.ExistsIsMapToFn
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFlagBundleIff

open NumberField MvPolynomial Filter Topology Formalism.BasicNotions Formalism.MainNotions Formalism.DegreeFormula GlobalTheory.FlagPoly GlobalTheory.Mean4 GlobalTheory.Mean4O GlobalTheory.CovTop GlobalTheory.CovHt GlobalTheory.CovTest GlobalTheory.Published
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory GlobalTheory.ArInt
open Formalism.BasicNotions.DV Formalism.MainNotions.WeightThresholdDefs GlobalTheory.FlagAr GlobalTheory.ShFam.Pad GlobalTheory.VB GlobalTheory.ShFam GlobalTheory.TrueGeo Formalism.L2.Pj GlobalTheory.Toroidal GlobalTheory.ArLieBase
open GlobalTheory.Cartier GlobalTheory.CxPts GlobalTheory.ProjVar
open scoped Classical

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.FlagExt

open Limits

section Frames

open scoped MonObj

attribute [local instance] Over.cartesianMonoidalCategory

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}
  {l : Level H} {Xo : Moduli Dw l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F} {Z : Model Xo c β}

section Same

variable {R : Type} [CommRing R] {φ : c.F →+* R} {x : Sp R ⟶ Z.X}

private def Same (f g : EigFrame Z φ x) : Prop := ∀ τ, (f.co g τ).BlockTriangular id

private theorem Same.trans {f g k : EigFrame Z φ x} (h : Same f g) (h' : Same g k) : Same f k := fun τ => by
  rw [← f.co_mul g k τ]; exact (h τ).mul (h' τ)

private theorem tri_symm {f g : EigFrame Z φ x} {τ : E →+* ℂ} (h : (f.co g τ).BlockTriangular id) :
    (g.co f τ).BlockTriangular id := by
  have := Matrix.invertibleOfIsUnitDet _ (f.isUnit_det_co g τ)
  rw [← Matrix.inv_eq_right_inv ((f.co_mul g f τ).trans (f.co_self τ))]
  exact Matrix.blockTriangular_inv_of_blockTriangular h

private theorem Same.symm {f g : EigFrame Z φ x} (h : Same f g) : Same g f := fun τ => tri_symm (h τ)

variable {R' : Type} [CommRing R'] {φ' : c.F →+* R'} {x' : Sp R' ⟶ Z.X}

private theorem Same.map {f g : EigFrame Z φ x} (h : Same f g) {ψ : R →+* R'} {f' g' : EigFrame Z φ' x'}
    (hf : f.IsMap ψ f') (hg : g.IsMap ψ g') (hx : x' = spMap ψ ≫ x) : Same f' g' := fun τ i j hij => by
  rw [hf.co τ hg hx, Matrix.map_apply, h τ hij, map_zero]

end Same

variable {F : Type} [Field F] {e : F ≃+* c.F}

end Frames

end GlobalTheory.FlagExt

end

