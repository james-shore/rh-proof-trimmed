import Mathlib
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivMultiProdOne
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.MonodromyZeroOfWeilDeligneRepClassIff
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ContinuousConjFin
import Development.AbelianVarietyTheory.Definitions.Divisors.EqOfHasValueAtInfinite
import Formalism.SharpRestriction.LevelLetterCocycles.BlochKatoPhases
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisGeometry₂.IsTemperedGLOfIsUnitaryLSeg
import Formalism.SharpRestriction.LevelLetterCocycles.QuotientHomNonvanishingBound

noncomputable section

open GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL ValuativeRel Matrix

namespace PositivityTheory.UdReth2

section Local

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

def IsCentred (Δ : Segment k) : Prop :=
  ∀ ω : kˣ →* ℂˣ, HasCentralChar Δ.first.rep ω → ∀ z : kˣ,
    Real.log ‖(ω z : ℂ)‖ = -((Δ.d : ℝ) * ((Δ.len : ℝ) - 1) / 2) * Real.log (nabs k z)

end Local

end PositivityTheory.UdReth2
