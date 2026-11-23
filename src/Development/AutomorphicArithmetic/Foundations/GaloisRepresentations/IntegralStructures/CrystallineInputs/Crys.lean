import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisGeometry₂.AlgebraicCharacterWD
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.HeckeLAdicCharacterDeRham
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.DeRhamPotSemistable
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.ExistsCoprimePowOfMemIneKer
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsRootOfUnityFixedDvdWeilGroupDegree
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisGeometry₂.ConclusionFinite
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsPadicAlgClRingEquivComplexCompEqOfCountabl
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.LevGapTop
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalArtinExistsHolds
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnramifiedCharIsCrystallineHodgeTateZero
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.FinrankAddOfBiprod
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsCrysIffOfTwist
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LineOfSingleJump
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FontaineBcrisBasicTheoremsProof
import Formalism.SharpRestriction.LevelLetterCocycles.WachCoordinates
import Formalism.SharpRestriction.LevelLetterCocycles.PairedCharacterCondition
import Formalism.SharpRestriction.LevelLetterCocycles.EmbeddingTypes
import Formalism.SharpRestriction.LevelLetterCocycles.ClassMapInjectiveBijectiveNorms
import Formalism.SharpRestriction.LevelLetterCocycles.TableLineDegreeTwo
import Formalism.SharpRestriction.LevelLetterCocycles.HerrClassFieldOfNorms
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ResBound
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BcrisRegularOfTensorInjStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIsJumpMultiset
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsComponentEquiv
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PeriodRingsRegularPhiSurjectiveFil
import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.ExistsAlgebraicVectorSpanningSubspace
import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.AinfActionTiltFixedOfFrobeniusRelation
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.LtSeries
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NormLtOneOfNotIsUnit
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CharZeroAdicCompletion
import GroundTheory.LocalFields.ConductorReciprocity
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.Mono0OfLpDimEqOne
import Formalism.LocalToGlobal.GaloisLevelStructure.DefsGal
import Formalism.SharpRestriction.LevelLetterCocycles.RingConditionOfDeltaInvariants
import Formalism.FrobeniusContraction.FrobeniusContractionProofs.ContractBij
import Formalism.GaussValuationBounds.GaussValueContraction.TruncationExponentBounds
import Formalism.WindowSums.PowerSeriesRelationList
import Formalism.CharacterColumnKernels.StatementN
import Formalism.CharacterColumnKernels.IdempotentNormalForms.LengthQuotSmulRangeFree
import Formalism.LagrangeIdealLifts.LiftLagrangeIdealInt
import Formalism.SharpRestriction.LevelLetterCocycles.FiltrationSaturationKiller
import Formalism.DistinguishedUnitIdeals.DistinguishedOrderProofs.GroundTheory
import Formalism.GaussValuationBounds.GaussValueContraction.PhiIterXProof
import Formalism.WeaklyAdmissibleFiltrations.CrystallineStableLifts.Galois
import Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowUniformizerFactorisation
import Formalism.SharpRestriction.LevelLetterCocycles.SecondComparisonInCoordinates
import Formalism.SharpRestriction.LevelLetterCocycles.WachFrobeniusLatticeUnramifiedFunctor
import Formalism.AdmissibleDesigns.InvariantsEqBotIff
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsKerPowDvd
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsPlaceEmb
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FontaineBoundsCrystallineDeRhamConcreteRings
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AwayOfInjective
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsStratHom
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DeRhamFilQuotientXiPowerAinf
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LubinTateLogNeZero
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FrobeniusEigenFilOneIsUnitExactDegree
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.WeilDeligneRelUnique
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsTypeGroupBlockLift
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.GoodIdempotentFixesOfOnlySeriesOfLabelActs
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.DepthZeroInertia
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.WeilDeligneParamAboveLIndependentLocalEmbedding
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.LocalGaloisRepDecompositionInduced
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.KummerNotFrac
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.FinrankDpstUnramifiedLeDimRepresentation
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.DpstRankLeDimension
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RestrictCrystallineDeRhamFiniteExt
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsAttachedHodge
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsNormalisedThetaSub
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.EqOneOfInfOfVal
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeVecMemFixed
import Formalism.DoubleCosetMeasures.LowerUnipotentOrbits.RelIndexMulMeasure
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ElementaryDivisorsMulMinusculeTopTerm
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsIdempotentElemCharIdem
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsAntiJFrame
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.BlockTriangularOneAddMat
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsSteinberg
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.JumpDictCrysAtOfWeights
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.CharpolySmulOfProd
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.MemUnitOff
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsUnitaryRationalInfTypeSubgroupAndInfTypeUnique
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalGlobalAboveL
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DeRhamPotentiallySemistable
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.HeckeLAdicCharacterCrystalline
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.MetAndHolds
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HeckeLAdicCharacterAboveOfPublished
import Development.AutomorphicArithmetic.ThetaCorrespondence.AlgebraicCharacters.AlgebraicCharacterWD
import Development.AutomorphicArithmetic.ThetaCorrespondence.GaloisRepresentations.HeckeDeRham

