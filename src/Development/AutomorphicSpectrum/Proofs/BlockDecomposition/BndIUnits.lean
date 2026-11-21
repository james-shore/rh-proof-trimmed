import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.DualWhittakerAdelicGL3
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.AdelicGaussians.UpperRightUnipotentInvariance

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Matrix Filter Topology
open GroundTheory.Global GroundTheory.LocalField GroundTheory.Automorphic GroundTheory.Automorphic.AutomorphicForm
open GroundTheory.Automorphic.GodementSection (localChar)
open GroundTheory.Automorphic.Reduction (finAt infAt maxCompact)
open GroundTheory.Automorphic.GLnLocal (integralGL)
open GroundTheory.Global.AdicLiesOver
open Ad3 Ad3.K Ad3.K.QuadraticBaseChangeGL3
open Ad3.R (G2 Jd md KA lc)
open scoped NumberField.AdeleRing ValuativeRel

namespace GlobalTheory.CompanionTheory.GL2Factorization

structure FG {v : Pl} (W : GL (Fin 3) (Qv v) → ℂ) : Prop where
  smooth : ∃ U : OpenSubgroup (GL (Fin 3) (Qv v)), ∀ g, ∀ u ∈ U, W (g * u) = W g
  gauge : ∃ (C B : ℝ) (T : ℕ), ∀ (a b : (Qv v)ˣ), ∀ k ∈ integralGL (Qv v) 3,
    ‖W (dg (a * b) b 1 * k)‖ ≤ C / ((modulus (a : Qv v) : ℝ) * modulus (b : Qv v)) ^ T ∧
      (W (dg (a * b) b 1 * k) ≠ 0 → (modulus (a : Qv v) : ℝ) ≤ B ∧ (modulus (b : Qv v) : ℝ) ≤ B)

structure ThG {v : Pl} (W : GL (Fin 2) (Qv v) → ℂ) : Prop where
  smooth : ∃ U : OpenSubgroup (GL (Fin 2) (Qv v)), ∀ g, ∀ u ∈ U, W (g * u) = W g
  gauge : ∃ (C : ℝ) (N : ℕ), ∀ (a b : (Qv v)ˣ), ∀ k ∈ integralGL (Qv v) 2,
    ‖W (dg2 (a * b) b * k)‖ ≤ C * (((modulus (a : Qv v) : ℝ) + (modulus (a : Qv v) : ℝ)⁻¹) *
      ((modulus (b : Qv v) : ℝ) + (modulus (b : Qv v) : ℝ)⁻¹)) ^ N

end GlobalTheory.CompanionTheory.GL2Factorization
