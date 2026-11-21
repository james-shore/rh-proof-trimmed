import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.TranslationInv

set_option autoImplicit false
noncomputable section
open GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe GlobalTheory.TorsionForm

namespace GlobalTheory.TorsionForm.FlatAcyc

theorem wedge_add {m : ℕ} (i : Fin m) (v w : Ext m) : wedge i (v + w) = wedge i v + wedge i w := by
  funext S; simp only [wedge, Pi.add_apply]; split_ifs <;> ring

theorem wedge_smul {m : ℕ} (i : Fin m) (c : ℂ) (w : Ext m) : wedge i (c • w) = c • wedge i w := by
  funext S; simp only [wedge, Pi.smul_apply, smul_eq_mul]; split_ifs <;> ring

theorem contr_add {m : ℕ} (i : Fin m) (v w : Ext m) : contr i (v + w) = contr i v + contr i w := by
  funext S; simp only [contr, Pi.add_apply]; split_ifs <;> ring

theorem contr_smul {m : ℕ} (i : Fin m) (c : ℂ) (w : Ext m) : contr i (c • w) = c • contr i w := by
  funext S; simp only [contr, Pi.smul_apply, smul_eq_mul]; split_ifs <;> ring

def wedgeR {m : ℕ} (i : Fin m) : Ext m →L[ℝ] Ext m :=
  LinearMap.toContinuousLinearMap
    { toFun := wedge i, map_add' := wedge_add i,
      map_smul' := fun r w => by
        have := wedge_smul i (r : ℂ) w
        simpa [Complex.coe_smul] using this }

def contrR {m : ℕ} (i : Fin m) : Ext m →L[ℝ] Ext m :=
  LinearMap.toContinuousLinearMap
    { toFun := contr i, map_add' := contr_add i,
      map_smul' := fun r w => by
        have := contr_smul i (r : ℂ) w
        simpa [Complex.coe_smul] using this }

@[simp] theorem wedgeR_apply {m : ℕ} (i : Fin m) (w : Ext m) : wedgeR i w = wedge i w := rfl
@[simp] theorem contrR_apply {m : ℕ} (i : Fin m) (w : Ext m) : contrR i w = contr i w := rfl

end GlobalTheory.TorsionForm.FlatAcyc
