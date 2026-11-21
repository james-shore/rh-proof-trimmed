import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocallyConstantMajorants.GammaSplitting.ComplexMatrixMajorantIntegrable

noncomputable section

open MeasureTheory Matrix Filter Topology

namespace Ad3.K.LC.C

def pI (k : ℕ) (Ψ : Sw) (n : ℤ) (s : ℂ) (u : ℂ) (p : M22 × (Fin 2 → ℂ)) : ℂ :=
  ((‖(Matrix.of p.1).det‖⁻¹ : ℝ) : ℂ) *
    W2 k (sl Ψ (Matrix.of.symm (Matrix.of p.1 * blk p.2 * ((cyc u : GL (Fin 3) ℂ) : Matrix (Fin 3) (Fin 3) ℂ))))
      (Matrix.of p.1)⁻¹ * ph n (p.2 1) * ((‖p.2 1‖ ^ 2 : ℝ) : ℂ) ^ (s - 1)

def Pu (k : ℕ) (Ψ : Sw) (n : ℤ) (s : ℂ) (u : ℂ) : ℂ := ∫ p, pI k Ψ n s u p

def ge (ε : ℝ) (u : ℂ) : ℝ := Real.exp (-Real.pi * ε ^ 2 * ‖u‖ ^ 2)

def Dk (N : ℕ) (κ : M22) : ℝ :=
  (max (‖(Matrix.of κ).det‖ ^ 2)
    (‖κ 0 0 * (starRingEnd ℂ) (κ 0 1) + κ 1 0 * (starRingEnd ℂ) (κ 1 1)‖ ^ 2 / (‖κ 0 1‖ ^ 2 + ‖κ 1 1‖ ^ 2)))⁻¹ /
    (1 + ‖κ‖) ^ N

def GaussLim : Prop := ∀ k : ℕ, 3 ≤ k → ∀ (Ψ : Sw) (n : ℤ) (s : ℂ), 1 / 4 < s.re → s.re < 3 / 4 →
  StInt' → Tendsto (fun ε : ℝ => ∫ u : ℂ, (ge ε u : ℂ) * ∫ t, sec k Ψ (mm t u) * chC n s t ∂mulC ∂volC) (𝓝[>] 0)
    (𝓝 (∫ p : ℂˣ × ℂ, sec k Ψ (mm p.1 p.2) * chC n s p.1 ∂(mulC.prod volC)))

def Dual : Prop := ∀ k : ℕ, 3 ≤ k → ∀ (Ψ : Sw) (n : ℤ) (s : ℂ), 1 / 4 < s.re → s.re < 3 / 4 →
  ∫ p : ℂˣ × ℂ, sec k Ψ (mm p.1 p.2) * chC n s p.1 ∂(mulC.prod volC) =
    gC n s * ∫ κ : M22, ((‖(Matrix.of κ).det‖⁻¹ : ℝ) : ℂ) * z2' k n s (innQ Ψ 1 κ 1) (Matrix.of κ)⁻¹

end Ad3.K.LC.C
