import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecondCountableTopologySphere
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlagOmegaFormReal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContDiffOnExtTrace
import ReciprocityTheory.L2DbarEstimates.ChartDerivatives.HoloSmooth

set_option autoImplicit false

noncomputable section

open Set Matrix Filter Topology
open ReciprocityTheory.L2DbarEstimates (V)
open GlobalTheory.HermFrame GlobalTheory.CxForm
open GlobalTheory.GoodMetric (coordVec)
open scoped ContDiff ComplexOrder ComplexConjugate

namespace GlobalTheory.BcUnique

variable {M : Type} [TopologicalSpace M] {n r s : ℕ} {A : HolAtlas M n}

def midRead (T : HermSeq A r s) (a : T.κ) (i : A.ι) (v : V n) : Matrix (Fin r ⊕ Fin s) (Fin r ⊕ Fin s) ℂ :=
  T.mid a ((A.e i).symm v)

theorem bcFld_apply (T : HermSeq A r s) (x : A.Pt) :
    bcFld T x = (ofValues (extTrace (midRead T (T.cover x.pt).choose x.1.1) x.crd) : Alt n) := rfl

end GlobalTheory.BcUnique
