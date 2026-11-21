import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsL2OnDiagonalOfIsL2Metric
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousAndExistsConjChart
open CategoryTheory AlgebraicGeometry Set Matrix MeasureTheory MonObj Filter Topology
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.CxPts GlobalTheory.ArInt
open GlobalTheory.LieVB (omega unitSec dUnit)
open GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe (Fl Pt IsPeriodMap cov per stdLat om0 dflat herm)
open ReciprocityTheory.L2DbarEstimates (V)
open GlobalTheory.CxForm (IsRegVar hermMat eval₂ bas IsType IsReal Alt delAt dbarAt)
open GlobalTheory.ConjChart (conjCoord conjPts conjChart)
open GlobalTheory GlobalTheory.TorsionForm
open scoped ContDiff Real CategoryTheory.Obj ComplexOrder

noncomputable section

namespace GlobalTheory.FlatFormConj

open GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe (riem flat flatOf symp)

def conjPtL (D g : ℕ) : Pt (V D) g →ₗ[ℝ] Pt (V D) g where
  toFun P := (conjCoord D P.1, star P.2)
  map_add' P Q := by
    ext <;> simp [conjCoord]
  map_smul' c P := by
    ext <;> simp [conjCoord]

theorem conjPtL_invol (D g : ℕ) (P : Pt (V D) g) : conjPtL D g (conjPtL D g P) = P := by
  ext <;> simp [conjPtL, conjCoord]

def conjPt (D g : ℕ) : Pt (V D) g ≃L[ℝ] Pt (V D) g :=
  (LinearEquiv.ofInvolutive (conjPtL D g) (conjPtL_invol D g)).toContinuousLinearEquiv

theorem conjPt_apply (D g : ℕ) (P : Pt (V D) g) : conjPt D g P = (conjCoord D P.1, star P.2) := rfl

def reflL (g : ℕ) : Fl g →ₗ[ℝ] Fl g where
  toFun x := Sum.elim (fun i => -x (Sum.inl i)) (fun i => x (Sum.inr i))
  map_add' x y := by
    funext i; cases i <;> simp; ring
  map_smul' c x := by
    funext i; cases i <;> simp

theorem reflL_invol (g : ℕ) (x : Fl g) : reflL g (reflL g x) = x := by
  funext i; cases i <;> simp [reflL]

def refl (g : ℕ) : Fl g ≃L[ℝ] Fl g :=
  (LinearEquiv.ofInvolutive (reflL g) (reflL_invol g)).toContinuousLinearEquiv

theorem refl_inl (g : ℕ) (x : Fl g) (i : Fin g) : refl g x (Sum.inl i) = -x (Sum.inl i) := rfl
theorem refl_inr (g : ℕ) (x : Fl g) (i : Fin g) : refl g x (Sum.inr i) = x (Sum.inr i) := rfl

end GlobalTheory.FlatFormConj
