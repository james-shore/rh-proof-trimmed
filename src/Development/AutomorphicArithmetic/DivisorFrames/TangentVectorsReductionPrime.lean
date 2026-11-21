import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.HtValOnSubset
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlatDegreeStatementOfDegreeTheorem
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameCoord
import Development.AbelianVarietyTheory.Definitions.Divisors.VolMeasureOfAdd
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.NonemptyUnitAt
import Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StepIdeal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFrameTangentVectorsOfIsGrpPullback
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.IntegralFramesDifferByUnit
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.SabMapCancelAndCompOver
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.VecMulMapEqZero
open AlgebraicGeometry CategoryTheory ReciprocityTheory.ChartRestriction.G.Semi NumberField IsDedekindDomain Module Formalism.BasicNotions Formalism.L2.Pj ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD GlobalTheory.AllWt GlobalTheory.FlatLine GlobalTheory.CompHt GlobalTheory.FlatCore GlobalTheory.IndefiniteRowSideFullHecke GlobalTheory.FlatDegreeCompare

section Helpers

open MonoidalCategory CartesianMonoidalCategory MonObj Matrix

private theorem isTan_iff {V : Type} [CommRing V] {G : Over (Sp V)} [GrpObj G] (w : epsOver V V ⟶ G) :
    IsTan w ↔ IsTangent (R := V) w := by
  have h1 : (1 : ptOver V V ⟶ G).left = η[G].left := by
    have e : (1 : ptOver V V ⟶ G) = CartesianMonoidalCategory.toUnit _ ≫ η[G] := rfl
    rw [e, Over.comp_left]
    have e2 : (CartesianMonoidalCategory.toUnit (ptOver V V)).left = 𝟙 (Sp V) := by
      have := Over.w (CartesianMonoidalCategory.toUnit (ptOver V V))
      exact ((Category.comp_id _).symm.trans this).trans (Spec.map_id _)
    rw [e2]
    exact Category.id_comp _
  unfold IsTan IsTangent
  rw [h1]

end Helpers

