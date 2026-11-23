import Mathlib
import Development.AbelianVarietyTheory.Definitions.Jets.SumIoPrAlt
import Formalism.SharpRestriction.CuspSpanNormBounds.RelevantZeroGramTerms
import Formalism.HermitianCurvature.StatementTBB
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LUFactorOrbitBounds
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightUniqueness.UnitaryOfBlockWMem
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PolynomialProperness.ZhatNormLinearBound
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ConjugationInvarianceEverySetting
import Formalism.HermitianCurvature.HermitianCurvatureProofs.HaarUniquenessConjugation
import Formalism.HermitianCurvature.HermitianCurvatureProofs.DilationScalesHeisenbergMeasure
import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianFormFactor
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SettingExistence
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LevelLiftBasics.LevelGroupUnitaryHermitian
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.ExistsConeMeasurePosRank
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BXiAsm
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelFormSesquilinearFiniteClass
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SlicesFiniteRegularityBuilt
import Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplyZeroNear
import Formalism.HermitianCurvature.HermitianCurvatureProofs.FsvMulFsvNeg
import Formalism.HermitianCurvature.TopEntryWaveEquation
import Formalism.HermitianCurvature.HermitianCurvatureProofs.HasFDerivAtFsvSelf
import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermMulVecMulVec
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CornerBlockActionInvariant
import Formalism.HermitianCurvature.HermitianCurvatureProofs.HsInnerAddSmulRight
import Formalism.HermitianCurvature.CompositeFormulaOfDensities
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelIntegrandAestronglyMeasurable
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceContOn
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartCoefficientHasCompactSupport
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChiLIntegrable
import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction
import Formalism.LocalToGlobal.Divisibility.DefGroup
import Formalism.LocalToGlobal.HeckeThetaElements.IsHeckeElt
import Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull
import Formalism.LocalToGlobal.IndefiniteForms.IndefSide
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.MatGroupHaarUniqueFiniteCompactOpenPos
import Development.AbelianVarietyTheory.BlockTheory.JetGauges.DecreasingNodeGaps

open BranchingSupport Formalism.FourierDecayAlt Formalism.FourierDecayAlt.ThreeDimData Matrix MeasureTheory Finset
open scoped InnerProductSpace ENNReal

namespace GlobalTheory.CoefZero

open Matrix MeasureTheory Finset in
open scoped InnerProductSpace ENNReal Matrix.Norms.Elementwise in

theorem _root_.GlobalTheory.CoefZero.continuousOn_of_ckOn {k r : ℕ} {E : Type} [NormedAddCommGroup E]
    [NormedSpace ℂ E] {m : ℕ∞}
    {f : _root_.Formalism.FourierDecayAlt.B.Mat k r → E} (h : _root_.Formalism.FourierDecayAlt.B.CkOn m (_root_.Formalism.FourierDecayAlt.B.GV k r) f) : ContinuousOn f (_root_.Formalism.FourierDecayAlt.B.GV k r) := by
  intro g₀ hg₀
  obtain ⟨U, f', hU, hgU, hf', hfeq⟩ := h g₀ hg₀
  have hc : ContinuousOn f' U := hf'.continuousOn
  have hcont : ContinuousAt f' g₀ := hc.continuousAt (hU.mem_nhds hgU)
  refine hcont.continuousWithinAt.congr_of_eventuallyEq ?_ (hfeq g₀ hgU hg₀)
  filter_upwards [inter_mem_nhdsWithin (_root_.Formalism.FourierDecayAlt.B.GV k r) (hU.mem_nhds hgU)] with g hg
  exact hfeq g hg.2 hg.1

end GlobalTheory.CoefZero
