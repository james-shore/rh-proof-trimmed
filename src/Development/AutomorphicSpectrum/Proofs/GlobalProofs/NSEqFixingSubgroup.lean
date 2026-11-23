import ReciprocityTheory.Hypotheses.GalCoh
import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.TransportA
import Formalism.GaloisCohomology.Statement
import GroundTheory.ProfiniteCohomology.LocalTateDuality.TensorHomDualRepRootsOfUnityIsoCartierPairing
import GroundTheory.ProfiniteCohomology.RestrictedRamification.IsUnramifiedOutsideIffLeMaxUnramifiedOutside
import Development.AutomorphicSpectrum.Proofs.GlobalProofs.NormalSubgroupLeUnramifiedFixingStatement
import Development.AutomorphicSpectrum.Proofs.GlobalProofs.GaloisUnramifiedOutsideCohomologyStatement
import GroundTheory.ProfiniteCohomology.RestrictedRamification.Finite
import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsDiscreteRepResMuROrep
import GroundTheory.ProfiniteCohomology.RestrictedRamification.Dimension

noncomputable section

open NumberField IsDedekindDomain CategoryTheory GroundTheory.ProfCoh ReciprocityTheory.Gal Formalism.ConjugateSelfDual

namespace GlobalTheory.CompanionTheory.Hypotheses₂

theorem NS_eq_fixingSubgroup (F Ω : Type) [Field F] [NumberField F] [Field Ω] [Algebra F Ω] [IsAlgClosure F Ω]
    (S : Set (HeightOneSpectrum (𝓞 F))) :
    NS Ω S = (maxUnramifiedOutside F Ω S).fixingSubgroup :=
  le_antisymm (GlobalTheory.T.normal_subgroup_le_unramified_fixing F Ω S) (GlobalTheory.T.galois_unramified_outside_cohomology F Ω S)

end GlobalTheory.CompanionTheory.Hypotheses₂
