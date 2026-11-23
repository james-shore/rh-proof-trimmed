import Mathlib
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.BorelParam
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.BlockVolumeProdStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RelIndexConjParahoric
import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.RealCyclotomicSubfield
import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.FrobMulInertia
import Formalism.FrobeniusOrbits.DiscrMaximalRealCyclotomic
import Formalism.FockGram.StatementLat
import Formalism.AlphaUniqueness.Statement
import Formalism.LatticeTheta.Statement
import Formalism.HermitianLattices.DefsCS
import Formalism.GelfandTransference.EnergyIdentity
import Formalism.CorankShare.StatementFR
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.WeylLeDual
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.DualWeylDominanceOf
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LClosedeqLemmas
import Formalism.GradedWeylDivisibility.FinalB
import Formalism.SubspaceCounting.Statement
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ComplexifiedDerivativeCommutator
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ModularCharacterEqOneOnExpHermitian
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.TrPowSumFilterZero
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.CharId
import Formalism.RealPlaceAnalysis.QuotientSettingHolds
import Formalism.SharpRestriction.ParamsHeightRankConstant
import Formalism.SharpRestriction.GlobalSchurBounds.TaylorLogMetric
import Formalism.CyclotomicNorms.NonsquarefreeBounds.NonsquarefreeMonicBoundHolds
import Formalism.DoubleCosetMeasures.StatementV
import Formalism.LocalToGlobal.ProjectiveLattices.ExistsOfValILeOne
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocallyConstantAddChar

open MeasureTheory ValuativeRel Matrix GlobalTheory.PRep GlobalTheory.SplitWeil GlobalTheory.SmGL GlobalTheory.Doubling GlobalTheory.GLDoubling GlobalTheory.IndefiniteRowSideFullHecke.VolumeFlatSection GlobalTheory.ZonalCellDecomposition GlobalTheory.SatakeBound

noncomputable section
namespace GlobalTheory.ParIdx

theorem relIndex_parahoric_conj_mtor : ∀ (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] (ϖ : kˣ),
    valuation k (ϖ : k) = uniformizer k →
    ∀ (A D : Type) [Fintype A] [DecidableEq A] [Fintype D] [DecidableEq D] (e : D → ℤ),
    (((parahoric k A D).map (MulAut.conj (mtor (A := A) ϖ e)).toMonoidHom).relIndex (parahoric k A D) : ℝ) =
      (resCard k : ℝ) ^ ((Fintype.card A : ℤ) * sumAbs e) *
        (((KO k D).map (MulAut.conj (torusElt k D ϖ e)).toMonoidHom).relIndex (KO k D) : ℝ) := by
  first
  | (run_tac Lean.Elab.Tactic.liftMetaTactic (fun g => do pure [← g.revertAll])); exact @_root_.GlobalTheory.ParahoricConjugateOpen.relIndex_conj_parahoric
  | (run_tac Lean.Elab.Tactic.liftMetaTactic (fun g => do pure [← g.revertAll])); exact _root_.GlobalTheory.ParahoricConjugateOpen.relIndex_conj_parahoric
  | exact @_root_.GlobalTheory.ParahoricConjugateOpen.relIndex_conj_parahoric
  | exact _root_.GlobalTheory.ParahoricConjugateOpen.relIndex_conj_parahoric
  | (apply _root_.GlobalTheory.ParahoricConjugateOpen.relIndex_conj_parahoric <;> assumption)
  | (intros; apply _root_.GlobalTheory.ParahoricConjugateOpen.relIndex_conj_parahoric <;> assumption)
  | (intros; apply @_root_.GlobalTheory.ParahoricConjugateOpen.relIndex_conj_parahoric <;> first | assumption | infer_instance)
  | (intros; exact _root_.GlobalTheory.ParahoricConjugateOpen.relIndex_conj_parahoric ..)

end GlobalTheory.ParIdx
