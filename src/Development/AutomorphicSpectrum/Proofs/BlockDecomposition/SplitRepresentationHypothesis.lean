import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocalWhittakerDuality.FibProp
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegrableCharMul
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NormUnitPair

open MeasureTheory Matrix GroundTheory.LocalField GroundTheory.Automorphic Ad3 Ad3.K.GL2LocalData
open scoped ValuativeRel

noncomputable section

namespace GlobalTheory.CompanionTheory.SplitRep

open GlobalTheory.CompanionTheory.WeilSplit (norm_pair nsg_pair)
open GlobalTheory.CompanionTheory.SplitGauss (trace_swap)

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  [MeasurableSpace F] [BorelSpace F]

theorem chi_add (χ : AddChar F Circle) (x y : F) : (χ (x + y) : ℂ) = (χ x : ℂ) * (χ y : ℂ) := by
  rw [AddChar.map_add_eq_mul, Circle.coe_mul]

omit [MeasurableSpace F] [BorelSpace F] in
theorem modulus_neg_one : modulus (-1 : F) = 1 := by
  have h : modulus (-1 : F) * modulus (-1 : F) = 1 := by
    rw [← modulus_mul]; simp [modulus_one]
  have h2 : modulus (-1 : F) ^ 2 = 1 := by rw [sq]; exact h
  exact (pow_eq_one_iff.1 h2).resolve_right (by norm_num)

omit [MeasurableSpace F] [BorelSpace F] in
theorem modulus_neg' (x : F) : modulus (-x) = modulus x := by
  rw [show -x = -1 * x by ring, modulus_mul, modulus_neg_one, one_mul]

def Good (χ : AddChar F Circle) (h : Matrix (Fin 2) (Fin 2) F) : Prop :=
  h.det = 1 ∧ ∀ g : Matrix (Fin 2) (Fin 2) F, g.det = 1 → ∀ Φ ∈ SBE (F × F),
    rWS χ h Φ ∈ SBE (F × F) ∧ rWS χ (g * h) Φ = rWS χ g (rWS χ h Φ)

theorem Good.mul {χ : AddChar F Circle} {x y : Matrix (Fin 2) (Fin 2) F} (hx : Good χ x) (hy : Good χ y) :
    Good χ (x * y) := by
  refine ⟨by rw [Matrix.det_mul, hx.1, hy.1, one_mul], fun g hg Φ hΦ => ?_⟩
  have a := hy.2 x hx.1 Φ hΦ
  have b := hx.2 g hg _ a.1
  have c := hy.2 (g * x) (by rw [Matrix.det_mul, hg, hx.1, one_mul]) Φ hΦ
  exact ⟨by rw [a.2]; exact b.1, by rw [← mul_assoc, c.2, b.2, a.2]⟩

end GlobalTheory.CompanionTheory.SplitRep
