import Mathlib
import Development.AutomorphicArithmetic.DivisorFrames.FlagCarriesEigenframe
import Development.AutomorphicArithmetic.DivisorFrames.LevelFlagCompactPoint
import Development.AutomorphicArithmetic.LocalEmbeddings.ConsAgree
import Development.AutomorphicArithmetic.LocalEmbeddings.ConsMatch
import Development.AbelianVarietyTheory.PublishedTheorems.SemiabelianTori.GeometricallyConnectedSplitTorusAff
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LocalSystemModelMap
import Development.AbelianVarietyTheory.Definitions.Divisors.ToIThCapDegOfAddNsmulDivP
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ChiLenPicPushforwardOfIsClosedImmersion
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsChartOfMaximal
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.GrNormPosOfBasis
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabComp

open AlgebraicGeometry CategoryTheory Limits NumberField IsLocalRing
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj GlobalTheory.LocM GlobalTheory.Toroidal GlobalTheory.ShFam GlobalTheory.ShFam.Pad
open GlobalTheory GlobalTheory.CechPic GlobalTheory.Cartier GlobalTheory.ConsGeo

namespace UpperTheory.MAgree
open GlobalTheory.ShFam.Pad.Pull

section Tri

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {X : Scheme.{0}}

private def DT (t : SAB H X) {R : Type} [CommRing R] (x : Sp R ⟶ X) {m : ℕ}
    (u u' : Fin m → (Sp (DualNumber R) ⟶ t.G.left)) (d : Fin m → R) : Prop :=
  ∀ i, ∃ cf : Fin m → R, cf i = d i ∧ (∀ k, i < k → cf k = 0) ∧ IsCombAtG t x u cf (u' i)

variable {t : SAB H X} {k : Type} [Field k] {x : Sp k ⟶ X} {m : ℕ}
  {u u' u'' : Fin m → (Sp (DualNumber k) ⟶ t.G.left)} {d d' : Fin m → k}

private theorem DT.tri (h : DT t x u u' d) : Tri t x u u' := fun i => have ⟨cf, _, h1, h2⟩ := h i; ⟨cf, h1, h2⟩

private theorem DT.trans (hu : Ind t x u) (hu' : Ind t x u') (h : DT t x u u' d) (h' : DT t x u' u'' d') :
    DT t x u u'' fun i => d' i * d i := fun i => by
  obtain ⟨a, a0, a1, a2⟩ := h' i
  obtain ⟨b, b0, -, b2⟩ := h i
  obtain ⟨c, e, c1, e1, e2, e3⟩ := h.tri.comp hu.1 hu'.1 a1 a2
  exact ⟨e, by rw [e2, hu.2 _ _ _ c1 b2, a0, b0], e1, e3⟩

private theorem DT.symm (hu : Ind t x u) (hu' : Ind t x u') (h : DT t x u u' d) :
    DT t x u' u fun i => (d i)⁻¹ := fun i => by
  obtain ⟨h1, h2⟩ := h.tri.symm hu hu'
  obtain ⟨a, a1, a2⟩ := h1 i
  obtain ⟨b, b0, -, b2⟩ := h i
  exact ⟨a, (eq_inv_of_mul_eq_one_right (h2 i b a b2 a2)).trans (congrArg (·⁻¹) b0), a1, a2⟩

private theorem DT.map {R S : Type} [CommRing R] [CommRing S] (φ : R →+* S) {x : Sp R ⟶ X}
    {u u' : Fin m → (Sp (DualNumber R) ⟶ t.G.left)} {d : Fin m → R} (h : DT t x u u' d) :
    DT t (spMap φ ≫ x) (fun i => spMap (dualMap φ) ≫ u i) (fun i => spMap (dualMap φ) ≫ u' i) fun i => φ (d i) :=
  fun i => by
    obtain ⟨a, a0, a1, a2⟩ := h i
    exact ⟨fun j => φ (a j), congrArg φ a0, fun j hj => (congrArg φ (a1 j hj)).trans (map_zero φ), GlobalTheory.LatDRFree.comb_map t φ a2⟩

end Tri

end UpperTheory.MAgree

