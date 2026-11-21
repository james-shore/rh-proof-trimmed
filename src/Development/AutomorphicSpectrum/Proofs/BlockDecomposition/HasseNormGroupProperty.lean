import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.PureThetaTransfer.AdmM
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.DualWhittakerAdelicGL3
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.AdelicGaussians.UpperRightUnipotentInvariance
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.VerticalStrips.UnramifiedEulerProductIntegral
import GroundTheory.AutomorphicForms.HermitianExistence
import GroundTheory.GlobalFields.GlobalReciprocity.General
import GroundTheory.GlobalFields.IdeleGroups.LocalConditionIndex
import GroundTheory.GlobalFields.IdeleGroups.LocalNormGroups
import GroundTheory.GlobalFields.SemilocalAlgebras.Finite
import GroundTheory.GlobalFields.SemilocalAlgebras.NormTrace
import GroundTheory.GlobalFields.SemilocalAlgebras.Infinite
import Development.AbelianVarietyTheory.Proofs.HeightProofs.QuadraticFormIdeleValuesMemNhdsOne
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsBasisOfIsQuadraticExtension

open NumberField IsDedekindDomain MeasureTheory GroundTheory.Global GroundTheory.LocalField GroundTheory.Automorphic Ad3 Ad3.K Ad3.K.QuadraticBaseChangeGL3 Ad3.K.QuadraticBaseChangeGL3.Th
open GroundTheory.Automorphic.GodementSection (localChar)
open GroundTheory.Automorphic.Reduction (finAt infAt maxCompact)
open GroundTheory.Automorphic.GLnLocal (integralGL)
open Ad3.R (G2 Jd md KA LInv IsLoc2 pt pri dia2)
open scoped NumberField.AdeleRing ValuativeRel

noncomputable section

namespace GlobalTheory.CompanionTheory.HasseGp

open GlobalTheory.QuadSymbol Matrix
open GroundTheory.Automorphic.Reduction (finEval infEval)
open GroundTheory.Global.AdicLiesOver
open AdeleBaseChange SemiLocal

variable {K : Type} [Field K] [NumberField K]

theorem pri_eq (β : ℚˣ) : pri β = IdeleGroup.diagonal ℚ β := rfl

end GlobalTheory.CompanionTheory.HasseGp
