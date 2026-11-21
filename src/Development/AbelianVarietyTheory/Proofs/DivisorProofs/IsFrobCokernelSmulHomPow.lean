import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.GlobalHeightBoundIffAtGoodPrimes
import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.NotExistsOfSubsingleton
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.IsFiniteLengthOfIsArtinianRingAnnihilator

set_option autoImplicit false

open CategoryTheory Limits AlgebraicGeometry IsLocalRing
open GlobalTheory GlobalTheory.Vert GlobalTheory.MixedLocalChains

noncomputable section

namespace GlobalTheory.MixedLocalChains.FrobQuot

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (p : ℕ) [Fact p.Prime]
  (B : GlobalTheory.Vert.Model O)

theorem natCast_eq_zero_fibI : (p : Γ((fibI p B).subscheme, ⊤)) = 0 := by
  set I := fibI p B
  refine I.subscheme.sheaf.eq_of_locally_eq' (fun U : B.X.affineOpens => I.subschemeι ⁻¹ᵁ U.1) ⊤
    (fun _ => homOfLE le_top) ?_ _ 0 fun U => ?_
  · intro z _
    have hz : I.subschemeι z ∈ (⨆ U : B.X.affineOpens, (U : B.X.Opens)) := by
      rw [iSup_affineOpens_eq_top]; trivial
    obtain ⟨U, hU⟩ := TopologicalSpace.Opens.mem_iSup.1 hz
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨U, hU⟩
  · have h0 : (I.subschemeι.app U.1).hom (p : Γ(B.X, U.1)) = 0 := by
      rw [← RingHom.mem_ker, I.ker_subschemeι_app U]
      simp only [I, fibI, Scheme.IdealSheafData.ofIdealTop_ideal]
      have := Ideal.mem_map_of_mem (B.X.presheaf.map (homOfLE (le_top : U.1 ≤ ⊤)).op).hom
        (Ideal.mem_span_singleton_self (p : Γ(B.X, ⊤)))
      rwa [map_natCast] at this
    rw [map_natCast] at h0
    change (I.subscheme.presheaf.map _).hom (p : Γ(I.subscheme, ⊤)) = (I.subscheme.presheaf.map _).hom 0
    rw [map_natCast, map_zero]
    exact h0

end GlobalTheory.MixedLocalChains.FrobQuot

namespace GlobalTheory.MixedLocalChains.FrobQuot

end GlobalTheory.MixedLocalChains.FrobQuot

namespace GlobalTheory.MixedLocalChains

end GlobalTheory.MixedLocalChains
