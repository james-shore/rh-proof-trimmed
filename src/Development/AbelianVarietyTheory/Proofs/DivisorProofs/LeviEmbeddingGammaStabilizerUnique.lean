import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitHomVal
open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK

noncomputable section
open Matrix GlobalTheory.SmGL GlobalTheory.IndLineGL GlobalTheory.SplitCoord

namespace GlobalTheory.LeviGramDual

end GlobalTheory.LeviGramDual

open Matrix GlobalTheory.SmGL GlobalTheory.IndLineGL GlobalTheory.SplitCoord
namespace GlobalTheory.LeviGramDual
variable {R : Type} [CommRing R]

def gamInv {R : Type} [Ring R] {m : ℕ} (K' : Matrix (Fin m) (Fin m) R) : Matrix (Ix m) (Ix m) R
  | ⟨0, _⟩, ⟨2, _⟩ => -1
  | ⟨2, _⟩, ⟨0, _⟩ => 1
  | ⟨1, i⟩, ⟨1, j⟩ => K' i j
  | _, _ => 0

section Entries
variable {R : Type} [Ring R] {m : ℕ} (K : Matrix (Fin m) (Fin m) R)
@[simp] theorem gamS_02 (i : Fin (blk3 m 0)) (j : Fin (blk3 m 2)) : gamS K ⟨0, i⟩ ⟨2, j⟩ = 1 := rfl
@[simp] theorem gamS_20 (i : Fin (blk3 m 2)) (j : Fin (blk3 m 0)) : gamS K ⟨2, i⟩ ⟨0, j⟩ = -1 := rfl
@[simp] theorem gamS_11 (i j : Fin (blk3 m 1)) : gamS K ⟨1, i⟩ ⟨1, j⟩ = K i j := rfl
@[simp] theorem gamInv_02 (i : Fin (blk3 m 0)) (j : Fin (blk3 m 2)) : gamInv K ⟨0, i⟩ ⟨2, j⟩ = -1 := rfl
@[simp] theorem gamInv_20 (i : Fin (blk3 m 2)) (j : Fin (blk3 m 0)) : gamInv K ⟨2, i⟩ ⟨0, j⟩ = 1 := rfl
@[simp] theorem gamInv_11 (i j : Fin (blk3 m 1)) : gamInv K ⟨1, i⟩ ⟨1, j⟩ = K i j := rfl
@[simp] theorem gamS_00 (i : Fin (blk3 m 0)) (j : Fin (blk3 m 0)) : gamS K ⟨0, i⟩ ⟨0, j⟩ = 0 := rfl
@[simp] theorem gamInv_00 (i : Fin (blk3 m 0)) (j : Fin (blk3 m 0)) : gamInv K ⟨0, i⟩ ⟨0, j⟩ = 0 := rfl
@[simp] theorem gamS_01 (i : Fin (blk3 m 0)) (j : Fin (blk3 m 1)) : gamS K ⟨0, i⟩ ⟨1, j⟩ = 0 := rfl
@[simp] theorem gamInv_01 (i : Fin (blk3 m 0)) (j : Fin (blk3 m 1)) : gamInv K ⟨0, i⟩ ⟨1, j⟩ = 0 := rfl
@[simp] theorem gamS_10 (i : Fin (blk3 m 1)) (j : Fin (blk3 m 0)) : gamS K ⟨1, i⟩ ⟨0, j⟩ = 0 := rfl
@[simp] theorem gamInv_10 (i : Fin (blk3 m 1)) (j : Fin (blk3 m 0)) : gamInv K ⟨1, i⟩ ⟨0, j⟩ = 0 := rfl
@[simp] theorem gamS_12 (i : Fin (blk3 m 1)) (j : Fin (blk3 m 2)) : gamS K ⟨1, i⟩ ⟨2, j⟩ = 0 := rfl
@[simp] theorem gamInv_12 (i : Fin (blk3 m 1)) (j : Fin (blk3 m 2)) : gamInv K ⟨1, i⟩ ⟨2, j⟩ = 0 := rfl
@[simp] theorem gamS_21 (i : Fin (blk3 m 2)) (j : Fin (blk3 m 1)) : gamS K ⟨2, i⟩ ⟨1, j⟩ = 0 := rfl
@[simp] theorem gamInv_21 (i : Fin (blk3 m 2)) (j : Fin (blk3 m 1)) : gamInv K ⟨2, i⟩ ⟨1, j⟩ = 0 := rfl
@[simp] theorem gamS_22 (i : Fin (blk3 m 2)) (j : Fin (blk3 m 2)) : gamS K ⟨2, i⟩ ⟨2, j⟩ = 0 := rfl
@[simp] theorem gamInv_22 (i : Fin (blk3 m 2)) (j : Fin (blk3 m 2)) : gamInv K ⟨2, i⟩ ⟨2, j⟩ = 0 := rfl
end Entries

end GlobalTheory.LeviGramDual

namespace GlobalTheory.SplitCoord
end GlobalTheory.SplitCoord
