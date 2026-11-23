import Mathlib
import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.CountsIrreducibilityConstants
import Development.AbelianVarietyTheory.Definitions.Divisors.MapBaseTiedSel
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ClassSumPin
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsNormLeHeightPow
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasDRepIffHasDerivAt
import Development.AbelianVarietyTheory.Definitions.Divisors.CovolXOfCovol
import Development.AbelianVarietyTheory.Statements.PlaceShiftStatements.SingleIndexPlacesAreTwisted
import Development.AbelianVarietyTheory.Definitions.Divisors.SlopeTestRemainingChoicesAlt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PassIn3OfRows
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.EqZeroOfSEEofTT
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsRowPlacementFiniteElementMatchesLevelsStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IntertwinersAndLiftsExistAtChoicesStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.GeoAct
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OneFormMapRowThreeLevelOfCharacterisationStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisationEveryEmbeddingThirdKind
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LatticeFamilyAdoptionSecond
import Formalism.LocalToGlobal.Divisibility.TupUsed

open Formalism.BasicNotions Formalism.MainNotions GlobalTheory.EX GlobalTheory.EX.OB GlobalTheory.Mem.Top GlobalTheory.Fc

namespace GlobalTheory.Fc.FourBoundsAtBundles

end GlobalTheory.Fc.FourBoundsAtBundles

namespace GlobalTheory.Fc.FourBoundsAtBundles

open GlobalTheory.Fc.R1

theorem evW_of_atAll {Bd : BdT} {q : BdP Bd} {𝒜 : FamClass} {σ : RawSel Bd 𝒜} (h : AtAll q 𝒜 σ) : Ind.EvW q 𝒜 σ :=
  Closed.of_all fun Fm _ hc => Ind.ev_of_atAll h Fm (w3_a hc)

end GlobalTheory.Fc.FourBoundsAtBundles
