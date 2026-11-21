import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.IsHtFunGenericIff
import Development.AbelianVarietyTheory.Definitions.Divisors.AnalyticOnNhdFinChartIff
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TotalEqCurve
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PerValNeZero
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.BoundaryPolynomialFunctions
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdjacentPullPull
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.GeometricallyConnectedOfIsIsoRestrict
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChernOneEqNegDdcLogDet
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChernDensDetWeightEqNegLeviLog
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DetBlockChangeOfBasisViaTwoFamiliesImplicit
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.ArakelovInstances.LminorMapConj
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TotalEqOfNonneg
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.EqOfIsometricTrivShift
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LintegralLeadingMinorFlagDensityPosDef
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.StarInvMulVecDotProductMulVecInvMulVec
import ReciprocityTheory.GeometryOfNumbers.PluriharmonicAnalysis.LogDetSt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlagDegreeEqFormDegree
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnipotentTriangularFactor
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniREqUni

open Filter Topology MeasureTheory Matrix
open GlobalTheory GlobalTheory.HermFrame GlobalTheory.ArInt GlobalTheory.VdmRec
open GlobalTheory.MixDens (emb jacDens)
open GlobalTheory.FlagFibre (Low uni)
open GlobalTheory.FlagFormDeg (apolar)
open ReciprocityTheory.L2DbarEstimates (V cHess bas)
open scoped ContDiff ComplexOrder Classical

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.FlagCell

def diffOnRing {m : ℕ} (s : Set (Low m → ℂ)) : Subring (s → ℂ) where
  carrier := {f | ∃ F : (Low m → ℂ) → ℂ, ∀ x : s, DifferentiableAt ℂ F x ∧ F x = f x}
  mul_mem' := by
    rintro f g ⟨F, hF⟩ ⟨G, hG⟩
    exact ⟨fun y => F y * G y, fun x => ⟨(hF x).1.mul (hG x).1, by simp [(hF x).2, (hG x).2]⟩⟩
  one_mem' := ⟨fun _ => 1, fun _ => ⟨differentiableAt_const _, rfl⟩⟩
  add_mem' := by
    rintro f g ⟨F, hF⟩ ⟨G, hG⟩
    exact ⟨fun y => F y + G y, fun x => ⟨(hF x).1.add (hG x).1, by simp [(hF x).2, (hG x).2]⟩⟩
  zero_mem' := ⟨fun _ => 0, fun _ => ⟨differentiableAt_const _, rfl⟩⟩
  neg_mem' := by
    rintro f ⟨F, hF⟩
    exact ⟨fun y => -F y, fun x => ⟨(hF x).1.neg, by simp [(hF x).2]⟩⟩

def diffOnEval {m : ℕ} {s : Set (Low m → ℂ)} (x : s) : diffOnRing s →+* ℂ :=
  (Pi.evalRingHom (fun _ : s => ℂ) x).comp (diffOnRing s).subtype

theorem diffOnEval_apply {m : ℕ} {s : Set (Low m → ℂ)} (x : s) (f : diffOnRing s) :
    diffOnEval x f = f.1 x := rfl

end GlobalTheory.FlagCell
