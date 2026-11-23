import Mathlib
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAnalyticSubOneDivOneSubUnitMulExp
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousOfMemSmoothSpan
import GroundTheory.AutomorphicForms.FourierWhittaker.IsAddFundamentalDomainImageOfMapVecLattice
import GroundTheory.AutomorphicForms.FourierWhittaker.Series
import GroundTheory.AutomorphicForms.FourierWhittaker.AlgebraMapIntegerMemIntegralFiniteAdeles
import GroundTheory.AutomorphicForms.FourierWhittaker.AdelicCharPairTorusPtSingle
import GroundTheory.AutomorphicForms.FourierWhittaker.UMatColXEqFromBlocks
import GroundTheory.AutomorphicForms.FourierWhittaker.PartialCoeffDiagonalBlockGLEqVecCoeff
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemContraIff
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FourierTransformUniformRapidDecayFamily

open NumberField Matrix MeasureTheory Filter Topology GlobalTheory.CuspRep GlobalTheory.UnitaryBC GroundTheory.Global.IdeleGroup Formalism.L2.Host
open scoped nonZeroDivisors ComplexConjugate

set_option maxHeartbeats 1000000 in
theorem _root_.GlobalTheory.T.exists_analytic_sub_one_div_one_sub_mul_exp : ∀ (L : ℝ), 0 < L → ∀ χ : ℂ, ‖χ‖ = 1 → ∃ h : ℂ → ℂ, (∀ x : ℝ, 0 < x → AnalyticAt ℂ h (x : ℂ)) ∧ (∀ x : ℝ, 1 < x → h (x : ℂ) = ((x : ℂ) - 1) / (1 - χ * Complex.exp (-((L : ℂ) * ((x : ℂ) - 1))))) ∧ (χ ≠ 1 → h 1 = 0) := by
  first | exact @GlobalTheory.exists_analytic_sub_one_div_one_sub_unit_mul_exp | exact GlobalTheory.exists_analytic_sub_one_div_one_sub_unit_mul_exp | (intros; apply GlobalTheory.exists_analytic_sub_one_div_one_sub_unit_mul_exp <;> assumption)
