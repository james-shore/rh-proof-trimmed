import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Definitions.Divisors.IsCompactIsOpenUnitsAt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryAdelicGroupTopology
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalStabilizerLocallyCompact

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ThK.LemF
open GlobalTheory.Doubling (absE)
noncomputable section

namespace GlobalTheory.ArchPartUnimod

open GlobalTheory.IndefiniteRowSideFullHecke.AdelicUnitaryGroups GlobalTheory.AutFunCompare GlobalTheory.LocUnitaryUnimod

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

variable (F) in

def projArch : AF F →ₐ[F] Ainf F := AlgHom.fst F (Ainf F) (Af F)

variable (F) in

def inclArch : Ainf F →ₗ[F] AF F := LinearMap.inl F (Ainf F) (Af F)

theorem projArch_inclArch (a : Ainf F) : projArch F (inclArch F a) = a := rfl

variable (σ : E →ₐ[F] E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E)

end GlobalTheory.ArchPartUnimod

end
