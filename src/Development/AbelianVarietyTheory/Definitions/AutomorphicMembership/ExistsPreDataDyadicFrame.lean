import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SpreadLe
import Formalism.LocalRingCardinality.SpanPowerMembership.ExampleRanksRankComplement
import Formalism.SharpRestriction.InertJacobiLevels.HostFam
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.FiniteResidueFieldAdicCompletionIntegers
import Formalism.LocalToGlobal.Columns.AbelianHostFieldConditions
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NonemptyRayDataOfNeZero
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.SummableLatticeExpNegPiMulNormSqDiv
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RayLSeriesEulerProduct

noncomputable section

namespace GlobalTheory.Mem.PreXModel

open Formalism.BasicNotions NumberField IsDedekindDomain

theorem embLL_tauLL (B : Base) (τ : Tau B.R) : B.embLL.comp (B.tauLL τ) = B.host.emb τ := by
  unfold Base.tauLL Host.emb
  rw [← RingHom.comp_assoc, B.embE_φ₀]

end GlobalTheory.Mem.PreXModel

end
