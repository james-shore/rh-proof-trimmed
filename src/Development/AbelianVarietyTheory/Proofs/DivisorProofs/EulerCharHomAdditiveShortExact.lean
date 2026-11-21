import Mathlib
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.GenericFiniteMaps
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FiniteCohOfForallModification
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDualPullback
import Development.AbelianVarietyTheory.Definitions.Divisors.IsTorsionFreeOfForallExists
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.HomAppHomOfRestrictImage
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.EventuallySubsingletonCohTwistZOfIsProjOver
import Development.AbelianVarietyTheory.Definitions.QuasicoherentCohomology.FiniteCohPushforwardIffOfIsClosedImmersion

set_option autoImplicit false

open CategoryTheory AlgebraicGeometry TopologicalSpace Opposite Limits Filter
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.LB (toMod)
open GlobalTheory.VB
open GlobalTheory.IndefiniteRowSideFullHecke.GenericFiniteMaps
open GlobalTheory
open GlobalTheory.Twist (resM resM_resM app_resM)
open GlobalTheory.PtNorm (homPi homPi_apply homPi_res isFiniteQC_homMod)

namespace GlobalTheory.HomExact

variable {X : Scheme.{0}}

theorem homPi_homMap {E F G : X.Modules} {U V : X.Opens} {ι : Type} [Fintype ι] {e : ι → Γ(E, U)}
    (he : IsFrame e) (h : V ≤ U) (β : F ⟶ G) (ψ : Γ(homMod E F, V)) (i : ι) :
    homPi he h ((homMap (𝟙 E) β).app V ψ) i = β.app V (homPi he h ψ i) := rfl

end GlobalTheory.HomExact
