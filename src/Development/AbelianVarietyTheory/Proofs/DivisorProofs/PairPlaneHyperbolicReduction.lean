import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsHeightLeTwoMulQuotHeight
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaBasicPropertiesStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConstantTermUnipotentIntegral
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsSmoothModerateOfIsAutFunSm
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRationalDarbouxHermitianTensorAdeles
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdelicSchwartzThetaDistributionSumNeZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DarbouxCoordsGoodModelStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilEigenSchwartzSurjectiveStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SymplecticBasisOfUnitaryFrame
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.DualRestrictSurjectiveOfIsTorsionFreeQuotient
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaActionExists
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecondConfigurationTripleCompatible
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFactorPureTensorComponentAtPlace
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardAdelicCharacterNontrivialAtPlaces
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchroedingerOperatorHeisenbergPreservesSchwartzB
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicHeisenbergActsByLocalSchrodingerStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSplitPlaceAdelicMatrixGivenComponentsStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicTraceSupportedAtSplitPlaceStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianTensorSkewHermitianSplitSymplecticPairStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianSelfDualLatticeSpaceFormHermitianNondeg
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatAtVAtStable
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianTensorSkewHermitianSplitSymplecticPair
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilRepresentationPreservesSchwartz
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EigenIntertwinerSkewPlaneUniqueDual
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchrodingerInvariantFunctionalsLagrangian
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUSplittingTrRep
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalIntertwinerUniqueScalarStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilEigenExtendsContinuousStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilEigenContinuousInverseStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictedTensorSchwartzStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchrodingerIntertwinerL2ConstantStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LintegralInfiniteScalingStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EigenIntertwinerTransitive
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicSchwartzMemL2
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchActionReadingsCompatible
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvaluationGoodModelsIntertwine
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjMapApply
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformSchwartzSeminormBound
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilRepresentationPointwiseArchimedeanDecayBound
import Development.AbelianVarietyTheory.Proofs.HeightProofs.UnitaryLatticeDenominatorHeightBoundProof
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMulIntSingle
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzBruhatInvariantUnderIntegralLattice
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzBruhatSupportBoundedDenominators
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousCharacterTrivialOnSmallIdeles
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzBruhatLevelConductorCompatible
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraceDualLatticeBoundedDenominator
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteAbsMatrixProductLeHeights
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LinearFormBoundedByLocalConstants
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MatrixEntriesBoundedAlmostEverywhere
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodModelsDifferBySymplecticMatrix
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SymplecticChangeOfGoodModelsIntertwines
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilEigenBijectiveSchwartzStatement
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.FiniteAdeleStrongApproximationModNat
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockScaledIntegralOfLocal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicThetaSumNormLePolynomialScale
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSiegelDomainReduction
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdmissibleFormAdelicThetaSumStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocallyConstantFinprodSchwartzBruhatFiniteAdel
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasCompactSupportFinprodSchwartzBruhatFiniteAdel
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.EncardSmulMemLeEncardSmulInterNonempty
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnipotentFundamentalDomain
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsotropicVectorHermitianRankGeThreeIndefin
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnipotentCoordinateAdditive
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnipotentFundamentalDomainExists

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK

private theorem plane_span {F E : Type} [Field F] [Field E] [Algebra F E] (σ : E →ₐ[F] E) (hσ : ∀ a, σ (σ a) = a)
    {n d₂ : ℕ} (J : Matrix (Fin n) (Fin n) E) (hJ : ∀ i j, σ (J j i) = J i j) (H : Plane E n d₂) (hn : d₂ + 2 = n)
    (hxx : form σ J H.x H.x = 0) (hyy : form σ J H.y H.y = 0) (hxy : form σ J H.x H.y = 1)
    (ho : ∀ u, form σ J (H.ι *ᵥ u) H.x = 0 ∧ form σ J (H.ι *ᵥ u) H.y = 0) (hi : Function.Injective H.ι.mulVec) :
    ∀ v : Fin n → E, ∃ (s t : E) (u : Fin d₂ → E), v = s • H.x + H.ι *ᵥ u + t • H.y := by
  have hyx : form σ J H.y H.x = 1 := by
    have : form σ J H.y H.x = σ (form σ J H.x H.y) := by
      simp only [form, dotProduct, Matrix.mulVec, map_sum, map_mul, hσ, Finset.mul_sum]
      rw [Finset.sum_comm]
      refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
      rw [hJ]; ring
    rw [this, hxy, map_one]
  let L : ((E × E) × (Fin d₂ → E)) →ₗ[E] (Fin n → E) :=
    ((LinearMap.toSpanSingleton E _ H.x).coprod (LinearMap.toSpanSingleton E _ H.y)).coprod H.ι.mulVecLin
  have hL : ∀ p, L p = p.1.1 • H.x + H.ι *ᵥ p.2 + p.1.2 • H.y := by
    intro p
    simp only [L, LinearMap.coprod_apply, LinearMap.toSpanSingleton_apply, Matrix.mulVecLin_apply]
    abel
  have hf : ∀ (s t : E) (u : Fin d₂ → E) (w), form σ J (s • H.x + H.ι *ᵥ u + t • H.y) w =
      s * form σ J H.x w + form σ J (H.ι *ᵥ u) w + t * form σ J H.y w := by
    intro s t u w
    simp only [form, add_dotProduct, smul_dotProduct, smul_eq_mul]
  have hinj : Function.Injective L := by
    rw [injective_iff_map_eq_zero]
    rintro ⟨⟨s, t⟩, u⟩ h
    rw [hL] at h
    have h1 := hf s t u H.y
    have h2 := hf s t u H.x
    simp only at h
    rw [h, hxy, (ho u).2, hyy] at h1
    rw [h, hxx, (ho u).1, hyx] at h2
    simp only [form, zero_dotProduct, mul_one, mul_zero, add_zero, zero_add] at h1 h2
    subst h1 h2
    simp only [zero_smul, add_zero, zero_add] at h
    have : u = 0 := hi (by rw [h, Matrix.mulVec_zero])
    rw [this]; rfl
  have hsurj : Function.Surjective L :=
    (LinearMap.injective_iff_surjective_of_finrank_eq_finrank (by simp; omega)).1 hinj
  intro v
  obtain ⟨p, hp⟩ := hsurj v
  exact ⟨p.1.1, p.1.2, p.2, by rw [← hL, hp]⟩

