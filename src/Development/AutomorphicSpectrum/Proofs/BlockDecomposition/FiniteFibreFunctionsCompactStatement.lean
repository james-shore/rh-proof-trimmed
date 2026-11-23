import Mathlib
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteFibreFunctionsCompact
import Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
import Development.AbelianVarietyTheory.Definitions.Divisors.AdelicAdmissibleSmul
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.SumSquaresNeThreeThreeAdic
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousAtPlace
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.AddCharConductorAndHaarIntegersExist
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FourierTransformInversionLocalFieldPi
import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.FourierJacobiAverage
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsWeakIntegralOfIsLocallyConstantOfIsCompact
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ContrFactor
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StoneVonNeumannSchwartzBruhatAnyCharacter
import GroundTheory.AutomorphicForms.MeasuresModulus
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsCompactCosetSet

open Matrix GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.BZMir GlobalTheory.BZMir.Leib GlobalTheory.RgGu.Leib GlobalTheory.CompanionTheory.Rodier GlobalTheory.CompanionTheory.BZPsiPG GlobalTheory.CompanionTheory.BZPsiPG.FibKer
open scoped TensorProduct

set_option maxHeartbeats 1000000 in
theorem _root_.GlobalTheory.T.finite_fibre_functions_compact : ∀ (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] (i t : ℕ) {V W : Type} [AddCommGroup V] [Module ℂ V] [AddCommGroup W] [Module ℂ W] (τ : Representation ℂ (Mir k i) V) (σ : Representation ℂ (GL (Fin t) k) W) (f : cIndSpace (HPG k i t) (hRep τ σ)), ((fun κ : GL (Fin (i + t)) k => fibV f κ) '' (GlobalTheory.SplitWeil.KO k (Fin (i + t)) : Set (GL (Fin (i + t)) k))).Finite := by
  first | exact @GlobalTheory.CompanionTheory.BZPsiPG.FibFin.finite_fibV_image | exact GlobalTheory.CompanionTheory.BZPsiPG.FibFin.finite_fibV_image | (intros; apply GlobalTheory.CompanionTheory.BZPsiPG.FibFin.finite_fibV_image <;> assumption)
