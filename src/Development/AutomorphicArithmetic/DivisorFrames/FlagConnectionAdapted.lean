import Mathlib
import Development.AutomorphicArithmetic.LocalEmbeddings.ExistsIsMapToFn
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFlagBundleIff
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsometryPullIdComp
open CategoryTheory AlgebraicGeometry NumberField IsDedekindDomain Matrix
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.L2.Pj
open GlobalTheory GlobalTheory.VB GlobalTheory.TangentOrigin GlobalTheory.Toroidal GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.TrueGeo GlobalTheory.ProjVar GlobalTheory.LineNorm GlobalTheory.BcLie GlobalTheory.CovTest GlobalTheory.Mean4O GlobalTheory.Cartier GlobalTheory.TrueCx
open scoped ComplexOrder

private theorem chart_ext {X : Scheme.{0}} {M : X.Modules} {r : ℕ} {U : X.Opens} {e e' : Fin r → Γ(M, U)}
    (he : IsFrame e) (he' : IsFrame e') (h : ∀ i, e i = e' i) : (⟨U, e, he⟩ : Chart M r) = ⟨U, e', he'⟩ := by
  obtain rfl : e = e' := funext h
  rfl

private theorem pull_comp {B Y T : Scheme.{0}} (π : Y ⟶ B) (g' : T ⟶ Y) {M : B.Modules} {r : ℕ} (hM : IsVB M r)
    (b : Chart M r) : b.pull hM (g' ≫ π) =
      ((b.pull hM π).pull (hM.pullback π) g').map ((Scheme.Modules.pullbackComp g' π).app M) :=
  chart_ext (U := (g' ≫ π) ⁻¹ᵁ b.U) _ _ fun i =>
    (PullPull.pullbackComp_hom_app g' π M le_rfl le_rfl le_rfl (b.e i)).symm

