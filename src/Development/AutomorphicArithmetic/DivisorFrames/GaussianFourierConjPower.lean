import Mathlib
open MeasureTheory

private noncomputable def gE (y s : ℂ) : ℂ :=
  Complex.exp (-(Real.pi : ℂ) * (s * starRingEnd ℂ s) -
    (Real.pi : ℂ) * Complex.I * (s * y + starRingEnd ℂ s * starRingEnd ℂ y))

