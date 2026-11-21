import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ScholzeWeinsteinB
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormsAtOfNorms
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.AmpleOnAbelianBase
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.DegFrame
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsFlagBundleRankOne
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.RegularAlteration
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MinorAtZero

open NumberField MvPolynomial Filter Topology Formalism.BasicNotions Formalism.MainNotions Formalism.DegreeFormula GlobalTheory.FlagPoly GlobalTheory.Mean4 GlobalTheory.Mean4O GlobalTheory.CovTop GlobalTheory.CovHt GlobalTheory.CovTest GlobalTheory.Published
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory GlobalTheory.ArInt
open scoped Classical
open MvPolynomial Formalism.BasicNotions.DV
open GlobalTheory.ShFam.Pad GlobalTheory.TrivFlag
open GlobalTheory.Cartier GlobalTheory.TrueGeo GlobalTheory.ProjVar GlobalTheory.WholeFlag

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.WholeFlag

end GlobalTheory.WholeFlag

namespace GlobalTheory.WholeFlag.Glue

variable {K : Type} [Field K] {g : ℕ}

def rowSel {R : Type} [Semiring R] (τ : Fin g → Fin (g + g)) : Matrix (Fin g) (Fin (g + g)) R :=
  Matrix.of fun l r => if τ l = r then 1 else 0

def leftInv {R : Type} [CommRing R] (U : Matrix (Fin (g + g)) (Fin g) R) (τ : Fin g → Fin (g + g)) :
    Matrix (Fin g) (Fin (g + g)) R :=
  (rowSel τ * U : Matrix (Fin g) (Fin g) R)⁻¹ * rowSel τ

def antiDiag (R : Type) [Semiring R] (g : ℕ) : Matrix (Fin g) (Fin g) R :=
  Matrix.of fun i k => if (i : ℕ) + k = g - 1 then 1 else 0

def fullFrame {R : Type} [CommRing R] (U : Matrix (Fin (g + g)) (Fin g) R) (J : Matrix (Fin (g + g)) (Fin (g + g)) R)
    (Lft : Matrix (Fin g) (Fin (g + g)) R) : Matrix (Fin (g + g)) (Fin (g + g)) R :=
  Matrix.of fun r c => Fin.addCases (fun k => U r k) (fun k => (J⁻¹ * Lft.transpose * antiDiag R g) r k) c

@[simp] theorem fullFrame_left {R : Type} [CommRing R] (U : Matrix (Fin (g + g)) (Fin g) R)
    (J : Matrix (Fin (g + g)) (Fin (g + g)) R) (Lft : Matrix (Fin g) (Fin (g + g)) R) (r : Fin (g + g)) (k : Fin g) :
    fullFrame U J Lft r (Fin.castAdd g k) = U r k := by
  simp [fullFrame]

@[simp] theorem fullFrame_right {R : Type} [CommRing R] (U : Matrix (Fin (g + g)) (Fin g) R)
    (J : Matrix (Fin (g + g)) (Fin (g + g)) R) (Lft : Matrix (Fin g) (Fin (g + g)) R) (r : Fin (g + g)) (k : Fin g) :
    fullFrame U J Lft r (Fin.natAdd g k) = (J⁻¹ * Lft.transpose * antiDiag R g) r k := by
  unfold fullFrame
  rw [Matrix.of_apply, Fin.addCases_right]

end GlobalTheory.WholeFlag.Glue

end
