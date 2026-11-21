import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFundamentalDomainMulRight
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.AdelicIsomorphismStatement
import Formalism.SharpRestriction.CuspSpanNormBounds.NonemptyParameterModels.UnitaryPointsRankZeroSubsingleton
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BridgeSIsBridge
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.HermitianFormUnitaryOneOne
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.GelfandInvariantCommRightTranslation
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSupportWordMul
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DifferentiableOfIsSm
import Development.AbelianVarietyTheory.Proofs.HeightProofs.PolarConjTranspose
import Development.AbelianVarietyTheory.Proofs.HeightProofs.HasSmoothLogNearOneOfIsUnitaryLieExpData
import Development.AbelianVarietyTheory.Proofs.HeightProofs.SmoothInExponentialCoordsIffFirstSecondKind
import Development.AbelianVarietyTheory.Proofs.HeightProofs.CommuteGelfandInvariantMatrixUnitsOfGlRel
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSmMulRightOfIsCMExt

noncomputable section

namespace GlobalTheory.HCFinU.Central

open Matrix Formalism.REAL Formalism.MainNotions.S GlobalTheory.SmoothForms GlobalTheory.Dec
open scoped ContDiff

section Group

variable {n : ℕ} {ε : Fin n → Bool} {G : Type} [Group G]

variable (ε) in

def barJ : Matrix (Fin n) (Fin n) ℂ →ₗ[ℝ] Matrix (Fin n) (Fin n) ℂ where
  toFun X := Jm ε * Xᴴ * Jm ε
  map_add' X Y := by rw [conjTranspose_add, mul_add, add_mul]
  map_smul' c X := by rw [conjTranspose_smul, star_trivial, mul_smul_comm, smul_mul_assoc]; rfl

theorem barJ_apply (X : Matrix (Fin n) (Fin n) ℂ) : barJ ε X = Jm ε * Xᴴ * Jm ε := rfl

attribute [local instance] Matrix.linftyOpNormedRing Matrix.linftyOpNormedAlgebra

end Group

section Bridge

open GlobalTheory.AdelicU GlobalTheory.SiegelSet GlobalTheory.UAut NumberField Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.AdBridge
open GlobalTheory.Orb (archMat)
open scoped TensorProduct

variable (I : AutInst)

open Classical in

def iota (s : I.E →ₐ[I.F] I.E) (hs : s = I.cm.sig) (v : InfinitePlace I.F) : UJ (I.ε v) →* GAd s I.J :=
  (bridgeS I s hs : I.GA →* GAd s I.J).comp
    ((MonoidHom.inl I.Ginf I.Gf).comp (MonoidHom.mulSingle (fun u => UJ (I.ε u)) v))

open Classical in
theorem iota_apply (s : I.E →ₐ[I.F] I.E) (hs : s = I.cm.sig) (v : InfinitePlace I.F) (h : UJ (I.ε v)) :
    iota I s hs v h = bridgeS I s hs (Pi.mulSingle v h, 1) := rfl

end Bridge

end GlobalTheory.HCFinU.Central

end
