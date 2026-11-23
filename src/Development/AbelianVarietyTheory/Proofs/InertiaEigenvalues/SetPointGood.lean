import Mathlib
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.BoundAtTwoAndThreeForFamily
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NotDvdCondN
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SpanRepMatrixEqTopOfAbsIrreducible
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CyclotomicCharacterPadicBasicProperties
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteQuotientPow
import Development.AbelianVarietyTheory.BlockTheory.TorsionBlocks.SelmerRankVanishing
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixingSubgroupEquivBicontinuous
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.PeriodDataDeRhamAdmissible
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FontaineFormalismTensorEquiv
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsFinExt
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BdRFiltrationLaws
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ResEqIff
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsPowNorm
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.BoundedOnFramesIffIntegralOnFrames
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LeKurOfNorm
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DirectSumDeRhamCrystallineJumpsAdd
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CycZpowCrysDRJump
import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.DualExactSequence
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ActQdRPeriodTEqCyclotomicBottom
import Formalism.LocalToGlobal.CharacterGerms.RestNonneg
import Development.AutomorphicArithmetic.OrbitLabellings.RowDefs
import Formalism.LocalToGlobal.Divisibility.Numbers
import Formalism.LocalToGlobal.ProjectiveLattices.ChartDirectionsIntegral
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.LieEig
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.UniversalCharts.ChartLaw
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CyclotomicPrimePowAutomorphismInertialAtPrime
import Formalism.PeriodIntegrals.SSAscent
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SemisimpleTraceForm.TraceNilStep
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SemisimpleTraceForm.IsSemisimpleOfIsSSRep
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.LocalGaloisRepDecompositionInduced
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.CommuteIsNilpotentOfUnipotent
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.CharpolyWeilDelignePotSemistableEnlargeCoefficie
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.DpstRankLeDimension
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JumpIffMultNeZero
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsNeZeroMemJumpTypeTwo
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ResBound
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoeAlgebraMapOC
import Development.AbelianVarietyTheory.Definitions.QuasicoherentCohomology.LengthCommensurableMapIffOfInjective
import Formalism.SharpRestriction.LevelLetterCocycles.CommutingEndomorphismPreservesInvariants
import Formalism.CharacterColumnKernels.IdempotentNormalForms.LengthKerOfDetEqZero
import Formalism.CharacterColumnKernels.StatementPsi
import Formalism.CharacterColumnKernels.StatementGC
import Formalism.CharacterColumnKernels.IdempotentNormalForms.GlobalConcreteOf
import Formalism.CharacterColumnKernels.IdempotentNormalForms.LengthEpsImgEqAdd
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoefficientRingIntegersCompactAdicPropertiesStatement
import Formalism.WachLatticeTwists.LatticeDualFibres.Statement
import Formalism.WachLatticeTwists.LatticeDualFibres.FibreDualStable
import Formalism.WeaklyAdmissibleFiltrations.CocyclesFunctorial
import Formalism.WeaklyAdmissibleFiltrations.CrystallineStableLifts.ExistsPeriodRingDataHolds
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeCocyclesFinitelyGeneratedModPrime
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemOfForallAnnihilatorAnnihilatorFieldModInteger
import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.TransportA
import Formalism.WachLatticeTwists.CharacterSplitJumps.Statement
import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.LFunctionPositiveConductorFourEight
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FixedCoefficientFieldInComplex
import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.ModGDefs
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.SummableLatticeExpNegPiMulNormSqDiv

open NumberField IsDedekindDomain Formalism Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions Formalism.MainNotions.N Formalism.WeaklyAdmissibleFiltrations GlobalTheory.NLink

namespace GlobalTheory.SetPtOff

theorem litBurnside_all (D : D7) : LitBurnside (G D.host.E D.nd.Om) := by
  intro l _ a ρ h
  rcases Nat.eq_zero_or_pos a with ha | ha
  · subst ha
    exact Subsingleton.elim _ _
  · apply GlobalTheory.BurnsideField.span_mat_eq_top_of_isIrrSub ρ
    refine ⟨?_, ?_, ?_⟩
    · intro hb
      have : (Pi.single (⟨0, ha⟩ : Fin a) (1 : CyclotomicNorms.Fbar l) : Fin a → CyclotomicNorms.Fbar l) ∈ (⊤ : Submodule (CyclotomicNorms.Fbar l) (Fin a → CyclotomicNorms.Fbar l)) := trivial
      rw [hb, Submodule.mem_bot] at this
      have h1 := congrFun this ⟨0, ha⟩
      simp at h1
    · intro g x _; trivial
    · intro W' _ hW'
      exact h W' (fun g _ x hx => hW' g x hx)

end GlobalTheory.SetPtOff
