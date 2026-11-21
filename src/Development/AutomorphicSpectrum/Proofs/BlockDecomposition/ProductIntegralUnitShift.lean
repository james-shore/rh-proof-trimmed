import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.PureThetaTransfer.AdmM
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.DualWhittakerAdelicGL3
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.AdelicGaussians.UpperRightUnipotentInvariance
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.VerticalStrips.UnramifiedEulerProductIntegral
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnitMeasureFiniteCompactSupport

open NumberField IsDedekindDomain MeasureTheory GroundTheory.Global GroundTheory.LocalField GroundTheory.Automorphic Ad3 Ad3.K Ad3.K.QuadraticBaseChangeGL3 Ad3.K.QuadraticBaseChangeGL3.Th
open GroundTheory.Automorphic.GodementSection (localChar)
open GroundTheory.Automorphic.Reduction (finAt infAt maxCompact)
open GroundTheory.Automorphic.GLnLocal (integralGL)
open Ad3.R (G2 Jd md KA LInv IsLoc2 pt pri dia2)
open scoped NumberField.AdeleRing ValuativeRel
open GroundTheory.Global.AdicLiesOver
noncomputable section

namespace GlobalTheory.CompanionTheory.FexTheta.ProdSum

open GlobalTheory.CompanionTheory.ThetaUnits

theorem unQ_eq_ordShell (v : Pl) : unQ v = ordShell (Qv v) 0 := by
  ext a
  rw [ordShell_zero, SetLike.mem_coe, mem_unitFiltrationUnits_zero_iff]
  have h3 : ValuativeRel.valuation (Qv v) (a : Qv v) *
      ValuativeRel.valuation (Qv v) ((a⁻¹ : (Qv v)ˣ) : Qv v) = 1 := by
    rw [← map_mul]; simp
  constructor
  · rintro ⟨h1, h2⟩
    have h1' : ValuativeRel.valuation (Qv v) (a : Qv v) ≤ 1 := h1
    have h2' : ValuativeRel.valuation (Qv v) ((a⁻¹ : (Qv v)ˣ) : Qv v) ≤ 1 := h2
    refine le_antisymm h1' ?_
    calc (1 : _) = ValuativeRel.valuation (Qv v) (a : Qv v) *
          ValuativeRel.valuation (Qv v) ((a⁻¹ : (Qv v)ˣ) : Qv v) := h3.symm
      _ ≤ ValuativeRel.valuation (Qv v) (a : Qv v) * 1 := by gcongr
      _ = _ := mul_one _
  · intro h
    rw [h, one_mul] at h3
    refine ⟨?_, ?_⟩
    · show ValuativeRel.valuation (Qv v) (a : Qv v) ≤ 1
      exact h.le
    · show ValuativeRel.valuation (Qv v) ((a⁻¹ : (Qv v)ˣ) : Qv v) ≤ 1
      exact h3.le

theorem multHaar_unQ (v : Pl) : multHaar (Qv v) (unQ v) = 1 := by
  rw [unQ_eq_ordShell, multHaar_ordShell]

end GlobalTheory.CompanionTheory.FexTheta.ProdSum
