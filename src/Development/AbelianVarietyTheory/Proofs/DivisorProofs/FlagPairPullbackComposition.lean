import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.GlobalHeightBoundIffAtGoodPrimes
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfFrames

set_option autoImplicit false
noncomputable section
open CategoryTheory Limits AlgebraicGeometry IsLocalRing MvPolynomial
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.DV Formalism.DegreeFormula Formalism.MainNotions.LatticeTransfer Formalism.MainNotions.WeightThresholdDefs
open GlobalTheory GlobalTheory.QCoh GlobalTheory.CechPic GlobalTheory.Vert GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.Mean4O GlobalTheory.MixedLocalChains
open GlobalTheory.VB (IsVB IsSubbundle)

namespace GlobalTheory.Vert.PullCoh

def sqIso {X X₁ G G₁ : Scheme.{0}} (f : X₁ ⟶ X) (ι : G ⟶ X) (ι₁ : G₁ ⟶ X₁) (a : G₁ ⟶ G)
    (h : ι₁ ≫ f = a ≫ ι) :
    Scheme.Modules.pullback f ⋙ Scheme.Modules.pullback ι₁ ≅
      Scheme.Modules.pullback ι ⋙ Scheme.Modules.pullback a :=
  Scheme.Modules.pullbackComp _ f ≪≫ Scheme.Modules.pullbackCongr h ≪≫
    (Scheme.Modules.pullbackComp _ _).symm

end GlobalTheory.Vert.PullCoh

namespace GlobalTheory.Vert.Model

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]

namespace GenIso

theorem pull_hom_eq {Z Z₁ : Model O} {f : Z₁.X ⟶ Z.X} (hf : f ≫ Z.str = Z₁.str)
    {E E' : Z.X.Modules} (φ : Z.GenIso E E') :
    (φ.pull hf).hom = (PullCoh.sqIso f Z.gen.ι Z₁.gen.ι (genMap hf)
      (f.resLE_comp_ι (preimage_gen hf).ge).symm).hom.app E ≫
        (Scheme.Modules.pullback (genMap hf)).map φ.hom ≫
        (PullCoh.sqIso f Z.gen.ι Z₁.gen.ι (genMap hf)
          (f.resLE_comp_ι (preimage_gen hf).ge).symm).inv.app E' := rfl

end GenIso

namespace FlagPair

end FlagPair

end GlobalTheory.Vert.Model
