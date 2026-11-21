import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntEmbCoe
import Development.AbelianVarietyTheory.Definitions.Divisors.SemiposAtOfPositive
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingHomOfCurve
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormsAtOfNorms
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExistsLinearMapMultilinearMapBaseChange
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormsOfInduces
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.EqOfIsometricTrivShift
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsUniqueLiesUnder
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.JGenSpecializes
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FromModelNeg
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.MultiplicationLatticeSecond
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsProperToroidalModelStructureMap
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoverFunctionFieldMapEq
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IoOfLeOneIff
import Development.AbelianVarietyTheory.Definitions.Divisors.ReferenceMetricMulDualEqOne
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsZeroOfInvOfNotRegularNormalStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsExtPlaceOfNeZeroMaximalStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsExtPointSpecializingOutsideBasicOpen
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RegularOfValuationBoundedAtPoints
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsometricOfSameNorms
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinsumLifts
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsRatSecOfPull
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SplitKOfIsAlgClosed
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ValAtAlgebraMap
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsModelRefinementGenerating
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsNormalModelOverProjective
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsHomogeneousPolysTangentBasis
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TangentSectionsOnNormalModel
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.DualGramInterpGram
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoverRefinementExists
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SmoothOfAlgClosedUnif
import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsRegularFnIffOfIsAffineOpen
import Development.AutomorphicArithmetic.LocalEmbeddings.TriFrDefs
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RingKrullDimLeOfIsAlgebraic
import Development.AutomorphicArithmetic.DivisorFrames.TriangularBasisFromUnitMinors
import Development.AutomorphicArithmetic.DivisorFrames.SplitEigenTangentCoordinates
import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.MemRangeCompIffOfIsClosedImmersion

section Helpers

open CategoryTheory AlgebraicGeometry Limits NumberField IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj GlobalTheory GlobalTheory.Toroidal GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.TrueGeo GlobalTheory.Cartier GlobalTheory.ProjVar GlobalTheory.LineNorm GlobalTheory.Mean4O
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.TriFlag.Pf

private theorem sp_comp {A B C : Type} [CommRing A] [CommRing B] [CommRing C] (f : A →+* B) (g : B →+* C) :
    spMap (g.comp f) = spMap g ≫ spMap f := (Spec.map_comp _ _)

private theorem sp_inj {A B : Type} [CommRing A] [CommRing B] {f g : A →+* B} (h : spMap f = spMap g) : f = g :=
  congrArg CommRingCat.Hom.hom (Spec.map_injective h)

