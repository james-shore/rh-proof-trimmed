import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.BlowPolSt
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsFineInvariantFan
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NonnegSumSmulIntBilinFormToRealMemPsdCone

noncomputable section

open NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ShFam

namespace GlobalTheory.TorRef

section PosPart

variable {O : Type} [CommRing O]

def posPart (φ : InvFun O) : InvFun O where
  toFun n B := max (φ.toFun n B) 0
  inv n m r hr B := by rw [φ.inv n m r hr]
  zero B := by simp [φ.zero]

variable (φ : InvFun O) {X : Type} [AddCommGroup X] [Module O X] [Module.Finite O X]

theorem posPart_eval (B : X → X → ℝ) : (posPart φ).eval X B = max (φ.eval X B) 0 := rfl

theorem posPart_evalR (B : X →ₗ[ℤ] X →ₗ[ℤ] ℝ) : evalR (posPart φ) B = max (evalR φ B) 0 := rfl

theorem posPart_evalZ (β : LinearMap.BilinForm ℤ X) : (posPart φ).evalZ β = max (φ.evalZ β) 0 := rfl

variable {φ}

end PosPart

end GlobalTheory.TorRef
