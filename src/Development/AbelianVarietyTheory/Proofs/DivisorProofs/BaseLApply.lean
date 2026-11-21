import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TotalEqCurve

set_option autoImplicit false

noncomputable section

open CategoryTheory AlgebraicGeometry TopologicalSpace Set Filter Topology MeasureTheory Matrix
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Points GlobalTheory.CxPts GlobalTheory.VB GlobalTheory.HermFrame GlobalTheory.ArInt
open GlobalTheory.VBExt (AdaptedChart)
open GlobalTheory.FlagFibre (Low uni)
open GlobalTheory.MixDens (emb)
open ReciprocityTheory.L2DbarEstimates (V cHess)
open scoped ContDiff ComplexOrder Classical

namespace GlobalTheory.BigCell

variable {ι : Type} {r : ι → ℕ} {n D : ℕ} (ε : Fin D ≃ Fin n ⊕ (Σ a, Low (r a)))

def base (v : V D) : V n := WithLp.toLp 2 fun b => v (ε.symm (.inl b))

def baseL : V D →L[ℂ] V n :=
  LinearMap.toContinuousLinearMap
    { toFun := base ε
      map_add' := fun _ _ => rfl
      map_smul' := fun _ _ => rfl }

theorem baseL_apply (v : V D) : baseL ε v = base ε v := rfl

def blk (N : Matrix (Fin n) (Fin n) ℂ) (δ : (Σ a, Low (r a)) → ℝ) : Matrix (Fin D) (Fin D) ℂ :=
  (fromBlocks N 0 0 (diagonal fun s => (δ s : ℂ))).submatrix ε ε

variable {k : Type} [CommRing k] {σ : k →+* ℂ} {B Y : Scheme.{0}} {q : B ⟶ Sp k} {p : Y ⟶ Sp k} (π : Y ⟶ B)
  (w : π ≫ q = p)

end GlobalTheory.BigCell
