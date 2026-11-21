import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocPart

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes ValuativeRel
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.StdPairCone
open GlobalTheory.Doubling (absE)

attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable local instance measFvStd {F : Type} [Field F] [NumberField F] (v : Pl F) : MeasurableSpace (Fv F v) := borel _

local instance borelFvStd {F : Type} [Field F] [NumberField F] (v : Pl F) : BorelSpace (Fv F v) := ⟨rfl⟩

noncomputable section

namespace GlobalTheory.StdPairCone

end GlobalTheory.StdPairCone
