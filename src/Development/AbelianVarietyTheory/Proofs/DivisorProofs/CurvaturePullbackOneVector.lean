import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.TranslationInv
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullFullL
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.SiegelReframe
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.DifferentiableOnOfTendstoLocallyUniformlyOn
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HolomorphicConnectionAddSection

open Matrix MeasureTheory Set Filter Topology
open GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe GlobalTheory.TorsionForm GlobalTheory.TorsionForm.OneVec
open scoped Real ContDiff

set_option autoImplicit false
noncomputable section

namespace GlobalTheory.TorsionForm.OneVec.CurvPull

section Main
variable {g : ℕ}

theorem pullFullL_apply {n : ℕ} (a : Fin n → ℂ) (x : Ext (n + n + g)) : pullFullL a x = pullFull a x := rfl

variable {n : ℕ} (a : Fin n → ℂ) (S : Finset (Fin (1 + 1))) (c : ℂ)

end Main

end GlobalTheory.TorsionForm.OneVec.CurvPull
