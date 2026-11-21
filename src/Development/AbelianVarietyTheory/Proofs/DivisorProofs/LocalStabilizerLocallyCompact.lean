import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Definitions.Divisors.IsCompactIsOpenUnitsAt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbsPowApply
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaIntegralCompactInvariant
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ArchimedeanUnitaryGroupStabilisersUnimodular
import Development.AbelianVarietyTheory.Proofs.HeightProofs.EqOrConjOfPlaceOf
import Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts
import Development.AbelianVarietyTheory.Definitions.Divisors.DiscreteSeriesHermitianUnique
import Development.AbelianVarietyTheory.Definitions.Divisors.RankEqCardIffExistsFrameMatrixFirstColumnBlock
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalGLEmbeddingUnitary
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.FinPartIdemMulMemIff
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroup

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ThK.LemF
open GlobalTheory.Doubling (absE)
open GlobalTheory.ThK.LemF.QuotInv

noncomputable section

namespace GlobalTheory.LocUnitaryUnimod

open GlobalTheory.IndefiniteRowSideFullHecke.AdelicUnitaryGroups GlobalTheory.AutFunCompare GlobalTheory.EmbChart

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

variable (σ : E →ₐ[F] E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E) (v : Pl F)

def toHAe : UA σ J ≃* HA (AF F) σ Jᵀ := MulEquiv.subgroupCongr (GlobalTheory.ThetaKInv.UG_eq_HR σ J)

theorem mat_toHAe (g : UA σ J) :
    (HA.mat (AF F) σ Jᵀ (toHAe σ J g) : Matrix (Fin n) (Fin n) (AE F E)) = mat g := rfl

theorem mat_toHAe_symm (g : HA (AF F) σ Jᵀ) :
    mat ((toHAe σ J).symm g) = (HA.mat (AF F) σ Jᵀ g : Matrix (Fin n) (Fin n) (AE F E)) := rfl

end GlobalTheory.LocUnitaryUnimod
