import Development.AutomorphicArithmetic.LocalEmbeddings.RootFrame
import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.HodgeTateLatticePointFinrankTateModule
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PtMapDualBCLeft
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.FormallyUnramifiedOfTangentMapInjective
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HodgeTateDifferenceSection
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HodgeTateGluedSection
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SplitTorsAlgClosedFractionField

open CategoryTheory AlgebraicGeometry NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Formalism.BasicNotions Formalism.L2.Pj GlobalTheory GlobalTheory.Cartier GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.Mean4O GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.TrivFlag GlobalTheory.LineNorm
open Formalism.MainNotions.DIV.Cons (intO)
open scoped TensorProduct Matrix
open MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open ReciprocityTheory.ChartRestriction.G.Pdiv GlobalTheory.HTLat GlobalTheory.CompHt GlobalTheory.FlatCore GlobalTheory.FlatModel GlobalTheory.RootFrame
open scoped NNReal
attribute [local instance] algPadicInt algPadicField towerPadic factPadic GlobalTheory.PadicComplexHost.isAdicComplete

noncomputable section SlopeTestRemainingChoices

open GlobalTheory.FinPartAt

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {X : Scheme.{0}}
  {t : SAB H X} {R : Type} [CommRing R] {ξ : Sp R ⟶ X} {q : ℕ} (P' : GlobalTheory.HTMap.FP t ξ q)
  {O : Type} [CommRing O] (x0 : R →+* O) (hu : IsUnit (x0 P'.f))

private theorem finite_Bt : Module.Finite O (Bt P' x0 hu) := by
  haveI : Module.Finite (Localization.Away P'.f) P'.B := P'.fin.finite
  haveI : Module.Finite (OL P' x0 hu) (Bt P' x0 hu) := Module.Finite.base_change _ _ _
  haveI : Module.Finite O (OL P' x0 hu) := inferInstanceAs (Module.Finite O O)
  exact Module.Finite.trans (OL P' x0 hu) (Bt P' x0 hu)

private theorem ch_mul (χ : TorsChar t (spMap x0 ≫ ξ) q) {ch : Hs P' x0 hu ⟶ Gm (Sp O)}
    (hch : ∀ (D : Type) [CommRing D] [Algebra O D] [Module.Finite O D]
      (α : Bt P' x0 hu →ₐ[O] D) (w : Over.mk (spMap (algebraMap O D) ≫ spMap x0 ≫ ξ) ⟶ t.G),
      w.left = spMap (α.toRingHom.comp (inB P' x0 hu)) ≫ P'.u.left →
        unitOf (ptMap α ≫ ch) = χ.χ D w)
    {G' : Over (Sp O)} [GrpObj G'] {π : G'.left ⟶ t.G.left} (hg : IsGrpPullback G' t.G (spMap x0 ≫ ξ) π)
    (hm : Mono (aH P' x0 hu hg.1)) (S : Over (Sp O)) (x y z : S ⟶ Hs P' x0 hu)
    (h : z ≫ aH P' x0 hu hg.1 = (x ≫ aH P' x0 hu hg.1) * (y ≫ aH P' x0 hu hg.1)) :
    z ≫ ch = (x ≫ ch) * (y ≫ ch) := by
  haveI := finite_Bt P' x0 hu
  obtain ⟨c, hc₁, hc₂⟩ := exists_mul_factor S x y
  let a : Bt P' x0 hu →ₐ[O] Bt P' x0 hu ⊗[O] Bt P' x0 hu := Algebra.TensorProduct.includeLeft
  let b : Bt P' x0 hu →ₐ[O] Bt P' x0 hu ⊗[O] Bt P' x0 hu := Algebra.TensorProduct.includeRight
  obtain ⟨z₀, hz₀⟩ := exists_mul_affine P' x0 hu hg a b
  have hz : z = c ≫ z₀ := by
    rw [← cancel_mono (aH P' x0 hu hg.1), h, Category.assoc, hz₀, MonObj.comp_mul, ← Category.assoc, hc₁,
      ← Category.assoc, hc₂]
  obtain ⟨α, rfl⟩ := eq_ptMap' z₀
  have ha := at_alg P' x0 hu a
  have hb := at_alg P' x0 hu b
  let w₁ : Over.mk (spMap (algebraMap O (Bt P' x0 hu ⊗[O] Bt P' x0 hu)) ≫ spMap x0 ≫ ξ) ⟶ t.G :=
    GlobalTheory.HTMap.mkPt _ (ha.over.trans (GlobalTheory.HTMap.spc_assoc _ _ _).symm)
  let w₂ : Over.mk (spMap (algebraMap O (Bt P' x0 hu ⊗[O] Bt P' x0 hu)) ≫ spMap x0 ≫ ξ) ⟶ t.G :=
    GlobalTheory.HTMap.mkPt _ (hb.over.trans (GlobalTheory.HTMap.spc_assoc _ _ _).symm)
  have h12 : (w₁ * w₂).left = spMap (α.toRingHom.comp (inB P' x0 hu)) ≫ P'.u.left := by
    rw [← aH_left_π_ptMap P' x0 hu hg.1 α, hz₀]
    exact hg.2 (specO O _) _ _ w₁ w₂ (aH_left_π_ptMap P' x0 hu hg.1 a).symm
      (aH_left_π_ptMap P' x0 hu hg.1 b).symm
  have k : ptMap α ≫ ch = (ptMap a ≫ ch) * (ptMap b ≫ ch) := by
    apply GlobalTheory.GmPoints.unitOf_bijective.1
    rw [GlobalTheory.GmPoints.unitOf_mul, hch _ α _ h12, hch _ a w₁ rfl, hch _ b w₂ rfl]
    exact χ.mul _ w₁ w₂ (GlobalTheory.HTMap.FP.At.tors (w := w₁) ha) (GlobalTheory.HTMap.FP.At.tors (w := w₂) hb)
  rw [hz, Category.assoc, k, MonObj.comp_mul, ← Category.assoc, hc₁, ← Category.assoc, hc₂]

end SlopeTestRemainingChoices

