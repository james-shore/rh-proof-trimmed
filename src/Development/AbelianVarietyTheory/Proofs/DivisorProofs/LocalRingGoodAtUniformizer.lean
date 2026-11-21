import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.IsTamagawa
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.TamagawaSpecialUnitary
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsSubConjNotMem
import GroundTheory.GlobalFields.LocalAtPlace

open Formalism.BasicNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix Filter Topology
open scoped TensorProduct ENNReal
open GlobalTheory.TamSU GlobalTheory.SUVol GlobalTheory.UCls GlobalTheory.AdLat GlobalTheory.Published

noncomputable section
namespace GlobalTheory.SUCong.RingUnr

section General

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  {σ : E →ₐ[F] E} (v : HeightOneSpectrum (𝓞 F))

local notation "A" => Fv F v ⊗[F] E
local notation "O" => v.adicCompletionIntegers F

theorem sig_tmul (a : Fv F v) (x : E) : sigR (Fv F v) σ (a ⊗ₜ[F] x) = a ⊗ₜ[F] σ x := rfl

end General

end GlobalTheory.SUCong.RingUnr

namespace GlobalTheory.SUCong

end GlobalTheory.SUCong
