import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.BoundAtTwoAndThreeForFamily
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NotDvdCondN
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CyclotomicCharacterPadicBasicProperties
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteQuotientPow
import Development.AbelianVarietyTheory.BlockTheory.TorsionBlocks.SelmerRankVanishing
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
import Formalism.CharacterColumnKernels.StatementN
import Formalism.CharacterColumnKernels.StatementMF
import Formalism.CharacterColumnKernels.StatementGC
import Formalism.CharacterColumnKernels.IdempotentNormalForms.GlobalConcreteOf
import Formalism.CharacterColumnKernels.IdempotentNormalForms.LengthEpsImgEqAdd
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.SummableLatticeExpNegPiMulNormSqDiv
import Formalism.AdmissibleDesigns.AdmG5OfAdm51AdmG5

open NumberField IsDedekindDomain Formalism Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions Formalism.MainNotions.N Formalism.WeaklyAdmissibleFiltrations GlobalTheory.NLink

noncomputable section

namespace GlobalTheory.NLinkTameShape

theorem splitL_diagonal {K : Type} [Field K] (a b n : ℕ) (hn : n = a + b) (c : K) (y : Fin n → K) :
    Formalism.MainNotions.N.K.SplitLatticeDiagonal.splitL a b n hn ((Matrix.diagonal fun k : Fin n => if (k : ℕ) < a then 1 else c).mulVec y) =
      ((Formalism.MainNotions.N.K.SplitLatticeDiagonal.splitL a b n hn y).1, c • (Formalism.MainNotions.N.K.SplitLatticeDiagonal.splitL a b n hn y).2) := by
  ext j
  · simp [Formalism.MainNotions.N.K.SplitLatticeDiagonal.splitL, Matrix.mulVec_diagonal]
  · simp [Formalism.MainNotions.N.K.SplitLatticeDiagonal.splitL, Matrix.mulVec_diagonal]

theorem rhoBarTw_eq (D : D7) (i : D.nd.Loc) (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i)
    (a : ℤ) : rhoBarTw D.nd ρ π a =
      twistRep (glRep (redRep D.nd i (ρ π))) (Formalism.MainNotions.SumRepresentations.At.chiEpsBar D.nd i a) := by
  have hz : ∀ (u : (D.nd.O i)ˣ) (n : ℤ), IsLocalRing.residue (D.nd.O i) ((u ^ n : (D.nd.O i)ˣ) : D.nd.O i) =
      (IsLocalRing.residue (D.nd.O i) u) ^ n := by
    intro u n
    have := congrArg Units.val (map_zpow (Units.map (IsLocalRing.residue (D.nd.O i)).toMonoidHom) u n)
    rw [Units.val_zpow_eq_zpow_val] at this
    simpa only [Units.coe_map, RingHom.toMonoidHom_eq_coe, MonoidHom.coe_coe] using this
  have hs : ∀ (c : D.nd.O i) (M : Matrix (Fin D.R.r) (Fin D.R.r) (D.nd.O i)),
      (c • M).map (IsLocalRing.residue (D.nd.O i)) =
        IsLocalRing.residue (D.nd.O i) c • M.map (IsLocalRing.residue (D.nd.O i)) := fun c M => by
    ext; simp
  refine MonoidHom.ext fun g => LinearMap.ext fun u => funext fun k => ?_
  simp [rhoBarTw, twistRep, glRep, matRep, mapM, twistM, redRep, mapRep, Formalism.MainNotions.SumRepresentations.At.chiEpsBar, rhoO]
  rw [hs, Matrix.smul_mulVec, Pi.smul_apply, smul_eq_mul, map_mul, hz, map_units_inv]

end GlobalTheory.NLinkTameShape

end
