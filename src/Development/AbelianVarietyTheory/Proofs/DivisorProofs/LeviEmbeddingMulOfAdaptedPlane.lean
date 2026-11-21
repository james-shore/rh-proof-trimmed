import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolEqISupFockDeg
open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.IndLine
open GlobalTheory.Doubling (absE)

noncomputable section

namespace GlobalTheory.LeviCommute

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.IndLine

def cols {E : Type} [Field E] {n₁ : ℕ} (H : Plane E (n₁ + 2) n₁) : Fin (n₁ + 2) → Fin (n₁ + 2) → E :=
  Fin.cons H.x (Fin.cons H.y fun j r => H.ι r j : Fin (n₁ + 1) → Fin (n₁ + 2) → E)

@[simp] theorem cols_zero {E : Type} [Field E] {n₁ : ℕ} (H : Plane E (n₁ + 2) n₁) : cols H 0 = H.x := rfl
@[simp] theorem cols_one {E : Type} [Field E] {n₁ : ℕ} (H : Plane E (n₁ + 2) n₁) : cols H (Fin.succ 0) = H.y := rfl
@[simp] theorem cols_succ_succ {E : Type} [Field E] {n₁ : ℕ} (H : Plane E (n₁ + 2) n₁) (j : Fin n₁) :
    cols H j.succ.succ = fun r => H.ι r j := rfl

end GlobalTheory.LeviCommute
