import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocalWhittakerDuality.DampedFunctionalEquationAtPoint

open MeasureTheory Matrix GroundTheory.LocalField GroundTheory.Automorphic Ad3 Ad3.K.GL2LocalData
open scoped ValuativeRel ENNReal NNReal

noncomputable section

namespace GlobalTheory.CompanionTheory.GJHaar

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  [MeasurableSpace F] [BorelSpace F]

theorem measure_zero_singleton (ψ : AddChar F Circle) : selfDualMeasure ψ {(0 : F)} = 0 := by
  set μ := selfDualMeasure ψ
  have hC : μ (valBall F 0) ≠ ∞ := (isCompact_valBall 0).measure_lt_top.ne
  have hq : ((residueCard F : ℝ≥0))⁻¹ < 1 := inv_lt_one_of_one_lt₀ one_lt_residueCard_nnreal
  have h : ∀ n : ℕ, μ {0} ≤ (((residueCard F : ℝ≥0)⁻¹ ^ n : ℝ≥0) : ℝ≥0∞) * μ (valBall F 0) := by
    intro n
    calc μ {0} ≤ μ (valBall F (n : ℤ)) := measure_mono (Set.singleton_subset_iff.2 (zero_mem _))
      _ = _ := by
        rw [measure_valBall μ (n : ℤ), _root_.zpow_neg, zpow_natCast, inv_pow]
  have ht : Filter.Tendsto (fun n : ℕ => (((residueCard F : ℝ≥0)⁻¹ ^ n : ℝ≥0) : ℝ≥0∞) * μ (valBall F 0))
      Filter.atTop (nhds 0) := by
    have h1 : Filter.Tendsto (fun n : ℕ => (((residueCard F : ℝ≥0)⁻¹ ^ n : ℝ≥0) : ℝ≥0∞))
        Filter.atTop (nhds ((0 : ℝ≥0) : ℝ≥0∞)) :=
      ENNReal.tendsto_coe.2 (NNReal.tendsto_pow_atTop_nhds_zero_of_lt_one hq)
    have := ENNReal.Tendsto.mul_const h1 (Or.inr hC)
    simpa using this
  exact le_antisymm (ge_of_tendsto' ht h) (by simp)

instance nullSingleton (ψ : AddChar F Circle) : NullSingletonClass (selfDualMeasure ψ) :=
  ⟨fun x => by
    have h := measure_preimage_add_right (selfDualMeasure ψ) (-x) {(0 : F)}
    rw [measure_zero_singleton] at h
    have e : (fun h : F => h + -x) ⁻¹' {(0 : F)} = {x} := by
      ext y
      simp [add_neg_eq_zero]
    rwa [e] at h⟩

end GlobalTheory.CompanionTheory.GJHaar
