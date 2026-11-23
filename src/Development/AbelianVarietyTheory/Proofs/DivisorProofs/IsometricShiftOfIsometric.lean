import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsFlagBundleRankOne
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NontrivialIsomClassInt
import Development.AbelianVarietyTheory.Definitions.Divisors.ToIThCapDegOfAddNsmulDivP
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchubertCellOpenImmersion
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StalkStepMono
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenImmersionCellFl
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoInclLast
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ChiLenPicPushforwardOfIsClosedImmersion
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsClosedImmersionBaseChange
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.FinitePartLePreimageOfClosedFibreSubset
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DerivationDivisibleOfCocomm
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.AdmissibleStageOfPackage
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsFlagFrame
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsColimitCokernelCoforkBiprodMap
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.HomAppHomOfRestrictImage
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.TopRankPowers
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SecondChernDegreeVanishesTrueSurfaces
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormalProjectiveModel
import Development.AbelianVarietyTheory.Proofs.ThetaLawProofs.ExistsRigidTranslatePrincipalPolarisationOrderTw
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelAmpleRigidTranslateLineBundleRationalPoint
import Development.AbelianVarietyTheory.Definitions.CMLattices.IntegralOf
import Development.AbelianVarietyTheory.Proofs.HeightProofs.IsValLineLogNormAtIffEmbedding
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TopologicalKrullDimEqSucc
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TautologicalInnerProductLift
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsClosedImmersionSurjectiveLine
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TopologicalKrullDimEqSucc
import Development.AbelianVarietyTheory.Definitions.Divisors.LineSCShortExact
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemTChartSource
import Development.AbelianVarietyTheory.Definitions.Divisors.TorsionTowersOfDivisibleGroup
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IntegrableMonomialMulConjComplexGaussian
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolyIntEqZeroOfIsHomogeneous
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsBlockOrderedSumEquivTrueIndex
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DifferentiableProdPt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenImmersionCellFlAlt

open NumberField MvPolynomial Filter Topology Formalism.BasicNotions Formalism.MainNotions Formalism.DegreeFormula GlobalTheory.FlagPoly GlobalTheory.Mean4 GlobalTheory.Mean4O GlobalTheory.CovTop GlobalTheory.CovHt GlobalTheory.CovTest GlobalTheory.Published
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory GlobalTheory.ArInt
open scoped Classical

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.CovTest.GeoSwap

open HermLB

section Shift

variable {k : Type} [CommRing k] {X Y : Scheme.{0}} {p : X ⟶ Sp k} {q : Y ⟶ Sp k}

theorem gdeg_shift_const (L : HermLB p) (t : (k →+* ℂ) → ℝ) (ht : ∀ σ, t ((starRingEnd ℂ).comp σ) = t σ) (D : ℕ) :
    gdeg (L.shift t ht) D = gdeg L D := by
  simp only [gdeg, chInt, HermLB.shift, Weight.chernInt, Weight.chernPart_addFn_const]

end Shift

end GlobalTheory.CovTest.GeoSwap

end
