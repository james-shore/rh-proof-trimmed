import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormsOfInduces
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.JGenSpecializes
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsFlagFrame
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.MultiplicationLatticeSecond
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GradedLineBundleExists
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MonoSpMapRingOfIntegers
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTuple
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ToroidalCompactificationData
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.DualGramInterpGram
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.MemSupportBDIff
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRationalCoordinatesExtendProjectiveSpace

set_option autoImplicit false

noncomputable section

open CategoryTheory AlgebraicGeometry NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Formalism.BasicNotions GlobalTheory GlobalTheory.Cartier GlobalTheory.CxPts GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.Mean4O GlobalTheory.CoverNorm

namespace GlobalTheory.CoverNorm

theorem appLE_apply_congr {X Z : Scheme.{0}} {a c : Z ⟶ X} (e : a = c) (U : X.Opens) (W : Z.Opens)
    (h₁ : W ≤ a ⁻¹ᵁ U) (h₂ : W ≤ c ⁻¹ᵁ U) (s : Γ(X, U)) : (a.appLE U W h₁).hom s = (c.appLE U W h₂).hom s := by
  subst e; rfl

theorem unitAt_fnMap_of {X Z : Scheme.{0}} [IsIntegral X] [IsIntegral Z] (g : Z ⟶ X)
    (hη : g (genericPoint Z) ⤳ genericPoint X) {x : Z} {t : X.functionField} (h : UnitAt (g x) t) :
    UnitAt x (SmallSec.fnMap g hη t) := by
  have h0 : t ≠ 0 := h.ne_zero
  rw [unitAt_iff ((map_ne_zero _).2 h0), ← map_inv₀]
  exact ⟨ProjSpace.regAt_fnMap_of g hη h.regAt, ProjSpace.regAt_fnMap_of g hη h.inv.regAt⟩

end GlobalTheory.CoverNorm
