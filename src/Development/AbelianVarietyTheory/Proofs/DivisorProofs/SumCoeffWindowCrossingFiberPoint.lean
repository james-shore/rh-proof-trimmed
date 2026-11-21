import Mathlib
import Development.AbelianVarietyTheory.Definitions.Foundations.CurveCl
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlagDegreeEqFormDegree

noncomputable section

open MvPolynomial GlobalTheory.FlagPoly GlobalTheory.FlagFormDeg Formalism.DegreeFormula

namespace GlobalTheory.FlagCurveCore

variable {ι : Type} [Fintype ι] [DecidableEq ι] {N : ℕ}

def ends : ι × Fin N × Fin N ↪ (ι × Fin N) × (ι × Fin N) :=
  ⟨fun e => ((e.1, e.2.1), (e.1, e.2.2)), fun a b h => by
    simp only [Prod.mk.injEq] at h
    exact Prod.ext h.1.1 (Prod.ext h.1.2 h.2.2)⟩

omit [Fintype ι] [DecidableEq ι] in
theorem ends_apply (e : ι × Fin N × Fin N) : ends e = ((e.1, e.2.1), (e.1, e.2.2)) := rfl

end GlobalTheory.FlagCurveCore
