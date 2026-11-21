import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogAbsEEqZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FullRk
import Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts
import Development.AbelianVarietyTheory.Definitions.Divisors.DiscreteSeriesHermitianUnique
import Development.AbelianVarietyTheory.Definitions.Divisors.RankEqCardIffExistsFrameMatrixFirstColumnBlock
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalGLEmbeddingUnitary

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section

namespace GlobalTheory.JacBridge.Geom

open GlobalTheory.EmbChart GlobalTheory.LeviAtPlace

section Pure

variable {R S : Type} [CommRing R] [CommRing S] {n : ℕ}

def mid (j : Fin n) : Fin (n + 2) := j.castSucc.succ

def colQ (x y : Fin (n + 2) → R) (ι : Matrix (Fin (n + 2)) (Fin n) R) : Matrix (Fin (n + 2)) (Fin (n + 2)) R :=
  Matrix.of fun r i =>
    if i.1 = 0 then x r else if i.1 + 1 = n + 2 then y r
    else if h : i.1 - 1 < n then ι r ⟨i.1 - 1, h⟩ else 0

variable (x y : Fin (n + 2) → R) (ι : Matrix (Fin (n + 2)) (Fin n) R)

@[simp] theorem colQ_zero (r : Fin (n + 2)) : colQ x y ι r 0 = x r := by simp [colQ]

@[simp] theorem colQ_last (r : Fin (n + 2)) : colQ x y ι r (Fin.last (n + 1)) = y r := by simp [colQ]

@[simp] theorem colQ_mid (r : Fin (n + 2)) (j : Fin n) : colQ x y ι r (mid j) = ι r j := by
  have := j.2
  have h : j.1 ≠ n := by omega
  simp [colQ, mid, h]

end Pure

end GlobalTheory.JacBridge.Geom
