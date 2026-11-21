import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocallyConstantMajorants.SmoothMajorants.Bounds

noncomputable section

open MeasureTheory Matrix Filter Topology
open Ad3.K Ad3.K.LC Ad3.K.LC.B

namespace GlobalTheory.CompanionTheory.LCDer

def mulTwoByThree : M23 →ₗ[ℝ] complexMatrix3 →ₗ[ℝ] M23 :=
  LinearMap.mk₂ ℝ (fun X M => Matrix.of.symm (Matrix.of X * Matrix.of M))
    (fun X Y M => by ext r c; simp [Matrix.mul_apply, add_mul, Finset.sum_add_distrib])
    (fun a X M => by ext r c; simp [Matrix.mul_apply, Finset.mul_sum, mul_assoc])
    (fun X M N => by ext r c; simp [Matrix.mul_apply, mul_add, Finset.sum_add_distrib])
    (fun a X M => by ext r c; simp [Matrix.mul_apply, Finset.mul_sum, mul_left_comm])

def mulB : M23 →L[ℝ] complexMatrix3 →L[ℝ] M23 :=
  LinearMap.toContinuousLinearMap
    ((LinearMap.toContinuousLinearMap : (complexMatrix3 →ₗ[ℝ] M23) ≃ₗ[ℝ] (complexMatrix3 →L[ℝ] M23)).toLinearMap ∘ₗ mulTwoByThree)

theorem mulB_apply (X : M23) (M : complexMatrix3) : mulB X M = Matrix.of.symm (Matrix.of X * Matrix.of M) := rfl

def mulThreeByThree : complexMatrix3 →ₗ[ℝ] complexMatrix3 →ₗ[ℝ] complexMatrix3 :=
  LinearMap.mk₂ ℝ (fun X M => Matrix.of.symm (Matrix.of X * Matrix.of M))
    (fun X Y M => by ext r c; simp [Matrix.mul_apply, add_mul, Finset.sum_add_distrib])
    (fun a X M => by ext r c; simp [Matrix.mul_apply, Finset.mul_sum, mul_assoc])
    (fun X M N => by ext r c; simp [Matrix.mul_apply, mul_add, Finset.sum_add_distrib])
    (fun a X M => by ext r c; simp [Matrix.mul_apply, Finset.mul_sum, mul_left_comm])

def mul3 : complexMatrix3 →L[ℝ] complexMatrix3 →L[ℝ] complexMatrix3 :=
  LinearMap.toContinuousLinearMap
    ((LinearMap.toContinuousLinearMap : (complexMatrix3 →ₗ[ℝ] complexMatrix3) ≃ₗ[ℝ] (complexMatrix3 →L[ℝ] complexMatrix3)).toLinearMap ∘ₗ mulThreeByThree)

def Rm (M : complexMatrix3) : M23 →L[ℝ] M23 := mulB.flip M

theorem Rm_apply (M : complexMatrix3) (X : M23) : Rm M X = Matrix.of.symm (Matrix.of X * Matrix.of M) := rfl

def Rq (M : complexMatrix3) : E5 →L[ℝ] E5 := (Rm M).prodMap (ContinuousLinearMap.id ℝ (Fin 2 → ℂ))

theorem Rq_apply (M : complexMatrix3) (X : E5) : Rq M X = (Rm M X.1, X.2) := rfl

def minv (M : complexMatrix3) : complexMatrix3 := Matrix.of.symm (Matrix.of M)⁻¹

def ell (M : complexMatrix3) (i j : Fin 3) : complexMatrix3 →L[ℝ] ℂ :=
  (ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 3 => ℂ) j).comp
    ((ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 3 => Fin 3 → ℂ) i).comp (mul3 (minv M)))

def ellc (M : complexMatrix3) (i j : Fin 3) : complexMatrix3 →L[ℝ] ℂ :=
  Complex.conjCLE.toContinuousLinearMap.comp (ell M i j)

theorem ell_apply (M : complexMatrix3) (i j : Fin 3) (m : complexMatrix3) :
    ell M i j m = ((Matrix.of M)⁻¹ * Matrix.of m) i j := rfl

theorem ellc_apply (M : complexMatrix3) (i j : Fin 3) (m : complexMatrix3) :
    ellc M i j m = (starRingEnd ℂ) (((Matrix.of M)⁻¹ * Matrix.of m) i j) := rfl

def J (Q : Sw) (M : complexMatrix3) (h : M22) (t : ℂ) : ℂ := innB (fun X => Q (Rq M X)) h t 1 1

def gl (M : complexMatrix3) (hM : (Matrix.of M).det ≠ 0) : GL (Fin 3) ℂ :=
  Matrix.GeneralLinearGroup.mkOfDetNeZero (Matrix.of M) hM

theorem gl_val (M : complexMatrix3) (hM : (Matrix.of M).det ≠ 0) :
    ((gl M hM : GL (Fin 3) ℂ) : Matrix (Fin 3) (Fin 3) ℂ) = Matrix.of M := rfl

end GlobalTheory.CompanionTheory.LCDer
