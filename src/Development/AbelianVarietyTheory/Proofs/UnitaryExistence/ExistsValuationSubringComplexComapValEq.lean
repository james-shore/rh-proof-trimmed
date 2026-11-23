import Mathlib
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsValuationSubringDominatingSubring
import Formalism.LocalToGlobal.ProjectiveLattices.UnFree
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.SecBaseChangeAnySt
import Formalism.LocalToGlobal.ProjectiveLattices.VAtVNeBot
import Formalism.LocalToGlobal.ProjectiveLattices.RulInst
import Formalism.LocalToGlobal.ProjectiveLattices.IntFrames
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.OneArc
import Formalism.LocalToGlobal.ProjectiveLattices.GenFrPf

namespace GlobalTheory

theorem exists_valuationSubring_complex_comap_val_eq (F : IntermediateField ℚ ℂ)
    (U : ValuationSubring F) (p : ℕ) (hp : (p : F) ∈ U.nonunits) :
    ∃ W : ValuationSubring ℂ, (p : ℂ) ∈ W.nonunits ∧ W.comap F.val.toRingHom = U := by
  obtain ⟨W, hW⟩ : ∃ W : ValuationSubring ℂ, W.comap (algebraMap F ℂ) = U :=
    exists_valuationSubring_comap_eq U _
  refine ⟨W, ?_, hW⟩
  rw [ValuationSubring.mem_nonunits_iff_or] at hp ⊢
  rcases hp with h | h
  · left
    simpa using congrArg (algebraMap F ℂ) h
  · right
    rw [← hW, ValuationSubring.mem_comap] at h
    simpa using h

end GlobalTheory
