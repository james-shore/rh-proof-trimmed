import Mathlib
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.StepJumpDirect
import Formalism.LocalRingCardinality.DataTies
import Formalism.SharpRestriction.LevelLetterCocycles.JointConditionsZpowers.ResidualIrreducibleRankR
import Formalism.LocalToGlobal.UnitaryNorms.IsUnitaryNormOf
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AcrisTorsionFreeComplete
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BdRPlusIsDomainBdRIsFieldStatement
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NormLeOneOfMemOL
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ResidualAbsIrredGoodPointOfResidualIrred
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SpanRepMatrixEqTopOfAbsIrreducible

open Formalism Formalism.MainNotions Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.N Formalism.WeaklyAdmissibleFiltrations NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Module GlobalTheory.Pass Formalism.MainNotions.PairedCharacterCondition Formalism.MainNotions.PairedCharacterCondition.CongruenceModules

theorem GlobalTheory.Pass.residualRep_spans_matrixAlgebra_of_goodPoint : ∀ D : D7, ResidualIrreducibleRankR D → ResidualAbsIrreducible (D := D) := by
  intro D hN9
  have hr2 : 2 ≤ D.R.r := by
    unfold Ranks.r; have := D.R.two_le_m; have := D.R.m_add_three_le_k; omega
  refine ⟨hr2, ?_⟩
  intro i hi rb hrb
  have hirr := (hN9 i hi rb hrb).1
  have habs := GlobalTheory.ResAbsIrrGood.absIrrSub_top_of_irred (D.naut.kFbar i) (by omega) rb
    fun W hW => hirr W fun g _ x hx => hW g x hx
  exact GlobalTheory.BurnsideField.span_mat_eq_top_of_absIrrSub rb habs
