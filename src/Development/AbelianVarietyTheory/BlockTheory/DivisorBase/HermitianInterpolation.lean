import Mathlib
import ReciprocityTheory.AnalyticForms.MaIntEmpty
import Development.AbelianVarietyTheory.Definitions.Divisors.ExtFormAdjEqNegSecondForm

open Matrix Filter Topology Set GlobalTheory.HermFrame
open scoped ComplexOrder ContDiff

noncomputable section

namespace GlobalTheory.IndefiniteRowSideFullHecke.HermitianInterpolation

structure IsCutoff (χ : ℝ → ℝ) : Prop where

  smooth : ContDiffOn ℝ ∞ χ (Ici 0)

  mem : ∀ y, 0 ≤ y → χ y ∈ Icc (0 : ℝ) 1

  eq_one : ∀ y ∈ Icc (0 : ℝ) 2, χ y = 1

  eq_zero : ∀ y, 3 ≤ y → χ y = 0

  smooth_sqrt : ContDiffOn ℝ ∞ (fun y => √(χ y)) (Ici 0)

variable {ι n : Type} [Fintype ι] [Fintype n] [DecidableEq n]

def PowComparable (U : Set (ι → ℂ)) (r : (ι → ℂ) → ℝ) (C : ℝ)
    (H₀ H : (ι → ℂ) → Matrix n n ℂ) : Prop :=
  ∀ z ∈ U, ∀ v : n → ℂ,
    r z ^ (-C) * (form (H₀ z) v v).re ≤ (form (H z) v v).re ∧
      (form (H z) v v).re ≤ r z ^ C * (form (H₀ z) v v).re

def gradForm (r : (ι → ℂ) → ℝ) (z ξ η : ι → ℂ) : ℂ :=
  kappa * (del (fun x => (r x : ℂ)) z ξ * dbar (fun x => (r x : ℂ)) z η)

structure IsData (Cμ C₀ C₂ C₃ CP : ℝ) (U : Set (ι → ℂ)) (H₀ H : (ι → ℂ) → Matrix n n ℂ)
    (r : (ι → ℂ) → ℝ) (G : (ι → ℂ) → Matrix ι ι ℂ) : Prop where

  pos₀ : IsPosFrame U H₀

  pos : IsPosFrame U H

  smooth_r : ContDiffOn ℝ ∞ r U

  exp_le : ∀ z ∈ U, Real.exp 1 ≤ r z

  smooth_G : ∀ k l, ContDiffOn ℝ ∞ (fun x => G x k l) U

  posSemidef_G : ∀ z ∈ U, (G z).PosSemidef

  comparable : PowComparable U r Cμ H₀ H

  conn_le : OneFormBound U H₀ G (fun z ξ => conn H z ξ - conn H₀ z ξ) C₂

  curv_le : TwoFormBound U H G (curv H) C₃

  curv₀_le : TwoFormBound U H₀ G (curv H₀) C₀

  grad_le : ∀ z ∈ U, FormLe (fun ξ η => gradForm r z ξ η / ((r z : ℂ) ^ 2))
    fun ξ η => CP * formOf (G z) ξ η

  ddc_log_le : ∀ z ∈ U, FormAbsLe (ddc (fun x => Real.log (r x)) z) CP (formOf (G z))

end GlobalTheory.IndefiniteRowSideFullHecke.HermitianInterpolation
