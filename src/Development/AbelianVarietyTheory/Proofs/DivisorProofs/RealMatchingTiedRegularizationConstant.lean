import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsNotRelZero
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.UnitaryConjugation
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsIsGridFr
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsMatchOver
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.TwistPlacesOffPrimeQZero
import Development.AbelianVarietyTheory.Definitions.Divisors.DiscreteSeriesHermitianUnique
import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.CuspAlongSmoothRows
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.ToricSymbols
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BigThetaKernelIntegrable
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsLocIsoRefl
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.MeasurePreservingPiCurry
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ZetaIdentityPersistsRowColumnChanges
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfComponentTensorAdelicFunctionEq
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianLatticeSelfDualEverywhere
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnipotentRadicalBasic
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IntegrableOfMemSB
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExDownExUpAndExUpExDown
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.MemLevelFunOfIsAutFun
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SelfDualLocalSubgroupFirstProjEqAnnihilator
import Development.AbelianVarietyTheory.PublishedTheorems.SiegelWeil₂.SiegelWeilUnitarySchrodinger
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SchwartzBruhatMatrixTranslationModulationIrreduc
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.NodeAgree
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FockKsetPreservesHomogeneousDegree
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsGrpDataMapHaar
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.OscActMonomialOfUnique
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CoeffXMulOfNotMem
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LineKroneckerRightMatrixConjTranspose
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LengthAddLeOfDisjoint
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HighestWeightTensor
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockHarmonicsGradedCompactStable
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockPolynomialsLocallyFiniteRationalWeights
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CasimirFockAct1SubCasimirFockAct2
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HighestWeightIsoOfEqualCasimir
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FunJetApply
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.InstSecondCountableSub
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ContinuousExptPY
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.PolarJacobianBlockDiagConjInvariant
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsSvd
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.SinhcAdMulVecOfAdSqEigen
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdMatSqMulVecAdSqEigenvectorMatrixUnitP
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DetAdSqEigenvectorMatrixUnitPNeZero
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ProdSinhcRootValueOfMatrixUnitP
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DiscreteSeriesModelOfDualParameter
import Formalism.PeriodIntegrals.IsLowUnitH
import Formalism.UnipotentAdelicQuotients.ThmBInHecke
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.ExistsHomOfLinearScalingHermForm
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.PolCountableAndTangentExt
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.EqZeroOfSumEmbeddingSmul
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.PureTypeVectorSpansQuadraticLattice
import Development.AbelianVarietyTheory.Definitions.ExistenceOfLattices.CmHostRootComplexEqPmSqrt
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.ExistsConjDatum
import Development.AbelianVarietyTheory.BlockTheory.ExistenceTori.LevelIndexFourierCharacter
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.IsLocallyNoetherian
import Development.AbelianVarietyTheory.Definitions.Degenerations.RigGen
import Development.AbelianVarietyTheory.BlockTheory.CMModuli.EllipticFibrePrincipalData
import Development.AbelianVarietyTheory.BlockTheory.HeightDefect.LinePeriodExponential
import Development.AbelianVarietyTheory.Definitions.CMLattices.LamLetters
import Development.AbelianVarietyTheory.Proofs.ThetaLawProofs.VolumeFundamentalDomainPeriodLattice
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.Rationality.QuotSt
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.NonemptyFiniteRootsOfBimul
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.KTrivExternalTensorPowerLineBundle
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsHeckeQuotientTriple
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.CmHostImaginaryGeneratorNeZero
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsGLEmbeddingUnitaryAdelicSplitPlaceBasis
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralChangeBaseFrameOrthonormal
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PlaceIdempotentActsOnSupportedAndOff
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PlaceIdempotentActsOnSupportedAndOffStatement
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ContinuousSingleAt
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.Rationality.QuotShiftPf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.Rationality.LocalLengthFraction
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.T2SpaceMatrixOfIsNonarchimedeanLocalField
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicWeilRepSchrodingerModelUnique
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalAddCharUnramifiedOfSplitsCompletelyAbovePla
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicSchwartzMemL2
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsTrigPolynomialAnnihilatingAdelicSchwartz
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicSchwartzRestrictFinitePlaceMemSchwartzBruh
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsComplementaryAdelicSchwartzRestFunction
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardAdelicAddCharNontrivialFinitePlace
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StoneVonNeumannSchwartzBruhatTransverseLagrangiaStatement
import Formalism.SharpRestriction.GrowthBounds.ChartComparison.StepIn
import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.TminusLinApply
import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.FormValuationGeNegDegree
import Formalism.LocalToGlobal.GroupLattices.PerfectRings.IntermediateMapWittQuadratic
import Formalism.SharpRestriction.AdmissibleParameterJoins.GandSp
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.MemStabGLAdeleIff
import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocGen
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlCharacterFactorsThroughDetOfTwoNeZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchHeisenbergDerivativesExistStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchActionReadingsCompatible
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EigenIntertwinerSkewPlaneUniqueDual
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasDerivAtThetaSumHeisenbergLine
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.SchwartzEqZeroOfWrongSignGaussianRelation
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsArchimedeanPairNegativeSymplecticPairing
import GroundTheory.GlobalFields.SemilocalAlgebras.Finite
import GroundTheory.GlobalFields.SemilocalAlgebras.Galois
import GroundTheory.GlobalFields.IdeleGroups.IdeleNorms.BaseChange
import GroundTheory.LocalFields.ExistsUnitFiltrationUnitsLeRangeNormUnits
import GroundTheory.LocalFields.UnitsGalois
import GroundTheory.LocalFields.CompleteTrivial
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSumDoubledWeilFixedDiagonalStabilizerStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicThetaSumDoubledWeilAntidiagonalInvariant
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WordAppend
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqZeroOfAtOfPiInf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RealScalarArchimedeanAdeleSmulMatrixRealPlace
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousMixedSymm
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzMapBarrelledSpace
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSymp
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ActFromBlocks
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsArchimedeanSchwartzTraceFourierBijective
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSelfDualFor
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFourierTransformSurjectiveIntegral
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjMapApply
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasTemperateGrowthElim
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSchwartzNe
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StarMemAdelicSchwartzSpaceNumberField
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjLinApply
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasTemperateGrowthProdMkConst
import GroundTheory.GlobalFields.TateThesis.GaussianSchwartz
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPairingCoordinatesSchrodingerFolland
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DefiniteUnitaryClassSetFinite
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.OverOnePrimeOfCardLeOne
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FullRk
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslationInvariantFunctional
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasExponentZeroIff
import GroundTheory.LocalFields.LocalFourierHaar
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ShearGLTransposeMul
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FullRankZetaSurjective
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LastColsVal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchimedeanThetaLocalAction
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCompactOpenAddSubgroup
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StoneVonNeumannSchwartzBruhatAnyCharacter
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDiagOneNegOneConjAntidiagonalStabilizerMem
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DiagonalBlockOfMatrix
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubledVacuumStabilizerGaussDecompositionBigCell
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ThetaSubmoduleSupNeTop
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlaneZeroInsertionLinearApply
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocSubSB
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsModTopEv
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosureUAt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilObjectsInhabited
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitEqNormCompletionTensorOfIsInertAt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBasisWithDualBasisInHermitianLatticeAwayPl
import Development.AbelianVarietyTheory.Definitions.Divisors.AdelicAdmissibleSmul
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DiagFormBoxStarNeZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralUnipotentRadicalConjToSquareInertPlace
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DiagonalFixingDoublingMatrix
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.NablaUnipotentMemIntegralDoubledUnipotent
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DiagonalFixingDoublingMulFirstFactorLagrangianAl
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolynomialDatumActionOfPairStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContDiffOfContinuousOneParameter
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchimedeanSymplecticSplitting
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockHarmonicMemFiniteDimensionalCompactStable
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.GaussianPairingIntegralContDiffNeZeroDiag
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DOpDef
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HeisenbergOrbitCoefficientSmooth
import Development.AbelianVarietyTheory.Statements.HeckeThetaIntegrals.StepUnfold
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.GridParameterRegularCardEqRankFormula
import Development.AbelianVarietyTheory.Definitions.Foundations.ThetaSeriesTies
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GridTopVertexFramePointTransportLattice
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.ExistsReduction
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdjInvol
import Development.AbelianVarietyTheory.Definitions.Jets.SumIoPrAlt
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsRealFnNeZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRealmapsIsomorphism
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousSmulSemi
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.MatchedMapsKernelIntegral
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GSEqZeroOfLt
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ArchimedeanDarbouxCoordsOneParamOrbitSmooth
import Development.AbelianVarietyTheory.Definitions.Degenerations.AdmissibleBaseOfCompleteDvr
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.IsAffineHomOfFlatQuotientOfAffineKernel
import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsGaloisCover
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.PolarizedAbelianEmbeddingBySections
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.SecCoordBcScaleUnique
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsFamilyAdditionMorphismThetaLevel
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.FiniteSetOfHilbertFunctionsFibres
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LbPowDescendsOfIsotropic
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.GenericExistsUniqueOActOfIsGrpPullback
import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.FlatImageOfOverFractionFieldOfValuationRing
import Development.AbelianVarietyTheory.Proofs.ToricGeometry.ExistsIsConnectedPrincipalOpen
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.HomLieEquivScalarTmul
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsUniqueComapEqVanishingIdeal
import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.ExistsIsAffineOpenOfFiniteOpensProj
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsTwistOfLowers
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.IntChartCut
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsPtJ
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CubicalLawRight
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.GermBGen
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.FormalPointSubstitutionSeriesValueAtTwoPoints
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.GermBFr
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.GlobalBasisAlgebra
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.WickVanishing.WickOperatorVanishing
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.WickVanishing.GEWick
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.FormalExpMulFormalExpNeg
import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.ExistsFormalBiextMap
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.WickVanishing.CalcExp
import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.GermEvGermEvThreePoints
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.CoeffSubstInvMemOfTwoLeOrder
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.TorusProjPeriodZeroEqReal
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.HasSumLocallyUniformlyOnTerm
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.FormalThetaSumShiftPeriodDiv
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.SmulPeriodMapMkZeroFstEqNegForm
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.AbsNormCoprimeOfSup
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FirstStandardPairMemberHasThetaFunction
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsThetaFunctionStandardPairSecond
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LsumMapDomainSome

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.RowClaim
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.RowEx
open MeasureTheory GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField borelKw borelSpaceKw
open GlobalTheory.ChainFr Matrix
open scoped TensorProduct

