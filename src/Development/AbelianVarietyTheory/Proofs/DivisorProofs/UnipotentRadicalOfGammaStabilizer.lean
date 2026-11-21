import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitHomVal
open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK

namespace GlobalTheory.SplitCoord.UnipDual

open GlobalTheory.SmGL GlobalTheory.IndLineGL GlobalTheory.EmbChart

variable {R : Type} [Field R] {m : ℕ}

abbrev i0 (m : ℕ) : Ix m := ⟨0, (0 : Fin 1)⟩

abbrev i2 (m : ℕ) : Ix m := ⟨2, (0 : Fin 1)⟩

abbrev i1 {m : ℕ} (k : Fin m) : Ix m := ⟨1, k⟩

variable (K : Matrix (Fin m) (Fin m) R) (A : Matrix (Ix m) (Ix m) R)

theorem g02 : gamS K (i0 m) (i2 m) = 1 := rfl
theorem g20 : gamS K (i2 m) (i0 m) = -1 := rfl
theorem g11 (i j : Fin m) : gamS K (i1 i) (i1 j) = K i j := rfl
theorem g00 : gamS K (i0 m) (i0 m) = 0 := rfl
theorem g22 : gamS K (i2 m) (i2 m) = 0 := rfl
theorem g01 (j : Fin m) : gamS K (i0 m) (i1 j) = 0 := rfl
theorem g10 (j : Fin m) : gamS K (i1 j) (i0 m) = 0 := rfl
theorem g21 (j : Fin m) : gamS K (i2 m) (i1 j) = 0 := rfl
theorem g12 (j : Fin m) : gamS K (i1 j) (i2 m) = 0 := rfl

end GlobalTheory.SplitCoord.UnipDual
