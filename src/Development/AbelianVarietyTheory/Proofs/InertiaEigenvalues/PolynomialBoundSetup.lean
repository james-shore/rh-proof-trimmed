import Mathlib
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.BoundAtTwoAndThreeForFamily
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.AmbientH1fOfLocalFiniteness
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CrystallineSummandAndDualFromInverseCharacterTwi
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AmbientTypeConjugatePlaceAtSplitPrimeStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RestrictionAtGoodPoints
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsGaloisRepBaseChange
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DecompositionLocalAway
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AdmG2OfDecomposition
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PsiAtPsiAt
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SetPointGood
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LengthBoundOfRowConditionsAndDualityTheoremsStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TwistedPlaceSelmerLengthBoundOfLocalDualityStatement

open NumberField IsDedekindDomain Formalism Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions Formalism.MainNotions.N Formalism.WeaklyAdmissibleFiltrations GlobalTheory.NLink

noncomputable section

namespace GlobalTheory.TheoremBQD

open MvPolynomial

def polyB : MvPolynomial (Fin 3) ℕ := 260 * X 0 ^ 2 * X 2 ^ 2 * (X 1 + X 2)

theorem polyB_val (f r t : ℕ) : 260 * f ^ 2 * t ^ 2 * (r + t) ≤ EmbeddingTypeJumps.polyVal polyB f r t := by
  simp [EmbeddingTypeJumps.polyVal, polyB]

theorem exists_good {D : D7} {i : D.nd.Loc} (hi : EmbeddingTypeJumps.AtQD i) : ∃ π, π ∈ D.nd.Zgood i := by
  obtain ⟨π, hπ⟩ := hi.2
  exact ⟨π, (D.Zgood_tie i π).2 hπ⟩

end GlobalTheory.TheoremBQD

end
