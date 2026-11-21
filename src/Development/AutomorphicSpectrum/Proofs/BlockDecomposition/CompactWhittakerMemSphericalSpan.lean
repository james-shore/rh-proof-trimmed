import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.DualWhittakerAdelicGL3
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.AdelicGaussians.UpperRightUnipotentInvariance
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CosetInd
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CompactWhittakerEqGodementLocal
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SpanSetEqLatticePreimage

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

theorem IsSB.add {Ψ₁ Ψ₂ : F × F → ℂ} (h₁ : IsSB Ψ₁) (h₂ : IsSB Ψ₂) : IsSB (Ψ₁ + Ψ₂) :=
  ⟨h₁.1.add h₂.1, h₁.2.add h₂.2⟩

end GlobalTheory.CompanionTheory.WS
