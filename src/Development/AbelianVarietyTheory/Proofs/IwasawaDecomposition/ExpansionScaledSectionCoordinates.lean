import Mathlib
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SvalUpSec
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsDivOfExpandsAt
import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.CstDvdOfCstMulEqZero
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.NuExtA
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ProdExpPf

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory NumberField IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.DVR
open GlobalTheory.LN GlobalTheory.TorRef GlobalTheory.IntegralCombination
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.ClosedDvd

section General

variable {V : Type} [CommRing V] {X : Scheme.{0}}

def cstHom (p : X ⟶ Sp V) (x : X) : V →+* X.presheaf.stalk x where
  toFun := cst p x
  map_one' := by rw [cst, map_one, gs_eq p x ⊤ trivial, map_one, map_one]
  map_mul' a b := by rw [cst, map_mul]; exact gs_mul p x ⊤ trivial _ _
  map_zero' := by rw [cst, map_zero]; exact gs_zero p x ⊤ trivial
  map_add' a b := by rw [cst, map_add]; exact gs_add p x ⊤ trivial _ _

theorem cstHom_apply (p : X ⟶ Sp V) (x : X) (a : V) : cstHom p x a = cst p x a := rfl

end General

end GlobalTheory.ClosedDvd
