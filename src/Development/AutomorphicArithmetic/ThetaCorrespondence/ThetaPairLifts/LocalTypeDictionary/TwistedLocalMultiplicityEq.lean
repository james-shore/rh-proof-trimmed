import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.DiscreteSpectrumResidualClassification
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.AdmissibleCoefficientsAnalytic
import Development.AbelianVarietyTheory.PublishedTheorems.DiscreteSeriesUnitary₂.DiscreteSeriesClassificationIff
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.GreenCuspidalIff
import Formalism.LocalToGlobal.IndefiniteReal.BaseLiftsPackageOfPrimitiveLinks
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.TwistPlacesOffPrimeQZero
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HoldsUIff
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsBare
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CopyLIntegral
import Development.AbelianVarietyTheory.Definitions.Divisors.Hypotheses2
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NonzeroPlacesOverPrimesLifts
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.StandardLatticesDiagonal
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LargeCoefficientFieldContainsTwistValuesStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.GoodTypesOfTypesTrue
import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.CuspidalNoRadicalFixed
import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ConstantTermVanishing
import Development.AbelianVarietyTheory.BlockTheory.TorsionBlocks.IwahoriSubgroup
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RegularSemisimpleRationalClassKernelIntegralsStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsRegularSemisimpleOfTestFunctionNeZeroStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralHasSumEqIntegralIndicatorHasSumStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasSumConjClassesRegroupWithInvariantSelectionStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraceInputsImplyCuspidalTrace
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspidalSpectrumFinitenessOfDecayHarishChandraStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeometricExpansionOfParts
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HyperbolicTermsVanish
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRegularSemisimpleTorusEllipticElementRealPlaceStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CentralizerTorusEllipticElementRealPlaceStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompactRealPlaceTorusClassesSignVectorsStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinsumDiscreteSeriesCharacterEqWeylCharacterStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraceSeparationOfIwahoriTraceStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PseudoCoefficientSeparation
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StableOrbitalIntegralPreservedLatticeIsometryStatement
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.AnalyticVectors.PolarJmConjTranspose
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.GlRelationsOnKFiniteVectors
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FiniteDimensionalInvariantSubspace
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.NonFieldTypeVanishing
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LengthFilterFinRange
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IwahoriEigenvalues
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IwahoriTraceOfBorelCasselman
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ParabolicAndConstantTerm
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.CuspidalOperatorsVanishingRadicalIntegralsUnitarStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.EllipticPart
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspidalTraceMultiplicityGiven
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ScalarHypothesesOfTopRows
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.EqualMultiplicitiesRowTestOfSameGroupTransferStatement
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.TwistedMultiplicityOne

section
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH NumberField IsDedekindDomain Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.IndefR Formalism.IndefR.Links
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Mem GlobalTheory.Mem.Top GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.Col2 GlobalTheory.Mem.R3
noncomputable section
namespace GlobalTheory.Mem.R3.Rw.MultAt
open GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.R3.Rw
set_option maxHeartbeats 2000000 in
theorem twisted_local_multiplicity_eq : GlobalTheory.Published.HarishChandraAnalyticity → GlobalTheory.Published.DiscreteSeriesClassification → GlobalTheory.Published.CuspRapidDecay →
    GlobalTheory.Published.HarishChandraFinite → GlobalTheory.Published.CuspTraceClass → GlobalTheory.Published.DixmierMalliavinFactorisation →
    GlobalTheory.Published.FlathFactorisation → GlobalTheory.Published.ZelevinskyPolynomialRing →
    GlobalTheory.Published.GeometricLemma → GlobalTheory.Published.GreenCuspidal →
    AtDat fun _ _ _ _ _ _ _ _ z => GlobalTheory.CuspMult.MultEq z.R.toRealDat := by
  intro h1 h2 h3 h4 h5 h6 h7 h12 h13 hG
  have e1 := (evG_of_ev LedRec.ev_exists_sizeData).inter (evG_of_ev GlobalTheory.Mem.HostFrames.hostHyp_frames_ev)
  have s1 : Step KPx (fun _ _ _ _ => True) _ := Step.of_evLgG (evLgG_of_evLg GlobalTheory.T.valsIn_and_fam3_ok_of_coefficientField)
  refine s1.trans (Step.of_evG (e1.imp ?_))
  rintro K - - - - ⟨hLed, hHost⟩ B f T hO - - hOk w hw Z hX Wt z g1 g2 hEx g4
  obtain ⟨Z', g1', hη, hA⟩ := LedRec.exists_bare hG (B := B) (C := w.C) Z f (6 * K.s.x ^ (-K.C.P.CF))
  obtain ⟨L, hsc, hsz, hpar, hn⟩ := hLed (w.st Z') hO hη hA
  obtain ⟨hhost, -⟩ := hHost (w.st Z') hO
  have s : SameGrp Z Z' := LedRec.sameGrp g1 g1'
  refine (GlobalTheory.T.equalMultiplicities_rowTest_of_sameGroupTransfer B w.C Z Z' w.px w.I hX T Wt s z).1 ?_
  have hEx' := DatCopy.copy_exAt Z' s hEx
  generalize DatCopy.copy Z' s z = y at hEx' ⊢
  have hch := y.pins.char
  have hT : TypesTrue (w.st Z').toD7.ntypes y.R.C.P y.R.C.W := by
    rw [y.lev.C, w.C_eq]
    exact g1'
  exact _root_.GlobalTheory.T.twisted_multiplicity_one h1 h2 h3 h4 h5 h6 h7 h12 h13 hG y.R y.F
    ((hOk w.px w.I hX w.ok w.C_eq w.xi_range).2 _ y.Xg y.tr y.good.irr) hch hEx' hhost ⟨L, hpar⟩ B.ccK_top
    y.pins.keep.guard (GlobalTheory.LiftRows.Inh.goodTypes_of_typesTrue hch.base.lev hT)
end GlobalTheory.Mem.R3.Rw.MultAt
end
end
