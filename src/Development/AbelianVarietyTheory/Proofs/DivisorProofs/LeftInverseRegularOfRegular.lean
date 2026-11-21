import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsNonarchimedeanW
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FullFrameRight
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FnEquivApply
open CategoryTheory AlgebraicGeometry NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Formalism.BasicNotions GlobalTheory GlobalTheory.Cartier GlobalTheory.CechPic GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.Mean4O GlobalTheory.CoverNorm GlobalTheory.ShFam.Pad GlobalTheory.TrivFlag GlobalTheory.WholeFlag GlobalTheory.ConstLat GlobalTheory.WholeFlag.Glue GlobalTheory.ConstLat.CramerFrame
open scoped Classical

namespace GlobalTheory.ConstLat.CramerFrame.LeftInverseFrame

local notation:70 A:70 " ⬝ₘ " B:71 => @HMul.hMul _ _ _ Matrix.instHMulOfFintypeOfMulOfAddCommMonoid A B

variable {R : Type} [CommRing R] {g : ℕ}

theorem leftInv_eq (U : Matrix (Fin (g + g)) (Fin g) R) (τ : Fin g → Fin (g + g)) :
    leftInv U τ = (rowSel τ ⬝ₘ U)⁻¹ ⬝ₘ (rowSel τ : Matrix (Fin g) (Fin (g + g)) R) := rfl

end GlobalTheory.ConstLat.CramerFrame.LeftInverseFrame

