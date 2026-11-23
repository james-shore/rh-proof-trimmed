import Mathlib
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.SameUnifRefl
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.FinitePartOfIsFinitePart
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ProdExpPf
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ExistsFinsetRepresentatives
import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.CoeNonzeroLocusCanonicalEqComplRange
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ExistsWeightBasisFiltration
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.UniversalCharts.LePreimageOfNil
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.TorsionFiniteFlatIff

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.TorsionFormCompare

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.IndefiniteRowSideFullHecke GlobalTheory.TorusModel GlobalTheory.FormalPoint GlobalTheory.AdicColimit IsLocalRing
open scoped CategoryTheory.Obj

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}
  {R : Type} [CommRing R] [IsDomain R]

theorem tors_of_isPull [IsNoetherianRing R] {D : DegPre R} {k : ℕ} {T T' : Over (Sp R)} (h : T' ⟶ T) {g : GtPt D T}
    {g' : GtPt D T'} (hp : GtPt.IsPull h.left g g') (hg : FlatIsoUnitGenerator.GtTors k g) : FlatIsoUnitGenerator.GtTors k g' := by
  obtain ⟨Gt, _, _, Φ, hΦ, -⟩ := exists_represents D
  obtain ⟨x, rfl⟩ := (Φ T).surjective g
  obtain ⟨x', rfl⟩ := (Φ T').surjective g'
  rw [isPull_iff_comp hΦ] at hp
  rw [tors_iff hΦ] at hg ⊢
  rw [← hp, ← MonObj.comp_pow, hg, MonObj.comp_one]

variable {D : Datum H} {l : Level H} {Xo : Moduli D l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F}

end GlobalTheory.TorsionFormCompare
