import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpecializationMapCompUniversalSection
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsTangentOfUniqueIntegralLift
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GrNormPush
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.GrNormPosOfBasis
open AlgebraicGeometry CategoryTheory NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.L2.Pj GlobalTheory.CxPts GlobalTheory.Toroidal GlobalTheory.Cartier GlobalTheory.ProjVar GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.ShFam.GalCarry
open Formalism.MainNotions.DIV.Cons (intO)

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.ShFam.GalCarry.LnPushProof

attribute [local instance] Over.cartesianMonoidalCategory

section Twist

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {X : Scheme.{0}}
  (t : SAB H X) (σ : 𝓞 E ≃+* 𝓞 E) (hσ : σ H.w0 = H.w0)

variable {C : Type} [NontriviallyNormedField C] [IsUltrametricDist C]

theorem grNorm_twist (x : Sp C ⟶ X) (Λ : Set (Sp (DualNumber C) ⟶ t.G.left)) {m : ℕ}
    (u : Fin m → (Sp (DualNumber C) ⟶ t.G.left)) (i : Fin m) :
    grNorm (GlobalTheory.FiniteStable.twist σ hσ t) x Λ u i = grNorm t x Λ u i := rfl

end Twist

end GlobalTheory.ShFam.GalCarry.LnPushProof
