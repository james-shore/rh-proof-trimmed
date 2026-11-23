import Mathlib
import Development.AbelianVarietyTheory.Definitions.HeightFunctions.FiniteDimensionalOfSz
import Development.AbelianVarietyTheory.Definitions.HeightFunctions.NormComparisonConstants
import Development.AbelianVarietyTheory.Definitions.Foundations.RootOfUnityEightQMemCoeffGaloisSubfield
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTuple
import Formalism.LocalToGlobal.ProjectiveLattices.DatProofs
import Formalism.LocalToGlobal.ProjectiveLattices.DepthTie
import Formalism.LocalToGlobal.UnitaryNorms.MemFIffReal
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsUniqueIdeleOfLinearEquivQuotientLocal
import Formalism.LocalToGlobal.ProjectiveLattices.FamilyUniformisationBasePointOrthogonal
import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction
import Formalism.LocalToGlobal.Divisibility.DefGroup
import Formalism.SharpRestriction.Divisibility.KudlaSiegelWeil
import Formalism.SharpRestriction.Divisibility.InnerProductFormulaField
import Development.AbelianVarietyTheory.Proofs.HeightProofs.CmCurveTorsionDefinedOverOfWeberValues

noncomputable section

namespace GlobalTheory.FieldSize

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Pj GlobalTheory.Mem GlobalTheory.FinalJoin GlobalTheory.FinalJoin2
open scoped IntermediateField

theorem curveOver_of_weberSet (D : D7) (F : IntermediateField ℚ ℂ) {n : ℕ} (hn : 0 < n)
    (h0 : D.host.φ₀ D.host.sqrtMinusD ∈ F)
    (h : ∀ L : PeriodPair, (∀ z, z ∈ L.lattice ↔
      ∃ s : ℤ × ℤ, z = s.1 + s.2 * ((1 + D.host.φ₀ D.host.sqrtMinusD) / 2)) → weberSet L n ⊆ F) :
    GlobalTheory.CompRat.CurveOver (hostOfRecord D) F n :=
  (GlobalTheory.FinalJoin.CurveField.curveOver_of_weberIn _ (hostOfRecord D) F n hn).1 h0 fun L hL =>
    ⟨h L hL (Set.mem_insert _ _), fun s hs =>
      h L hL (Set.mem_insert_of_mem _ ⟨_, (hL _).2 ⟨s, rfl⟩, hs, rfl⟩)⟩

end GlobalTheory.FieldSize
