import Mathlib
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.AdelicPeriodicContinuousEqZeroOfFourierCoeff
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFundDomainRationalPointsAdeleTupleFinitePo
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilRangeOfSteps
import Development.AbelianVarietyTheory.BlockTheory.GlobalSignature.InfiniteCoordinateUnfold
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsCompactAdele
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNatMulIntegralOfIsCompact
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsBoundedUnitary
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MatHomOfGAdSymm
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsWittBasisCompactStabiliser
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ActFromBlocks
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.FourierInversionHaarSymmForm
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSymp
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsArchimedeanSchwartzTraceFourierBijective
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSplittingSplitOm
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsComplementaryAdelicSchwartzRestFunction
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSelfDualFor
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFourierTransformSurjectiveIntegral
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsotropicComplGram
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockMatrixTwoByTwoFinTranspose
import Development.AbelianVarietyTheory.Definitions.Divisors.IsCompactIsOpenUnitsAt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbsPowApply
import Formalism.UnipotentAdelicQuotients.SWXSDefs
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.HalfData
import Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.TopoAF
import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.GinfCSecondCountable
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.AdelicMatrixQuotientPeriodicIntegralContinuousPa
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WittSourceMixedCoordHeisenbergRestriction
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ThetaRestrictIsotropicQuotientWittTowerPropertieStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IdempotentMulEqZeroOfOrthogonal
import Development.AbelianVarietyTheory.BlockTheory.HeightDefect.SymplecticTensorMeasures
import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.InfFam
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdjEqZeroOfSymplO
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ThetaRestrictionInvariantRationalLeviScaling
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WeilDatumTransportSourceRationalIsometry
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsHomSpaceDualIsotropicMiddleDecomposition
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsotropicDualMiddlePartsSymplecticOrthogonal
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.LengthPosOfPosDef
import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.TwoSplitIdem
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ThetaRestrictionInvariantRationalLeviGL
import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.ContinuousCoB
import Formalism.SharpRestriction.CuspSpanNormBounds.DiscreteSeriesWeylDimension
import Formalism.LocalToGlobal.IndefiniteReal.AutomorphicEvaluation
import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.ContinuousTensMap
import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemSum
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.T2SpaceHalfAdelicMatrixAddSubgroup
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SplitFrames
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RestrictedHeisenbergTermsPermutedRationalUnitary
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsotropicMeanThetaProductConjEqRestrictionProduc
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.WittTowerRestrictionWeilCharacterRationalEqOne
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsRatDatum
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsAddHaarMeasurePi
import Development.AbelianVarietyTheory.BlockTheory.ExistenceTori.LevelIndexFourierCharacter
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.IsLocallyNoetherian
import Development.AbelianVarietyTheory.Definitions.Degenerations.RigGen
import Formalism.LocalToGlobal.ProjectiveLattices.IsChartIff
import Formalism.LocalToGlobal.ProjectiveLattices.ChartDirectionsIntegral
import Formalism.LocalToGlobal.ProjectiveLattices.LatPAddRight
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.AlgebraMapOlInjective
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.ExistsPowSmulMemBall
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.RestrictionEqZeroIffMemVanishingFiltration
import Formalism.SharpRestriction.RamificationFrobenius.TotientGaloisClasses.PrimePairSizeCondition
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsWeilDatumOOneOfRankZero
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsCrisP
import ReciprocityTheory.DualLattices.SqZeroOfSpan
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ResEqIff
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsDiscreteValuationRingIntegralClosurePadicInt
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.FrameTop
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsClopenCompactNbhdZero
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ConstMapInjective

noncomputable section

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.Doubling
open GlobalTheory.SWLit GlobalTheory.SWWeil

namespace GlobalTheory.SWOpFin

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem adele_eq_zero_of_comp {c : AF F} (hf : ∀ v, evFin F v c = 0) (hi : ∀ w, evInf F w c = 0) : c = 0 := by
  refine Prod.ext (funext fun w => hi w) ?_
  exact Subtype.ext (funext fun v => hf v)

theorem tens_eq_zero_of_comp {z : AF F ⊗[F] E} (hf : ∀ v, compFin F E v z = 0) (hi : ∀ w, compInf F E w z = 0) :
    z = 0 := by
  let b := Module.Free.chooseBasis F E
  let B := Algebra.TensorProduct.basis (AF F) b
  have key : ∀ {A : Type} [CommRing A] [Algebra F A] (f : AF F →ₐ[F] A),
      (Algebra.TensorProduct.map f (AlgHom.id F E)) z = 0 → ∀ i, f (B.repr z i) = 0 := by
    intro A _ _ f hz i
    have hs : z = ∑ j, B.repr z j • B j := (B.sum_repr z).symm
    have hz' : ∑ j, f (B.repr z j) • (Algebra.TensorProduct.basis A b) j = 0 := by
      rw [hs] at hz
      simpa [B, Algebra.TensorProduct.basis_apply, Finset.sum_apply, map_sum, TensorProduct.smul_tmul', smul_eq_mul, mul_one,
        Algebra.TensorProduct.map_tmul] using hz
    exact Fintype.linearIndependent_iff.1 (Algebra.TensorProduct.basis A b).linearIndependent _ hz' i
  have hc : ∀ i, B.repr z i = 0 := fun i =>
    adele_eq_zero_of_comp (fun v => key (evFin F v) (hf v) i) (fun w => key (evInf F w) (hi w) i)
  rw [← B.sum_repr z]
  simp [hc]

variable {σ : E →ₐ[F] E} {n : ℕ} {J₂ : Matrix (Fin (n + n)) (Fin (n + n)) E}

end GlobalTheory.SWOpFin
