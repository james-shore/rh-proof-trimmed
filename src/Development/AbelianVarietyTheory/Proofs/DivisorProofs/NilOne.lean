import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.GenSubHwOfSurjective

noncomputable section

open scoped TensorProduct Matrix GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open NumberField Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.BasicNotions.TH GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.FockAlg GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.RealLift
open GlobalTheory.RealLift.OneParam GlobalTheory.ThK GlobalTheory.ThK.DescB GlobalTheory.ThK.RealK

namespace GlobalTheory.ThK.StepK

def lowIx {R S : ℕ} : Ix (R + 1) (S + 1) → Option (Ix R S)
  | .inl i => Fin.cases (motive := fun _ => Option (Ix R S)) none (fun i => some (.inl i)) i
  | .inr j => Fin.cases (motive := fun _ => Option (Ix R S)) none (fun j => some (.inr j)) j

end GlobalTheory.ThK.StepK
