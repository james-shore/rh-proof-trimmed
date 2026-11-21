import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffTopMonEqZero
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ValRConstHom
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllSixAbelianSchemeLawsHold
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentLinearCombinationIsTangent
open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.MBModel GlobalTheory.SecJet GlobalTheory.CovTop

noncomputable section

namespace GlobalTheory.SecJet.Orders

section Alg
open MvPolynomial

variable {R : Type} [CommRing R]

private def lineMap {k : ℕ} (c : Fin k → R) : EpsAlg R k →ₐ[R] DualNumber R :=
  Ideal.Quotient.liftₐ (sqIdeal R k) (aeval fun b => (TrivSqZeroExt.inr (c b) : DualNumber R)) (by
    intro p hp
    have : sqIdeal R k ≤ RingHom.ker (aeval fun b => (TrivSqZeroExt.inr (c b) : DualNumber R) :
        MvPolynomial (Fin k) R →ₐ[R] DualNumber R) := by
      rw [sqIdeal, Ideal.span_le]
      rintro _ ⟨a, rfl⟩
      simp [RingHom.mem_ker, sq, TrivSqZeroExt.inr_mul_inr]
    exact this hp)

private theorem lineMap_mk {k : ℕ} (c : Fin k → R) (p : MvPolynomial (Fin k) R) :
    lineMap c (Ideal.Quotient.mk _ p) = aeval (fun b => (TrivSqZeroExt.inr (c b) : DualNumber R)) p := rfl

private theorem topCoeff_mk {k : ℕ} (p : MvPolynomial (Fin k) R) :
    topCoeff R k (Ideal.Quotient.mk _ p) = coeff (topMon k) p := rfl

end Alg

end GlobalTheory.SecJet.Orders

namespace GlobalTheory.SecJet

end GlobalTheory.SecJet

end

