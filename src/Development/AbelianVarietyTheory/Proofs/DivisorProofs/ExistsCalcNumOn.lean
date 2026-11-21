import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.EqOfIsometricTrivShift
import Development.AbelianVarietyTheory.Definitions.Divisors.ChernOn
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NontrivialIsomClassInt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FirstChernClassPotential
import ReciprocityTheory.AnalyticForms.PotentialTheory.PshShiftA
import Development.AbelianVarietyTheory.Definitions.Divisors.FirstChernLeviEqConstant

open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open ReciprocityTheory.AnForm ReciprocityTheory.AnForm.M GlobalTheory GlobalTheory.ArInt GlobalTheory.Mean4O

noncomputable section

namespace GlobalTheory.Mean4O.CalcModel

section Algebra

def linL (J : Type) [Fintype J] : (J → ℝ) →ₗ[ℝ] MvPolynomial J ℝ where
  toFun := lin
  map_add' a b := by simp [lin, add_mul, Finset.sum_add_distrib]
  map_smul' c a := by simp [lin, Finset.smul_sum, MvPolynomial.smul_eq_C_mul, mul_assoc]

def prodForm {J V : Type} [Fintype J] [AddCommGroup V] [Module ℝ V] (m : ℕ) (Φ : MvPolynomial J ℝ →ₗ[ℝ] ℝ)
    (f : V →ₗ[ℝ] J → ℝ) : MultilinearMap ℝ (fun _ : Fin m => V) ℝ :=
  Φ.compMultilinearMap ((MultilinearMap.mkPiAlgebra ℝ (Fin m) (MvPolynomial J ℝ)).compLinearMap
    fun _ => (linL J).comp f)

theorem prodForm_apply {J V : Type} [Fintype J] [AddCommGroup V] [Module ℝ V] (m : ℕ)
    (Φ : MvPolynomial J ℝ →ₗ[ℝ] ℝ) (f : V →ₗ[ℝ] J → ℝ) (v : Fin m → V) :
    prodForm m Φ f v = Φ (∏ l, lin (f (v l))) := rfl

end Algebra

end GlobalTheory.Mean4O.CalcModel
