import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsRationalDblCoord

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling

noncomputable section

namespace GlobalTheory.SWAniso

section Transp

variable {R A : Type} [CommRing R] [CommRing A] [Algebra R A] {α β : Type} [Fintype α] [DecidableEq α] [Fintype β]
  [DecidableEq β]

theorem symp_transpose (c : A →ₐ[R] A) (ξ : A) (JA : Matrix α α A) (JB : Matrix β β A) (x y : Matrix α β A) :
    symp c ξ JB JA xᵀ yᵀ = symp c ξ JA JB x y := by
  unfold symp hTens
  congr 2
  simp only [Matrix.transpose_apply]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun k _ => Finset.sum_congr rfl fun l _ => ?_
  ring

def darbouxTransp {c : A →ₐ[R] A} {ξ : A} {JA : Matrix α α A} {JB : Matrix β β A}
    (d : Darboux (symp c ξ JA JB) (α × β)) : Darboux (symp c ξ JB JA) (β × α) where
  e := (Matrix.transposeLinearEquiv β α R A).trans
    (d.e.trans ((LinearEquiv.funCongrLeft R R (Equiv.prodComm β α)).prodCongr
      (LinearEquiv.funCongrLeft R R (Equiv.prodComm β α))))
  form x y := by
    have h := symp_transpose c ξ JA JB xᵀ yᵀ
    rw [Matrix.transpose_transpose, Matrix.transpose_transpose] at h
    rw [h, d.form]
    simp only [LinearEquiv.trans_apply, LinearEquiv.prodCongr_apply, Matrix.transposeLinearEquiv_apply,
      LinearEquiv.funCongrLeft_apply, LinearMap.funLeft_apply]
    simp only [dotProduct, Fintype.sum_prod_type, Function.comp_apply, Equiv.prodComm_apply, Prod.swap_prod_mk]
    rw [Finset.sum_comm, Finset.sum_comm (f := fun a b => (d.e yᵀ).1 (a, b) * (d.e xᵀ).2 (a, b))]
    rfl

theorem darbouxTransp_e {c : A →ₐ[R] A} {ξ : A} {JA : Matrix α α A} {JB : Matrix β β A}
    (d : Darboux (symp c ξ JA JB) (α × β)) (x : Matrix β α A) :
    (darbouxTransp d).e x = (fun p => (d.e xᵀ).1 p.swap, fun p => (d.e xᵀ).2 p.swap) :=
  rfl

end Transp

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

end GlobalTheory.SWAniso
