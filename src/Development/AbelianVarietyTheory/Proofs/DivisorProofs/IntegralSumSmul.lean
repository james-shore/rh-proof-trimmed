import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.LineSCShortExact
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DifferentiableProdPt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BcDensEqOfGram
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NontrivialIsomClassInt
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsBlockOrderedSumEquivTrueIndex
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GradedMetricPullbackIsometric
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsFlagFrame
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StalkStepMono
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchubertCellOpenImmersion
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenImmersionCellFlAlt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenImmersionCellFl
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DetMetricIsometricOfIsometry
import Development.AbelianVarietyTheory.Definitions.Divisors.SecondChernDegreeFubiniStudyLine
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemTChartSource
import Development.AbelianVarietyTheory.Definitions.Divisors.TorsionTowersOfDivisibleGroup
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IntegrableMonomialMulConjComplexGaussian
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RankTwoFlagRationalSections

open CategoryTheory AlgebraicGeometry MvPolynomial MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.ArInt GlobalTheory.CxForm GlobalTheory.CxPts GlobalTheory.VB GlobalTheory.Cartier GlobalTheory.CovTest GlobalTheory.CovTest.SwapLine GlobalTheory.LineForm
open scoped Classical

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.LineForm.ChernFibre

section Manifold

variable {M : Type} [TopologicalSpace M] {n : ℕ} (A : HolAtlas M n)

def fldA : (A.Pt → Ev n) →ₐ[ℂ] A.Fld :=
  AlgHom.pi fun x => (Subalgebra.center ℂ (Alt n)).val.comp (Pi.evalAlgHom ℂ (fun _ => Ev n) x)

theorem fld_eq (w : A.Pt → Ev n) : fld A w = fldA A w := rfl

end Manifold

end GlobalTheory.LineForm.ChernFibre

namespace GlobalTheory.LineForm.ChernFibre

end GlobalTheory.LineForm.ChernFibre

namespace GlobalTheory.LineForm.ChernFibre

end GlobalTheory.LineForm.ChernFibre

namespace GlobalTheory.LineForm.ChernFibre

end GlobalTheory.LineForm.ChernFibre
