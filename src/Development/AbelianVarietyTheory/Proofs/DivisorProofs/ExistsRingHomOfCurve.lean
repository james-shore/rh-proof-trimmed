import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SemiposAtOfPositive
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NefFibOfCurveDegreesNonneg
import Development.AbelianVarietyTheory.Definitions.Divisors.NefFibOfIsNef
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IntersectionNumberFinitePushforward
import Development.AbelianVarietyTheory.Definitions.Divisors.IsTorsionFreeOfForallExists
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemLocalSubringGenericPoint
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ResidueDegreeOfIsOpenImmersion
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ResidueDegreeOfIsClosedImmersion
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.EventuallySubsingletonCohTwistZOfIsProjOver
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.IsFiniteLengthOfIsArtinianRingAnnihilator
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsPreimagePositiveResidueDegree
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RingKrullDimLeOfIsAlgebraic
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RingKrullDimIntegers
import Development.AbelianVarietyTheory.Definitions.Divisors.EqOfSpecializesOfFinite
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallSectionHeightLowerBound
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KrullDimOneOfFiniteGeneric
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsumSmul
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.IsGloballyGeneratedIffGeneratingSections
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntEmbCoe
import Development.AbelianVarietyTheory.Proofs.HermitianTraceForms.IsLocallyConstantRankAtStalkEigenSub
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsIsoAppTopOfIsPullbackOfSurjective
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ToroidalCompactificationData

set_option autoImplicit false

noncomputable section

open CategoryTheory AlgebraicGeometry Limits NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.VB GlobalTheory.LieVB

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.CurveRootGeometry

section Emb

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {l : Level H} (c : Coeff l)
  {q : ℕ} [Fact q.Prime] {k : Type} [Field k] [CharP k q] (hd : ¬ q ∣ (discr E).natAbs) (β : 𝓞 c.F →+* k)

include hd in

theorem isSplitBy_intEmb : IsSplitBy fun τ : E →+* ℂ => β.comp (intEmb c τ) := by
  have h : EigenSplit.IsSplitting fun τ : E →+* ℂ => β.comp (intEmb c τ) := by
    refine EigenSplit.isSplitting_of_isDomain (fun σ τ h => ?_) (NumberField.Embeddings.card E ℂ) β ?_
    · exact IsLocalization.ringHom_ext (nonZeroDivisors (𝓞 E))
        (RingHom.ext fun a => congrArg (fun f : 𝓞 E →+* 𝓞 c.F => (((f a : 𝓞 c.F) : c.F) : ℂ)) h)
    · rw [isUnit_iff_ne_zero, Ne, CharP.intCast_eq_zero_iff k q]
      exact fun h => hd (Int.natCast_dvd.1 h)
  refine isSplitBy_of_injective h.injective ?_
  rw [NumberField.Embeddings.card, RingOfIntegers.rank]

end Emb

end GlobalTheory.CurveRootGeometry
