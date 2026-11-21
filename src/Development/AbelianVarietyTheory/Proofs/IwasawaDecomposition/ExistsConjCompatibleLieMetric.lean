import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ToroidalBoundaryMetricData
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsChartOfIsLocalRing
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitaryOfFrameNormConj
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsBasisNear
import Development.AbelianVarietyTheory.Definitions.Divisors.SecondCountableTopologyOfIsProjOver
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ConjSmoothOnPreimageCharts

set_option autoImplicit false

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField TopologicalSpace Matrix
open ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.PullbackSections Formalism.L2.Pj GlobalTheory GlobalTheory.CxPts GlobalTheory.Toroidal GlobalTheory.LieMet GlobalTheory.ShFam
open GlobalTheory.FlagMod (tanPull tanPull_left tanPull_actR)

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.LieMetConj

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {X : Scheme.{0}}
  {t : SAB H X}

section Fibre

variable {x x' : Sp ℂ ⟶ X} (e : spMap (starRingEnd ℂ) ≫ x = x')

def cjForm (h : TanM x' t.G →ₗ[ℂ] TanM x' t.G →ₗ⋆[ℂ] ℂ) : TanM x t.G →ₗ[ℂ] TanM x t.G →ₗ⋆[ℂ] ℂ :=
  LinearMap.mk₂'ₛₗ (RingHom.id ℂ) (starRingEnd ℂ)
    (fun v w => starRingEnd ℂ (h (tanPull (starRingEnd ℂ) e v) (tanPull (starRingEnd ℂ) e w)))
    (fun _ _ _ => by simp only [map_add, LinearMap.add_apply])
    (fun _ _ _ => by simp [map_smulₛₗ])
    (fun _ _ _ => by simp only [map_add])
    (fun _ _ _ => by simp [map_smulₛₗ])

theorem cjForm_apply (h : TanM x' t.G →ₗ[ℂ] TanM x' t.G →ₗ⋆[ℂ] ℂ) (v w : TanM x t.G) :
    cjForm e h v w = starRingEnd ℂ (h (tanPull (starRingEnd ℂ) e v) (tanPull (starRingEnd ℂ) e w)) := rfl

end Fibre

end GlobalTheory.LieMetConj
