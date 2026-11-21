import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FirstIndexEqOfUnfolded
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsOpenAndFderivMoebI
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.DifferentiableOnOfTendstoLocallyUniformlyOn

noncomputable section

open Matrix NumberField MeasureTheory Formalism.DegreeFormula Formalism.MJ Formalism.UG Formalism.L2.Geo
open ReciprocityTheory.ChartRestriction.G.FD ReciprocityTheory.ChartRestriction.G.AR.Inst ReciprocityTheory.ChartRestriction.G.AR.Up GlobalTheory.HodgeDomain GlobalTheory.TrueCx
open scoped ComplexOrder ENNReal ContDiff Topology

namespace GlobalTheory.BetaInv

section General

variable {W : Type} [NormedAddCommGroup W] [NormedSpace ℂ W] [CompleteSpace W]

def antiFn (F : W → ℂ) (u : W) (w : W) : ℂ := (fderiv ℝ F w u + Complex.I * fderiv ℝ F w (Complex.I • u)) / 2

def levi (F : W → ℂ) (x u : W) : ℂ :=
  (fderiv ℝ (antiFn F u) x u - Complex.I * fderiv ℝ (antiFn F u) x (Complex.I • u)) / 2

end General

variable {ι : Type} [Fintype ι] {p q : ℕ}

theorem ddc_eq (f : Pt ι p q → ℝ) (z ξ : Pt ι p q) :
    ddc f z ξ = (levi (fun v => (f (unflat v) : ℂ)) (flat z) (flat ξ)).re / Real.pi := rfl

omit [Fintype ι] in
theorem unflat_flat' (z : Pt ι p q) : unflat (flat z) = z := rfl

end GlobalTheory.BetaInv
