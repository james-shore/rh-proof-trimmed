import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocallyConstantMajorants.GammaSplitting.ComplexMatrixMajorantIntegrable

noncomputable section

open MeasureTheory Matrix

namespace GlobalTheory.CompanionTheory.InnQ

open Ad3.K Ad3.K.LC Ad3.K.LC.C

abbrev V : Type := Fin 2 → ℂ
abbrev E5 : Type := M23 × V

def Bd (G : Sw) (K n : ℕ) (B : ℝ) : Prop :=
  ∀ m ≤ n, ∀ Y : E5, (1 + ‖Y‖) ^ K * ‖iteratedFDeriv ℝ m G Y‖ ≤ B

theorem Bd.mono {G : Sw} {K n n' : ℕ} {B : ℝ} (h : Bd G K n B) (hn : n' ≤ n) : Bd G K n' B :=
  fun m hm => h m (hm.trans hn)

end GlobalTheory.CompanionTheory.InnQ
