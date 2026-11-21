import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LineModel
import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.ExistsFormOfEqRatioPowMul
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ValuationLtOneOfInvNotMem

noncomputable section

open AlgebraicGeometry CategoryTheory Limits NumberField IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Pj Formalism.L2.Geo GlobalTheory.LocM

namespace GlobalTheory.ShFam.Pad.AdmTest

def finiteCoverTwistingSheaf (R : Type) [CommRing R] (N : ℕ) : FinLB (PSpace R N) :=
  ⟨N + 1, (GlobalTheory.ProjSpace.O1 R N).U, (GlobalTheory.ProjSpace.O1 R N).g, GlobalTheory.ProjSpace.O1_isLB R N⟩

theorem finiteTwisting_lineBundle (R : Type) [CommRing R] (N : ℕ) : (finiteCoverTwistingSheaf R N).lb = GlobalTheory.ProjSpace.O1 R N := rfl

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}
  {Xo : ∀ l : Level H, Moduli Dw l} {p : ℕ} {W : ValuationSubring ℂ} {Y : LocalSystem Xo p W} {i₀ : Idx H p}

end GlobalTheory.ShFam.Pad.AdmTest
