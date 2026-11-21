import Mathlib
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.SiegelReframe
open Matrix MeasureTheory GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe
open scoped Real ContDiff

noncomputable section

namespace GlobalTheory.SymplecticOrbit

variable {g : ℕ}

def cmat (γ : Sp g) : Matrix (Fin g ⊕ Fin g) (Fin g ⊕ Fin g) ℂ :=
  γ.mat.map (fun t : ℝ => (t : ℂ))

theorem cmat_eq (γ : Sp g) : cmat γ = γ.mat.map Complex.ofRealHom := rfl

end GlobalTheory.SymplecticOrbit
