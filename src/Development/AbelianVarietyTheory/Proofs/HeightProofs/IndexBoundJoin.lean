import Mathlib
import Development.AbelianVarietyTheory.Definitions.HeightFunctions.GrowthConstantBoundGcR
import Development.AbelianVarietyTheory.Definitions.ArchimedeanThetaValues.CarchAt
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.NoCommonZeroSt
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.InnerEuclideanEmbeddingEqAverage
import Formalism.LocalToGlobal.ProjectiveLattices.CurveAsm
import Formalism.LocalToGlobal.ProjectiveLattices.RealPtPf
import Development.AbelianVarietyTheory.Definitions.ThetaValues.Generic
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.CombinedBoundForRunScalarsStatement
import Development.AbelianVarietyTheory.Proofs.TorusSplitting.ExistsScalarWeightAuxiliaryFormOfRunConditionsStatement
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsAdmissibleThetaLatticeGeneratorsStatement
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.RunHypothesesFormsScalarsOfParameterConditionsStatement
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsPrimeDataCurveLiftingHeightBoundsStatement
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.RecursivePageLatticeBoundStatement
import Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.CuspFormBasisSharesIndefiniteLiftIndexStatement

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.WeightAlgebra Formalism.MainNotions.DIV.Cons Formalism.MainNotions.Gaps Formalism.MainNotions.Gaps.EtaleWeightGaps Formalism.L2.Pj ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.RunJoin

set_option maxHeartbeats 4000000
set_option synthInstance.maxHeartbeats 400000

namespace GlobalTheory.RunJoin

theorem genOK_refill {D : D7} {T : Top D} (h : LawsP T) (j : ℕ) (hj : InR D j) (large₂ : SizeData₂ D) {ka wL wF : WeightFamilies.Wt D j}
    (G : GlobalFamilyData (recPJ h j hj) ka wL wF) (S : Scal (recB h.toLawsCore)) (c : ℝ) (hG : GenOK h j hj large₂ G S c)
    (del th' rz alz th0 zc rq th iet et) :
    GenOK h j hj large₂ (FamilyHypotheses.refill G del th' rz alz th0 zc rq th iet et) S c := hG

end GlobalTheory.RunJoin
