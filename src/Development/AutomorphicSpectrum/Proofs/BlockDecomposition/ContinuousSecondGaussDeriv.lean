import Mathlib
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegrableBoundedMulWeightFive

open MeasureTheory Matrix Filter Topology
open Ad3 Ad3.K Ad3.K.LC Ad3.K.LC.C GlobalTheory.CompanionTheory.ParsC

noncomputable section

namespace GlobalTheory.CompanionTheory.ParsC.GaussB

lemma gw_eq (ε : ℝ) (v w : ℂ) : gw ε v w = Real.exp (-Real.pi * ε ^ 2 * ‖w - v‖ ^ 2) := rfl

end GlobalTheory.CompanionTheory.ParsC.GaussB
