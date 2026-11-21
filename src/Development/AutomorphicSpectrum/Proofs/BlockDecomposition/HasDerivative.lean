import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocallyConstantMajorants.SmoothMajorants.Bounds
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocallyConstantMajorants.StSmooth
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MatrixMulApply

noncomputable section

open MeasureTheory Matrix Filter Topology LineDeriv
open Ad3.K Ad3.K.LC Ad3.K.LC.B

namespace GlobalTheory.CompanionTheory.LCDer

def bI (M : complexMatrix3) : ℝ := max 1 (‖mulB‖ * (‖minv M‖ + 1))

def Zq (h : M22) (t : ℂ) (p : (Fin 2 → ℂ) × ℂ) : E5 :=
  (Matrix.of.symm (Matrix.of h * blk p.1), rowv t p.2 (Matrix.of h))

def Tq0 (h : M22) (t : ℂ) : E5 →ₗ[ℝ] ((Fin 2 → ℂ) × ℂ) where
  toFun X := ((Matrix.of h)⁻¹.mulVec (fun r => X.1 r 2), t⁻¹ * (Matrix.vecMul X.2 (Matrix.of h)) 1)
  map_add' X Y := by
    refine Prod.ext ?_ ?_
    · exact Matrix.mulVec_add (Matrix.of h)⁻¹ (fun r => X.1 r 2) (fun r => Y.1 r 2)
    · simp [Matrix.add_vecMul, mul_add]
  map_smul' a X := by
    refine Prod.ext ?_ ?_
    · have e : (fun r => (a • X).1 r 2) = (a : ℂ) • (fun r => X.1 r 2) := by
        funext r; simp
      simp only [e, Matrix.mulVec_smul]
      funext r
      simp only [Pi.smul_apply, Prod.smul_fst, RingHom.id_apply, smul_eq_mul, Complex.real_smul]
    · have e : (a • X).2 = (a : ℂ) • X.2 := by
        funext r; simp
      simp only [e, Matrix.smul_vecMul]
      simp [mul_left_comm]

def fX (Q : Sw) (h : M22) (t : ℂ) (M : complexMatrix3) (p : (Fin 2 → ℂ) × ℂ) : ℂ :=
  Q (Rq M (Zq h t p)) * psiC (-(1 * p.1 1)) * psiC (-(1 * p.2))

theorem J_eq (Q : Sw) (M : complexMatrix3) (h : M22) (t : ℂ) : J Q M h t = ∫ p, fX Q h t M p := rfl

def Dq (Z : M23) : complexMatrix3 →L[ℝ] E5 := (ContinuousLinearMap.inl ℝ M23 (Fin 2 → ℂ)).comp (mulB Z)

theorem Dq_apply (Z : M23) (m : complexMatrix3) : Dq Z m = (mulB Z m, 0) := rfl

end GlobalTheory.CompanionTheory.LCDer
