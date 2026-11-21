import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.DualWhittakerAdelicGL3
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocalWhittakerDuality.FibProp

noncomputable section

open MeasureTheory Matrix GroundTheory.LocalField GroundTheory.Automorphic ComplexConjugate
open scoped ValuativeRel

namespace Ad3.K.QuadraticBaseChangeGL3.Th

def sgR (a : ℝ) : ℂ := if 0 < a then 1 else -1

def rWR (a b c d : ℝ) (Φ : ℂ → ℂ) (z : ℂ) : ℂ :=
  if c = 0 then
    Complex.exp (2 * Real.pi * Complex.I * ((a * b * Complex.normSq z : ℝ) : ℂ)) * sgR a * ((|a| : ℝ) : ℂ) * Φ ((a : ℂ) * z)
  else Complex.I * sgR (-c) * ((|c|⁻¹ : ℝ) : ℂ) *
    ∫ u, Complex.exp (2 * Real.pi * Complex.I *
      (((a * Complex.normSq z + d * Complex.normSq u - 2 * (conj z * u).re) / c : ℝ) : ℂ)) * Φ u ∂volC

def PhiInf (n : ℤ) (z : ℂ) : ℂ :=
  (if 0 ≤ n then conj z ^ n.natAbs else z ^ n.natAbs) * Complex.exp (-2 * Real.pi * ((Complex.normSq z : ℝ) : ℂ))

end Ad3.K.QuadraticBaseChangeGL3.Th
