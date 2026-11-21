import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMaxThOne
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OneMemFinPt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TruncMatTranspose
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemLatLevel
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHaarOfIsCompact
import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.ExistsCompactLatticeStabilizerBoundedReal
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeightedMeasureSplitting.ContinuousTensMap
open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open scoped TensorProduct Matrix

noncomputable section

namespace GlobalTheory.EntriesCompact

open PI.UnitaryGroupMassFormula.MeasWCore Formalism.L2.SG.Measures

variable {F E : Type} [Field F] [NumberField F] [Field E] [Algebra F E] {d : ℕ}

def intAt (v : Pl F) : Subring (Af F) :=
  (HeightOneSpectrum.adicCompletionIntegers F v).toSubring.comap (evalV F v).toRingHom

theorem mem_intAt (v : Pl F) (a : Af F) :
    a ∈ intAt v ↔ evalV F v a ∈ HeightOneSpectrum.adicCompletionIntegers F v := Iff.rfl

end GlobalTheory.EntriesCompact
