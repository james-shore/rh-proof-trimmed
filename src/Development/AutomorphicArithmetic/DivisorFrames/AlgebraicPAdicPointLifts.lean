import Development.AutomorphicArithmetic.LocalEmbeddings.RootFrame
import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.HodgeTateLatticePointFinrankTateModule
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPolAVFibre
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MapPairDetCovec
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteDvrExtension

open CategoryTheory AlgebraicGeometry NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Formalism.BasicNotions Formalism.L2.Pj GlobalTheory GlobalTheory.Cartier GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.Mean4O GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.TrivFlag GlobalTheory.LineNorm
open Formalism.MainNotions.DIV.Cons (intO)
open scoped TensorProduct Matrix
open MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open ReciprocityTheory.ChartRestriction.G.Pdiv GlobalTheory.HTLat GlobalTheory.CompHt GlobalTheory.FlatCore GlobalTheory.FlatModel GlobalTheory.RootFrame
open scoped NNReal
attribute [local instance] algPadicInt algPadicField towerPadic factPadic GlobalTheory.PadicComplexHost.isAdicComplete

private theorem norm_le_one_of_isIntegral (p : ℕ) [Fact p.Prime] (x : ℂ_[p]) (h1 : IsIntegral 𝓞_ℂ_[p] x) :
    ‖x‖ ≤ 1 := by
  obtain ⟨y, rfl⟩ := IsIntegrallyClosed.isIntegral_iff.mp h1
  have h2 : Valued.v (y : ℂ_[p]) ≤ 1 := y.2
  rw [← GlobalTheory.FlatModel.coe_valued]
  exact NNReal.coe_le_one.mpr h2

private theorem lift_gen {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E}
    {Dw : Datum H} {l : Level H} {Xo : Moduli Dw l} {c : Coeff l}
    (Z : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Model Xo c (algebraMap (𝓞 c.F) c.F)) {K C : Type} [Field K] [Field C] (k : K →+* C)
    (x : Sp K ⟶ Z.X) (yy : Sp C ⟶ Xo.XF c) (h : spMap k ≫ x = yy ≫ Z.j) :
    ∃ y : Sp K ⟶ Xo.XF c, y ≫ Z.j = x ∧ spMap k ≫ y = yy := by
  have h' : spMap k ≫ x = yy ≫ Z.jQ ≫ Limits.pullback.fst _ _ := h
  obtain ⟨b, hb⟩ : ∃ b : 𝓞 c.F →+* K, x ≫ Z.s = spMap b :=
    ⟨(Spec.preimage (x ≫ Z.s)).hom, (Spec.map_preimage (x ≫ Z.s)).symm⟩
  obtain ⟨g₀, hg₀⟩ : ∃ g₀ : c.F →+* C, yy ≫ Z.jQ ≫ Limits.pullback.snd _ _ = spMap g₀ :=
    ⟨(Spec.preimage (yy ≫ Z.jQ ≫ Limits.pullback.snd _ _)).hom, (Spec.map_preimage _).symm⟩
  have e0 : k.comp b = g₀.comp (algebraMap (𝓞 c.F) c.F) := by
    have e : spMap (k.comp b) = spMap (g₀.comp (algebraMap (𝓞 c.F) c.F)) := by
      rw [← spMap_spMap, ← spMap_spMap, ← hb, ← hg₀, reassoc_of% h', Limits.pullback.condition]
      simp only [Category.assoc]
    exact congrArg CommRingCat.Hom.hom (Spec.map_injective e)
  have hbi : Function.Injective b := by
    have : Function.Injective (k.comp b) := by
      rw [e0]
      exact g₀.injective.comp (IsFractionRing.injective (𝓞 c.F) c.F)
    exact Function.Injective.of_comp (f := k) this
  let g : c.F →+* K := IsFractionRing.lift hbi
  have hg : g.comp (algebraMap (𝓞 c.F) c.F) = b := RingHom.ext fun a => IsFractionRing.lift_algebraMap hbi a
  have hkg : k.comp g = g₀ :=
    IsLocalization.ringHom_ext (nonZeroDivisors (𝓞 c.F)) (by rw [RingHom.comp_assoc, hg, e0])
  have hw : x ≫ Z.s = spMap g ≫ spMap (algebraMap (𝓞 c.F) c.F) := by rw [spMap_spMap, hg, hb]
  let yK : Sp K ⟶ Limits.pullback Z.s (spMap (algebraMap (𝓞 c.F) c.F)) := Limits.pullback.lift x (spMap g) hw
  have hyK : spMap k ≫ yK = yy ≫ Z.jQ := by
    refine Limits.pullback.hom_ext ?_ ?_
    · rw [Category.assoc, Limits.pullback.lift_fst, h', Category.assoc]
    · rw [Category.assoc, Limits.pullback.lift_snd, Category.assoc, hg₀, spMap_spMap, hkg]
  have hr : Set.range yK ⊆ Set.range Z.jQ := by
    rintro _ ⟨q, rfl⟩
    obtain ⟨q0⟩ : Nonempty (Sp C) := inferInstance
    have hq : q = spMap k q0 := Subsingleton.elim (α := PrimeSpectrum K) _ _
    rw [hq, ← Scheme.Hom.comp_apply, hyK, Scheme.Hom.comp_apply]
    exact ⟨_, rfl⟩
  haveI := Z.jQ_open
  have hy' : IsOpenImmersion.lift Z.jQ yK hr ≫ Z.jQ = yK := IsOpenImmersion.lift_fac _ _ _
  refine ⟨IsOpenImmersion.lift Z.jQ yK hr, ?_, ?_⟩
  · show _ ≫ Z.jQ ≫ Limits.pullback.fst _ _ = _
    rw [← Category.assoc, hy', Limits.pullback.lift_fst]
  · rw [← cancel_mono Z.jQ, Category.assoc, hy', hyK]

