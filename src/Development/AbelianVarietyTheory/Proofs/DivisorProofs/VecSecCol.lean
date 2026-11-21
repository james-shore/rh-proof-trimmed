import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.NormSqColGrLineOfOrthogonal
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.RestrictPullbackIsoHomAppPullbackSections
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ColSec

set_option autoImplicit false

noncomputable section

open CategoryTheory AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.VB

namespace GlobalTheory.FlagZ.TautUniq

variable {ι : Type} [Fintype ι] {N : ℕ}

def vecSec {A : Type} [CommRing A] (y : Sp A ⟶ Sp ℤ) (v : Fin N → A) :
    Γ((Scheme.Modules.pullback y).obj (Taut.stdE N), ⊤) :=
  ∑ i, (Scheme.ΓSpecIso (CommRingCat.of A)).inv.hom (v i) •
    GlobalTheory.QCoh.pullbackSections y (Taut.stdE N) (by simp) (freeFrame (Sp ℤ) (Fin N) i)

theorem vecSec_col {A : Type} [CommRing A] (y : Sp A ⟶ Sp ℤ) (g : Matrix (Fin N) (Fin N) A) (j : Fin N) :
    vecSec y (fun i => g i j) = Taut.colSec y g j := rfl

end GlobalTheory.FlagZ.TautUniq
