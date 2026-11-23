import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.GoodPartHasComplexCoordinates
import Formalism.LocalToGlobal.LatticeGeometry.FormsK
import Formalism.LocalToGlobal.IndefiniteReal.FockTheta.UnitBracket
import Formalism.LocalToGlobal.IndefiniteForms.PairingConditionOfInverseMatrixIdentity
import Formalism.HyperbolicPlaceProducts.Statement
import Formalism.HyperbolicPlaceProducts.SecondLevelArithmeticNorm
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.ColDict
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RowDict
import Formalism.LocalToGlobal.UnitaryNorms.CharTransport
import Formalism.LocalToGlobal.IndefiniteReal.EvalTieTOne
import Formalism.LocalToGlobal.SiegelLatticeTheory.FundamentalEquivalence.FundamentalContinuity.AdelicIsomorphismStatement
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.ContinuousOfHAInf
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.LinearIndependentOneBeta
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.SettingBlocks
import Formalism.SharpRestriction.GlobalSchurBounds.QuadraticLogDerivCongr

open Formalism.BasicNotions Formalism.L2.Indef Formalism.L2.DIV Formalism.IndefR.Cx Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.AutomorphicEvaluation Formalism.IndefR.Lev Formalism.L2.Theta NumberField MeasureTheory GlobalTheory.Mem.SJ Formalism.L2.SG.HidaSetting Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.RowDict Formalism.L2.SG.ColDict
open scoped InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.Mem.SJ.KernelJoin

theorem heq_of_reindex {K W Mem : Type} [Field K] (a : Mem → ℕ) {V : W → Type} [∀ u, AddCommGroup (V u)]
    [∀ u, Module K (V u)] {Z : Mem → Type} {Y : W → Type} (b : ∀ x, Fin (a x) → Z x) (g : ∀ u, V u → Y u)
    (w w' : W → Mem) (ν : ∀ u, (Fin (a (w u)) → K) ≃ₗ[K] V u) (ν' : ∀ u, (Fin (a (w' u)) → K) ≃ₗ[K] V u)
    (hw : w = w') (hν : HEq ν ν') (h : ∀ u i, HEq (b (w' u) i) (g u (ν' u (Pi.single i 1)))) :
    ∀ u i, HEq (b (w u) i) (g u (ν u (Pi.single i 1))) := by
  subst hw
  cases hν
  exact h

theorem smul_apply_eq_of_eq {A B : Type} [AddCommGroup B] [Module ℂ B] (f : A → B) {a a' : A} (h : a = a')
    (k κ : ℂ) {b : B} (hb : f a' = κ • b) : k • f a = (k * κ) • b := by
  rw [h, hb, mul_smul]

end GlobalTheory.Mem.SJ.KernelJoin
