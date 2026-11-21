import Mathlib

open MeasureTheory

namespace GlobalTheory.UnipotentFibration

variable {G : Type} [Group G]

def pairGroup (P N : Subgroup G) (hnorm : ∀ p ∈ P, ∀ n ∈ N, p * n * p⁻¹ ∈ N) :
    Subgroup (P × P) where
  carrier := {g | (g.1 : G) * (g.2 : G)⁻¹ ∈ N}
  one_mem' := by simp [N.one_mem]
  mul_mem' := by
    rintro ⟨a, b⟩ ⟨c, d⟩ h1 h2
    have := N.mul_mem (hnorm a a.2 _ h2) h1
    simp only [Set.mem_setOf_eq, Prod.mk_mul_mk, Subgroup.coe_mul] at *
    convert this using 1
    group
  inv_mem' := by
    rintro ⟨a, b⟩ h
    have := hnorm _ (P.inv_mem a.2) _ (N.inv_mem h)
    simp only [Set.mem_setOf_eq, Prod.inv_mk, Subgroup.coe_inv] at *
    convert this using 1
    group

variable {P N : Subgroup G} {hnorm : ∀ p ∈ P, ∀ n ∈ N, p * n * p⁻¹ ∈ N}

lemma pair_mem (g : pairGroup P N hnorm) : (g.1.1 : G) * (g.1.2 : G)⁻¹ ∈ N := g.2

lemma pair_act_mem (g : pairGroup P N hnorm) (n : N) :
    (g.1.1 : G) * n.1 * (g.1.2 : G)⁻¹ ∈ N := by
  have := N.mul_mem (pair_mem g) (hnorm _ g.1.2.2 _ n.2)
  convert this using 1
  group

instance pairAction : MulAction (pairGroup P N hnorm) (N × G) where
  smul g z := (⟨(g.1.1 : G) * z.1.1 * (g.1.2 : G)⁻¹, pair_act_mem g z.1⟩, (g.1.2 : G) * z.2)
  one_smul z := by
    change ((⟨_, _⟩, _) : N × G) = z
    ext <;> simp
  mul_smul g h z := by
    change ((⟨_, _⟩, _) : N × G) = (⟨(g.1.1 : G) * ((h.1.1 : G) * z.1.1 * (h.1.2 : G)⁻¹) * (g.1.2 : G)⁻¹, _⟩, (g.1.2 : G) * ((h.1.2 : G) * z.2))
    ext <;> simp [mul_assoc]

lemma pair_smul_fst (g : pairGroup P N hnorm) (z : N × G) :
    ((g • z).1 : G) = (g.1.1 : G) * z.1.1 * (g.1.2 : G)⁻¹ := rfl

lemma pair_smul_snd (g : pairGroup P N hnorm) (z : N × G) :
    (g • z).2 = (g.1.2 : G) * z.2 := rfl

end GlobalTheory.UnipotentFibration
