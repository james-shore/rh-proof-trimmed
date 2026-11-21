import Mathlib
import GroundTheory.AutomorphicForms.HaarSK
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Definitions.Divisors.IsCompactIsOpenUnitsAt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IdeleTop
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSplitBasisCompl
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLeviLiftOfAdaptedPlane
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnipotentFundamentalDomainExists
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicUnitaryFiniteInfiniteSplit
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMulRightInvariantHaarAdelicUnitaryGroupHermiti
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MeasureFundDomLtTop
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsMulRightInvariantOfFundamentalDomain

noncomputable section

namespace GlobalTheory.KAvg

open scoped TensorProduct NNReal Matrix ENNReal
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

section Height

variable {n : ℕ} {J : Matrix (Fin n) (Fin n) E}

def cf (x : Fin n → E) (i : Fin n) (p : UA σ J) : AE F E :=
  (mat p *ᵥ incV F x) i * inclR (F := F) (AF F) (x i)⁻¹

end Height

section Proj

open GlobalTheory.ArchFinSplit

variable {n : ℕ} {J : Matrix (Fin n) (Fin n) E}

variable (σ J) in

def prH {e : AF F} (he : IsIdempotentElem e) : UA σ J →* UA σ J where
  toFun g := ⟨prU he g.1, prU_mem he _ _ g.1 g.2⟩
  map_one' := Subtype.ext (Units.ext (pr_one e))
  map_mul' _ _ := Subtype.ext (Units.ext (pr_mul he _ _).symm)

theorem mat_prH {e : AF F} (he : IsIdempotentElem e) (g : UA σ J) : mat (prH σ J he g) = pr e (mat g) := rfl

variable {X : Spc F E n}

end Proj

end GlobalTheory.KAvg
