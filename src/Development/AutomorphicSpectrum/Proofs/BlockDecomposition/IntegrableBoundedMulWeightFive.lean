import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocallyConstantMajorants.GammaSplitting.UnipotentTateFunctionalEquation

open MeasureTheory Matrix Filter Topology
open Ad3 Ad3.K Ad3.K.LC Ad3.K.LC.C

noncomputable section

namespace GlobalTheory.CompanionTheory.ParsC

abbrev V2 : Type := Fin 2 → ℂ

def col (κ : M22) (y : V2) : M23 := ![![κ 0 0, κ 0 1, y 0], ![κ 1 0, κ 1 1, y 1]]

def ip (κ : M22) : ℂ := κ 0 0 * (starRingEnd ℂ) (κ 0 1) + κ 1 0 * (starRingEnd ℂ) (κ 1 1)

def nr (κ : M22) : ℝ := ‖κ 0 1‖ ^ 2 + ‖κ 1 1‖ ^ 2

def D0 (κ : M22) : ℝ := (max (‖(Matrix.of κ).det‖ ^ 2) (‖ip κ‖ ^ 2 / nr κ))⁻¹

def w5 (y : V2) : ℝ := ((1 + ‖y‖) ^ 5)⁻¹

def gw (ε : ℝ) (v w : ℂ) : ℝ := Ad3.K.LC.C.ge ε (w - v)

lemma Dk_eq (N : ℕ) (κ : M22) : Dk N κ = D0 κ / (1 + ‖κ‖) ^ N := rfl

end GlobalTheory.CompanionTheory.ParsC
