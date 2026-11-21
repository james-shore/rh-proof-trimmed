import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSplitting
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.AmpleOnAbelianBase
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.PadicValNatAbsNormEqZero
import Development.AbelianVarietyTheory.Statements.HeightBoundStatement.HTBoundSt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LineModel
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GrNormPush
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsFlagFrame
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.MultiplicationLatticeSecond

open NumberField MvPolynomial Filter Topology Formalism.BasicNotions Formalism.MainNotions Formalism.DegreeFormula GlobalTheory.FlagPoly GlobalTheory.Mean4 GlobalTheory.Mean4O GlobalTheory.CovTop GlobalTheory.CovHt GlobalTheory.CovTest GlobalTheory.Published
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory GlobalTheory.ArInt
open Formalism.BasicNotions.DV Formalism.MainNotions.WeightThresholdDefs GlobalTheory.FlagAr GlobalTheory.ShFam.Pad GlobalTheory.VB GlobalTheory.ShFam GlobalTheory.TrueGeo Formalism.L2.Pj GlobalTheory.Toroidal
open Formalism.MainNotions.DIV.Cons (intO)
open GlobalTheory.ArLieBase
open IsDedekindDomain UniqueFactorizationMonoid

namespace GlobalTheory.DiffGenNorm

variable {E : Type} [Field E] [NumberField E] {p : ℕ} [Fact p.Prime] (φ : 𝓞 E →+* ↥(intO ℂ_[p]))

theorem norm_le_one (x : 𝓞 E) : ‖((φ x : ↥(intO ℂ_[p])) : ℂ_[p])‖ ≤ 1 := (φ x).2

def smallIdeal : Ideal (𝓞 E) where
  carrier := {x | ‖((φ x : ↥(intO ℂ_[p])) : ℂ_[p])‖ < 1}
  add_mem' := by
    intro a b ha hb
    change ‖((φ (a + b) : ↥(intO ℂ_[p])) : ℂ_[p])‖ < 1
    rw [map_add, Subring.coe_add]
    exact (IsUltrametricDist.norm_add_le_max _ _).trans_lt (max_lt ha hb)
  zero_mem' := by
    change ‖((φ 0 : ↥(intO ℂ_[p])) : ℂ_[p])‖ < 1
    simp
  smul_mem' := by
    intro c x hx
    change ‖((φ (c * x) : ↥(intO ℂ_[p])) : ℂ_[p])‖ < 1
    rw [map_mul, Subring.coe_mul, norm_mul]
    exact (mul_le_of_le_one_left (norm_nonneg _) (norm_le_one φ c)).trans_lt hx

theorem mem_smallIdeal (x : 𝓞 E) : x ∈ smallIdeal φ ↔ ‖((φ x : ↥(intO ℂ_[p])) : ℂ_[p])‖ < 1 := Iff.rfl

end GlobalTheory.DiffGenNorm

namespace GlobalTheory.DiffGenNorm

end GlobalTheory.DiffGenNorm

namespace GlobalTheory.DiffGenNorm

end GlobalTheory.DiffGenNorm
