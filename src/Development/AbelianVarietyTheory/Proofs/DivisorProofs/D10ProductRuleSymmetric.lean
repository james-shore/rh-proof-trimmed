import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DbarEqZeroOfHolomorphic
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WedgeContrSelfApply

set_option autoImplicit false
noncomputable section
open Matrix GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe GlobalTheory.TorsionForm GlobalTheory.TorsionForm.FlatAcyc
open scoped Real ContDiff

namespace GlobalTheory.TorsionForm.FlatAcyc.DbarAdjSq

def contrL {m : ℕ} (i : Fin m) : Ext m →ₗ[ℂ] Ext m where
  toFun := contr i
  map_add' := contr_add i
  map_smul' := contr_smul i

@[simp] theorem contrL_apply {m : ℕ} (i : Fin m) (w : Ext m) : contrL i w = contr i w := rfl

end GlobalTheory.TorsionForm.FlatAcyc.DbarAdjSq
