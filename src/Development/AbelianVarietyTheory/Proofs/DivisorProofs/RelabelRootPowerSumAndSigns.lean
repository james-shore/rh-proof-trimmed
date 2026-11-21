import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsFlagBundleRankOne
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.RegularAlteration
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RootIdx

open NumberField MvPolynomial Filter Topology Formalism.BasicNotions Formalism.MainNotions Formalism.DegreeFormula GlobalTheory.FlagPoly GlobalTheory.Mean4 GlobalTheory.Mean4O GlobalTheory.CovTop GlobalTheory.CovHt GlobalTheory.CovTest GlobalTheory.Published
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory GlobalTheory.ArInt
open scoped Classical
open GlobalTheory.BcEigen

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.BcEigen

def rootEquiv (ι : Type) (N j : ℕ) (h : j ≤ N) : ι × Fin N ≃ Σ a : ι × Bool, Fin (rkB ι N j a) where
  toFun := rootIdx ι N j
  invFun z := match z with
    | ⟨(τ, true), i⟩ => (τ, ⟨i, by have := i.isLt; simp [rkB] at this; omega⟩)
    | ⟨(τ, false), i⟩ => (τ, ⟨j + i, by have := i.isLt; simp [rkB] at this; omega⟩)
  left_inv x := by
    obtain ⟨τ, i⟩ := x
    by_cases hi : (i : ℕ) < j
    · simp [rootIdx, hi]
    · simp only [rootIdx, hi, dite_false]
      ext <;> simp; omega
  right_inv z := by
    obtain ⟨⟨τ, b⟩, i⟩ := z
    cases b
    · have hi : ¬ (j + (i : ℕ) < j) := by omega
      simp only [rootIdx, hi, dite_false]
      congr 1
      simp
    · have hi : (i : ℕ) < j := by have := i.isLt; simp [rkB] at this; omega
      simp [rootIdx, hi]

lemma rootEquiv_apply (ι : Type) (N j : ℕ) (h : j ≤ N) (x : ι × Fin N) :
    rootEquiv ι N j h x = rootIdx ι N j x := rfl

end GlobalTheory.BcEigen

namespace GlobalTheory.BcEigen
end GlobalTheory.BcEigen
