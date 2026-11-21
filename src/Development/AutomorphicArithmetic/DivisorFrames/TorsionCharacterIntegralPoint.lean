import Development.AutomorphicArithmetic.LocalEmbeddings.RootFrame
import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SplitKOfIsAlgClosed
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UniqueIntegralLiftNormPInverse
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ScaleZeroComp
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsHomogeneousPolysTangentBasis
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsTangentPresentationPrime
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralPointExtensionSplitStatement
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.GrNormPosOfBasis
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsUnitOfPowEqOne

open CategoryTheory AlgebraicGeometry NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Formalism.BasicNotions Formalism.L2.Pj GlobalTheory GlobalTheory.Cartier GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.Mean4O GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.TrivFlag GlobalTheory.LineNorm
open Formalism.MainNotions.DIV.Cons (intO)
open scoped TensorProduct Matrix
open MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.RootFrame

private theorem exists_int_lift {L K : Type} [AddCommGroup L] [Module.Projective ℤ L] [Field K] {q : ℕ} (hq : q ≠ 0)
    {ζ : Kˣ} (hζ : IsPrimitiveRoot ζ q) (g : L → Kˣ) (hg : ∀ a b, g (a + b) = g a * g b) (hgq : ∀ a, g a ^ q = 1) :
    ∃ f : L →ₗ[ℤ] ℤ, ∀ b, g b = ζ ^ f b := by
  haveI : NeZero q := ⟨hq⟩
  have hm : ∀ a, g a ∈ Subgroup.zpowers ζ := fun a => by
    rw [hζ.zpowers_eq]
    exact (mem_rootsOfUnity _ _).2 (hgq a)
  let G : L →+ Additive (Subgroup.zpowers ζ) :=
    AddMonoidHom.mk' (fun a => Additive.ofMul ⟨g a, hm a⟩) fun a b => congrArg Additive.ofMul (Subtype.ext (hg a b))
  let π : ℤ →+ Additive (Subgroup.zpowers ζ) :=
    AddMonoidHom.mk' (fun k => Additive.ofMul ⟨ζ ^ k, k, rfl⟩) fun a b =>
      congrArg Additive.ofMul (Subtype.ext (zpow_add ζ a b))
  obtain ⟨f, hf⟩ := Module.projective_lifting_property π.toIntLinearMap G.toIntLinearMap (by
    rintro ⟨_, k, rfl⟩
    exact ⟨k, rfl⟩)
  exact ⟨f, fun b => (congrArg (fun z => (z.toMul : Kˣ)) (LinearMap.congr_fun hf b)).symm⟩

private theorem exists_label {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E}
    {Dw : Datum H} {l : Level H} {Xo : Moduli Dw l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F}
    (Z : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Model Xo c β) {R K : Type} [CommRing R] [Field K] {io : R →+* K}
    (hio : Function.Injective io) {x : Sp R ⟶ Z.X} {y : Sp K ⟶ Xo.XF c} {q : ℕ} (hq : q ≠ 0)
    {ch : Dw.La → TorsChar Z.t x q} (hW : WeilLab Z io x y q ch) (χ : GlobalTheory.HtGen.TorsK Z.t (y ≫ Z.j) q →* Kˣ) :
    ∃ a, GlobalTheory.HtGen.InducedBy χ x io (RingHom.id R) (ch a) := by
  obtain ⟨lb, ζ, ⟨hζ, hadd, -, hsur, -⟩, hch⟩ := hW
  obtain ⟨Φ, hΦ⟩ := GlobalTheory.WeilTorsChar.exists_mulEquiv_points _ _ _ _ Z.m.cart (Over.mk y)
  let Ψ : (Over.mk y ⟶ Z.oF.t.G) ≃* (Over.mk (y ≫ Z.j) ⟶ Z.t.G) := Φ
  have hΨ : ∀ s, (Ψ s).left = s.left ≫ Z.m.φ := hΦ
  have ht : ∀ b, Ψ (lb b) ∈ GlobalTheory.HtGen.TorsK Z.t (y ≫ Z.j) q := fun b => by
    change Ψ (lb b) ^ q = 1
    rw [← map_pow, (hsur _).2 ⟨b, rfl⟩, map_one]
  haveI : Module.Projective ℤ Dw.La := by
    obtain ⟨s, hs⟩ := Module.projective_def'.1 Dw.proj
    exact Module.Projective.of_split (s.restrictScalars ℤ)
      ((Finsupp.linearCombination (𝓞 E) (id : Dw.La → Dw.La)).restrictScalars ℤ)
      (LinearMap.ext fun a => LinearMap.congr_fun hs a)
  obtain ⟨f, hf⟩ := exists_int_lift hq hζ (fun b => χ ⟨Ψ (lb b), ht b⟩) (fun a b => by
    rw [← map_mul]
    congr 1
    exact Subtype.ext ((congrArg Ψ (hadd a b)).trans (map_mul Ψ _ _))) (fun b => by
    rw [← map_pow, show (⟨Ψ (lb b), ht b⟩ : GlobalTheory.HtGen.TorsK Z.t (y ≫ Z.j) q) ^ q = 1 from Subtype.ext (ht b), map_one])
  obtain ⟨a, ha⟩ := Dw.unimod.2 f
  refine ⟨a, fun σ k r w hσ hk hw hr => ?_⟩
  have hk1 : Ψ.symm k.1 ^ q = 1 := by
    rw [← map_pow, show k.1 ^ q = 1 from k.2, map_one]
  obtain ⟨b, hb⟩ := (hsur _).1 hk1
  have hb' : Ψ (lb b) = k.1 := by rw [hb, MulEquiv.apply_symm_apply]
  have hid : spMap (RingHom.id R) = 𝟙 _ := GlobalTheory.TorsCharExt.sp_id R
  have hx : spMap (RingHom.id R) ≫ x = spMap (algebraMap R R) ≫ x := rfl
  have hw1 : w ^ q = 1 := by
    have : w = GlobalTheory.TorsCharExt.pull Z.t (spMap (RingHom.id R)) hx.symm σ := Over.OverMorphism.ext hw
    rw [this, ← map_pow, hσ, map_one]
  have h1 := hch a b w hw1 (by rw [← hΨ, hb', hk, hw, hid, Category.id_comp])
  apply hio
  rw [h1, RingHom.id_apply, hr, ha, ← hf b]
  congr 2
  exact Subtype.ext hb'

