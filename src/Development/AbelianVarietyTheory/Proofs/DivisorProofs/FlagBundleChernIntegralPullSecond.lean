import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.LineSCShortExact
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothFormsCalculusHolomorphicAtlas
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DifferentiableProdPt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BcDensEqOfGram
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NontrivialIsomClassInt
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsBlockOrderedSumEquivTrueIndex
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartDensityChangeFormula
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GradedMetricPullbackIsometric
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsFlagFrame
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StalkStepMono
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchubertCellOpenImmersion
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenImmersionCellFlAlt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenImmersionCellFl
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SubquotientCurvatureStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecondChernFormPullback
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPosFrameQuotIn
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FirstChernIsometricEq
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlagOmegaFormReal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DetMetricIsometricOfIsometry
import Development.AbelianVarietyTheory.Definitions.Divisors.SecondChernDegreeFubiniStudyLine
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChernPartOverProperClosedEqZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FirstChernTensorAdd
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FirstChernRealClosed
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecondChernRealClosed
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PointsMapHolomorphic
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RankTwoGradedDeterminantIsometric
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChernOneEqNegDdcLogDet
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothFormsCalculusHolomorphicAtlasStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FirstChernFormPropertiesStatement

open CategoryTheory AlgebraicGeometry MvPolynomial MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.ArInt GlobalTheory.CxForm GlobalTheory.CxPts GlobalTheory.VB GlobalTheory.Cartier GlobalTheory.CovTest GlobalTheory.CovTest.SwapLine GlobalTheory.LineForm
open scoped Classical

namespace GlobalTheory.FibVan

end GlobalTheory.FibVan

noncomputable section

namespace GlobalTheory.FibVan

section Gen
variable {M : Type} [TopologicalSpace M] {n : ℕ} (A : HolAtlas M n)

def fldHom : (A.Pt → Ev n) →ₐ[ℂ] A.Fld := AlgHom.compLeft (Subalgebra.center ℂ (Alt n)).val A.Pt

theorem fldHom_apply (u : A.Pt → Ev n) : fldHom A u = fld A u := rfl

def xi {ι : Type} (w : ι → A.Pt → Ev n) : MvPolynomial ι ℝ →+* A.Fld :=
  (fldHom A).toRingHom.comp ((aeval w).toRingHom.comp (MvPolynomial.map (algebraMap ℝ ℂ)))

theorem xi_apply {ι : Type} (w : ι → A.Pt → Ev n) (Q : MvPolynomial ι ℝ) :
    xi A w Q = fldHom A (aeval w (Q.map (algebraMap ℝ ℂ))) := rfl

end Gen

end GlobalTheory.FibVan

end

noncomputable section

namespace GlobalTheory.FibVan

def pullHom {k : Type} [CommRing k] {B Y : Scheme.{0}} [IsIntegral B] {q : B ⟶ Sp k} {p : Y ⟶ Sp k} {d d' : ℕ}
    (hB : IsRegVar q d) (hY : IsRegVar p d') (σ : k →+* ℂ) (π : Y ⟶ B) (w : π ≫ q = p) :
    (hB.atlas σ).Fld →+* (hY.atlas σ).Fld where
  toFun := pullF hB hY σ π w
  map_one' := ((GlobalTheory.T.smoothForms_calculus_holomorphicAtlas _ _ (hB.atlas σ)).2.2.2.2 _ _ (hY.atlas σ) _
    ((GlobalTheory.T.firstChern_form_properties k B q d hB σ).2.2 Y p d' hY π w).1).1
  map_mul' α β := (((GlobalTheory.T.smoothForms_calculus_holomorphicAtlas _ _ (hB.atlas σ)).2.2.2.2 _ _ (hY.atlas σ) _
    ((GlobalTheory.T.firstChern_form_properties k B q d hB σ).2.2 Y p d' hY π w).1).2 0 α β).2.1
  map_zero' := by
    have := (((GlobalTheory.T.smoothForms_calculus_holomorphicAtlas _ _ (hB.atlas σ)).2.2.2.2 _ _ (hY.atlas σ) _
      ((GlobalTheory.T.firstChern_form_properties k B q d hB σ).2.2 Y p d' hY π w).1).2 0 0 0).2.2.1
    simp only [zero_smul] at this
    exact this
  map_add' α β := (((GlobalTheory.T.smoothForms_calculus_holomorphicAtlas _ _ (hB.atlas σ)).2.2.2.2 _ _ (hY.atlas σ) _
    ((GlobalTheory.T.firstChern_form_properties k B q d hB σ).2.2 Y p d' hY π w).1).2 0 α β).1

section Pull
variable {k : Type} [CommRing k] {B Y : Scheme.{0}} [IsIntegral B] {q : B ⟶ Sp k} {p : Y ⟶ Sp k} {d d' : ℕ}
    (hB : IsRegVar q d) (hY : IsRegVar p d') (σ : k →+* ℂ) (π : Y ⟶ B) (w : π ≫ q = p)

theorem pullHom_apply (α : (hB.atlas σ).Fld) : pullHom hB hY σ π w α = pullF hB hY σ π w α := rfl

end Pull

end GlobalTheory.FibVan

end
