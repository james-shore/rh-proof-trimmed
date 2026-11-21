import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasLatticesComplete
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ShortExactMapOfIso
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.GenericFiniteMaps
import Development.AbelianVarietyTheory.Definitions.Divisors.IsTorsionFreeOfForallExists
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemLocalSubringGenericPoint
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsVBAndClsDetOfShortExact
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsFrameOfBijectiveStalk
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsDomainAndIsIntegrallyClosedAtPrimeOfSmoothOfCo
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfFrames
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMemChart
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.IsGloballyGeneratedIffGeneratingSections
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.EventuallySubsingletonCohTwistZOfIsProjOver

set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry Limits TopologicalSpace
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.VB GlobalTheory.TwoSeq GlobalTheory.BadPt GlobalTheory.FlagLocal
open GlobalTheory.QCoh (pullbackSections res_pullbackSections pullbackSections_res pullback_map_app_pullbackSections app_app
  pullbackSections_smul)
open GlobalTheory.Twist (resM resM_resM resM_self app_resM resM_smul germ_resM)

namespace GlobalTheory.LatticeExt

local notation "pb" => Scheme.Modules.pullback
local notation "pf" => Scheme.Modules.pushforward

section Germ

variable {X S : Scheme.{0}}

def IsGerm (g : S ⟶ X) (x : X) : Prop :=
  (∀ W : X.Opens, x ∈ W → ⊤ ≤ g ⁻¹ᵁ W) ∧
    ∀ c : Γ(S, ⊤), ∃ (W : X.Opens) (_ : x ∈ W) (h : ⊤ ≤ g ⁻¹ᵁ W) (a : Γ(X, W)), g.appLE W ⊤ h a = c

variable {g : S ⟶ X} {F : X.Modules} {r : ℕ}

variable [IsIntegral X]

end Germ

section Lattice

variable {X T : Scheme.{0}} {R K : Type} [CommRing R] [Field K] [Algebra R K] {f : Sp R ⟶ X} {j : T ⟶ X} {ξ : Sp K ⟶ T}
  (w : spMap (algebraMap R K) ≫ f = ξ ≫ j) {x : X} (hf : IsGerm f x)

include w hf in
theorem top_le {W : X.Opens} (hx : x ∈ W) : ⊤ ≤ ξ ⁻¹ᵁ j ⁻¹ᵁ W := by
  rw [← Scheme.Hom.comp_preimage, ← w, Scheme.Hom.comp_preimage]
  exact fun q _ => hf.1 W hx trivial

def gen (M : T.Modules) {W : X.Opens} (hx : x ∈ W) : Γ((pf j).obj M, W) →+ Γ((pb ξ).obj M, ⊤) where
  toFun s := pullbackSections ξ M (top_le w hf hx) s
  map_zero' := map_zero _
  map_add' _ _ := map_add _ _ _

variable {M M' : T.Modules} {W W' : X.Opens}

theorem gen_res (h : W' ≤ W) (hx : x ∈ W') (s : Γ((pf j).obj M, W)) :
    gen w hf M hx (resM _ h s) = gen w hf M (h hx) s :=
  pullbackSections_res ξ M (top_le w hf hx) (j.preimage_mono h) s

theorem gen_smul (hx : x ∈ W) (a : Γ(X, W)) (s : Γ((pf j).obj M, W)) :
    gen w hf M hx (a • s) = (spMap (algebraMap R K)).appTop (f.appLE W ⊤ (hf.1 W hx) a) • gen w hf M hx s := by
  refine (pullbackSections_smul ξ M (top_le w hf hx) (j.app W a) s).trans ?_
  congr 1
  have e : j.app W ≫ ξ.appLE _ ⊤ (top_le w hf hx) = f.appLE W ⊤ (hf.1 W hx) ≫ (spMap (algebraMap R K)).appTop := by
    rw [Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_comp_appLE, Scheme.Hom.appTop, Scheme.Hom.app_eq_appLE]
    erw [Scheme.Hom.appLE_comp_appLE]
    congr 1
    exact w.symm
  exact congr($e a)

