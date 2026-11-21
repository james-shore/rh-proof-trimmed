import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameAtApply
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DbarAddVectorScalar
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExtMapApply

open Matrix MeasureTheory Set Filter Topology GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe GlobalTheory.TorsionForm GlobalTheory.TorsionForm.Gauge
open scoped ContDiff

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.TorsionForm.FrameContr

variable {m : ℕ}

def contrLin (k : Fin m) : Ext m →ₗ[ℂ] Ext m where
  toFun := contr k
  map_add' v w := by funext S; simp only [contr, Pi.add_apply]; split_ifs <;> ring
  map_smul' c w := by
    funext S; simp only [contr, Pi.smul_apply, smul_eq_mul, RingHom.id_apply]; split_ifs <;> ring

theorem contrLin_apply (k : Fin m) (w : Ext m) : contrLin k w = contr k w := rfl

end GlobalTheory.TorsionForm.FrameContr

namespace GlobalTheory.TorsionForm.FrameContr

end GlobalTheory.TorsionForm.FrameContr

namespace GlobalTheory.TorsionForm.FrameContr

end GlobalTheory.TorsionForm.FrameContr
