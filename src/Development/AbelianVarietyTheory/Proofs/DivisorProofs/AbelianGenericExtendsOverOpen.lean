import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntEmbCoe
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictsTo
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDeRhamSheafIffAlt
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.PoincareDeRhamDuality
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.ZeroSectionBase
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDeRhamSheaf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDeRhamSheafIff
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsUniqueTangentOfValues
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExactAndSurjectiveAppOfExactOfEpi
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.IsAbelianSchemeAndExtendOfGenericHoms
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ConjugateFiltration
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsCrystalPairing
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDualPullback
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsoDualOfAffinePairing
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.RestrictPullbackIsoHomAppPullbackSections
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.GenericExistsUniqueOActOfIsGrpPullback
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SubsingletonOfFibres
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LagrangianShortExact
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftLeftFst
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPolarizationFormIsotropicFiltration
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocOfBijectiveLiftSemi
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAbelianSchemeOnAff
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.QuasicoherentHomFromAffine
import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ValueAtUnitSection
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoToBidualOfLocalFrames
import Development.AbelianVarietyTheory.Definitions.Divisors.ToBidualNaturalityDualSheafTranspose
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianSchemePullbackFstComm
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrobeniusPullbackDeRhamMapExists
import Development.AbelianVarietyTheory.Definitions.Divisors.IsFrameOfForallExists
import Development.AbelianVarietyTheory.Definitions.Divisors.IsQuasicoherentEigenQuot
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjugateFiltrationHodgeSubSecond
import Development.AbelianVarietyTheory.Definitions.Divisors.IsTorsionFreeOfForallExists
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModificationLineBundleGlobalSectionsDimPullEq
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ConnectedSpaceSpecOfIsLocalRing
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsX
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.CubeTheorem
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NearIsIsoOfIsProperOfFinitePresentation
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.AbelianLocusOpenFamilyOverLevel
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDeRhamRingAction
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrobeniusEquivariantDeRham
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdditiveLiftIff
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDualOfIsPerfectOfAdditive
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDualOfIso
import Development.AbelianVarietyTheory.Proofs.ThetaFamilyOrigin.EqOfAgreeOnTorsion
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsHeckeQuotientTriple
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniversallyClosedOfIsClosedRange
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SABBaseChangeSt

set_option autoImplicit false

noncomputable section

open CategoryTheory AlgebraicGeometry Limits MonoidalCategory CartesianMonoidalCategory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.VB GlobalTheory.LieVB GlobalTheory.DeRham GlobalTheory.DeRhamSheaf GlobalTheory.AbDual GlobalTheory.Cris GlobalTheory.CechPic
open GlobalTheory.Published GlobalTheory.Published.AbelianDeRham GlobalTheory.PrincipalPolPairing
open GlobalTheory.QCoh (appLinear)
open scoped CategoryTheory.Obj

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.AbDatum

variable {O : Type} [CommRing O] {T : Scheme.{0}} {A : Over T} [GrpObj A] {g : ℕ} {H : T.Modules}
  {e : ∀ (V : T.Opens) (hV : IsAffineOpen V), Γ(H, V) ≃ₗ[Γ(T, V)] primDR (onAff A hV)}

section Pairing

variable {P : LB (A ⊗ A).left}

def formOn (β : H ⟶ dual H) (V : T.Opens) : Γ(H, V) →ₗ[Γ(T, V)] Γ(H, V) →ₗ[Γ(T, V)] Γ(T, V) :=
  Lagr.evU H V ∘ₗ appLinear β V

theorem formOn_apply (β : H ⟶ dual H) (V : T.Opens) (s t : Γ(H, V)) :
    formOn β V s t = dualApp (β.app V s) le_rfl t := rfl

variable {β : H ⟶ dual H}

end Pairing

end GlobalTheory.AbDatum
