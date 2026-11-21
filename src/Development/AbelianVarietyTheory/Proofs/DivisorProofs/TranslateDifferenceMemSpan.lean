import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WEMulNUMulTD

noncomputable section

open ValuativeRel

namespace GlobalTheory.PrinTwo.DiffTr

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

def ballSub (r : kˣ) : AddSubgroup k where
  carrier := {z | valuation k z ≤ valuation k (r : k)}
  zero_mem' := by simp
  add_mem' := fun {a b} ha hb =>
    show valuation k (a + b) ≤ valuation k (r : k) from (valuation k).map_add_le ha hb
  neg_mem' := fun {a} ha =>
    show valuation k (-a) ≤ valuation k (r : k) by rw [Valuation.map_neg]; exact ha

theorem mem_ballSub (r : kˣ) (z : k) : z ∈ ballSub r ↔ valuation k z ≤ valuation k (r : k) :=
  Iff.rfl

end GlobalTheory.PrinTwo.DiffTr

namespace GlobalTheory.PrinTwo.DiffTr
end GlobalTheory.PrinTwo.DiffTr
