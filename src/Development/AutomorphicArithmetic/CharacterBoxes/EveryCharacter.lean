import Mathlib
import Development.AutomorphicArithmetic.CharacterBoxes.ExS
import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.APerTw
import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.DivRows3GIff
import Formalism.LocalToGlobal.FiniteTOf
import Formalism.LocalToGlobal.TieTwRecOf
import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.RankConditionsOfLayerTwo
import Formalism.LocalToGlobal.NormalizedHeckeFactors.EtaClosed
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LinkGl
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LinkIRROfJoinEx
import Formalism.LocalToGlobal.SiegelLatticeTheory.WeightedGaugeFactors.FactsDS
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.GapClosed
import Formalism.LocalToGlobal.Divisibility.DivisibilityRemainder.NoColumnCase.LvlWire
import Formalism.LocalToGlobal.Divisibility.DivisibilityRemainder.ValueBounds.SlopeMaxB
import Development.AutomorphicArithmetic.CharacterBoxes.SupplyChi

open Formalism.BasicNotions Formalism.MainNotions GlobalTheory.Fc

def UpperTheory.EveryCharacter : Prop :=
  ∀ (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N) (s : ℂ), 1 / 2 < s.re → (χ ≠ 1 ∨ s ≠ 1) → DirichletCharacter.LFunction χ s ≠ 0

