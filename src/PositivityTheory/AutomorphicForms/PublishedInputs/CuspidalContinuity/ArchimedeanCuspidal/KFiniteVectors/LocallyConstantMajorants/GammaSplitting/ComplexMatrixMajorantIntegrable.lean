import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocallyConstantMajorants.GammaSplitting.InnW

noncomputable section

open MeasureTheory Matrix

namespace Ad3.K.LC.C

def innQ (Ψ : Sw) (g : GL (Fin 3) ℂ) (h : M22) (β : ℂ) (q : Fin 2 → ℂ) : ℂ :=
  ∫ x : Fin 2 → ℂ, Ψ (Matrix.of.symm (Matrix.of h * blk x * (g : Matrix (Fin 3) (Fin 3) ℂ)), q) * psiC (-(β * x 1))

def pS {E : Type} [NormedAddCommGroup E] [NormedSpace ℝ E] (N : ℕ) (f : SchwartzMap E ℂ) : ℝ :=
  ∑ i ∈ Finset.range (N + 1), ∑ j ∈ Finset.range (N + 1), SchwartzMap.seminorm ℝ i j f

def eta (h : M22) : Fin 2 → ℂ := fun j => (Matrix.of h)⁻¹ 1 j

def Yb (g : Matrix (Fin 2) (Fin 2) ℂ) : ℝ := ‖g.det‖ ^ 2 / (‖g 1 0‖ ^ 2 + ‖g 1 1‖ ^ 2) ^ 2

def Prim : Prop := ∀ k : ℕ, 3 ≤ k → ∀ (Ψ : Sw) (n : ℤ) (s : ℂ), 0 < s.re → s.re < 1 →
  ∫ a, sec k Ψ (dg a 1 1) * chC n (s - 1) a ∂mulC =
    ∫ h : M22, ((‖(Matrix.of h).det‖⁻¹ : ℝ) : ℂ) * z2 k n s (innQ Ψ 1 h 1) (Matrix.of h)⁻¹

end Ad3.K.LC.C
