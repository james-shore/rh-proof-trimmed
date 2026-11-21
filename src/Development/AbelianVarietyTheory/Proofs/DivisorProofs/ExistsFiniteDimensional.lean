import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasLocType

noncomputable section

open Topology GlobalTheory.PRep

namespace GlobalTheory.ThK.CoinvFin

variable {G : Type} [Group G]

def IsAvg (K K' : Subgroup G) (t : Finset G) : Prop :=
  t.Nonempty ∧ (∀ g ∈ t, g ∈ K) ∧ ∀ (V : Type) [AddCommMonoid V] (φ : G → V), (∀ g, ∀ k ∈ K', φ (g * k) = φ g) →
    ∀ k ∈ K, ∑ g ∈ t, φ (k * g) = ∑ g ∈ t, φ g

def stab {V : Type} [AddCommGroup V] [Module ℂ V] (ρ : Representation ℂ G V) (v : V) : Subgroup G where
  carrier := {g | ρ g v = v}
  one_mem' := by simp
  mul_mem' := fun {a b} ha hb => by
    simp only [Set.mem_setOf_eq] at ha hb ⊢
    rw [map_mul, Module.End.mul_apply, hb, ha]
  inv_mem' := fun {a} ha => by
    simp only [Set.mem_setOf_eq] at ha ⊢
    conv_lhs => rw [← ha]
    rw [← Module.End.mul_apply, ← map_mul, inv_mul_cancel, map_one, Module.End.one_apply]

theorem IsAvg.fix {V : Type} [AddCommGroup V] [Module ℂ V] (ρ : Representation ℂ G V) (v : V) {K : Subgroup G}
    {t : Finset G} (h : IsAvg K (stab ρ v) t) : ∀ k ∈ K, ρ k (∑ g ∈ t, ρ g v) = ∑ g ∈ t, ρ g v := by
  intro k hk
  rw [map_sum, ← h.2.2 V (fun g => ρ g v) (fun g k hk => by
    rw [map_mul, Module.End.mul_apply, show ρ k v = v from hk]) k hk]
  simp only [map_mul, Module.End.mul_apply]

variable [TopologicalSpace G] [IsTopologicalGroup G]

end GlobalTheory.ThK.CoinvFin

end
