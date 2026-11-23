import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.IsNormalisedOfIsDiscrete
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder
import Development.AbelianVarietyTheory.Definitions.Divisors.OfIsBaseChange
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NontrivialTwJacquetOfSurjective
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NonemptyEquivContraOfChar
import Development.WeilBound.CoreStatements.TemperedRepresentationTheory.ZelevinskyJacquet.LSegJacquet
import Development.WeilBound.CoreStatements.TemperedRepresentationTheory.ZelevinskyJacquet.FineJacquetModules.SegDefs
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IrreducibleAdmissibleGL
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InductionFiniteLength
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeviBlocksParabolicInductionFiniteLength
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsIrreducibleSecondFactorOfIrreducibleProduct
import GroundTheory.AutomorphicForms.FiniteLength
import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ParabolicInductionFiniteLength
import Development.AutomorphicSpectrum.Proofs.GlobalProofs.BernsteinZelevinskyFiniteness
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsTemperedCoeff
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsEquivPiExteriorTensorBlockLevi
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.IsSemisimpleRepresentationTprodChevalley
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.JacquetModuleMapInjectiveOfInjective
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.JacquetWordMultiplicityAdditiveJordanHolder
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ParabolicInductionTensorProductHasFiniteLength
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SocleOfMultiplicityOne
import Development.WeilBound.CoreStatements.TemperedRepresentationTheory.MirabolicDerivatives.ColMatMulGlEmbMat
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.GeometricLemmaFiltration
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBijectiveOfIsSubquotient
import Development.WeilBound.CoreStatements.TemperedRepresentationTheory.ZelevinskyJacquet.ZelevinskyCosocles.LUnlinkedComm
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ConcatApplyEquiv
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SupercuspidalSupportUniqueGL
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.PiExteriorTensorIsSubquotientOfForall
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSubquotientOfEquiv
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.FinSigmaFinEquivSymmStrictMonoToLex
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RelativeJacquetPiExteriorTensorEquivNormalized
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PiExteriorTensorFlattenedIndexEquivNested
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LeviIrreducibleTensorDecomposition
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.JacquetMultiplicityCuspidalProductStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ClOfSelf
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContragredientProductIrreducibleStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspidalPairSubGeneric
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DualClassInvolutive
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.JacquetMultiplicityOrderEmbedding
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InterleavingTwoColourEmbedding
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ProductIrreducibleAppendEquiv
import CompanionTheory.RealGroups.GeneralUnitaryRepresentations.ArchimedeanJacquetSegments.Complementary
import Development.WeilBound.CoreStatements.TemperedRepresentationTheory.MirabolicDerivatives.LeibnizDerivatives.HighestDerivProd
import GroundTheory.AutomorphicForms.LocallyConstantCompact
import GroundTheory.AutomorphicForms.WhittakerGroups
import GroundTheory.AutomorphicForms.WhittakerCells
import GroundTheory.AutomorphicForms.ContragredientTranspose.GelfandKazhdan
import GroundTheory.AutomorphicForms.ContragredientTranspose.Character
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ProductTransposeInverseDualReverse
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportKeepsProductsCosocles
import CompanionTheory.RealGroups.GeneralUnitaryRepresentations.ArchimedeanJacquetSegments.ComplementaryOf
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeVecMemFixed
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsAntiJFrame
import CompanionTheory.RealGroups.GeneralUnitaryRepresentations.ArchimedeanJacquetSegments.ConjProd
import Development.WeilBound.CoreStatements.AutomorphicKernels.SquareIntegrableSegments.SegmentSubquotients.ConcatApplyEquiv
import Development.WeilBound.RepresentationTheoryGL.GenericUnitaryGL.ComplementarySeries.Complementary
import Development.WeilBound.RepresentationTheoryGL.GenericUnitaryGL.ComplementarySeries.ComplementaryOf
import Development.WeilBound.RepresentationTheoryGL.GenericUnitaryGL.ComplementarySeries.ConjProd
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HasSatakeGLOfIsSatVecGL
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSubquotientUnramPrinSeriesOfHasSupport
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SatakeParameterSphericalProductSpehQuotients

open NumberField IsDedekindDomain MeasureTheory Formalism.L2.Host GlobalTheory.CuspRep GlobalTheory.UnitaryBC GlobalTheory.DiscSpec GlobalTheory.ResW GlobalTheory.Published
open scoped TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section

namespace GlobalTheory.GenSph

open GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.LocGL ValuativeRel

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

variable (k) in

abbrev uc (a : ℂˣ) : IrrGL k := IrrGL.ofChar (unrChar k a) (isSmoothChar_of_isUnram (isUnram_unrChar k a))

