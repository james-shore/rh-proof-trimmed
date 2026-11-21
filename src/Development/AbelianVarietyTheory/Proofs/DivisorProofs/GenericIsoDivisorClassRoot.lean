import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.GlobalHeightBoundIffAtGoodPrimes
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BcDensEqOfGram
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClsDivPullEqVPull

open CategoryTheory Limits AlgebraicGeometry IsLocalRing MvPolynomial
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.DV Formalism.DegreeFormula Formalism.MainNotions.LatticeTransfer Formalism.MainNotions.WeightThresholdDefs
open GlobalTheory GlobalTheory.QCoh GlobalTheory.CechPic GlobalTheory.Vert GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.Mean4O GlobalTheory.MixedLocalChains

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.Vert.RootDiv

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {Z : Vert.Model O}

theorem isIso_of_isUnit (E : Z.X.Modules) {s : Γ(Z.X, ⊤)}
    (h : IsUnit ((Scheme.Hom.appTop Z.gen.ι).hom s)) : IsIso (Z.genRes.map (smulHom E s)) := by
  rw [VB.pullback_map_smulHom]
  exact (isUnit_iff_isIso _).1 (h.map (smulEnd _))

def mul (E : Z.X.Modules) (s : Γ(Z.X, ⊤)) (h : IsUnit ((Scheme.Hom.appTop Z.gen.ι).hom s)) :
    Z.GenIso E E :=
  haveI := isIso_of_isUnit E h
  Vert.Model.GenIso.ofHom (smulHom E s)

theorem mul_inv_eq (E : Z.X.Modules) (s : Γ(Z.X, ⊤)) (h : IsUnit ((Scheme.Hom.appTop Z.gen.ι).hom s)) :
    (mul E s h).inv = Z.genRes.map (smulHom E s) := rfl

variable {r : ℕ} {E : Z.X.Modules} (hE : GlobalTheory.VB.IsVB E r)

end GlobalTheory.Vert.RootDiv

