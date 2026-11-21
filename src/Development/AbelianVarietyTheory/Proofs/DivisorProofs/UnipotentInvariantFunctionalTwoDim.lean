import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogAbsEEqZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FullRk
import Development.AbelianVarietyTheory.Definitions.Divisors.DiscreteSeriesHermitianUnique
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FullRankZetaSurjective
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LastColsVal

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section

namespace GlobalTheory.FullRankCoinv.JacReduce

open GlobalTheory.FullRankCoinv

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

def rtr {n d : ℕ} (M : GL (Fin d) k) :
    (Matrix (Fin n) (Fin d) k → ℂ) →ₗ[ℂ] (Matrix (Fin n) (Fin d) k → ℂ) where
  toFun Ψ := fun Y => Ψ (Y * M.1)
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

theorem rtr_apply {n d : ℕ} (M : GL (Fin d) k) (Ψ : Matrix (Fin n) (Fin d) k → ℂ) :
    rtr M Ψ = fun Y => Ψ (Y * M.1) := rfl

end GlobalTheory.FullRankCoinv.JacReduce

