import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormsAtOfNorms

set_option autoImplicit false

noncomputable section

open CategoryTheory AlgebraicGeometry NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Formalism.BasicNotions GlobalTheory GlobalTheory.Cartier GlobalTheory.CechPic GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.Mean4O GlobalTheory.CoverNorm GlobalTheory.ShFam.Pad GlobalTheory.TrivFlag

namespace GlobalTheory.WholeFlag

variable {F : Type} [Field F] [NumberField F] {Y : Var F}

def valMat (V : Cover Y) {g : ℕ} (H : Matrix (Fin (g + g)) (Fin g) V.G.functionField) (T : Matrix (Fin g) (Fin g) Y.Fn)
    (z : Sp (AlgebraicClosure F) ⟶ V.G) : Matrix (Fin (g + g)) (Fin g) (AlgebraicClosure F) :=
  (H * (T.map V.φ)⁻¹).map (valAt z)

end GlobalTheory.WholeFlag

end
