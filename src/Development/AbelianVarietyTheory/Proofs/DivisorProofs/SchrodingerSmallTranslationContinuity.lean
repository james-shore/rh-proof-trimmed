import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPairingStdP

open scoped SchwartzMap

noncomputable section

namespace GlobalTheory.ArchUniq.SchrLip

variable {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V]

variable [FiniteDimensional ℝ V]

def pairL {P : V → V → ℝ} (hP : IsPairing P) (b : V) : V →L[ℝ] ℝ :=
  LinearMap.toContinuousLinearMap
    { toFun := fun y => P y b
      map_add' := fun x x' => hP.addL x x' b
      map_smul' := fun c y => hP.smulL c y b }

@[simp] theorem pairL_apply {P : V → V → ℝ} (hP : IsPairing P) (b y : V) : pairL hP b y = P y b := rfl

end GlobalTheory.ArchUniq.SchrLip
