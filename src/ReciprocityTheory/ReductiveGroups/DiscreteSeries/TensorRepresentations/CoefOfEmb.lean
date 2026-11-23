import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TensorRepresentations.HidaSetting

noncomputable section

open Finset

namespace ReciprocityTheory.ChartRestriction.DS

variable {n : ℕ}

def tensGrp {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H] (dual : Bool)
    (σ : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)) (g : Matrix (Fin n) (Fin n) ℂ) (f : Fin n → H) : Fin n → H :=
  fun c => ∑ d, (cond dual ((g⁻¹) d c) (g c d)) • σ g (f d)

end ReciprocityTheory.ChartRestriction.DS
