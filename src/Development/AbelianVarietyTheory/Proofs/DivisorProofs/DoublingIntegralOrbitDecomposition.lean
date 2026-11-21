import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.ZetaOn
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubledVacuumHeisenbergEigenDoubledLattice
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubledStabilizerWeilOperatorTransportsLatticeEi
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceDoubledEigenfunctionsLineVacuum
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubledVacuumEigenInertPlaceLatticeStabiliser
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubledVacuumEigenvalueEqOneInertPlace
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzBoxTensorLeftFixedLinearApply
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDiagOneNegOneConjAntidiagonalStabilizerMemStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeisenbergInvariantAdmissibleFormEqMulDiagonalIn
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModulusOfNormEqAbs
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFactorPureTensorComponentAtPlace
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfComponentTensorAdelicFunctionEq
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HermitianSelfDualLatticeSplitPlaceDictionary
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.IsCompactIsOpenUnitsAt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbsPowApply
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DetNeZeroOfSig
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HyperbolicPairLatticeLocalSplitStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsotropicVectorLatticeLocalStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MajorantStabilizerIwasawaLineStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianLatticeSelfDualEverywhereStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalStabilizerLocallyCompact
import Development.AbelianVarietyTheory.Definitions.Foundations.T2SpaceAdeleRing
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsSiegelHProjArchEq
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HasIwasawaDecompositionDoubledSplitPlace
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IwasawaDoubledHermitianSpaceRealPlace
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.GraphElementIwasawaInertPlace
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.StabiliserEqCentraliserCartan
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlaceSplitOrInert
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MatHomOfGAdSymm
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHaarOfIsCompact
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MajorantStabilizerIwasawaLine
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MajorantFrameCommutesCartan
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianLatticeSelfDualEverywhere
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoreConcl
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsIsLatticeFrameIsMajorantFrame
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsDualFamilyOfIsLattice
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.GraphElementIwasawaSplitPlace
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsIsSphSec
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnramifiedDoublingIntegralInertPlace

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.Doubling GlobalTheory.ThK.Bot
open Formalism.L2.Host (aboveF)

noncomputable section

namespace GlobalTheory.BotInert

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

section Reindex

variable {n : ℕ} {X : Spc F E n} {X₂ : Spc F E (n + n)}

def toUD (hJ : X₂.J = dblGram finSumFinEquiv X.J) : UA σ X₂.J →* GlobalTheory.DblVac.UD σ X where
  toFun g := ⟨⟨(mat g).submatrix finSumFinEquiv finSumFinEquiv, (mat g⁻¹).submatrix finSumFinEquiv finSumFinEquiv,
      by rw [Matrix.submatrix_mul_equiv, GlobalTheory.StabHaar.mat_mul_inv, Matrix.submatrix_one_equiv],
      by rw [Matrix.submatrix_mul_equiv, GlobalTheory.StabHaar.mat_inv_mul, Matrix.submatrix_one_equiv]⟩, by
    have hg : (mat g)ᵀ * incM F X₂.J * (mat g).map (cA σ) = incM F X₂.J := g.2
    have hD : dbl (incM F X.J) = (incM F X₂.J).submatrix finSumFinEquiv finSumFinEquiv := by
      rw [hJ, dblGram, incM, incM, blkMat_map _ _ (map_zero _), Matrix.map_neg _ (map_neg _), submatrix_blkMat]
      rfl
    show ((mat g).submatrix finSumFinEquiv finSumFinEquiv)ᵀ * dbl (incM F X.J) *
      ((mat g).submatrix finSumFinEquiv finSumFinEquiv).map (cA σ) = dbl (incM F X.J)
    rw [hD, Matrix.transpose_submatrix, ← Matrix.submatrix_map, Matrix.submatrix_mul_equiv, Matrix.submatrix_mul_equiv, hg]⟩
  map_one' := Subtype.ext (Units.ext (Matrix.submatrix_one_equiv _))
  map_mul' _ _ := Subtype.ext (Units.ext (Matrix.submatrix_mul_equiv _ _ _ _ _).symm)

theorem matD_toUD (hJ : X₂.J = dblGram finSumFinEquiv X.J) (g : UA σ X₂.J) :
    GlobalTheory.DblVac.matD (toUD hJ g) = (mat g).submatrix finSumFinEquiv finSumFinEquiv := rfl

end Reindex

end GlobalTheory.BotInert

end
