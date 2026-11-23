import Mathlib
import Formalism.LocalRingCardinality.DataAmbForm
import Formalism.SharpRestriction.FamCore
import Formalism.LocalRingCardinality.SpanPowerMembership
import Formalism.LocalRingCardinality.SpanPowerMembership.RowsMemBaseField
import Formalism.LocalRingCardinality.SpanPowerMembership.NZLevD
import Formalism.SharpRestriction.GrowthBounds.FormalGroupSystem
import Formalism.LocalRingCardinality.SpanPowerMembership.GatSetting
import Formalism.LocalToGlobal.GroupLattices.PerfectRings.JOInjective
import Formalism.LocalRingCardinality.SpanPowerMembership.GatTies
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsCrisP
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTuple
import ReciprocityTheory.DualLattices.SqZeroOfSpan
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ResEqIff
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsDiscreteValuationRingIntegralClosurePadicInt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NonemptyRayDataOfNeZero
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.SummableLatticeExpNegPiMulNormSqDiv
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RayLSeriesEulerProduct

noncomputable section

namespace GlobalTheory.Core.Rk

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.Examples₂ Formalism.BasicNotions.Examples₂.NZ NumberField Module

namespace FamInh

structure LvP where
  T : ℕ
  prime : T.Prime
  big : 991 < T
  π : 𝓞 H0.E
  mem : (π : H0.E) ∈ H0.K
  norm : (π : H0.E) * H0.conj (π : H0.E) = (T : H0.E)
  cong : (π - 1) ∈ Ideal.span {((H0.QS * H0.q * H0.d * (H0.g 0 * H0.g 1) ^ 2 : ℕ) : 𝓞 H0.E)}

instance (p : LvP) : Fact p.T.Prime := ⟨p.prime⟩

variable (p : LvP)

end FamInh

end GlobalTheory.Core.Rk

end
