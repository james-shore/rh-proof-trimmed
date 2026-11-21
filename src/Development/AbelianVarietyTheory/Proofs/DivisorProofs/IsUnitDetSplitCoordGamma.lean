import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitHomVal
open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK

namespace GlobalTheory.SplitCoord.GamInv
open GlobalTheory.SplitCoord

@[simp] theorem gamS_00 {R : Type} [Ring R] {m : ℕ} (K : Matrix (Fin m) (Fin m) R)
    (a : Fin (GlobalTheory.IndLineGL.blk3 m 0)) (b : Fin (GlobalTheory.IndLineGL.blk3 m 0)) : gamS K ⟨0, a⟩ ⟨0, b⟩ = 0 := rfl

@[simp] theorem gamS_01 {R : Type} [Ring R] {m : ℕ} (K : Matrix (Fin m) (Fin m) R)
    (a : Fin (GlobalTheory.IndLineGL.blk3 m 0)) (b : Fin (GlobalTheory.IndLineGL.blk3 m 1)) : gamS K ⟨0, a⟩ ⟨1, b⟩ = 0 := rfl

@[simp] theorem gamS_02 {R : Type} [Ring R] {m : ℕ} (K : Matrix (Fin m) (Fin m) R)
    (a : Fin (GlobalTheory.IndLineGL.blk3 m 0)) (b : Fin (GlobalTheory.IndLineGL.blk3 m 2)) : gamS K ⟨0, a⟩ ⟨2, b⟩ = 1 := rfl

@[simp] theorem gamS_10 {R : Type} [Ring R] {m : ℕ} (K : Matrix (Fin m) (Fin m) R)
    (a : Fin (GlobalTheory.IndLineGL.blk3 m 1)) (b : Fin (GlobalTheory.IndLineGL.blk3 m 0)) : gamS K ⟨1, a⟩ ⟨0, b⟩ = 0 := rfl

@[simp] theorem gamS_11 {R : Type} [Ring R] {m : ℕ} (K : Matrix (Fin m) (Fin m) R)
    (a : Fin (GlobalTheory.IndLineGL.blk3 m 1)) (b : Fin (GlobalTheory.IndLineGL.blk3 m 1)) : gamS K ⟨1, a⟩ ⟨1, b⟩ = K a b := rfl

@[simp] theorem gamS_12 {R : Type} [Ring R] {m : ℕ} (K : Matrix (Fin m) (Fin m) R)
    (a : Fin (GlobalTheory.IndLineGL.blk3 m 1)) (b : Fin (GlobalTheory.IndLineGL.blk3 m 2)) : gamS K ⟨1, a⟩ ⟨2, b⟩ = 0 := rfl

@[simp] theorem gamS_20 {R : Type} [Ring R] {m : ℕ} (K : Matrix (Fin m) (Fin m) R)
    (a : Fin (GlobalTheory.IndLineGL.blk3 m 2)) (b : Fin (GlobalTheory.IndLineGL.blk3 m 0)) : gamS K ⟨2, a⟩ ⟨0, b⟩ = -1 := rfl

@[simp] theorem gamS_21 {R : Type} [Ring R] {m : ℕ} (K : Matrix (Fin m) (Fin m) R)
    (a : Fin (GlobalTheory.IndLineGL.blk3 m 2)) (b : Fin (GlobalTheory.IndLineGL.blk3 m 1)) : gamS K ⟨2, a⟩ ⟨1, b⟩ = 0 := rfl

@[simp] theorem gamS_22 {R : Type} [Ring R] {m : ℕ} (K : Matrix (Fin m) (Fin m) R)
    (a : Fin (GlobalTheory.IndLineGL.blk3 m 2)) (b : Fin (GlobalTheory.IndLineGL.blk3 m 2)) : gamS K ⟨2, a⟩ ⟨2, b⟩ = 0 := rfl

def uniqueFirstBlockThree {m : ℕ} : Unique (Fin (GlobalTheory.IndLineGL.blk3 m 0)) := inferInstanceAs (Unique (Fin 1))

def uniqueLastBlockThree {m : ℕ} : Unique (Fin (GlobalTheory.IndLineGL.blk3 m 2)) := inferInstanceAs (Unique (Fin 1))
attribute [local instance] uniqueFirstBlockThree uniqueLastBlockThree

end GlobalTheory.SplitCoord.GamInv

