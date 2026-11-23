import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.JEvExists
import Formalism.LocalToGlobal.ProjectiveLattices.LatPAddRight
import Formalism.LocalToGlobal.ProjectiveLattices.ValSetAlgSubset
import Formalism.LocalToGlobal.ProjectiveLattices.ParCanon
import Formalism.LocalToGlobal.ProjectiveLattices.ExistsParameterConditions
import Development.AbelianVarietyTheory.BlockTheory.HeightDefect.WordDerivatives
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsSigmaList
import Formalism.LocalToGlobal.ProjectiveLattices.FamilyUniformisationBasePointOrthogonal
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsRationalUnitaryDeterminantMapRationalUnitaryTo
import Development.AbelianVarietyTheory.Definitions.Foundations.ValuedAlgebraMapEqOne
import Development.AbelianVarietyTheory.Definitions.Foundations.IsUnitaryOfOrder
import Development.AbelianVarietyTheory.Proofs.HeightProofs.IsTopologicalRingAE

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.L2.Pj Formalism.IndefR.FWT ReciprocityTheory.ChartRestriction.G.FD ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.RealGeo
open scoped TensorProduct nonZeroDivisors
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.RefCharValues

theorem sign_zpow_even (z : ℂ) (h : z ≠ 0) (k : ℤ) :
    (z / ((‖z‖ : ℝ) : ℂ)) ^ (2 * k) = (z / starRingEnd ℂ z) ^ k := by
  rw [zpow_mul]
  congr 1
  have h1 : (‖z‖ : ℂ) ^ 2 = z * starRingEnd ℂ z := by
    rw [Complex.mul_conj, Complex.normSq_eq_norm_sq]; push_cast; rfl
  have h2 : starRingEnd ℂ z ≠ 0 := by simpa using h
  rw [zpow_ofNat, div_pow, h1]
  field_simp

end GlobalTheory.RefCharValues
