import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WEMulNUMulTD
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BallIndicatorSmallerBallsSum

noncomputable section

open ValuativeRel

namespace GlobalTheory.PrinTwo.DiffSpan

open GlobalTheory.PrinTwo

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

theorem mem_ball_iff {c x : k} {r : kˣ} :
    x ∈ ball c r ↔ valuation k (x - c) ≤ valuation k (r : k) := Iff.rfl

theorem elemDiff_apply (c c' : k) (r : kˣ) (x : k) :
    elemDiff c c' r x = (ball c r).indicator 1 x - (ball c' r).indicator 1 x := rfl

end GlobalTheory.PrinTwo.DiffSpan
