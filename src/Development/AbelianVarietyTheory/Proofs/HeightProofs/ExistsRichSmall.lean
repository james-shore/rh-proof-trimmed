import Mathlib
import Development.AbelianVarietyTheory.Definitions.HeightFunctions.FiniteDimensionalOfSz
import Development.AbelianVarietyTheory.Definitions.HeightFunctions.NormComparisonConstants
import Development.AbelianVarietyTheory.Definitions.Foundations.RootOfUnityEightQMemCoeffGaloisSubfield
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTuple
import Formalism.LocalRingCardinality.SpanPowerMembership.ExampleRanksRankComplement
import Formalism.SharpRestriction.InertJacobiLevels.HostFam
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.FiniteResidueFieldAdicCompletionIntegers
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsIsKroneckerCharOfDiscr
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsVariableChangeEqLatticeCurve

set_option autoImplicit false

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Pj GlobalTheory.Mem GlobalTheory.FinalJoin GlobalTheory.FinalJoin2 GlobalTheory.FieldSize
open scoped IntermediateField

namespace GlobalTheory.FieldSize.SmallField

theorem weberSet_congr {L L' : PeriodPair} (h : L.lattice = L'.lattice) (n : ℕ) : weberSet L n = weberSet L' n := by
  have hG : ∀ k, L.G k = L'.G k := fun k => by unfold PeriodPair.G; rw [h]
  have h2 : L.g₂ = L'.g₂ := by unfold PeriodPair.g₂; rw [hG]
  have h3 : L.g₃ = L'.g₃ := by unfold PeriodPair.g₃; rw [hG]
  have hP : ∀ z, L.weierstrassP z = L'.weierstrassP z := fun z => by unfold PeriodPair.weierstrassP; rw [h]
  unfold weberSet
  simp only [h2, h3, hP, h]

end GlobalTheory.FieldSize.SmallField

namespace GlobalTheory.FieldSize

end GlobalTheory.FieldSize
