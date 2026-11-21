import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteAdelicGaussians.UpperRightUnipotentInvariance
import GroundTheory.AutomorphicForms.ReductionFinite
import GroundTheory.AutomorphicForms.ReductionMahler
import GroundTheory.GlobalFields.TateThesis.AdelePoissonUniform
import Mathlib

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Matrix Filter Topology
open GroundTheory.Global GroundTheory.Automorphic GroundTheory.Automorphic.AutomorphicForm
open scoped NumberField.AdeleRing

namespace Ad3.K.GA

variable {K : Type} [Field K] [NumberField K]

local notation "M3A" => Matrix (Fin 3) (Fin 3) 𝔸[K]

namespace majorantEstimates

local notation "𝔸f" => FiniteAdeleRing (𝓞 K) K

theorem orderedCechToCatCochainsOne_apply_valueAtSubset (γ : GL (Fin 2) K) :
    ((e1 K γ : GL (Fin 3) K) : Matrix (Fin 3) (Fin 3) K) =
      !![(γ : Matrix (Fin 2) (Fin 2) K) 0 0, (γ : Matrix (Fin 2) (Fin 2) K) 0 1, 0;
        (γ : Matrix (Fin 2) (Fin 2) K) 1 0, (γ : Matrix (Fin 2) (Fin 2) K) 1 1, 0; 0, 0, 1] := rfl

end majorantEstimates

end Ad3.K.GA
