import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffTopMonEqZero
import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.MemRangeCompIffOfIsClosedImmersion

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.MBModel GlobalTheory.SecJet GlobalTheory.CovTop

namespace GlobalTheory.JetIntegral

section Alg

open MvPolynomial

variable {R R' : Type} [CommRing R] [CommRing R']

theorem topCoeff_mk {k : ℕ} (p : MvPolynomial (Fin k) R) :
    topCoeff R k (Ideal.Quotient.mk _ p) = coeff (topMon k) p := rfl

def aug (R : Type) [CommRing R] (k : ℕ) : EpsAlg R k →ₐ[R] R :=
  Ideal.Quotient.liftₐ _ (aeval fun _ => 0) fun p hp => by
    refine (show sqIdeal R k ≤ RingHom.ker (aeval (fun _ => 0) : MvPolynomial (Fin k) R →ₐ[R] R) from ?_) hp
    refine Ideal.span_le.2 ?_
    rintro _ ⟨a, rfl⟩
    simp [RingHom.mem_ker]

theorem killCompl_X_self {k i : ℕ} {σ : Fin k → Fin i} (hσ : Function.Injective σ) (b : Fin k) :
    killCompl hσ (X (σ b) : MvPolynomial (Fin i) R) = X b := by
  rw [← rename_X, killCompl_rename_app]

theorem killCompl_X_of_notMem {k i : ℕ} {σ : Fin k → Fin i} (hσ : Function.Injective σ) {a : Fin i}
    (ha : a ∉ Set.range σ) : killCompl hσ (X a : MvPolynomial (Fin i) R) = 0 := by
  rw [killCompl, aeval_X, dif_neg ha]

def kill (R : Type) [CommRing R] {k i : ℕ} {σ : Fin k → Fin i} (hσ : Function.Injective σ) :
    EpsAlg R i →ₐ[R] EpsAlg R k :=
  Ideal.Quotient.liftₐ _ ((Ideal.Quotient.mkₐ R (sqIdeal R k)).comp (killCompl hσ)) fun p hp => by
    refine (show sqIdeal R i ≤ RingHom.ker ((Ideal.Quotient.mkₐ R (sqIdeal R k)).comp (killCompl hσ)) from ?_) hp
    refine Ideal.span_le.2 ?_
    rintro _ ⟨a, rfl⟩
    by_cases ha : a ∈ Set.range σ
    · obtain ⟨b, rfl⟩ := ha
      simp only [SetLike.mem_coe, RingHom.mem_ker, AlgHom.comp_apply, map_pow, killCompl_X_self]
      rw [sq]
      exact eps_mul_self R b
    · simp [RingHom.mem_ker, killCompl_X_of_notMem hσ ha]

theorem kill_mk {k i : ℕ} {σ : Fin k → Fin i} (hσ : Function.Injective σ) (p : MvPolynomial (Fin i) R) :
    kill R hσ (Ideal.Quotient.mk _ p) = Ideal.Quotient.mk _ (killCompl hσ p) := rfl

def epsMap (f : R →+* R') (k : ℕ) : EpsAlg R k →+* EpsAlg R' k :=
  Ideal.quotientMap _ (MvPolynomial.map f) (by
    refine Ideal.span_le.2 ?_
    rintro _ ⟨a, rfl⟩
    simp only [SetLike.mem_coe, Ideal.mem_comap, map_pow, map_X]
    exact Ideal.subset_span ⟨a, rfl⟩)

theorem epsMap_mk (f : R →+* R') {k : ℕ} (p : MvPolynomial (Fin k) R) :
    epsMap f k (Ideal.Quotient.mk _ p) = Ideal.Quotient.mk _ (MvPolynomial.map f p) := rfl

end Alg

end GlobalTheory.JetIntegral
