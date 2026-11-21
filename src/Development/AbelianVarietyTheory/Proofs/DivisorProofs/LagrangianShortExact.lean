import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.PoincareDeRhamDuality
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.ZeroSectionBase
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDeRhamSheaf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDeRhamSheafIff
import Development.AbelianVarietyTheory.Definitions.Divisors.IsTorsionFreeOfForallExists
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ExactAndSurjectiveAppOfExactOfEpi

set_option autoImplicit false

noncomputable section

open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open TopologicalSpace Limits
open GlobalTheory.LB (resG_self)
open GlobalTheory.Twist (resM resM_self)
open GlobalTheory.QCoh (appLinear appLinear_apply appLinear_comp)

namespace GlobalTheory.VB.Lagr

end GlobalTheory.VB.Lagr

namespace GlobalTheory.VB.Lagr

variable {X : Scheme.{0}}

def evU (F : X.Modules) (U : X.Opens) : Γ(dual F, U) →ₗ[Γ(X, U)] Module.Dual Γ(X, U) Γ(F, U) where
  toFun l := dualApp l le_rfl
  map_add' l l' := dualApp_add l l' le_rfl
  map_smul' a l := by
    rw [dualApp_smul, resG_self]
    rfl

@[simp] theorem evU_apply (F : X.Modules) (U : X.Opens) (l : Γ(dual F, U)) (s : Γ(F, U)) :
    evU F U l s = dualApp l le_rfl s := rfl

end GlobalTheory.VB.Lagr

namespace GlobalTheory.VB

end GlobalTheory.VB
