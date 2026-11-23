import Mathlib
import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PNormLength
import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PVertTermEq
import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PParAlgIndep
import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PNormFormEval
import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.ComapMaximalIdealParDVR
import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PChartTorsion
import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PChowFormHomog
import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PIncidenceNull
import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PLengthDecomp
import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PNormFormLocalization
import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PParDVRIsDVR
import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PParFracIsFractionRing
import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PPrimitiveScale
import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PSecBFinite
import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PSecBGeneric
import GroundTheory.HeightsAndTheta.Heights.ChowForms.Statements
import GroundTheory.ArithmeticGeometry.ToricVarieties.Affine
import GroundTheory.HeightsAndTheta.Heights.ChowForms.StatementsSectionOrder

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Vertical

open MvPolynomial NumberField IsDedekindDomain

theorem NormLength.full : NormLength.Statement := NormLength.proof
theorem VertTermEq.full : VertTermEq.Statement := VertTermEq.proof
theorem ParAlgIndep.full : ParAlgIndep.Statement := ParAlgIndep.proof
theorem NormFormEval.full : NormFormEval.Statement := NormFormEval.proof
theorem ChartTorsion.full : ChartTorsion.Statement := ChartTorsion.proof
theorem ChowFormHomog.full : ChowFormHomog.Statement := ChowFormHomog.proof
theorem IncidenceNull.full : IncidenceNull.Statement := IncidenceNull.proof
theorem LengthDecomp.full : LengthDecomp.Statement := LengthDecomp.proof
theorem NormFormLocalization.full : NormFormLocalization.Statement := NormFormLocalization.proof
theorem ParDVRIsDVR.full : ParDVRIsDVR.Statement := ParDVRIsDVR.proof
theorem ParFracIsFractionRing.full : ParFracIsFractionRing.Statement := ParFracIsFractionRing.proof
theorem PrimitiveScale.full : PrimitiveScale.Statement := PrimitiveScale.proof
theorem SecBGeneric.full : SecBGeneric.Statement := SecBGeneric.proof
theorem SecBFinite.full : SecBFinite.Statement :=
  SecBFinite.proof IncidenceNull.full ChartTorsion.full PrimitiveScale.full

end GroundTheory.Heights₂.Heights.Vertical