private theorem shrink {X : Scheme.{0}} [IsIntegral X] {U : X.Opens} {x : X} (hx : x ∈ U) {I J : Type} [Finite I] [Finite J]
    (f : I → X.functionField) (u : J → X.functionField) (hf : ∀ i, RegAt x (f i)) (hu : ∀ j, UnitAt x (u j)) :
    ∃ (T : X.Opens) (_ : IsAffineOpen T) (hxT : x ∈ T), T ≤ U ∧ (∀ i, ∃ c, fnOf T (gen_mem hxT) c = f i) ∧
      ∀ j, ∃ c : Γ(X, T)ˣ, fnOf T (gen_mem hxT) c = u j := by
  obtain ⟨W, hW, hc⟩ := GlobalTheory.InvertIdeal.exists_common_open (x := x) (ι := I ⊕ J ⊕ J)
    (g := Sum.elim f (Sum.elim u fun j => (u j)⁻¹)) (by
      rintro (i | j | j)
      exacts [hf i, (hu j).regAt, (hu j).inv.regAt])
  obtain ⟨T, hT, hxT, hle⟩ := exists_isAffineOpen_mem_and_subset (show x ∈ W ⊓ U from ⟨hW, hx⟩)
  have hle' : T ≤ W ⊓ U := hle
  have key : ∀ k, ∃ c, fnOf T (gen_mem hxT) c = Sum.elim f (Sum.elim u fun j => (u j)⁻¹) k := fun k => by
    obtain ⟨a, ha⟩ := hc k
    exact ⟨resG X (hle'.trans inf_le_left) a, (fnOf_resG _ _ _).trans ha⟩
  refine ⟨T, hT, hxT, hle'.trans inf_le_right, fun i => key (.inl i), fun j => ?_⟩
  obtain ⟨a, ha⟩ := key (.inr (.inl j))
  obtain ⟨a', ha'⟩ := key (.inr (.inr j))
  have h1 : a * a' = 1 := fnOf_injective T (gen_mem hxT) (by
    rw [map_mul, ha, ha', map_one]; exact mul_inv_cancel₀ (hu j).ne_zero)
  exact ⟨⟨a, a', h1, by rw [mul_comm, h1]⟩, ha⟩

private theorem gen_eq {X : Scheme.{0}} [IsIntegral X] {U : X.Opens} (hU : IsAffineOpen U) (h : genericPoint X ∈ U) :
    spMap (fnOf U h) ≫ hU.fromSpec = GlobalTheory.CurveRootGeometry.genPt X :=
  hU.fromSpecStalk_eq_fromSpecStalk h

private theorem loc {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {X : Scheme.{0}}
    (t : SAB H X) {A : Type} [CommRing A] (s : X ⟶ Sp A) {S : Type} [Fintype S] (ε : S → (𝓞 E →+* A)) (τ : S)
    {W : Scheme.{0}} [IsIntegral W] (b : W ⟶ X) {U : W.Opens} (hU : IsAffineOpen U) {x : W} (hx : x ∈ U)
    (κ : A →+* W.functionField) (hκ : (GlobalTheory.CurveRootGeometry.genPt W ≫ b) ≫ s = spMap κ)
    (hsp : GlobalTheory.VB.IsSplitBy fun σ => κ.comp (ε σ)) (hsep : ∀ σ, σ ≠ τ → ∃ c, UnitAt x (κ (ε τ c) - κ (ε σ c)))
    {g : ℕ} (eb : Fin g → (Sp (DualNumber Γ(W, U)) ⟶ t.G.left)) (he : IsTanBasis t (R := Γ(W, U)) (hU.fromSpec ≫ b) eb)
    {n : ℕ} (u₀ : Fin n → (Sp (DualNumber W.functionField) ⟶ t.G.left))
    (h0 : ∀ m, IsTanAtG t (GlobalTheory.CurveRootGeometry.genPt W ≫ b) (u₀ m))
    (h1 : ∀ (m : Fin n) (c : 𝓞 E), u₀ m ≫ (t.act.act c).left = spMap (epsMul (κ (ε τ c))) ≫ u₀ m)
    (h2 : ∀ w, IsTanAtG t (GlobalTheory.CurveRootGeometry.genPt W ≫ b) w →
      (∀ c : 𝓞 E, w ≫ (t.act.act c).left = spMap (epsMul (κ (ε τ c))) ≫ w) →
      ∃ cf : Fin n → W.functionField, IsCombAtG t (GlobalTheory.CurveRootGeometry.genPt W ≫ b) u₀ cf w)
    (A₀ : Fin n → Fin g → W.functionField)
    (hA : ∀ l, IsCombAtG t (GlobalTheory.CurveRootGeometry.genPt W ≫ b) (fun i => spMap (dualMap (fnOf U (gen_mem hx))) ≫ eb i) (A₀ l) (u₀ l))
    (d : Fin n → W.functionField)
    (hm : ∀ (k : ℕ) (hk : k ≤ n), (∀ s, RegAt x (minor (fun m => d m • A₀ m) hk s)) ∧
      ∃ s, UnitAt x (minor (fun m => d m • A₀ m) hk s)) :
    ∃ (T : W.Opens) (hT : IsAffineOpen T) (hxT : x ∈ T) (w : Fin n → (Sp (DualNumber Γ(W, T)) ⟶ t.G.left)), T ≤ U ∧
      IsLocFr t s (ε τ) (R := Γ(W, T)) (hT.fromSpec ≫ b) w ∧
      IsTriOf t (GlobalTheory.CurveRootGeometry.genPt W ≫ b) u₀ d (fun m => spMap (dualMap (fnOf T (gen_mem hxT))) ≫ w m) := by
  classical
  choose cs hcs using hsep
  choose s₀ hs₀ using fun (k : ℕ) (hk : k ≤ n) => (hm k hk).2
  obtain ⟨T, hT, hxT, hle, hf, hu⟩ := shrink hx (I := Σ k : Fin (n + 1), Fin k → Fin g) (J := Fin (n + 1) ⊕ {σ // σ ≠ τ})
    (fun i => minor (fun m => d m • A₀ m) (Nat.lt_succ_iff.1 i.1.2) i.2)
    (Sum.elim (fun k => minor (fun m => d m • A₀ m) (Nat.lt_succ_iff.1 k.2) (s₀ _ (Nat.lt_succ_iff.1 k.2)))
      fun σ => κ (ε τ (cs σ.1 σ.2)) - κ (ε σ.1 (cs σ.1 σ.2)))
    (fun i => (hm _ _).1 _) (by
      rintro (k | σ)
      exacts [hs₀ _ _, hcs _ _])
  let ι := fnOf T (gen_mem hxT)
  have hι : Function.Injective ι := fnOf_injective _ _
  obtain ⟨v, Tm, hT1, hT2, hT3, hT4⟩ := UpperTheory.triangular_basis_from_unit_minors Γ(W, T) W.functionField ι hι n g (fun m => d m • A₀ m)
    (fun k hk s => hf ⟨⟨k, Nat.lt_succ_iff.2 hk⟩, s⟩) (fun k hk => ⟨_, hu (.inl ⟨k, Nat.lt_succ_iff.2 hk⟩)⟩)
  let r : Γ(W, U) →+* Γ(W, T) := resG W hle
  have hr : spMap r ≫ hU.fromSpec = hT.fromSpec := hU.map_fromSpec hT (homOfLE hle).op
  have hιr : ι.comp r = fnOf U (gen_mem hx) := RingHom.ext fun a => fnOf_resG _ _ _
  have hg : spMap ι ≫ hT.fromSpec ≫ b = GlobalTheory.CurveRootGeometry.genPt W ≫ b := by
    rw [← Category.assoc, gen_eq]
  have he' : IsTanBasis t (R := Γ(W, T)) (hT.fromSpec ≫ b) fun i => spMap (dualMap r) ≫ eb i := by
    have := GlobalTheory.LineNorm.WedgeMax.isTanBasis_map t r he
    rwa [← Category.assoc, hr] at this
  let κ' : A →+* Γ(W, T) := (Spec.preimage ((hT.fromSpec ≫ b) ≫ s)).hom
  have hκ' : (hT.fromSpec ≫ b) ≫ s = spMap κ' := (Spec.map_preimage _).symm
  have hικ : ι.comp κ' = κ := sp_inj (by rw [sp_comp, ← hκ', ← hκ, ← hg]; simp only [Category.assoc])
  have hικ' : ∀ a, ι (κ' a) = κ a := fun a => congrArg (fun f => f a) hικ
  have hA' : ∀ l, IsCombAtG t (spMap ι ≫ hT.fromSpec ≫ b) (fun i => spMap (dualMap ι) ≫ spMap (dualMap r) ≫ eb i)
      (A₀ l) (u₀ l) := fun l => by
    simp only [GlobalTheory.LineNorm.Chart.dual_comp, hιr, hg]
    exact hA l
  have hT3' : ∀ i, (fun j => ι (v i j)) = ∑ l, (Tm i l * d l) • A₀ l := fun i => by
    rw [hT3]; simp only [smul_smul]
  obtain ⟨w, hw, hL⟩ := UpperTheory.split_eigen_tangent_coordinates E H X t A s S ε τ Γ(W, T) W.functionField ι hι (hT.fromSpec ≫ b) κ' hκ'
    (by rw [hικ]; exact hsp)
    (fun σ hσ => ⟨cs σ hσ, by
      obtain ⟨c, hc⟩ := hu (.inr ⟨σ, hσ⟩)
      have : κ' (ε τ (cs σ hσ)) - κ' (ε σ (cs σ hσ)) = c := hι (by rw [map_sub, hικ', hικ']; exact hc.symm)
      rw [this]; exact c.isUnit⟩)
    g _ he' n u₀ (by simpa only [hικ'] using h1) (by simpa only [hικ', hg] using h2) A₀ hA' v
    (fun i l => Tm i l * d l) hT3' hT4
  refine ⟨T, hT, hxT, w, hle, hL, fun m => ⟨fun l => Tm m l * d l, by simp only [hT1, one_mul],
    fun m' h => by simp only [hT2 m m' h, zero_mul], ?_⟩⟩
  obtain ⟨w', -, hw'⟩ := GlobalTheory.LineNorm.WedgeMax.exists_comb t h0 fun l => Tm m l * d l
  have htan : ∀ i, IsTanAtG t (spMap ι ≫ hT.fromSpec ≫ b) (spMap (dualMap ι) ≫ spMap (dualMap r) ≫ eb i) := fun i =>
    GlobalTheory.LieMet.isTan_map _ rfl (he'.1 i)
  have a1 := GlobalTheory.LineNorm.Chart.comb_comb htan hA' (hg ▸ hw')
  have a2 := GlobalTheory.LatDRFree.comb_map t ι (hw m)
  rw [hT3'] at a2
  have a3 := GlobalTheory.LineNorm.WedgeMax.comb_unique t htan a2 a1
  rw [← a3] at hw'
  exact hw'

private theorem sep {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {l : Level H}
    (c : Coeff l) {q : ℕ} [Fact q.Prime] (hd : ¬ q ∣ (discr E).natAbs) {W : Scheme.{0}} [IsIntegral W]
    (p : W ⟶ Sp (𝓞 c.F)) (κ : 𝓞 c.F →+* W.functionField) (hκ : GlobalTheory.CurveRootGeometry.genPt W ≫ p = spMap κ) (x : W)
    (hx : ((q : ℕ) : W.residueField x) = 0) (τ σ : E →+* ℂ) (h : σ ≠ τ) :
    ∃ a, UnitAt x (κ (GlobalTheory.CurveRootGeometry.intEmb c τ a) - κ (GlobalTheory.CurveRootGeometry.intEmb c σ a)) := by
  let κx : 𝓞 c.F →+* W.presheaf.stalk x := (Spec.preimage (W.fromSpecStalk x ≫ p)).hom
  have h1 : spMap κx = W.fromSpecStalk x ≫ p := Spec.map_preimage _
  have h2 : (algebraMap (W.presheaf.stalk x) W.functionField).comp κx = κ := sp_inj (by
    rw [sp_comp, h1, ← hκ, ← Category.assoc]
    congr 1
    exact Scheme.SpecMap_stalkSpecializes_fromSpecStalk (genericPoint_specializes x))
  have : CharP (IsLocalRing.ResidueField (W.presheaf.stalk x)) q := (CharP.charP_iff_prime_eq_zero Fact.out).2 hx
  have h3 := (GlobalTheory.CurveRootGeometry.isSplitBy_intEmb c hd ((IsLocalRing.residue (W.presheaf.stalk x)).comp κx)).injective
  by_contra hn
  refine h (h3 (RingHom.ext fun a => ?_))
  by_contra ha
  refine hn ⟨a, κx (GlobalTheory.CurveRootGeometry.intEmb c τ a) - κx (GlobalTheory.CurveRootGeometry.intEmb c σ a), ?_, by rw [← h2, map_sub]; rfl⟩
  rw [← IsLocalRing.residue_ne_zero_iff_isUnit, map_sub, sub_ne_zero]
  exact fun e => ha e.symm

end GlobalTheory.TriFlag.Pf

end Helpers

open CategoryTheory AlgebraicGeometry Limits NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory GlobalTheory.VB GlobalTheory.LieVB GlobalTheory.CurveRootGeometry
open Formalism.BasicNotions Formalism.MainNotions GlobalTheory.Mean4 GlobalTheory.Mean4O
attribute [local instance] Over.cartesianMonoidalCategory

