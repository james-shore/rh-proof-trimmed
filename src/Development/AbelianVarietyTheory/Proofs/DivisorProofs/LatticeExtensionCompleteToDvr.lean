import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasLatticesComplete
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClsDivPullEqVPull
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.GenericFiniteMaps
import Development.AbelianVarietyTheory.Definitions.Divisors.IsTorsionFreeOfForallExists
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExactAndSurjectiveAppOfExactOfEpi
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.RestrictPullbackIsoHomAppPullbackSections
import Development.AbelianVarietyTheory.Definitions.QuasicoherentCohomology.IsQuasicoherentOfLocallyIso
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.RangeAlgebraMapEqIInfDiscreteValuationSubring

set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry Limits MonoidalCategory CartesianMonoidalCategory MonObj TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.VB GlobalTheory.LieVB GlobalTheory.CurveRootGeometry GlobalTheory.TwoSeq GlobalTheory.DeRham GlobalTheory.AbDual GlobalTheory.ConjSeq GlobalTheory.PDiv GlobalTheory.PDivGroup GlobalTheory.BadPt
open GlobalTheory.QCoh (pullbackSections res_pullbackSections pullback_map_app_pullbackSections pullbackSections_smul)

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.BadPt.Descent

section Algebra

variable {R S K L : Type} [CommRing R] [CommRing S] [CommRing K] [CommRing L]
  {H H' : Type} [AddCommGroup H] [Module K H] [AddCommGroup H'] [Module L H']

def Lat (φ : R →+* K) {n : ℕ} (e : Fin n → H) (s : H) : Prop := ∃ r : Fin n → R, s = ∑ i, φ (r i) • e i

theorem Lat.add {φ : R →+* K} {n : ℕ} {e : Fin n → H} {s t : H} (hs : Lat φ e s) (ht : Lat φ e t) :
    Lat φ e (s + t) := by
  obtain ⟨r, rfl⟩ := hs
  obtain ⟨r', rfl⟩ := ht
  exact ⟨r + r', by simp [add_smul, Finset.sum_add_distrib]⟩

theorem Lat.smul {φ : R →+* K} {n : ℕ} {e : Fin n → H} {s : H} (c : R) (hs : Lat φ e s) :
    Lat φ e (φ c • s) := by
  obtain ⟨r, rfl⟩ := hs
  exact ⟨c • r, by simp [Finset.smul_sum, mul_smul]⟩

theorem Lat.sub {φ : R →+* K} {n : ℕ} {e : Fin n → H} {s t : H} (hs : Lat φ e s) (ht : Lat φ e t) :
    Lat φ e (s - t) := by
  simpa [sub_eq_add_neg] using hs.add (ht.smul (-1))

variable {φ : R →+* K} {ψ : S →+* L} {θ : K →+* L} {n : ℕ} {e : Module.Basis (Fin n) K H}
  {e' : Module.Basis (Fin n) L H'} {j : H →+ H'}

end Algebra

end GlobalTheory.BadPt.Descent
