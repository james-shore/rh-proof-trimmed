import Mathlib
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.ContractMixedFieldStatement
import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PChangeOfModel
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.CycDim
import GroundTheory.HeightsAndTheta.Heights.Intersections.StatementsAntisym
import GroundTheory.HeightsAndTheta.Heights.Intersections.IsFieldIntersectionNoBlockFam
import GroundTheory.HeightsAndTheta.Heights.Intersections.QuotientMapImageZInjective
import ReciprocityTheory.AnalyticForms.AnalyticCharts.Osgood
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterPC
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterPCProof
import GroundTheory.HeightsAndTheta.Heights.OrbitLimits.ExistsUnique

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Targets

open ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I1 ReciprocityTheory.ChartRestriction.G.AI.I4

theorem genFibreExists : GenFibreExistsStatement := by
  intro K _ ι _ K' _ ι' _ κ v P' d' _ hP'
  exact Inter.GenericPointExists.proof K ι K' ι' v P' hP'.2.1.1

theorem existsUniqueAll : ∀ (F : Type) [Field F] (K : Type) [Fintype K] (ι : K → Type)
    [∀ k, Fintype (ι k)], ExistsUniqueStatement F ι := by
  intro F _ K _ ι _
  exact ExistsUnique.full F ι

theorem ChangeOfModel.of_found (hAI3 : Inter.PushforwardArithIntersection.Statement) (hGr : GraphStatement)
    (hIso : HilbertSamuel.IsomInvariance.Statement) (hGI : HilbertSamuel.GraphIsometric.Statement) :
    ReciprocityTheory.ChartRestriction.G.AI.I4.ChangeOfModelStatement :=
  HilbertSamuel.ChangeOfModel.proof hAI3 hGr genFibreExists existsUniqueAll hIso hGI

end GroundTheory.Heights₂.Heights.Targets
