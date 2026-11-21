import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArcZeroZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspFormsExtendVanishCompactifiedFlagSpace
import Development.AbelianVarietyTheory.Definitions.Divisors.SemiposAtOfPositive

section
open CategoryTheory AlgebraicGeometry TopologicalSpace Limits NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory Formalism.L2.Pj Formalism.BasicNotions
open ReciprocityTheory.ChartRestriction.G.Out (nonzeroLocus)
open GlobalTheory GlobalTheory.CechPic GlobalTheory.Vanishing GlobalTheory.HermTools GlobalTheory.Adelic GlobalTheory.CompHS GlobalTheory.CovTop
open GlobalTheory.AllWt (Psi wtOf cuspOn latOn normOn petOn GoodOn GoodW bergOn framesOn)
open GlobalTheory.FlagMod (FlagCover)
open GlobalTheory.FlagTan (dimFlag)
open GlobalTheory.HSApp
open Filter Topology
open ReciprocityTheory.ChartRestriction.G.FD (Data Frame Bor rmul lact mat col dmin Wt)
open GlobalTheory.ShFam GlobalTheory.ShFam.BdArc GlobalTheory.Toroidal GlobalTheory.KoecherArc

private theorem exists_radius {m : ℕ} (ρ : Fin m → ℝ) (r : ℝ) (hr : 0 < r) (hρ : ∀ i, 0 < ρ i) :
    ∃ s : ℝ, 0 < s ∧ s ≤ r ∧ ∀ i, s ≤ ρ i := by
  induction m with
  | zero => exact ⟨r, hr, le_rfl, fun i => i.elim0⟩
  | succ m ih =>
    obtain ⟨s, h1, h2, h3⟩ := ih (fun i => ρ i.succ) fun i => hρ _
    exact ⟨min s (ρ 0), lt_min h1 (hρ 0), (min_le_left _ _).trans h2,
      Fin.cases (min_le_right _ _) fun i => (min_le_left _ _).trans (h3 i)⟩

end

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Pj Formalism.BasicNotions.TH Formalism.L2.Theta ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD GlobalTheory.AllWt GlobalTheory.CompHt GlobalTheory.CovTop GlobalTheory.CovHt
open scoped ENNReal Classical
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi

