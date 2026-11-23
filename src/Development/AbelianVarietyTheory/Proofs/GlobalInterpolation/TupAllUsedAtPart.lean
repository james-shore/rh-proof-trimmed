import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.AdmissibleDiscreteSeriesOfHasParam
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.HarishChandraModulesOn
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsNormLeHeightPow
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasDRepIffHasDerivAt
import Formalism.UnipotentAdelicQuotients.SiegelWeilUnitaryConvergent
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder
import Formalism.SharpRestriction.GlobalSchurBounds.MassRatioUnfoldedOfTheoremTwo
import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.GeometricWeakTiesOfStrong
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IntertwinersAndLiftsExistAtChoicesStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.GeoAct
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OneFormMapRowThreeLevelOfCharacterisationStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LatticeFamilyAdoptionSecond
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PassIn3OfRows
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.EqZeroOfSEEofTT
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsRowPlacementFiniteElementMatchesLevelsStatement

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.RT GlobalTheory.EX GlobalTheory.EX.OB GlobalTheory.Mem GlobalTheory.Mem.Top GlobalTheory.Mem.Top.Bl GlobalTheory.Fc

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.Fc.StageZeroRow

theorem evW_of_atAll' {Bd : BdT} {q : BdP Bd} {𝒜 : FamClass} {σ : RawSel Bd 𝒜} (h : AtAll q 𝒜 σ) : Ind.EvW q 𝒜 σ :=
  Closed.of_all fun Fm _ hc => Ind.ev_of_atAll h Fm (w3_a hc)

end GlobalTheory.Fc.StageZeroRow