theorem gen_map (φ : M ⟶ M') (hx : x ∈ W) (s : Γ((pf j).obj M, W)) :
    gen w hf M' hx (((pf j).map φ).app W s) = ((pb ξ).map φ).app ⊤ (gen w hf M hx s) :=
  (pullback_map_app_pullbackSections ξ φ _ s).symm

theorem gen_unit (F : X.Modules) (hx : x ∈ W) (s : Γ(F, W)) :
    gen w hf _ hx ((tr (𝟙 ((pb j).obj F))).app W s) = resSec w F (pullbackSections f F (hf.1 W hx) s) := by
  rw [tr_app]
  exact (Vert.DivPull.pullbackSquare_app w F (hf.1 W hx) le_top le_rfl (top_le w hf hx) s).symm

variable (R) in

def IsLat {N : (Sp K).Modules} (L : Γ(N, ⊤) → Prop) : Prop :=
  L 0 ∧ (∀ s t, L s → L t → L (s + t)) ∧ ∀ (c : Γ(Sp R, ⊤)) s, L s → L ((spMap (algebraMap R K)).appTop c • s)

theorem isLat_resSec (F : X.Modules) : IsLat R fun s => ∃ t, s = resSec w F t := by
  refine ⟨⟨0, by rw [resSec, map_zero, map_zero]⟩, ?_, ?_⟩
  · rintro _ _ ⟨t, rfl⟩ ⟨t', rfl⟩
    exact ⟨t + t', by rw [resSec, resSec, resSec, map_add, map_add]⟩
  · rintro c _ ⟨t, rfl⟩
    refine ⟨c • t, ?_⟩
    rw [resSec, resSec, pullbackSections_smul, Scheme.Modules.Hom.app_smul, Scheme.Hom.appTop, Scheme.Hom.app_eq_appLE]
    rfl

variable {L : Γ((pb ξ).obj M, ⊤) → Prop} {L' : Γ((pb ξ).obj M', ⊤) → Prop}

def latSub (hL : IsLat R L) : Sub ((pf j).obj M) where
  sec W :=
    { carrier := {s | ∀ hx : x ∈ W, L (gen w hf M hx s)}
      add_mem' := fun hs ht hx => by rw [map_add]; exact hL.2.1 _ _ (hs hx) (ht hx)
      zero_mem' := fun hx => by rw [map_zero]; exact hL.1
      smul_mem' := fun a s hs hx => by rw [gen_smul]; exact hL.2.2 _ _ (hs hx) }
  res_mem h s hs hx := by rw [gen_res]; exact hs _
  mem_of_local H hx := by
    obtain ⟨W', h, hx', hs⟩ := H x hx
    have := hs hx'
    rwa [gen_res] at this

def latMap (hL : IsLat R L) (hL' : IsLat R L') (φ : M ⟶ M') (h : ∀ s, L s → L' (((pb ξ).map φ).app ⊤ s)) :
    (latSub w hf hL).toMod ⟶ (latSub w hf hL').toMod :=
  (latSub w hf hL').lift ((latSub w hf hL).incl ≫ (pf j).map φ) fun W s hx => by
    rw [← app_app, gen_map]
    exact h _ ((latSub w hf hL).incl_app_mem s hx)

@[reassoc] theorem latMap_incl (hL : IsLat R L) (hL' : IsLat R L') (φ : M ⟶ M')
    (h : ∀ s, L s → L' (((pb ξ).map φ).app ⊤ s)) :
    latMap w hf hL hL' φ h ≫ (latSub w hf hL').incl = (latSub w hf hL).incl ≫ (pf j).map φ := rfl

def latUnit (F : X.Modules) : F ⟶ (latSub w hf (isLat_resSec w F)).toMod :=
  Sub.lift _ (tr (𝟙 _)) fun _ s hx => ⟨_, gen_unit w hf F hx s⟩

@[reassoc] theorem latUnit_incl (F : X.Modules) : latUnit w hf F ≫ (latSub w hf (isLat_resSec w F)).incl = tr (𝟙 _) := rfl

variable [IsIntegral T] (hξ : IsGerm ξ (genericPoint T)) {r : ℕ}

variable (hT : ∀ W₀ : T.Opens, genericPoint T ∈ W₀ → ∃ W : X.Opens, x ∈ W ∧ j ⁻¹ᵁ W ≤ W₀)

variable [IsOpenImmersion j] [IsIntegral X] {V : X.Opens} (hV : ∀ y ∈ V, y ≠ x → y ∈ j.opensRange)

end Lattice

end GlobalTheory.LatticeExt
