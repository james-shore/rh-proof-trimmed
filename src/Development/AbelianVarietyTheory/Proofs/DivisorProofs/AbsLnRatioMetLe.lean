import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SemiposAtOfPositive
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MulPowLeRpow
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ComparableHermitianFormsDetBounds

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.GradedCompare

open Matrix GlobalTheory.GradedNorm GlobalTheory.LieMet ReciprocityTheory.ChartRestriction.G.FD
open scoped ComplexOrder

variable {n : ℕ}

def Cmp (m : ℝ) (A B : Matrix (Fin n) (Fin n) ℂ) : Prop :=
  (((m : ℂ) • B) - A).PosSemidef ∧ (((m : ℂ) • A) - B).PosSemidef

theorem Cmp.symm {m : ℝ} {A B : Matrix (Fin n) (Fin n) ℂ} (h : Cmp m A B) : Cmp m B A := ⟨h.2, h.1⟩

theorem Cmp.inv {m : ℝ} {A B : Matrix (Fin n) (Fin n) ℂ} (h : Cmp m A B) (hA : A.PosDef) (hB : B.PosDef) (hm : 0 < m) :
    Cmp m A⁻¹ B⁻¹ :=
  ⟨GlobalTheory.CompMetric.inv_sub_posSemidef hm hB hA h.2, GlobalTheory.CompMetric.inv_sub_posSemidef hm hA hB h.1⟩

theorem Cmp.transpose {m : ℝ} {A B : Matrix (Fin n) (Fin n) ℂ} (h : Cmp m A B) : Cmp m Aᵀ Bᵀ := by
  refine ⟨?_, ?_⟩
  · have := h.1.transpose
    rwa [transpose_sub, transpose_smul] at this
  · have := h.2.transpose
    rwa [transpose_sub, transpose_smul] at this

end GlobalTheory.GradedCompare

namespace GlobalTheory.GradedCompare

end GlobalTheory.GradedCompare
