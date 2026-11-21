import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsNonarchimedeanW
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FullFrameRight
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoverRefinementExists
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.JGenSpecializes
open CategoryTheory AlgebraicGeometry NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Formalism.BasicNotions GlobalTheory GlobalTheory.Cartier GlobalTheory.CechPic GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.Mean4O GlobalTheory.CoverNorm GlobalTheory.ShFam.Pad GlobalTheory.TrivFlag GlobalTheory.WholeFlag GlobalTheory.ConstLat GlobalTheory.WholeFlag.Glue
open scoped Classical

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.ConstLat.CramerFrame

variable {F : Type} [Field F] [NumberField F] {Y : Var F}

def fnEquiv (V : Cover Y) : V.X.functionField ≃+* V.G.functionField :=
  haveI := GlobalTheory.HtGen.SplitCover.isPreimmersion_j V
  RingEquiv.ofBijective (SmallSec.fnMap V.j (GlobalTheory.HtGen.SplitCover.j_gen_specializes V))
    ⟨(SmallSec.fnMap V.j (GlobalTheory.HtGen.SplitCover.j_gen_specializes V)).injective,
      SmallSec.fnMap_surjective V.j (GlobalTheory.HtGen.SplitCover.j_gen_specializes V)⟩

theorem fnEquiv_apply (V : Cover Y) (f : V.X.functionField) :
    fnEquiv V f = SmallSec.fnMap V.j (GlobalTheory.HtGen.SplitCover.j_gen_specializes V) f := rfl

end GlobalTheory.ConstLat.CramerFrame

end
