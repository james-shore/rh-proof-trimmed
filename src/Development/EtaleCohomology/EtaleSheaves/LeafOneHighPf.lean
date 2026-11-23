import Development.AbelianVarietyTheory.Definitions.Divisors.DivisorSupportCondition
import Development.EtaleCohomology.EtaleSheaves.H0TwistOverClosedField

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.LeafOneHighPf

open LateralTheory.E.E4

instance disc_pres : PreservesLimitsOfShape WalkingCospan (disc : PSh ⥤ Spc) := by
  unfold disc SimplicialObject.const
  infer_instance

instance sch_pres : PreservesLimitsOfShape WalkingCospan sch := by
  show PreservesLimitsOfShape WalkingCospan (yoneda ⋙ disc)
  infer_instance

end LateralTheory.E.LeafOneHighPf