noncomputable section

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.L2.Host Formalism.BasicNotions Formalism.BasicNotions.Loc
open GlobalTheory.HeckeGal GlobalTheory.Pst GlobalTheory.TripleGal GlobalTheory.LocLanglands GlobalTheory.WeilDeligne GlobalTheory.SmGL GlobalTheory.PRep GlobalTheory.SplitWeil GlobalTheory.LocGL
open GlobalTheory GlobalTheory.Published

attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace UpperTheory.Gal.Int.Inp

theorem pst : GlobalTheory.Published.DeRhamPotSemistable := GlobalTheory.deRham_potentiallySemistable

theorem alg : GlobalTheory.Published.AlgebraicCharacterWD :=
  UpperTheory.Lit.CharWD.algebraicCharacterWD GlobalTheory.globalArtinReciprocity_holds UpperTheory.Lit.heckeLAdicCharacterDeRham pst

theorem crys : GlobalTheory.Published.HeckeLAdicCharacterCrystalline := by
  have hD := UpperTheory.Lit.heckeLAdicCharacterDeRham
  have hB := pst
  have hW := alg
  intro E Ω _ _ _ _ _ l _ P AI hT ι art ha χ n μ h1 h2 h3 w A h O _ _ _ Bw hj hu
  obtain ⟨a, ha'⟩ := GlobalTheory.localArtinExists_holds E Ω A w h
  have hξ := ParamAboveModel.isComp_loc (w := w) χ
  have hc : Continuous fun g : ↥(ReciprocityTheory.Gal.Dec (F := E) A) =>
      (((rk1 μ).comp (ReciprocityTheory.Gal.Dec (F := E) A).subtype g : GL (Fin 1) (Om l)) : Matrix (Fin 1) (Fin 1) (Om l)) := by
    refine continuous_matrix fun i j => ?_
    have e : (fun g : ↥(ReciprocityTheory.Gal.Dec (F := E) A) =>
      (((rk1 μ).comp (ReciprocityTheory.Gal.Dec (F := E) A).subtype g : GL (Fin 1) (Om l)) : Matrix (Fin 1) (Fin 1) (Om l)) i j) =
      fun g : ↥(ReciprocityTheory.Gal.Dec (F := E) A) => ((μ g : (Om l)ˣ) : Om l) := by
      funext g
      rw [Subsingleton.elim i j]
      simp [rk1]
    rw [e]
    exact Units.continuous_val.comp (h2.comp continuous_subtype_val)
  have hr := DeRhamPotSemistable.isPstAt hB hT.some Bw _ hc (hD E Ω l P AI hT ι art ha χ n μ h1 h2 h3 w A h O Bw hj).1
  rw [← GlobalTheory.PstLaws.unr_wdAt_iff Bw h hj P ι _ hr,
    hW E Ω l P AI hT ι art ha χ n μ h1 h2 h3 w A h O Bw hj _ hξ a ha',
    GlobalTheory.LocLanglands.Test.unr_lpOfChar_iff ha' hξ.1]
  exact (GlobalTheory.Published.CharCrysModel.isUnram_iff χ w).2 hu

theorem hk : GlobalTheory.Published.HeckeLAdicCharacterAbove :=
  GlobalTheory.HeckeAboveBridge.heckeLAdicCharacterAbove_of_potSemistable UpperTheory.Lit.heckeLAdicCharacterDeRham crys pst

end UpperTheory.Gal.Int.Inp
