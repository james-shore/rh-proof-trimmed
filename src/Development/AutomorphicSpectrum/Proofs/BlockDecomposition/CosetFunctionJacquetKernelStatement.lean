import Mathlib
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetFunctionJacquetKernel
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

open Matrix GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.BZMir GlobalTheory.BZMir.Leib GlobalTheory.RgGu.Leib GlobalTheory.CompanionTheory.Rodier GlobalTheory.CompanionTheory.BZPsiPG GlobalTheory.CompanionTheory.BZPsiPG.FibKer
open scoped TensorProduct

set_option maxHeartbeats 1000000 in
theorem _root_.GlobalTheory.T.coset_function_jacquet_kernel : ∀ (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] (i t : ℕ) {Z : Type} [AddCommGroup Z] [Module ℂ Z] (ρ₀ : Representation ℂ (Multiplicative (Fin i → k)) Z) (c : k) (hc : c ≠ 0) (z : Z), z ∈ twKer ρ₀ ⊤ 1 → cosetFn t hc 0 z ∈ twKer (fibAct t ρ₀) ⊤ 1 := by
  first | exact @GlobalTheory.CompanionTheory.BZPsiPG.FibKer.CosetKer.cosetFn_mem_twKer | exact GlobalTheory.CompanionTheory.BZPsiPG.FibKer.CosetKer.cosetFn_mem_twKer | (intros; apply GlobalTheory.CompanionTheory.BZPsiPG.FibKer.CosetKer.cosetFn_mem_twKer <;> assumption)
