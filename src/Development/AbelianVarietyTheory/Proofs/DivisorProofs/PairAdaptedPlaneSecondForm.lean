import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EigenIntertwinerGoodModels
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SkewAdaptedPlanePairConverse
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicStoneVonNeumannLagrangianUniquenessStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharacterMultiplicativeStabilizerStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSkewComplement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SymplecticIsotropicPlaneVanishesAdelicStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SymplecticIsotropicEmbeddedVanishesAdelicStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SymplecticFormRestrictedPlaneStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LagrangianDimensionBoundStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RationalModelCoordinatesStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RationalLagrangianSubspaceExistsStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SkewDeterminantNeZeroFirstSpaceStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.QuadraticInjectivePlaneCoordinates
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdaptedPlaneRestrictionIsPair
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PairAdaptedPlaneCompatible
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFunctionalArchimedeanFactor
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdmittedFormEqAdelicThetaDistribution
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaTransformRationalTranslateQuasiInvariant
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnipParLeUnipFlag
import Development.AbelianVarietyTheory.Definitions.Foundations.ConstTermOnMulLeftOfNormalizer
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStdCharNegOneOfStandardTraceAdelicAddChar
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNatMulIntegralOfIsCompact
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnipotentRadicalHomeomorphHeisenberg
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConstantTermUnipotentIntegral
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExtendByZeroMemSchA
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExtendByZeroSchwartzBruhatMap
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilRepresentationPreservesSchwartz

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK

noncomputable section

namespace GlobalTheory.NwAvgComp

open GlobalTheory.MixedLagr (IsMixed lagr hat)

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

variable {n d d₁ d₂ : ℕ} {X : Spc F E n} {W : Spc F E d} {W₁ : Spc F E d₁} {V₁ : Spc F E d₂}

def Q (M₂ : Model σ V₁ W₁) (H : Plane E n d₂) (H' : Plane E d d₁) (m : Matrix (Fin n) (Fin d) (AE F E)) : Prop :=
  ∃ (a : Fin d → AE F E) (z : Matrix (Fin d₂) (Fin d) (AE F E)), IsMixed M₂ H' z ∧
    m = Matrix.vecMulVec (incV F H.x) a + incM F H.ι * z * (incM F (1 : Matrix (Fin d) (Fin d) E))ᵀ

theorem Q.smul {M₂ : Model σ V₁ W₁} {H : Plane E n d₂} {H' : Plane E d d₁} {m : Matrix (Fin n) (Fin d) (AE F E)}
    (h : Q M₂ H H' m) (t : AF F) : Q M₂ H H' (t • m) := by
  obtain ⟨y, z, hz, rfl⟩ := h
  refine ⟨t • y, t • z, hz.smul t, ?_⟩
  rw [smul_add, Matrix.vecMulVec_smul, Matrix.mul_smul, Matrix.smul_mul]

end GlobalTheory.NwAvgComp

namespace GlobalTheory.NwAvgInv

end GlobalTheory.NwAvgInv

end
