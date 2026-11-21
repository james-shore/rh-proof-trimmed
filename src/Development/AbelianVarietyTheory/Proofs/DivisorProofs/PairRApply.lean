import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPairingStdP
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzCharacterSeminormBound

noncomputable section

open scoped SchwartzMap

namespace GlobalTheory.SchrPairing

variable {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V] [FiniteDimensional ℝ V]

def pairR {P : V → V → ℝ} (hP : GlobalTheory.ArchUniq.IsPairing P) (b : V) : V →L[ℝ] ℝ :=
  LinearMap.toContinuousLinearMap
    { toFun := fun y => P y b
      map_add' := fun x x' => hP.addL x x' b
      map_smul' := fun c x => by simpa using hP.smulL c x b }

theorem pairR_apply {P : V → V → ℝ} (hP : GlobalTheory.ArchUniq.IsPairing P) (b y : V) : pairR hP b y = P y b := rfl

end GlobalTheory.SchrPairing
