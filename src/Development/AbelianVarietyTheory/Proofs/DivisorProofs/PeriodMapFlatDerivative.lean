import Mathlib
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.SiegelReframe
open Matrix MeasureTheory GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe

namespace GlobalTheory.FlatVert

variable {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E] {g : ℕ}

noncomputable def flatLin (τ : Matrix (Fin g) (Fin g) ℂ) : (Fin g → ℂ) →ₗ[ℝ] Fl g where
  toFun := flatOf τ
  map_add' z w := by
    have him : (fun i => ((z + w) i).im) = (fun i => (z i).im) + fun i => (w i).im := by
      ext; simp
    have hre : (fun i => ((z + w) i).re) = (fun i => (z i).re) + fun i => (w i).re := by
      ext; simp
    simp only [flatOf, him, hre, Matrix.add_vecMul]
    funext k
    rcases k with i | i <;> simp <;> ring
  map_smul' c z := by
    have him : (fun i => ((c • z) i).im) = c • fun i => (z i).im := by
      ext; simp
    have hre : (fun i => ((c • z) i).re) = c • fun i => (z i).re := by
      ext; simp
    simp only [flatOf, him, hre, Matrix.smul_vecMul, RingHom.id_apply]
    funext k
    rcases k with i | i <;> simp <;> ring

theorem flatLin_apply (τ : Matrix (Fin g) (Fin g) ℂ) (z : Fin g → ℂ) :
    flatLin τ z = flatOf τ z := rfl

end GlobalTheory.FlatVert
