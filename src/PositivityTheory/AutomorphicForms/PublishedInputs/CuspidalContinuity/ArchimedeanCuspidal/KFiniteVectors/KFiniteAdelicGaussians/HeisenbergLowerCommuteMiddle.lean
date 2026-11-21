import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteAdelicGaussians.UpperRightUnipotentInvariance

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Matrix Filter Topology
open GroundTheory.Global GroundTheory.LocalField GroundTheory.Automorphic GroundTheory.Automorphic.AutomorphicForm
open GroundTheory.Automorphic.FourierWhittaker (vecDomain vecMeasure pair)
open scoped NumberField.AdeleRing

namespace Ad3.K.GA.unipotentTranslateContinuity

variable {K : Type} [Field K] [NumberField K]

local notation "𝔞" => algebraMap K 𝔸[K]

instance countable_field : Countable K := (Module.finBasis ℚ K).equivFun.injective.countable

instance countable_GL2 : Countable (GL (Fin 2) K) := by
  have : Countable (Matrix (Fin 2) (Fin 2) K) := inferInstanceAs (Countable (Fin 2 → Fin 2 → K))
  exact Function.Injective.countable (f := fun g : GL (Fin 2) K => (g : Matrix (Fin 2) (Fin 2) K))
    fun a b h => Units.ext h

instance countable_NQ : Countable (NQ K) := Quotient.countable

theorem val_uni (x y z : 𝔸[K]) :
    ((uni x y z : G3K K) : Matrix (Fin 3) (Fin 3) 𝔸[K]) = !![1, x, y; 0, 1, z; 0, 0, 1] := rfl

theorem val_lowM (c : 𝔸[K]) :
    ((lowM c : G3K K) : Matrix (Fin 3) (Fin 3) 𝔸[K]) = !![1, 0, 0; c, 1, 0; 0, 0, 1] := rfl

end Ad3.K.GA.unipotentTranslateContinuity
