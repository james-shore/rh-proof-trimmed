import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PairRApply
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzTranslationSeminormBound

noncomputable section

open Filter Topology
open scoped SchwartzMap

namespace GlobalTheory.SchrPairing

variable {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V] [FiniteDimensional ℝ V]

def pairCLM {P : V → V → ℝ} (hP : GlobalTheory.ArchUniq.IsPairing P) : V →L[ℝ] (V →L[ℝ] ℝ) :=
  LinearMap.toContinuousLinearMap
    { toFun := pairR hP
      map_add' := fun b b' => by ext y; simp [pairR_apply, hP.addR]
      map_smul' := fun c b => by ext y; simp [pairR_apply, hP.smulR] }

theorem pairCLM_apply {P : V → V → ℝ} (hP : GlobalTheory.ArchUniq.IsPairing P) (b : V) : pairCLM hP b = pairR hP b := rfl

end GlobalTheory.SchrPairing
