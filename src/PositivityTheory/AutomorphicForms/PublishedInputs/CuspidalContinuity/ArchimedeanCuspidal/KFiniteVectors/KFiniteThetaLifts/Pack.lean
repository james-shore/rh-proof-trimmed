import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.ComplexMatrix3
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.GaugeTopology.SSmoothW
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.RealLocalIntegrals.StSmooth
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.EulerProducts.GenStable
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.LocalFunctionalEquationGL3GL2

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Matrix Filter Topology
open GroundTheory.Global GroundTheory.LocalField GroundTheory.Automorphic
open GroundTheory.Automorphic.GodementSection (localChar)
open scoped NumberField.AdeleRing ValuativeRel

namespace Ad3.K.QuadraticBaseChangeGL3

variable {K : Type} [Field K] [NumberField K]

structure Pack (DK : DatK K) (c : HeckeCharacter K) (n : ℤ) (t : ℝ) (S : Finset (PlK K)) (I I' Z Z' : ℂ → ℂ) : Prop where
  dI : Differentiable ℂ I
  dI' : Differentiable ℂ I'
  oI : Ord I (1 / 3)
  oI' : Ord I' (1 / 3)
  fe : ∀ s, I s = I' (1 - s)
  eu : ∀ s : ℂ, 1 < s.re → I s = Z s * eulK DK c S s
  eu' : ∀ s : ℂ, 1 < s.re → I' s = Z' s * eulK DK c⁻¹ S s
  nZ : ∀ s : ℂ, 1 / 4 < s.re → Z s ≠ 0
  nZ' : ∀ s : ℂ, 1 / 4 < s.re → Z' s ≠ 0
  dZ : DifferentiableOn ℂ (fun s => (Z s)⁻¹) {s | 1 / 4 < s.re}
  dZ' : DifferentiableOn ℂ (fun s => (Z' s)⁻¹) {s | 1 / 4 < s.re}
  oZ : Ord (fun s => (Z s)⁻¹) (1 / 3)
  oZ' : Ord (fun s => (Z' s)⁻¹) (1 / 3)
  lfe : ∀ s : ℂ, 1 / 4 < s.re → s.re < 3 / 4 → Z' (1 - s) = gamSK DK c n t S s * Z s

end Ad3.K.QuadraticBaseChangeGL3
