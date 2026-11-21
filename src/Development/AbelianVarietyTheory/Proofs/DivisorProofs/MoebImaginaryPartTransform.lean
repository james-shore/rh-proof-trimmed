import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameAtApply
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DbarAddVectorScalar
open Matrix MeasureTheory Set Filter Topology GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe GlobalTheory.TorsionForm GlobalTheory.TorsionForm.Gauge
open scoped ContDiff

namespace GlobalTheory.SiegelMoeb

private abbrev cx {g : ℕ} (M : Matrix (Fin g) (Fin g) ℝ) : Matrix (Fin g) (Fin g) ℂ :=
  M.map (fun t : ℝ => (t : ℂ))

private theorem cx_eq {g : ℕ} (M : Matrix (Fin g) (Fin g) ℝ) :
    cx M = (Complex.ofRealHom : ℝ →+* ℂ).mapMatrix M := rfl

end GlobalTheory.SiegelMoeb
