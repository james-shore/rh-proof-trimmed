import Mathlib
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ArchSmoothCompTransposeInvStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CstD
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.DualWhittakerAdelicGL3
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.AdelicGaussians.UpperRightUnipotentInvariance
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.VerticalStrips.UnramifiedEulerProductIntegral
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspidalCompTransposeInv
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WhittakerCompTransposeInv

open NumberField IsDedekindDomain MeasureTheory Matrix Filter Topology
open GroundTheory.Global GroundTheory.LocalField GroundTheory.Automorphic GroundTheory.Automorphic.AutomorphicForm
open GroundTheory.Automorphic.Reduction (finAt infAt maxCompact)
open Ad3 Ad3.K Ad3.K.QuadraticBaseChangeGL3
open Ad3.R (G2 Jd md Dt KA Set0 Coord LInv pt dia2 pri)
open GlobalTheory.CompanionTheory.UnfoldingAlt
open scoped NumberField.AdeleRing ENNReal

noncomputable section

namespace GlobalTheory.CompanionTheory.UnfoldingAlt.LiftTV

theorem arch_ti (F : archSmooth ℚ 3) : IsArchSmooth (fun g : G3 => (F : G3 → ℂ) (ti g)) := by
  simpa using GlobalTheory.T.archSmooth_comp_transposeInv F F.2 1

def S : archSmooth ℚ 3 →ₗ[ℂ] archSmooth ℚ 3 where
  toFun F := ⟨fun g => (F : G3 → ℂ) (ti g), arch_ti F⟩
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

theorem S_apply (F : archSmooth ℚ 3) (g : G3) : (S F : G3 → ℂ) g = (F : G3 → ℂ) (ti g) := rfl

end GlobalTheory.CompanionTheory.UnfoldingAlt.LiftTV
