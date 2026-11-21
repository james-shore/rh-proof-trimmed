import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IndicatorIntMMemSB
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaActionExists
import Development.AbelianVarietyTheory.Definitions.Divisors.DiscreteSeriesHermitianUnique
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalGLEmbeddingUnitary
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SplitPlaceCharacterComponentSmoothUnitaryConduct
import Development.AutomorphicArithmetic.LocalEmbeddings.OppLagr
import Development.AbelianVarietyTheory.Definitions.Divisors.IsCompactIsOpenUnitsAt
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LocalFieldNormValuation

noncomputable section

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory.JacGeom

section Adelic

open Matrix GlobalTheory.SplitGLLift GlobalTheory.KSplit
open GlobalTheory.Div.CoordOpp (piW_cA incM_map_piW unit_map)

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E} {v : Pl F}

def idl (h : IsCMExt F E σ) (t : E →ₐ[F] Fv F v) : (Fv F v)ˣ × (Fv F v)ˣ →* (AE F E)ˣ :=
  (Units.map (oneAdd (liftPair h t))).comp MulEquiv.prodUnits.symm.toMonoidHom

theorem idl_val (h : IsCMExt F E σ) (t : E →ₐ[F] Fv F v) (x y : (Fv F v)ˣ) :
    (idl h t (x, y) : AE F E) = 1 + liftPair h t ((x : Fv F v) - 1, (y : Fv F v) - 1) := rfl

variable {B : Base F E} {d m r s r₁ s₁ i₀ i₁ : ℕ} {W : Spc F E d} {W₁ : Spc F E m} {H : Plane E d m}

end Adelic

end GlobalTheory.JacGeom

end
