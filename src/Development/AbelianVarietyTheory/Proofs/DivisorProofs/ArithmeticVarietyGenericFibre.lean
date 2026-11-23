import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsFlagBundleRankOne
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NontrivialIsomClassInt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HessianOfCombinationMetricLinear
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChernIntegralLinearRelationZero

set_option autoImplicit false

noncomputable section

open MvPolynomial GlobalTheory.Published
open CategoryTheory AlgebraicGeometry TopologicalSpace ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory GlobalTheory.ArInt
open GlobalTheory.Cartier

namespace GlobalTheory.FibreProj

variable {k : Type} [CommRing k] {B Y : Scheme.{0}} [IsIntegral B] {q : B ⟶ Sp k} {p : Y ⟶ Sp k} {d : ℕ}

theorem isProper_of_isArithVar {D : ℕ} (h : IsArithVar p D) : IsProper p := by
  obtain ⟨N, j, _, hj⟩ := h.isProjOver
  have := isProper_str k N
  exact hj ▸ inferInstance

end GlobalTheory.FibreProj