theorem eq_first_of_isLSeg {Δ : Segment k} {y : IrrGL k} (h : IsLSeg Δ y.rep) (h1 : Δ.len = 1) : y = Δ.first := by
  have h2 := h.hasSupport
  obtain ⟨z, hz⟩ := Multiset.card_eq_one.1 ((Segment.card_ms Δ).trans h1)
  have h3 : z = Δ.first := by
    have hm : z ∈ Δ.ms := by rw [hz]; exact Multiset.mem_singleton_self z
    obtain ⟨a, ha, rfl⟩ := Segment.mem_carrier.1 (Segment.mem_ms.1 hm)
    obtain rfl : a = 0 := by omega
    simp
  rw [hz, h3] at h2
  exact GlobalTheory.CompanionTheory.CuspPairSub.eq_of_hasSupport_singleton h2

theorem isSpherical_prodIrr_uc {c N : ℕ} (β : Fin c → ℂˣ) (hd : ∑ i, (uc k (β i)).1 = N) :
    IsSpherical (prodIrr (fun i => uc k (β i)) hd) := by
  have hv : ∀ i, ∃ v : (uc k (β i)).2.rep.V, v ≠ 0 ∧
      ∀ g ∈ GlobalTheory.SplitWeil.KO k (Fin (uc k (β i)).1), (uc k (β i)).rep g v = v := fun i => by
    let r := IrrRep.det (Fin 1) (unrChar k (β i)) (isSmoothChar_of_isUnram (isUnram_unrChar k (β i)))
    let e := equivRep r
    let u : r.V := (1 : ℂ)
    have hu : u ≠ 0 := show (1 : ℂ) ≠ 0 from one_ne_zero
    refine ⟨e u, fun h0 => hu (e.toLinearEquiv.injective (h0.trans (map_zero _).symm)), fun g hg => ?_⟩
    have h1 := e.toIntertwiningMap.isIntertwining _ _ g u
    refine h1.symm.trans (congrArg e ?_)
    have h4 : unrChar k (β i) (Matrix.GeneralLinearGroup.det g) = 1 :=
      isUnram_unrChar k (β i) _ (GlobalTheory.StepData.valuation_det_of_mem_KO hg)
    show ((ofChar (detChar (Fin 1) (unrChar k (β i)))) g) (1 : ℂ) = (1 : ℂ)
    simp [ofChar, twist, detChar_apply]
    exact h4
  choose v hv0 hvK using hv
  obtain ⟨f, hf, hf1⟩ := GlobalTheory.SatInd.exists_fixed_apply_one (stdBlocks (fun i => (uc k (β i)).1) hd)
    (ρ := piTensor fun i => (uc k (β i)).rep) (x := PiTensorProduct.tprod ℂ v) fun g hg => by
      rw [piTensor_tprod]
      congr 1
      funext a
      exact hvK a _ (hg a)
  refine (Submodule.ne_bot_iff _).2 ⟨f, hf, fun h0 => ?_⟩
  have h5 : PiTensorProduct.tprod ℂ v = 0 := by rw [← hf1, h0]; rfl
  have hl : ∀ i, ∃ l : Module.Dual ℂ (uc k (β i)).2.rep.V, l (v i) ≠ 0 := fun i => by
    by_contra! hn
    exact hv0 i ((Module.forall_dual_apply_eq_zero_iff ℂ (v i)).1 hn)
  choose l hl using hl
  let ev : (⨂[ℂ] i, (uc k (β i)).2.rep.V) →ₗ[ℂ] ℂ :=
    PiTensorProduct.lift ((MultilinearMap.mkPiAlgebra ℂ (Fin c) ℂ).compLinearMap l)
  have h6 : ev (PiTensorProduct.tprod ℂ v) = ∏ i, l i (v i) := by simp [ev]
  rw [h5, map_zero] at h6
  exact Finset.prod_ne_zero_iff.2 (fun i _ => hl i) h6.symm

theorem isSubquotient_prodIrr_uc {N : ℕ} (α : Fin N → ℂˣ) (hd : ∑ i, (uc k (α i)).1 = N) :
    IsSubquotient (prodIrr (fun i => uc k (α i)) hd) (prinSeries fun i => unrChar k (α i)) := by
  let φ := multiProdEquiv (stdBlocks (fun i => (uc k (α i)).1) hd) fun a =>
    (equivRep (IrrRep.det (Fin 1) (unrChar k (α a)) (isSmoothChar_of_isUnram (isUnram_unrChar k (α a))))).symm
  exact (IsSubquotient.of_injective φ.toIntertwiningMap φ.toLinearEquiv.injective).trans
    (GlobalTheory.PermPrin.isSubquotient_multiProd_prinSeries _ _)

end GlobalTheory.GenSph

namespace GlobalTheory.GenSph
end GlobalTheory.GenSph

end
