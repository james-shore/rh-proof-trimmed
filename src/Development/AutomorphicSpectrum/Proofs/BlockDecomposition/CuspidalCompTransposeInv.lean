import Mathlib
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CstD
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.DualWhittakerAdelicGL3
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.AdelicGaussians.UpperRightUnipotentInvariance
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.VerticalStrips.UnramifiedEulerProductIntegral

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Matrix Filter Topology
open GroundTheory.Global GroundTheory.LocalField GroundTheory.Automorphic GroundTheory.Automorphic.AutomorphicForm
open GroundTheory.Automorphic.Reduction (finAt infAt maxCompact)
open Ad3 Ad3.K Ad3.K.QuadraticBaseChangeGL3
open Ad3.R (G2 Jd md Dt KA Set0 Coord LInv pt dia2 pri)
open GlobalTheory.CompanionTheory.UnfoldingAlt
open scoped NumberField.AdeleRing ENNReal

namespace GlobalTheory.CompanionTheory.TiCusp

variable {r s : ℕ} {R : Type*} [CommRing R]

def sw (h : r + s = 3) (p : UPos 3 s) : UPos 3 r :=
  ⟨(Fin.rev p.1.2, Fin.rev p.1.1), by
    have h1 := p.2.1
    have h2 := p.2.2
    have h3 := p.1.1.2
    have h4 := p.1.2.2
    simp only [Fin.val_rev]
    omega⟩

theorem sw_sw (h : r + s = 3) (h' : s + r = 3) (p : UPos 3 s) : sw h' (sw h p) = p := by
  apply Subtype.ext
  simp [sw]

def swE (h : r + s = 3) : UPos 3 s ≃ UPos 3 r :=
  ⟨sw h, sw (by omega), sw_sw h _, sw_sw _ h⟩

def tX (h : r + s = 3) (X : UPos 3 r → R) : UPos 3 s → R := fun p => -X (sw h p)

theorem tX_tX (h : r + s = 3) (h' : s + r = 3) (X : UPos 3 r → R) : tX h' (tX h X) = X := by
  funext p
  simp [tX, sw_sw]

def tE (h : r + s = 3) : (UPos 3 r → 𝔸[ℚ]) ≃ᵐ (UPos 3 s → 𝔸[ℚ]) where
  toFun := tX h
  invFun := tX (by omega)
  left_inv X := tX_tX h _ X
  right_inv X := tX_tX _ h X
  measurable_toFun := measurable_pi_lambda _ fun p => (measurable_pi_apply _).neg
  measurable_invFun := measurable_pi_lambda _ fun p => (measurable_pi_apply _).neg

theorem tE_apply (h : r + s = 3) (X : UPos 3 r → 𝔸[ℚ]) : tE h X = tX h X := rfl

end GlobalTheory.CompanionTheory.TiCusp

end
