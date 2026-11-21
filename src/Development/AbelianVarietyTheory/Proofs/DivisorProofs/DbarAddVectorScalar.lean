import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.TranslationInv

set_option autoImplicit false

noncomputable section

open Matrix Set Filter Topology
open GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe

namespace GlobalTheory.TorsionForm.Pullback

variable {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E] {g n : ℕ}

def nabHol (τ : E → Matrix (Fin g) (Fin g) ℂ) (h : Pt E g → ℝ) (s : Pt E g → Ext (n + n + g))
    (Q : Pt E g) (v : E) : Ext (n + n + g) :=
  pointDifference h s Q (hor τ Q v)

def nabAnti (τ : E → Matrix (Fin g) (Fin g) ℂ) (s : Pt E g → Ext (n + n + g))
    (Q : Pt E g) (v : E) : Ext (n + n + g) :=
  d01 s Q (hor τ Q v) + connForm τ Q.1 v (s Q)

def nabPiece (τ : E → Matrix (Fin g) (Fin g) ℂ) (h : Pt E g → ℝ) (s : Pt E g → Ext (n + n + g))
    (Q : Pt E g) (i : Fin n) (v : E) : Ext (n + n + g) :=
  wedge (dt g i) (nabHol τ h s Q v) + wedge (dtb g i) (nabAnti τ s Q v)

theorem nablaE_eq_sum (τ : E → Matrix (Fin g) (Fin g) ℂ) (h : Pt E g → ℝ) (β : Fin n → E)
    (s : Pt E g → Ext (n + n + g)) (Q : Pt E g) :
    nablaE τ h β s Q = ∑ i, nabPiece τ h s Q i (β i) := rfl

end GlobalTheory.TorsionForm.Pullback
