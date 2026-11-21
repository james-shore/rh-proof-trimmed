import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.GeometricLemmaFiltration
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.HasFiniteLengthOfIsIrreducible
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.BernsteinUnitaryProductIrreducible
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivOfRangeEq
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CellFunctorTwoBlockEquiv
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CellFunctorScalarUniformizer

open GlobalTheory.PRep GlobalTheory.SmGL Matrix

noncomputable section
namespace GlobalTheory.CellRS

end GlobalTheory.CellRS

namespace GlobalTheory.CellRS

theorem card_two_false (a b : Type) [Fintype a] [Fintype b] : Fintype.card (Two a b false) = Fintype.card a := rfl
theorem card_two_true (a b : Type) [Fintype a] [Fintype b] : Fintype.card (Two a b true) = Fintype.card b := rfl

end GlobalTheory.CellRS
