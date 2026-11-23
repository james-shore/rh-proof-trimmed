import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.Brauer
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.LanglandsClassification
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.CuspDiscreteDecompositionOfTraceClass
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.ExistsFactorisationCuspidal
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.PseudoCoefficientUpqTrivial
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.DiscreteSeriesCharacter
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.LabesseWaldspurger
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.RadfordShufflePolynomialHolds
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.WeilSiegelFormulaUnitary
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.RegularisedSiegelWeilFirstTerm
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.EisRegularAtOfEisPoleLE
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.PairwiseDisjointCell
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.RhoMemOfMkEq
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ChebotarevDegreeOne
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SumRangeEqRoots
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsEquivOfIsSubquotient
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.AbsPowValEqZpow
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.DepthZeroJacquetInjectiveOfAdmissible
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.RegularAlgebraicPurityOfClozel
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.CharpolyWeilDelignePotSemistableEnlargeCoefficie
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FiniteDimensionalAdjoinRange
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CompletionDegrees.IsEquivAdicAbvNormAbv
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.UnitarisableOfSquareIntegrable
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.CuspContragredientIsCMConjTwistOfPairedInvTranspStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIneOfUnit
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExtensionUnramifiedAtOnePlaceStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalArtinInertiaIsUnitAt
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalLanglandsOfHyp
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitarisableSegmentTwistPrecedesAddOneLe
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsIrreducibleSecondFactorOfIrreducibleProduct
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.LocalTypeDictionary.DiscreteSpectrumResidualClassification
import Development.WeilBound.CoreStatements.AutomorphicKernels.UnitaryDualGL.GenericUnitaryDual.GenericUnitaryDualGL
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.LocalRepresentationTheoryHypotheses
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.PublishedInputsThirdLayer
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.LocalLanglandsOfHyp
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.PublishedInputsCombined
import Development.DiscreteGroups.GlobalIrreducibility.ContinuousResI
import Development.DiscreteGroups.GlobalIrreducibility.DzGenDefs
import Development.DiscreteGroups.GlobalIrreducibility.DzGenVec
import Development.DiscreteGroups.GlobalIrreducibility.DzRedInt
import Development.DiscreteGroups.GlobalIrreducibility.MulMemBall
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitaryFiniteAdelesSplitPlaceDecomposition
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsIntegralIdempotentSplitPlaceCmFiniteAdeles
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeDoubleCosetOperatorsStandardFacts
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsReductionActionChosenPlaces
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.AbsNormCoprimeOfSup
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsFrameRescaleConjReductionsDiagonal
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.DoubleCosetSetoidRelIffMem
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.CmFieldSplitPlaceEqOfPlaceEq

set_option synthInstance.maxHeartbeats 200000

section
section
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.L2 Formalism.L2.Host GlobalTheory.Mem GlobalTheory.Mem.Top GlobalTheory.Mem.Top.Bl GlobalTheory.HeightCounting GlobalTheory.HeightCounting.Up GlobalTheory.Mem.LiteralAutomorphy
namespace GlobalTheory.Mem.LiteralAutomorphy
theorem localLanglandsGL_and_purity_at_member_alt : _root_.GlobalTheory.Mem.LiteralAutomorphy.LocalRepresentationTheoryHypothesesAlt → _root_.GlobalTheory.Mem.LiteralAutomorphy.GlobalAutomorphicGaloisHypotheses' → _root_.UpperTheory.Zero.LLC.RecTExists ∧ _root_.GlobalTheory.HeightCounting.Up.PublishedInputsThirdLayerAlt := by
  intro L A
  have hL : _root_.UpperTheory.Zero.LLC.RecTExists :=
    _root_.GlobalTheory.T.recTExists_of_published_inputs L.llc L.conv L.dzi L.brauer L.chev A.art L.exh L.multi L.cos L.zel L.geo L.bz
  refine ⟨hL, ?_⟩
  have hG : GlobalTheory.GLq.Green := GlobalTheory.GreenBridge.green_of_regular L.green
  exact
    { what₂ := _root_.GlobalTheory.T.published_inputs_combined_alt_alt L.bz L.bern L.geo L.disj L.mp A.js A.fin L.temp L.seg A.gk A.gal A.car
        A.pur A.coh A.art A.chA A.chW A.berger GlobalTheory.Published.chebotarevDegreeOne' hL
      decay := A.decay
      hc := A.hc
      greenC := hG
      green := hG
      zel := L.zel
      ray := A.ray
      rayF := A.ray
      rayA := GlobalTheory.Published.GlobalArtinReciprocity.rayCharacterArtin A.art
      bc := _root_.UpperTheory.BaseChangeIdentities.bridge A.bc L.bern
      gen := _root_.PositivityTheory.Gud.generic_unitary_dual_GL trivial L.sq L.gen L.multi L.cos
      std := L.cos
      cheb := GlobalTheory.Published.cheb_holds
      howe := GlobalTheory.Hk3.howeUnram_holds }
end GlobalTheory.Mem.LiteralAutomorphy
end
end
