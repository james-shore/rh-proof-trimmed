import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecondCountableTopologySphere

set_option autoImplicit false

noncomputable section

open Set
open ReciprocityTheory.L2DbarEstimates (V)

namespace GlobalTheory.BcUnique

open GlobalTheory.CxForm

def headIn : V 1 →L[ℂ] V (1 + 1) :=
  (appendV 1 1 : V 1 × V 1 →L[ℂ] V (1 + 1)).comp (ContinuousLinearMap.inl ℂ (V 1) (V 1))

theorem headIn_apply (v : V 1) : headIn v = appendV 1 1 (v, 0) := rfl

theorem appendV_zero (v s : V 1) : appendV 1 1 (v, s) 0 = v 0 := rfl

theorem appendV_last (v s : V 1) : appendV 1 1 (v, s) (Fin.last 1) = s 0 := rfl

variable {M : Type} [TopologicalSpace M] {n : ℕ} (A : HolAtlas M n) (j : A.ι) (k : sphere.ι)

theorem famAtlas_symm (x : V (n + 1)) : ((famAtlas A).e (j, k)).symm x =
    ((A.e j).symm ((appendV n 1).symm x).1, (sphere.e k).symm ((appendV n 1).symm x).2) := rfl

theorem mem_famAtlas_target (x : V (n + 1)) : x ∈ ((famAtlas A).e (j, k)).target ↔
    ((appendV n 1).symm x).1 ∈ (A.e j).target ∧ ((appendV n 1).symm x).2 ∈ (sphere.e k).target := Iff.rfl

end GlobalTheory.BcUnique
