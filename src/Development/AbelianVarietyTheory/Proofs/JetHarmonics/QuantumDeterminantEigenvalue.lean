import Mathlib
import Development.AbelianVarietyTheory.Definitions.Jets.SumIoPrAlt
import Formalism.SharpRestriction.CuspSpanNormBounds.RelevantZeroGramTerms
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightUniqueness.UnitaryOfBlockWMem

open BranchingSupport Formalism.FourierDecayAlt Formalism.FourierDecayAlt.ThreeDimData Matrix MeasureTheory Finset
open scoped InnerProductSpace ENNReal

namespace GlobalTheory.CapelliSmooth

lemma entry_conj {n : ℕ} (P P' : Matrix (Fin n) (Fin n) ℂ) (a b c d : Fin n) :
    (P * Matrix.single a b (1 : ℂ) * P') c d = P c a * P' b d := by
  rw [Matrix.mul_assoc, Matrix.mul_apply, Finset.sum_eq_single a]
  · simp
  · intro x _ hx
    rw [Matrix.single_mul_apply_of_ne _ _ _ _ _ hx, mul_zero]
  · simp

end GlobalTheory.CapelliSmooth
