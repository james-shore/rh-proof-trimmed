import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RegFlagged
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsFlagModelHermSum
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfFrames
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ResidueDegreeOfIsOpenImmersion
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsFrameOfBijectiveStalk
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsModelRefinementGenerating
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KrullDimOneOfFiniteGeneric
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverIffIsProperAndExistsIsAmpleLB
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CmpNaturality
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsFlagBundleRankOne
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeneratingSectionsProjectiveMap
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverMorphismRestrictOfRelAmple
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExactAndSurjectiveAppOfExactOfEpi
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.RestrictPullbackIsoHomAppPullbackSections
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.IsFiniteLengthOfIsArtinianRingAnnihilator
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverCompOfIsClosedImmersion
import Development.AbelianVarietyTheory.Definitions.Divisors.IsFrameOfForallExists
import Development.AbelianVarietyTheory.Definitions.QuasicoherentCohomology.TopologicalKrullDimLeOfIrreducibleCloseds
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.RegularAlteration
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BcDensEqOfGram
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullbackPointResidueNonzero
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricallyIntegralIffGeometricallyConnectedOf
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ScholzeWeinsteinB
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRegularCoverOfAlteration
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlagBundleProductOfEach
import Development.AbelianVarietyTheory.Definitions.Divisors.NormSqColGrLineOfOrthogonal
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.EqOfIsometricTrivShift
import Development.AbelianVarietyTheory.Definitions.Divisors.SmoothOfRelativeDimensionPspace
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchubertCellOpenImmersion
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOfValILeOne
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockLuDecompositionExists
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StalkStepMono
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ColSec
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ArBirational
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClsDivPullEqVPull
import Development.AbelianVarietyTheory.Definitions.Divisors.IsTorsionFreeOfForallExists
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenImmersionCellFl
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoInclLast
import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.MulLeftCompOfPullbackPointEquivMul
import Development.AbelianVarietyTheory.Definitions.Divisors.IsIsoGenResMapSmulHom
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFlagBundleIff
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsometryPullIdComp
import Development.AbelianVarietyTheory.Definitions.Divisors.IsEquivariantToBidual
import Development.AbelianVarietyTheory.Definitions.QuasicoherentCohomology.IsQuasicoherentOfLocallyIso
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlagExtensionOfSubbundle
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KrullDimSmoothSurjectiveTotal
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ResidueDegreeOfIsClosedImmersion
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DimensionOfDominantFlatCover
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OfSwap2
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GradedMetricPullbackIsometric
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SecondChernDegreeVanishesTrueSurfaces
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSymTranslate
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.ExistsLinearOfIsMonHom
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.HermFormPullEqOfLbIsoPow
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.EqZeroOfFderivEqZero
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.DifferentiableOnProdOfForall
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LbIsoOfSameFactor
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsMonHomLift
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqZeroOfFderivEqZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjRiemannData
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabComp
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NontrivialIsomClassInt

set_option autoImplicit false

noncomputable section

open NumberField MvPolynomial CategoryTheory AlgebraicGeometry Limits
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.ArInt GlobalTheory.VB GlobalTheory.CovTest GlobalTheory.FlagChain

namespace GlobalTheory.TwoLat.Gen

section Flags

variable {X Y Z : Scheme.{0}} {E E' F F' : X.Modules} {r : ℕ}

theorem compat_ofIso {u : E ⟶ E'} {v : F ⟶ F'} {a : Vert.Flag E r} {b : Vert.Flag E' r} (h : Compat u a b)
    (e : E ≅ F) (e' : E' ≅ F') (w : e.hom ≫ v = u ≫ e'.hom) : Compat v (a.ofIso e) (b.ofIso e') := fun i => by
  obtain ⟨t, ht⟩ := h i
  refine ⟨t, ?_⟩
  change t ≫ b.ι i ≫ e'.hom = (a.ι i ≫ e.hom) ≫ v
  rw [← Category.assoc, ht, Category.assoc, Category.assoc, w]

def Flagged (u : E ⟶ E') (r : ℕ) : Prop := ∃ (m : Vert.Flag E r) (m' : Vert.Flag E' r), Compat u m m'

theorem Flagged.comp {u : E ⟶ E'} {ρ : Y ⟶ X} {τ : Z ⟶ Y}
    (h : Flagged ((Scheme.Modules.pullback τ).map ((Scheme.Modules.pullback ρ).map u)) r) :
    Flagged ((Scheme.Modules.pullback (τ ≫ ρ)).map u) r :=
  have ⟨_, _, h⟩ := h
  ⟨_, _, compat_ofIso h ((Scheme.Modules.pullbackComp τ ρ).app E) ((Scheme.Modules.pullbackComp τ ρ).app E')
    ((Scheme.Modules.pullbackComp τ ρ).hom.naturality u).symm⟩

end Flags

end GlobalTheory.TwoLat.Gen

end
