import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisGeometry₂.HoweUnram
import Development.AbelianVarietyTheory.PublishedTheorems.SiegelWeil₂.SiegelWeilUnitaryConvergent
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasDRepIffHasDerivAt
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.EisRegularAtOfEisPoleLE
import Development.AbelianVarietyTheory.Definitions.Divisors.FormalDegreeUpperC
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.TwistedThetaLiftInnerProductFormulaOfPublishedStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicLiftMemCuspFormMultiplicitySpaceStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FormalDegreeRealPlaceUpperBoundOfHarishChandraStatement
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsKTranslate
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HasDerivAtLogCosh
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DerivEqZeroOfEven
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FockVectorMatrixCoefficientFormulaStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ThetaLevelIndexMulSchwartzNormFormulaStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FiniteZetaIntegralThetaLiftEqPartialLValueStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockFormMinorProductEqProdHookProductsStatement

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.DivisionValues Formalism.L2.Pj Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.FWT
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.IndefiniteRowSideFullHecke.TwistedLevelValues GlobalTheory.AdelicScalar GlobalTheory.LiftRows GlobalTheory.LowRow

namespace GlobalTheory.LowRowAdel

theorem deltaNorm_all (D : D7) : DeltaNorm D := by
  intro i σ
  have h := GlobalTheory.T.fockForm_minorProduct_eq_prod_hookProducts D (Wc D i).rank (Vc D i).rank (pW D i) (qW D i) (aPlAt D i σ) (aMiAt D i σ)
    (fun ρ => (GlobalTheory.T.liftRows_antitone_signature_rank D i σ ρ).2.2.1.le)
    (fun ρ => by
      obtain ⟨-, -, hpq, hWV⟩ := GlobalTheory.T.liftRows_antitone_signature_rank D i σ ρ
      exact ⟨by omega, by omega⟩)
    (fun ρ => ⟨(GlobalTheory.T.liftRows_antitone_signature_rank D i σ ρ).1, (GlobalTheory.T.liftRows_antitone_signature_rank D i σ ρ).2.1⟩)
  simpa [deltaAtEmb] using h

end GlobalTheory.LowRowAdel