noncomputable section

namespace GlobalTheory.GridFrameExistence

open GlobalTheory.SquareComm GlobalTheory.SquareDict GlobalTheory.SquareAgree GlobalTheory.Grid

variable {D : D7}

theorem fr_eq_of_onb {V : HSp D} {A A' : Fr V} (h : ∀ τ, A.onb τ = A'.onb τ) : A = A' := by
  have hf : A.fr = A'.fr := funext fun τ => by
    have h1 := congrArg (·⁻¹) (h τ)
    simp only [Fr.onb] at h1
    rwa [Matrix.nonsing_inv_nonsing_inv _ ((Matrix.isUnit_iff_isUnit_det _).1 (A.fr_unit τ)),
      Matrix.nonsing_inv_nonsing_inv _ ((Matrix.isUnit_iff_isUnit_det _).1 (A'.fr_unit τ))] at h1
  have he : A.ε = A'.ε := funext fun τ => by
    have h1 : (A.fr τ)ᴴ * Formalism.REAL.Jm (A.ε τ) * A.fr τ = (A.fr τ)ᴴ * Formalism.REAL.Jm (A'.ε τ) * A.fr τ := by
      rw [A.fr_gram, hf, A'.fr_gram]
    have u := A.fr_unit τ
    have u' : IsUnit (A.fr τ)ᴴ := (Matrix.isUnit_conjTranspose _).2 u
    have h2 := u'.mul_left_cancel (u.mul_right_cancel h1)
    funext a
    have h3 := congrFun (congrFun h2 a) a
    cases h4 : A.ε τ a <;> cases h5 : A'.ε τ a <;> simp [Formalism.REAL.Jm, h4, h5] at h3 ⊢ <;> norm_num at h3
  cases A
  cases A'
  simp only at hf he
  subst hf he
  rfl

theorem gridFr_unique {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {W : G.Weil} {X : Node} {A A' : Fr (G.V X)}
    (h : IsGridFr W X A) (h' : IsGridFr W X A') : A = A' :=
  fr_eq_of_onb fun τ => (h τ).1.trans (h' τ).1.symm

open GlobalTheory.SquareConv in

theorem standing_of_size {large₂ : SizeData₂ D} (hs : GlobalTheory.IndefiniteRowSideFullHecke.LevelPlusSubgroup.SizeRows large₂) (hx : 11 ≤ D.host.splitBound) {T : Type}
    {L : LevCh D T} {μ₀ : T} (hL : L.Is μ₀) {sc : Consts} (G : GridData L sc) (t : T) : SquareStanding G t := by
  classical
  have hcc : D.host.ccK = ⊤ := hs.2.2.2.2.2.2.2.2.2.2.2.2.2
  obtain ⟨⟨P, -, -⟩, -⟩ := hs
  have lev : ∀ p ∈ D.host.levelPrimes, p.Prime → Nat.Coprime p (D.host.QS * D.host.q * D.host.d) := fun p hp hpp =>
    UpperTheory.Ram.Fun.coprime_condN_of_splitK D.host hpp (P.level_split p hp)
  refine ⟨hx, fun w hw => ?_⟩
  have e1 : ((D.host.QS * D.host.q * D.host.d * Ideal.absNorm D.host.ccK : ℕ) : 𝓞 D.host.E) =
      ((D.host.QS * D.host.q * D.host.d : ℕ) : 𝓞 D.host.E) := by
    rw [hcc, Ideal.absNorm_top, mul_one]
  rw [e1]
  rcases Finset.mem_union.1 hw with hw | hw
  · obtain ⟨v, hv, rfl⟩ := Finset.mem_image.1 hw
    obtain ⟨p, hpv, hcop⟩ : ∃ p : ℕ, ((p : ℕ) : 𝓞 D.host.F) ∈ v.asIdeal ∧ Nat.Coprime p (D.host.QS * D.host.q * D.host.d) := by
      rcases G.pl.mem_S0_of_sum_eq.1 hv with rfl | hv1
      · refine ⟨q0 D, G.pl.basePlace_over_qZero, ?_⟩
        have hs := (leastSplitAuxiliaryPrimeThetaChain_spec D).2.1
        have hM : Nat.Coprime (Formalism.MainNotions.rPrAv D * LevelStarExponents.condE D) (q0 D) := by
          rw [Nat.Coprime, Nat.gcd_rec, hs, Nat.gcd_one_left]
        have hdv : D.host.QS * D.host.q * D.host.d ∣ Formalism.MainNotions.rPrAv D * LevelStarExponents.condE D := by
          unfold LevelStarExponents.condE
          exact Dvd.dvd.mul_left dvd_rfl _
        exact (hM.coprime_dvd_left hdv).symm
      · rcases (S1_mem_OmF D).1 hv1 with h | h | h | h
        · exact ⟨_, h, lev _ (D.host.g_level 0) (D.host.g_prime 0)⟩
        · exact ⟨_, h, lev _ (D.host.g_level 1) (D.host.g_prime 1)⟩
        · exact ⟨_, h, lev _ D.host.pde_level.1 D.host.pde_prime⟩
        · exact ⟨_, h, lev _ D.host.pde_level.2 D.host.pde'_prime⟩
    have hpw : ((p : ℕ) : 𝓞 D.host.E) ∈ (G.pl.w v).asIdeal := by
      rw [← G.pl.under_w hv, HeightOneSpectrum.under_asIdeal, Ideal.under_def, Ideal.mem_comap, map_natCast] at hpv
      exact hpv
    exact natCast_not_mem (G.pl.w v).isPrime.ne_top hcop hpw
  · intro hmem
    apply (hL.Q_off t w hw).1
    rw [Nat.cast_mul]
    exact Ideal.mul_mem_right _ _ hmem

end GlobalTheory.GridFrameExistence

end
