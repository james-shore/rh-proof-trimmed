import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.IsCompactIsOpenUnitsAt
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels

noncomputable section

namespace GlobalTheory.TateUnr

open scoped TensorProduct NNReal Matrix nonZeroDivisors
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)
open Formalism.L2.Host (aboveF)

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

def compW {v : Pl F} {w : HeightOneSpectrum (𝓞 E)} (hw : w.under (𝓞 F) = v) :
    idelesAt E (evFin F v) →* (w.adicCompletion E)ˣ :=
  (Units.map (toCompl hw).toMonoidHom).comp (idelesAtEquiv E v).toMonoidHom

theorem compW_apply {v : Pl F} {w : HeightOneSpectrum (𝓞 E)} (hw : w.under (𝓞 F) = v) (l : idelesAt E (evFin F v)) :
    ((compW hw l : (w.adicCompletion E)ˣ) : w.adicCompletion E) = toCompl hw (compFin F E v (l.1 : AE F E)) := rfl

end GlobalTheory.TateUnr

end
