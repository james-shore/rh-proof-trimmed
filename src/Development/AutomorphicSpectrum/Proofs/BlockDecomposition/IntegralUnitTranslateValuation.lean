import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.PureThetaTransfer.AdmM
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.DualWhittakerAdelicGL3
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.AdelicGaussians.UpperRightUnipotentInvariance
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.VerticalStrips.UnramifiedEulerProductIntegral

open NumberField IsDedekindDomain MeasureTheory GroundTheory.Global GroundTheory.LocalField GroundTheory.Automorphic Ad3 Ad3.K Ad3.K.QuadraticBaseChangeGL3 Ad3.K.QuadraticBaseChangeGL3.Th
open GroundTheory.Automorphic.GodementSection (localChar)
open GroundTheory.Automorphic.Reduction (finAt infAt maxCompact)
open GroundTheory.Automorphic.GLnLocal (integralGL)
open Ad3.R (G2 Jd md KA LInv IsLoc2 pt pri dia2)
open scoped NumberField.AdeleRing ValuativeRel
open GroundTheory.Global.AdicLiesOver
noncomputable section

namespace GlobalTheory.CompanionTheory.FexTheta

def shiftEquiv (Sv : Finset Pl) (e : ∀ v : Pl, (Qv v)ˣ) :
    (∀ v : Sv, (Qv v.1)ˣ) ≃ᵐ (∀ v : Sv, (Qv v.1)ˣ) :=
  MeasurableEquiv.piCongrRight fun v => MeasurableEquiv.mulLeft (e v.1)

theorem shiftEquiv_apply (Sv : Finset Pl) (e : ∀ v : Pl, (Qv v)ˣ) (u : ∀ v : Sv, (Qv v.1)ˣ) (v : Sv) :
    shiftEquiv Sv e u v = e v.1 * u v := rfl

end GlobalTheory.CompanionTheory.FexTheta
