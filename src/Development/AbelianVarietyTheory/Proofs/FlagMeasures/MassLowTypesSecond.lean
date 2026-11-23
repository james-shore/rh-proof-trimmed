import Mathlib
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.OnePlaceKF
import Formalism.SharpRestriction.CuspSpanNormBounds.LeadMinorK
import Formalism.SharpRestriction.CuspSpanNormBounds.GlobAut
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.BlockAnti
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.IsNormalFormStabilizerMeasure
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.MomAllP
import Formalism.FormalDegreeBessel.FinalG
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightUniqueness.UnitaryOfBlockWMem
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LUFactorOrbitBounds
import Formalism.PeriodIntegrals.QuotInv
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.MatGroupHaarUniqueFiniteCompactOpenPos
import Development.AbelianVarietyTheory.BlockTheory.JetGauges.DecreasingNodeGaps
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelNablaStarRelations
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.DualTensorCayleyCompatible

open BranchingSupport GlobalTheory.CellAmp GlobalTheory.Amp GlobalTheory.TypeAsm Formalism.BasicNotions Formalism.MainNotions.S Formalism.QuantumDeterminants Matrix MeasureTheory Finset
open scoped InnerProductSpace ENNReal

namespace GlobalTheory.InvLenMoment

theorem prod_ratio {r : ℕ} (l : Fin (r + 1) → ℝ) (hl : ∀ a, 0 < l a) (a : Fin (r + 1)) :
    ∏ c ∈ Finset.univ.filter (fun c : Fin r => a.val ≤ c.val), l c.succ / l c.castSucc
      = l (Fin.last r) / l a := by
  induction a using Fin.reverseInduction with
  | last =>
    have : Finset.univ.filter (fun c : Fin r => (Fin.last r).val ≤ c.val) = ∅ := by
      ext c
      have := c.isLt
      simp only [Finset.mem_filter, Finset.mem_univ, true_and, Fin.val_last, Finset.notMem_empty, iff_false]
      omega
    rw [this, Finset.prod_empty, div_self (hl _).ne']
  | cast i ih =>
    have : Finset.univ.filter (fun c : Fin r => (Fin.castSucc i).val ≤ c.val)
        = insert i (Finset.univ.filter (fun c : Fin r => (Fin.succ i).val ≤ c.val)) := by
      ext c
      simp only [Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_insert, Fin.val_succ,
        Fin.val_castSucc, Fin.ext_iff]
      omega
    rw [this, Finset.prod_insert (by simp), ih]
    have h1 := (hl i.succ).ne'
    have h2 := (hl i.castSucc).ne'
    field_simp

end GlobalTheory.InvLenMoment
