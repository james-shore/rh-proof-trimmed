import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsIsHodgeFrameIff
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsExponentialChartAtPoint
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PerValNeZero
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsContinuousOnFrameDirectionsInverse
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsAffineStableLieEigenspaceFrame
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsLocalEquationComplexPoints
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsHolomorphicLieFrame
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsLinearEquivLift
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsStalkFactor
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsBlockMetricDiagForm
import Development.AbelianVarietyTheory.Definitions.Divisors.DetJacMatCoordsEqTransitionJacobianDet
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsConstantPeriodMarkingUniversalCover
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UniformizedFamilyChartIndex
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsFrPtPtFOfEigFrame
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExponentialKernelsIsHolomorphicLatticeFamily
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PullbackAnalytic
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PunctPolydiscUniversalCoverOpenConvexExpAnalytic
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HermFormPeriodsAlternatingNondegRankEqTwoMul
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsLagrangianDualPairInCoisotropic
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsotropicDualFamilyLinearIndependentRankEqTwoMul
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DetNeZeroOfRealIndependentIsotropicHermitian
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RiemannRelationsPeriodMatrixHermitian
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PeriodMatrixPolynomialGrowthPuncturedPolydisc
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PolynomialGrowthUpperHalfLog

open AlgebraicGeometry CategoryTheory Limits NumberField Matrix
open ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.L2.Pj GlobalTheory GlobalTheory.CxPts GlobalTheory.Toroidal GlobalTheory.LieMet GlobalTheory.GradedNorm GlobalTheory.Cartier GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.ShFam GlobalTheory.ShFam.Pad
open scoped Topology ComplexOrder

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.ShFam.MuExp

variable {D : D7} {A : Amb D} {N j : ℕ} {S : Sig A N j} {κ : Lv A} {s : FinalTheorems S κ}

theorem quad_nonneg {m : ℕ} {M : Matrix (Fin m) (Fin m) ℂ} (h : M.PosDef) (v : Fin m → ℂ) :
    0 ≤ (star v ⬝ᵥ M *ᵥ v).re :=
  h.posSemidef.re_dotProduct_nonneg v

variable (x : ToroidalCompactificationData s)

def Bd (σ : κ.c.F →+* ℂ) (C : ℝ) (k : ℕ) : Prop :=
  ∀ y : CxPts (genStr s.T.Z) σ, ¬ LiesIn y (genBd s.T.Z) → ∀ (g : EigFrame s.T.Z σ (y.1 ≫ genι s.T.Z))
    (τ : D.host.E →+* ℂ) (v : Fin (S.Dw.mult τ) → ℂ),
    (star v ⬝ᵥ x.gram y g τ *ᵥ v).re ≤ C * x.r σ y ^ k * (star v ⬝ᵥ (x.hodge σ).gram y g τ *ᵥ v).re ∧
      (star v ⬝ᵥ (x.hodge σ).gram y g τ *ᵥ v).re ≤ C * x.r σ y ^ k * (star v ⬝ᵥ x.gram y g τ *ᵥ v).re

theorem one_le_r (σ : κ.c.F →+* ℂ) (y : CxPts (genStr s.T.Z) σ) : 1 ≤ x.r σ y := by
  have h1 := x.exp_le_r σ y
  have h2 := Real.add_one_le_exp (1 : ℝ)
  linarith

theorem mul_pow_le {C C' r : ℝ} {k k' : ℕ} (hC : C ≤ C') (hC' : 0 ≤ C') (hk : k ≤ k') (hr : 1 ≤ r) :
    C * r ^ k ≤ C' * r ^ k' := by
  have hp : r ^ k ≤ r ^ k' := pow_le_pow_right₀ hr hk
  have hp0 : 0 ≤ r ^ k := by positivity
  by_cases hc : 0 ≤ C
  · exact mul_le_mul hC hp hp0 (hc.trans hC)
  · push_neg at hc
    exact (mul_nonpos_of_nonpos_of_nonneg hc.le hp0).trans (by positivity)

theorem Bd.mono {σ : κ.c.F →+* ℂ} {C C' : ℝ} {k k' : ℕ} (h : Bd x σ C k) (hC : C ≤ C') (hC' : 0 ≤ C')
    (hk : k ≤ k') : Bd x σ C' k' := fun y hy g τ v => by
  have hC0 := mul_pow_le hC hC' hk (one_le_r x σ y)
  have q0 := quad_nonneg (x.gram_posDef g τ) v
  have q1 := quad_nonneg ((x.hodge σ).pos y g τ) v
  obtain ⟨a, b⟩ := h y hy g τ v
  exact ⟨a.trans (mul_le_mul_of_nonneg_right hC0 q1), b.trans (mul_le_mul_of_nonneg_right hC0 q0)⟩

end GlobalTheory.ShFam.MuExp

namespace GlobalTheory.ShFam.ToroidalCompactificationData

end GlobalTheory.ShFam.ToroidalCompactificationData
