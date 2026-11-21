import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffTopMonEqZero

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.MBModel GlobalTheory.SecJet GlobalTheory.CovTop

namespace GlobalTheory.SecJet

variable {R : Type} [CommRing R]

def scalePoly (a : R) (k : ℕ) : MvPolynomial (Fin k) R →ₐ[R] MvPolynomial (Fin k) R :=
  MvPolynomial.aeval fun j => MvPolynomial.C a * MvPolynomial.X j

theorem sqIdeal_le_comap (a : R) (k : ℕ) : sqIdeal R k ≤ (sqIdeal R k).comap (scalePoly a k) := by
  refine Ideal.span_le.2 ?_
  rintro _ ⟨j, rfl⟩
  show scalePoly a k (MvPolynomial.X j ^ 2) ∈ sqIdeal R k
  rw [map_pow, scalePoly, MvPolynomial.aeval_X, mul_pow]
  exact Ideal.mul_mem_left _ _ (Ideal.subset_span ⟨j, rfl⟩)

def scaleA (a : R) (k : ℕ) : EpsAlg R k →ₐ[R] EpsAlg R k :=
  Ideal.quotientMapₐ (sqIdeal R k) (scalePoly a k) (sqIdeal_le_comap a k)

theorem scaleA_mk (a : R) (k : ℕ) (p : MvPolynomial (Fin k) R) :
    scaleA a k (Ideal.Quotient.mk _ p) = Ideal.Quotient.mk _ (scalePoly a k p) := rfl

theorem topCoeff_mk {k : ℕ} (p : MvPolynomial (Fin k) R) :
    topCoeff R k (Ideal.Quotient.mk _ p) = MvPolynomial.coeff (topMon k) p := rfl

end GlobalTheory.SecJet
