import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.GeometricLemmaFiltration
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.HasFiniteLengthOfIsIrreducible
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.BernsteinUnitaryProductIrreducible

open GlobalTheory.PRep GlobalTheory.SmGL Matrix

noncomputable section

namespace GlobalTheory.DetProdCells

def cellFirst (u v : ℕ) : SizeMatrix (Two (Fin (u + 1)) (Fin v)) (Two (Fin 1) (Fin (u + v))) :=
  ⟨fun i j => cond i (cond j v 0) (cond j u 1), by
    refine ⟨fun i => ?_, fun j => ?_⟩
    · cases i
      · show (∑ j : Bool, cond j u 1) = Fintype.card (Fin (u + 1))
        simp [Fintype.sum_bool, add_comm]
      · show (∑ j : Bool, cond j v 0) = Fintype.card (Fin v)
        simp [Fintype.sum_bool]
    · cases j
      · show (∑ i : Bool, cond i 0 1) = Fintype.card (Fin 1)
        simp [Fintype.sum_bool]
      · show (∑ i : Bool, cond i v u) = Fintype.card (Fin (u + v))
        simp [Fintype.sum_bool, add_comm]⟩

end GlobalTheory.DetProdCells
