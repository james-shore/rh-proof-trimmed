import Mathlib
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.GramPoincareHilbertSchmidtDeviationLeSplit
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.GammaRangeOfSizeHypotheses
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.KerInclOn
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SumNormSqOrthonormalLeHilbertSchmidt
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopEvaluationThresholdZero
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.DegenerateConstant
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.LoopTerm
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.DiagAtScale
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.RowsPtAt
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.CollSBound
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DiagCLC
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.FinXClosed
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsScaleWithBoundedGamma
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.ToGlob0
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ExpQuarterMulExpQuarterLeTwo
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.CorankOneIsEquivalenceOnRow

open scoped Classical
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.Full Formalism.L2.SG.RowsConc Formalism.L2.SG.PackageTie2 GlobalTheory.Core.Diag GlobalTheory.Core.Deg
set_option maxHeartbeats 1000000 in
theorem _root_.GlobalTheory.T.gramPoincareHilbertSchmidtDeviation_le_split : ∀ (D : D7) (u : D.what₂.Word), GlobalTheory.Core.Rk.hsDev D u ≤ 3 / 2 * hsNormSq (Kmat D.s u u - AdmissibleBoundsFromSource.Kpp D u u - ContinuousLinearMap.id ℂ (D.s.Cu u)) + 3 * hsNormSq (AdmissibleBoundsFromSource.Kpp D u u) := by
  first | exact @GlobalTheory.Core.Rk.hsDev_le_split_three_halves | exact GlobalTheory.Core.Rk.hsDev_le_split_three_halves | (intros; apply GlobalTheory.Core.Rk.hsDev_le_split_three_halves <;> assumption)
