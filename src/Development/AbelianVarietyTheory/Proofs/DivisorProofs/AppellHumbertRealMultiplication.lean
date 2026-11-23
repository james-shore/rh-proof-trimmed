import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.StepsNonvacuous
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.CrystallinePull2SumCup
import Development.AbelianVarietyTheory.Definitions.Divisors.MapSmulOfIsHausdorff
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsVariableChangeEisensteinCurve
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAHOfIsFactorAH

set_option autoImplicit false

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.RealMult GlobalTheory.TorusRM

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.RosatiAH

end GlobalTheory.RosatiAH

namespace GlobalTheory.RosatiAH

end GlobalTheory.RosatiAH

namespace GlobalTheory.RosatiAH

variable {g : ℕ}

def dmul (s : Fin g → ℂ) : (Fin g → ℂ) →ₗ[ℂ] (Fin g → ℂ) where
  toFun z j := s j * z j
  map_add' z w := by funext j; simp [mul_add]
  map_smul' t z := by funext j; simp; ring

theorem dmul_apply (s z : Fin g → ℂ) : dmul s z = fun j => s j * z j := rfl

def fdiag (g : ℕ) : (Fin g → ℂ) →ₗ[ℂ] (Fin (g + g) → ℂ) where
  toFun z := Fin.append z z
  map_add' z w := by
    funext i
    refine Fin.addCases (fun i => ?_) (fun i => ?_) i
    · simp only [Fin.append_left, Pi.add_apply]
    · simp only [Fin.append_right, Pi.add_apply]
  map_smul' t z := by
    funext i
    refine Fin.addCases (fun i => ?_) (fun i => ?_) i
    · simp only [Fin.append_left, Pi.smul_apply, RingHom.id_apply]
    · simp only [Fin.append_right, Pi.smul_apply, RingHom.id_apply]

theorem fdiag_apply (z : Fin g → ℂ) : fdiag g z = Fin.append z z := rfl

end GlobalTheory.RosatiAH

