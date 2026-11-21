import Mathlib
import ReciprocityTheory.AnalyticForms.PotentialTheory.IsPotentialOfFun
import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.IsPshLocallyIntegrableStatement
import Development.AbelianVarietyTheory.Definitions.Divisors.ExtFormAdjEqNegSecondForm
import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.PshExt
import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.PshMoll
import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.PshBasic
import ReciprocityTheory.AnalyticForms.PotentialTheory.PshShiftA

open ReciprocityTheory.AnForm ReciprocityTheory.AnForm.M Topology Metric

noncomputable section
namespace GlobalTheory.AdaptedChart

variable {D : ℕ} {Y : Type} [TopologicalSpace Y]

def aff (c : Fin D → ℂ) (δ : ℝ) (hδ : δ ≠ 0) : (Fin D → ℂ) ≃ₜ (Fin D → ℂ) :=
  (Homeomorph.subRight c).trans (Homeomorph.smulOfNeZero ((δ : ℂ)⁻¹) (by simpa using hδ))

theorem aff_apply (c : Fin D → ℂ) (δ : ℝ) (hδ : δ ≠ 0) (z : Fin D → ℂ) :
    aff c δ hδ z = (δ : ℂ)⁻¹ • (z - c) := rfl

end GlobalTheory.AdaptedChart
