import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCochFrame
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodChartUniformConstantsHalfPolydisc
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmulInvMulPosSemidefUniformBound
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SchurComplementBlockQuadraticLowerBound

open Matrix Filter Topology
open ReciprocityTheory.ChartRestriction.G.Geo.Tor

noncomputable section

namespace GlobalTheory.PeriodLimit

def realVec (g : ℕ) : (Fin g → ℝ) →ₗ[ℝ] (Fin g → ℂ) where
  toFun x := fun i => (x i : ℂ)
  map_add' x y := by ext i; simp
  map_smul' c x := by ext i; simp

@[simp] theorem realVec_apply {g : ℕ} (x : Fin g → ℝ) (i : Fin g) : realVec g x i = (x i : ℂ) := rfl

end GlobalTheory.PeriodLimit
