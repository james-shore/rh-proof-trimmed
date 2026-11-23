import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.IsKSValueOneOfRetraction
import Development.AbelianVarietyTheory.Definitions.Divisors.JetAnalytic
import Development.AbelianVarietyTheory.Definitions.Divisors.MapSmulOfIsHausdorff
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsVariableChangeEisensteinCurve
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.CrysToDRBijective
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.CrystallinePull2SumCup
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.PolarisationModuleIndex

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj NumberField IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.Cris GlobalTheory.DeRham GlobalTheory.RealMult GlobalTheory.CMVal GlobalTheory.LatVal GlobalTheory.LatJet
open GlobalTheory.IndefiniteRowSideFullHecke.ClassZetaValuationBounds (IsClassZetaVals c_vp cE_vp a0)
open TensorProduct

set_option autoImplicit false

noncomputable section

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.CMVecBC

def diagL {g : ℕ} (d : Fin g → ℂ) : (Fin g → ℂ) →ₗ[ℂ] (Fin g → ℂ) where
  toFun w j := d j * w j
  map_add' w w' := by funext j; simp [mul_add]
  map_smul' r w := by funext j; simp only [Pi.smul_apply, smul_eq_mul, RingHom.id_apply]; ring

@[simp] theorem diagL_apply {g : ℕ} (d w : Fin g → ℂ) (j : Fin g) : diagL d w j = d j * w j := rfl

end GlobalTheory.CMVecBC

namespace GlobalTheory.CMVecBC

end GlobalTheory.CMVecBC
