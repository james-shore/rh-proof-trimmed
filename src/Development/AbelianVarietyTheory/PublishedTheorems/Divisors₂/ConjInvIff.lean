import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.AbsoluteSiegel
import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.InhabSt
import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.CountSt

open NumberField ReciprocityTheory.GeometryOfNumbersTheory GlobalTheory.LieHt

namespace GlobalTheory.Published.SiegelModel

variable {K : Type} [Field K] [NumberField K] {m : ℕ}

omit [NumberField K] in

theorem conjInv_iff (h : HermFam K (Fin m → K)) : ConjInv h ↔ h.IsConjInv := Iff.rfl

end GlobalTheory.Published.SiegelModel
