import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.DualWhittakerAdelicGL3
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.AdelicGaussians.UpperRightUnipotentInvariance

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Matrix Filter Topology
open GroundTheory.Global GroundTheory.LocalField GroundTheory.Automorphic GroundTheory.Automorphic.AutomorphicForm
open GroundTheory.Automorphic.GodementSection (localChar)
open GroundTheory.Global.AdicLiesOver
open Ad3 Ad3.K Ad3.K.QuadraticBaseChangeGL3
open scoped NumberField.AdeleRing ValuativeRel

namespace GlobalTheory.CompanionTheory.WS

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  [MeasurableSpace F] [BorelSpace F]

def rowAct (h : GL (Fin 2) F) (v : F × F) : F × F :=
  (v.1 * h.val 0 0 + v.2 * h.val 1 0, v.1 * h.val 0 1 + v.2 * h.val 1 1)

def IsSB (Ψ : F × F → ℂ) : Prop := IsLocallyConstant Ψ ∧ HasCompactSupport Ψ

variable (F) in

def Ln (n : ℤ) : Set (F × F) := {v | v.1 ∈ valBall F n ∧ v.2 ∈ valBall F n}

def spanSet (n : ℤ) (x : F × F) : Set (F × F) := {v | ∃ a ∈ 𝒪[F], v - (a • x) ∈ Ln F n}

end GlobalTheory.CompanionTheory.WS
