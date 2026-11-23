import Mathlib
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IwasawaUnitaryUpperTriangular
import Formalism.SharpRestriction.CuspSpanNormBounds.RelevantZeroGramTerms
import Development.AbelianVarietyTheory.Definitions.Foundations.ExistsAuxiliaryPlaceNotMemFinset
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.PosPartUnitaryMul
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.DiscreteSeriesCharacter
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.LanglandsClassification
import Formalism.LocalToGlobal.IndefiniteReal.FWExist
import Development.AbelianVarietyTheory.Definitions.Jets.SumIoPrAlt
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.HighestWeights.ContinuousRepresentations.DerivExistsAllPosStatement
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CompactGroupIntegrability.InstCompactUG
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IntegrableMatrixCoeffKAverageRight
import Formalism.SharpRestriction.CuspSpanNormBounds.PlaceDegreeData
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.ExistsIsHaarMeasureSUJ
import GroundTheory.GlobalFields.TateThesis.ArchChars
import GroundTheory.GlobalFields.TateThesis.ArchCharsUnits
import Formalism.SharpRestriction.CuspSpanNormBounds.BridgeCSchur
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ClassificationRankOne

open Matrix
set_option maxHeartbeats 1000000 in
theorem _root_.GlobalTheory.T.iwasawa_unitary_upper_triangular : ∀ {m : ℕ} (g : Matrix (Fin m) (Fin m) ℂ), IsUnit g → ∃ k ∈ Matrix.unitaryGroup (Fin m) ℂ, ∃ b : Matrix (Fin m) (Fin m) ℂ, g = k * b ∧ b.BlockTriangular id := by
  first | exact @GlobalTheory.CompanionTheory.QR.exists_unitary_mul_blockTriangular | exact GlobalTheory.CompanionTheory.QR.exists_unitary_mul_blockTriangular | (intros; apply GlobalTheory.CompanionTheory.QR.exists_unitary_mul_blockTriangular <;> assumption)
