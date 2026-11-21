import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.DualWhittakerAdelicGL3
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.AdelicGaussians.UpperRightUnipotentInvariance
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetInd

open NumberField IsDedekindDomain MeasureTheory Matrix Filter Topology
open GroundTheory.Global GroundTheory.LocalField GroundTheory.Automorphic GroundTheory.Automorphic.AutomorphicForm
open GroundTheory.Automorphic.GodementSection (localChar)
open GroundTheory.Global.AdicLiesOver
open Ad3 Ad3.K Ad3.K.QuadraticBaseChangeGL3
open scoped NumberField.AdeleRing ValuativeRel

noncomputable section

namespace GlobalTheory.CompanionTheory.WS.Lat

open GlobalTheory.CompanionTheory.WS

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]

theorem mem_ball_iff {n : ℤ} {x : F} :
    x ∈ valBall F n ↔ normalizedValuation F x ≤ WithZero.exp (-n) := Iff.rfl

theorem mem_int_iff {a : F} : a ∈ 𝒪[F] ↔ normalizedValuation F a ≤ 1 := by
  have h := @mem_valBall_zero_iff F _ _ _ _ a
  rw [mem_ball_iff] at h
  simpa using h.symm

theorem val_unif : normalizedValuation F (unifUnit F : F) = WithZero.exp (-1 : ℤ) := by
  have h := @ord_unifUnit F _ _ _ _
  have h0 : normalizedValuation F (unifUnit F : F) ≠ 0 := by
    simp
  have hl : WithZero.log (normalizedValuation F (unifUnit F : F)) = -1 := by
    unfold ord at h
    omega
  rw [← hl, WithZero.exp_log h0]

theorem val_zpow (n : ℤ) :
    normalizedValuation F (((unifUnit F ^ n : Fˣ)) : F) = WithZero.exp (-n) := by
  rw [Units.val_zpow_eq_zpow_val, map_zpow₀, val_unif, ← WithZero.exp_zsmul]
  simp

theorem mul_inv_le_one_iff {a b : F} (hb : b ≠ 0) :
    normalizedValuation F (a * b⁻¹) ≤ 1 ↔ normalizedValuation F a ≤ normalizedValuation F b := by
  rw [map_mul, map_inv₀, ← div_eq_mul_inv]
  exact div_le_one₀ (zero_lt_iff.2 (by simpa using hb))

theorem exists_of_lt (n : ℤ) (x₁ x₂ : F)
    (h21 : normalizedValuation F x₂ ≤ normalizedValuation F x₁)
    (hn : WithZero.exp (-n) < normalizedValuation F x₁) :
    ∃ h : GL (Fin 2) F, spanSet n (x₁, x₂) = rowAct h ⁻¹' Ln F 0 := by
  have hx : x₁ ≠ 0 := by
    rintro rfl
    simp at hn
  obtain ⟨p, hp, hwp⟩ : ∃ p : F, p ≠ 0 ∧ normalizedValuation F p = WithZero.exp (-n) :=
    ⟨_, Units.ne_zero _, val_zpow n⟩
  have hdet : (!![x₁⁻¹, -(x₂ * x₁⁻¹ * p⁻¹); 0, p⁻¹] : Matrix (Fin 2) (Fin 2) F).det ≠ 0 := by
    rw [Matrix.det_fin_two_of]
    simpa using ⟨hx, hp⟩
  refine ⟨Matrix.GeneralLinearGroup.mkOfDetNeZero _ hdet, ?_⟩
  ext ⟨v₁, v₂⟩
  have hact : rowAct (Matrix.GeneralLinearGroup.mkOfDetNeZero _ hdet) (v₁, v₂)
      = (v₁ * x₁⁻¹, (v₂ - v₁ * x₁⁻¹ * x₂) * p⁻¹) := by
    simp only [rowAct, Matrix.GeneralLinearGroup.mkOfDetNeZero]
    ext
    · simp
    · simp
      ring
  have hq : normalizedValuation F (x₂ * x₁⁻¹) ≤ 1 := (mul_inv_le_one_iff hx).2 h21
  have hball : ∀ y : F, y * p⁻¹ ∈ valBall F 0 ↔ y ∈ valBall F n := fun y => by
    rw [mem_ball_iff, mem_ball_iff, ← hwp]
    simpa using mul_inv_le_one_iff hp
  simp only [Set.mem_preimage, hact, Ln, spanSet, Set.mem_setOf_eq, hball]
  constructor
  · rintro ⟨a, ha, h₁, h₂⟩
    simp only [Prod.mk_sub_mk, Prod.smul_mk, smul_eq_mul, Prod.fst_sub, Prod.snd_sub,
      Prod.smul_fst, Prod.smul_snd] at h₁ h₂
    have he : normalizedValuation F ((v₁ - a * x₁) * x₁⁻¹) ≤ 1 :=
      (mul_inv_le_one_iff hx).2 ((mem_ball_iff.1 h₁).trans hn.le)
    have hv : v₁ * x₁⁻¹ = a + (v₁ - a * x₁) * x₁⁻¹ := by
      field_simp
      ring
    have hw : v₂ - v₁ * x₁⁻¹ * x₂ = (v₂ - a * x₂) - (v₁ - a * x₁) * (x₂ * x₁⁻¹) := by
      field_simp
      ring
    refine ⟨?_, ?_⟩
    · rw [mem_ball_iff, hv]
      simpa using Valuation.map_add_le _ (mem_int_iff.1 ha) he
    · rw [hw]
      refine sub_mem h₂ ?_
      rw [mem_ball_iff, map_mul]
      exact (mul_le_of_le_one_right' hq).trans h₁
  · rintro ⟨h₁, h₂⟩
    refine ⟨v₁ * x₁⁻¹, mem_int_iff.2 ?_, ?_, ?_⟩
    · rw [mem_ball_iff] at h₁
      simpa using h₁
    · have : v₁ - v₁ * x₁⁻¹ * x₁ = 0 := by
        field_simp
        ring
      simpa [this] using zero_mem (valBall F n)
    · simpa [mul_comm, mul_assoc, mul_left_comm] using h₂

end GlobalTheory.CompanionTheory.WS.Lat

namespace GlobalTheory.CompanionTheory.WS

end GlobalTheory.CompanionTheory.WS
