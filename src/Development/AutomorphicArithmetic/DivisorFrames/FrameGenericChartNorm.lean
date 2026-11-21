import Mathlib
import Development.AutomorphicArithmetic.LocalEmbeddings.ExistsIsMapToFn
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFlagBundleIff
open CategoryTheory AlgebraicGeometry NumberField IsDedekindDomain Matrix
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.L2.Pj
open GlobalTheory GlobalTheory.VB GlobalTheory.TangentOrigin GlobalTheory.Toroidal GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.TrueGeo GlobalTheory.ProjVar GlobalTheory.LineNorm GlobalTheory.BcLie GlobalTheory.CovTest GlobalTheory.Mean4O GlobalTheory.Cartier GlobalTheory.TrueCx
open scoped ComplexOrder

section SlopeTestRemainingChoices

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E}

variable {Dw : Datum H} {l : Level H} {Xo : Moduli Dw l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F}
  {Z : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Model Xo c β}

attribute [local instance] Over.cartesianMonoidalCategory in
open MonoidalCategory CartesianMonoidalCategory MonObj ReciprocityTheory.ChartRestriction.G.PullbackSections GlobalTheory.LieMet in

private theorem eq_zero_of_mulVec {R : Type} [CommRing R] {φ : c.F →+* R} {x : Sp R ⟶ Z.X} (f : EigFrame Z φ x)
    (τ : E →+* ℂ) {g : ℕ} {B : Fin g → (Sp (DualNumber R) ⟶ Z.t.G.left)} (hB : ∀ k, IsTanAtG Z.t x (B k))
    (a : Matrix (Fin g) (Fin (Dw.mult τ)) R) (ha : ∀ i, IsCombAtG Z.t x B (fun k => a k i) (f.v τ i))
    {v : Fin (Dw.mult τ) → R} (hv : a *ᵥ v = 0) : v = 0 := by
  have h1 : ∀ i, f.vec τ i = ∑ k, a k i • GlobalTheory.LieMet.tanOf (hB k) := fun i =>
    (GlobalTheory.LieMet.isComb_iff (fun k => GlobalTheory.LieMet.tanOf (hB k)) _ (f.vec τ i)).1 (ha i)
  refine funext (Fintype.linearIndependent_iff.1 (f.linearIndependent_vec τ) v ?_)
  have h2 : ∑ i, v i • f.vec τ i = ∑ k, (a *ᵥ v) k • GlobalTheory.LieMet.tanOf (hB k) := by
    simp only [h1, Finset.smul_sum, smul_smul, mulVec, dotProduct, Finset.sum_smul, mul_comm]
    exact Finset.sum_comm
  rw [h2, hv]
  simp

end SlopeTestRemainingChoices

