import Mathlib
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.SiegelReframe
import ReciprocityTheory.AnalyticForms.AnalyticCharts.Osgood
open Matrix MeasureTheory GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe
open scoped Real ContDiff

noncomputable section

namespace GlobalTheory.FlatSmooth

theorem symp_apply {g : ℕ} (v : Fin 2 → Fl g) : symp g v = riem (v 0) (v 1) := rfl

variable {g : ℕ} {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E] [FiniteDimensional ℂ E]
  {B : Set E} {τ : E → Matrix (Fin g) (Fin g) ℂ}

end GlobalTheory.FlatSmooth

