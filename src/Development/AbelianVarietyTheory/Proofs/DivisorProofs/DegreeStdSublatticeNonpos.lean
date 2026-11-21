import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.MatrixLemma
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.AbsoluteSiegel
import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.ArakelovDegreeEqDegreeOfFamily
import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.GramSt
import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.InhabSt

open NumberField MeasureTheory ReciprocityTheory.GeometryOfNumbersTheory
open scoped ComplexOrder

namespace GlobalTheory.StdLatDeg

variable {K : Type} [Field K] [NumberField K]

def coord (K : Type) [Field K] {n : ℕ} (i : Fin n) : (Fin n → K) →ₗ[K] (Fin 1 → K) :=
  LinearMap.pi fun _ => LinearMap.proj i

omit [NumberField K] in
@[simp] theorem coord_apply {n : ℕ} (i : Fin n) (x : Fin n → K) (j : Fin 1) :
    coord K i x j = x i := rfl

end GlobalTheory.StdLatDeg
