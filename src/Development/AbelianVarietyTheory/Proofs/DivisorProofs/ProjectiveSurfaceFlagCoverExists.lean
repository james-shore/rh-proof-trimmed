import Mathlib
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.GenericFiniteMaps
import Development.AbelianVarietyTheory.Definitions.Divisors.IsTorsionFreeOfForallExists
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExactAndSurjectiveAppOfExactOfEpi
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.RestrictPullbackIsoHomAppPullbackSections
import Development.AbelianVarietyTheory.Definitions.QuasicoherentCohomology.IsQuasicoherentOfLocallyIso
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSubbundleKernelOfLocallyPrincipal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsImagePrincipalOfEffCartier
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GenericPointNotMemSupportCokernelOfNeZero
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.IsFiniteLengthOfIsArtinianRingAnnihilator
import ReciprocityTheory.AnalyticForms.RegularLocalRings.FinalTheorems
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.VectorBundleSurfaceNonzeroLineQuotientStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SurfaceAlterationEffectiveCartierStatement

set_option autoImplicit false

noncomputable section

open CategoryTheory AlgebraicGeometry TopologicalSpace Opposite Limits
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.LB (toMod)
open GlobalTheory.VB
open GlobalTheory.IndefiniteRowSideFullHecke.GenericFiniteMaps
open GlobalTheory

namespace GlobalTheory.FlagCover

theorem step (k : Type) [Field k] (T : Scheme.{0}) [Algebra k Γ(T, ⊤)] [IsIntegral T] (hT : IsProjSurface k T)
    (E : T.Modules) (r : ℕ) (hE : IsVB E (r + 1)) :
    ∃ (T' : Scheme.{0}) (_ : Algebra k Γ(T', ⊤)) (_ : IsIntegral T') (ρ : T' ⟶ T)
        (S : ShortComplex T'.Modules) (L : LB T'), IsProjSurface k T' ∧ ρ ≫ strHom k T = strHom k T' ∧
          IsGenFinite ρ 1 ∧ S.ShortExact ∧ Nonempty (S.X₂ ≅ (Scheme.Modules.pullback ρ).obj E) ∧ L.IsLB ∧
            Nonempty (S.X₃ ≅ toMod L) ∧ IsVB S.X₁ r := by
  obtain ⟨M, φ, hM, hφ⟩ := GlobalTheory.T.vector_bundle_surface_nonzero_line_quotient k T hT E r hE
  have := hE.isFiniteQC
  have := hM.isFiniteQC
  obtain ⟨T', _, _, ρ, hT', hc, hd, hC⟩ := GlobalTheory.T.surface_alteration_effective_cartier k T hT (QCoh.annihilatorSheaf (cokernel φ))
    fun h => VB.genericPoint_notMem_support_cokernel_of_ne_zero T E M φ hM hφ
      ((QCoh.coe_support_annihilatorSheaf _).le h)
  obtain ⟨hsub, hK⟩ := VB.isSubbundle_kernel_of_locally_principal T' _ _ ((Scheme.Modules.pullback ρ).map φ) r
    (hE.pullback ρ) (hM.pullback ρ) (VB.exists_image_principal_of_effCartier T T' ρ E M φ _ hE hM hC)
  let S : ShortComplex T'.Modules :=
    ShortComplex.mk _ _ (cokernel.condition (kernel.ι ((Scheme.Modules.pullback ρ).map φ)))
  have hS : S.ShortExact := { exact := ShortComplex.exact_cokernel _ }
  obtain ⟨s, h₃⟩ := hsub.isVB_cokernel
  have h₂ : IsVB S.X₂ (r + 1) := hE.pullback ρ
  have h₃' : IsVB S.X₃ s := h₃
  have hs : s = 1 := by
    have := h₂.isFiniteQC
    have g := genRank_shortExact hS
    rw [(show IsVB S.X₁ r from hK).genRank_eq, h₂.genRank_eq, h₃'.genRank_eq] at g
    omega
  subst hs
  exact ⟨T', inferInstance, inferInstance, ρ, S, det S.X₃ 1, hT', hc, hd, hS, ⟨Iso.refl _⟩, h₃'.isLB_det,
    ⟨h₃'.isoDet⟩, hK⟩

end GlobalTheory.FlagCover
