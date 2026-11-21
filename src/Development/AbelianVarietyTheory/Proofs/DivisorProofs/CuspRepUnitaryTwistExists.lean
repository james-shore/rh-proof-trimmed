import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.StrongMultiplicityOne
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsHasCentChar
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeCharacterUnramifiedAeAndExistsLevel
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.AdeleLC
open NumberField IsDedekindDomain

noncomputable section

open NumberField IsDedekindDomain Formalism.L2.Host Neutral.B1

namespace GlobalTheory.CuspRep.UnitTwist

def normPowHom (t : ℝ) : ℂˣ →* ℂˣ where
  toFun z := Units.mk0 ((‖(z : ℂ)‖ ^ t : ℝ) : ℂ) (by
    have h : 0 < ‖(z : ℂ)‖ := norm_pos_iff.2 z.ne_zero
    exact_mod_cast (Real.rpow_pos_of_pos h t).ne')
  map_one' := by ext; simp
  map_mul' x y := by
    ext
    simp [Real.mul_rpow (norm_nonneg _) (norm_nonneg _)]

theorem normPowHom_val (t : ℝ) (z : ℂˣ) : ((normPowHom t z : ℂˣ) : ℂ) = ((‖(z : ℂ)‖ ^ t : ℝ) : ℂ) := rfl

variable {E : Type} [Field E] [NumberField E]

end GlobalTheory.CuspRep.UnitTwist

namespace GlobalTheory.CuspRep

end GlobalTheory.CuspRep
