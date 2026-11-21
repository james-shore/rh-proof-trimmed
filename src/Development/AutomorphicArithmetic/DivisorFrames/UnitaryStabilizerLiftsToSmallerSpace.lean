import Mathlib
import Development.AutomorphicArithmetic.LocalEmbeddings.ConeBumpB
open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)
open GlobalTheory.ConeBumpB
open scoped GlobalTheory.VacAny

section SlopeTestRemainingChoices

variable {R : Type} [CommRing R] (c : R →+* R)

private def sqf {n : ℕ} (J : Matrix (Fin n) (Fin n) R) (a b : Fin n → R) : R := a ⬝ᵥ J *ᵥ fun i => c (b i)

private theorem mat_ext {n : ℕ} {A A' : Matrix (Fin n) (Fin n) R} (h : ∀ z, A *ᵥ z = A' *ᵥ z) : A = A' := by
  ext i j
  simpa using congrFun (h (Pi.single j 1)) i

end SlopeTestRemainingChoices

