import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ToroidalCompactificationData
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.RhGradFPfA
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.DifferentiableOnOfTendstoLocallyUniformlyOn
open AlgebraicGeometry CategoryTheory NumberField Matrix
open ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.L2.Pj GlobalTheory GlobalTheory.CxPts GlobalTheory.Toroidal GlobalTheory.LieMet GlobalTheory.ShFam
open Formalism.DegreeFormula Formalism.MJ GlobalTheory.HodgeDomain GlobalTheory.TrueCx
open scoped ComplexOrder ContDiff

noncomputable section

namespace GlobalTheory.HodgeDomain.DdcChain

open ReciprocityTheory.L2DbarEstimates ReciprocityTheory.ChartRestriction.G.AR.Up.RGF ReciprocityTheory.L2DbarEstimates.Y Topology

variable {ι : Type} [Fintype ι] {p q n : ℕ}

theorem flat_unflat (v : ι × Fin p × Fin q → ℂ) : flat (unflat v) = v := rfl

theorem unflat_flat (z : Pt ι p q) : unflat (flat z) = z := rfl

theorem flat_I_smul (ξ : Pt ι p q) : flat (Complex.I • ξ) = Complex.I • flat ξ := rfl

end GlobalTheory.HodgeDomain.DdcChain

