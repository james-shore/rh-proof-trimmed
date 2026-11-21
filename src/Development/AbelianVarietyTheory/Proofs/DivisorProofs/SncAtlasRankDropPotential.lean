import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AnalyticLogResolution
import ReciprocityTheory.AnalyticForms.PotentialTheory.ContDiffAtOfIsPotential
import ReciprocityTheory.AnalyticForms.PotentialTheory.Pullback

open MeasureTheory ReciprocityTheory.AnForm ReciprocityTheory.AnForm.M GlobalTheory.IndefiniteRowSideFullHecke.BoundaryPolynomialFunctions GlobalTheory.LogResInt
open scoped ENNReal

namespace GlobalTheory.SNCRankDrop

open Filter Topology

noncomputable def insZero {n : ℕ} (a : Fin (n + 1)) : (Fin n → ℂ) →L[ℂ] (Fin (n + 1) → ℂ) :=
  LinearMap.toContinuousLinearMap
    { toFun := fun z => Fin.insertNth a 0 z
      map_add' := fun x y => by
        funext b
        refine Fin.succAboveCases a ?_ (fun c => ?_) b <;> simp
      map_smul' := fun t x => by
        funext b
        refine Fin.succAboveCases a ?_ (fun c => ?_) b <;> simp }

theorem insZero_apply {n : ℕ} (a : Fin (n + 1)) (z : Fin n → ℂ) :
    insZero a z = Fin.insertNth a 0 z := rfl

end GlobalTheory.SNCRankDrop
