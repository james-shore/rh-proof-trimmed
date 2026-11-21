import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.TranslationInv
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlatFormSmoothOnCover

set_option autoImplicit false

noncomputable section

open Matrix Set Filter Topology
open GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe
open scoped Real ContDiff

namespace GlobalTheory.TorsionForm

theorem wedge_add {m : ℕ} (i : Fin m) (w w' : Ext m) : wedge i (w + w') = wedge i w + wedge i w' := by
  funext S; simp only [wedge, Pi.add_apply]; split_ifs <;> ring

theorem wedge_smul {m : ℕ} (i : Fin m) (c : ℂ) (w : Ext m) : wedge i (c • w) = c • wedge i w := by
  funext S; simp only [wedge, Pi.smul_apply, smul_eq_mul]; split_ifs <;> ring

theorem contr_add {m : ℕ} (i : Fin m) (w w' : Ext m) : contr i (w + w') = contr i w + contr i w' := by
  funext S; simp only [contr, Pi.add_apply]; split_ifs <;> ring

theorem contr_smul {m : ℕ} (i : Fin m) (c : ℂ) (w : Ext m) : contr i (c • w) = c • contr i w := by
  funext S; simp only [contr, Pi.smul_apply, smul_eq_mul]; split_ifs <;> ring

def wedgeL {m : ℕ} (i : Fin m) : Ext m →L[ℂ] Ext m :=
  LinearMap.toContinuousLinearMap
    { toFun := wedge i, map_add' := wedge_add i, map_smul' := wedge_smul i }

def contrL {m : ℕ} (i : Fin m) : Ext m →L[ℂ] Ext m :=
  LinearMap.toContinuousLinearMap
    { toFun := contr i, map_add' := contr_add i, map_smul' := contr_smul i }

@[simp] theorem wedgeL_apply {m : ℕ} (i : Fin m) (w : Ext m) : wedgeL i w = wedge i w := rfl
@[simp] theorem contrL_apply {m : ℕ} (i : Fin m) (w : Ext m) : contrL i w = contr i w := rfl

variable {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E] {g n : ℕ}

end GlobalTheory.TorsionForm
