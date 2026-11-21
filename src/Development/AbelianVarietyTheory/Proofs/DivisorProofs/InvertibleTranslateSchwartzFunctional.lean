import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConeIntZero
import Development.AbelianVarietyTheory.Definitions.Divisors.IsCompactIsOpenUnitsAt
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.MemConfTOfDetNeZero
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfComponentTensorAdelicFunctionEq
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EigenIntertwinerTransitive
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.SchwartzBruhatMatrixExistsOpenAddSubgroupInvaria
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchroedingerMemSchwartzBruhatFinitePlace

open MeasureTheory Filter NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ConeSoB
open scoped Matrix GlobalTheory.VacAny
attribute [local instance] GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.measFv GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.borelFv

namespace GlobalTheory.SBHaarDelta

open scoped Topology

section Group

variable {G : Type} [AddCommGroup G] [TopologicalSpace G]

theorem translate_mem [IsTopologicalAddGroup G] {f : G → ℂ} (hf : f ∈ SB G) (a : G) : (fun x => f (x + a)) ∈ SB G :=
  ⟨hf.1.comp_continuous (continuous_add_const a), hf.2.comp_homeomorph (Homeomorph.addRight a)⟩

def IsInvForm (L : (G → ℂ) → ℂ) : Prop :=
  (∀ f ∈ SB G, ∀ g ∈ SB G, L (f + g) = L f + L g) ∧ (∀ z : ℂ, ∀ f ∈ SB G, L (z • f) = z * L f) ∧
    ∀ f ∈ SB G, ∀ a : G, L (fun x => f (x + a)) = L f

theorem IsInvForm.sum [IsTopologicalAddGroup G] {L : (G → ℂ) → ℂ} (hL : IsInvForm L) {e : G → ℂ} (he : e ∈ SB G)
    (c : G → ℂ) (s : Finset G) :
    (fun t => ∑ a ∈ s, c a * e (t - a)) ∈ SB G ∧ L (fun t => ∑ a ∈ s, c a * e (t - a)) = (∑ a ∈ s, c a) * L e := by
  classical
  induction s using Finset.induction_on with
  | empty =>
    have := hL.1 0 (zero_mem _) 0 (zero_mem _)
    refine ⟨zero_mem _, ?_⟩
    simp only [Finset.sum_empty, zero_mul]
    exact (by simpa using this : L 0 = 0)
  | insert a s ha ih =>
    have e1 : (fun t => ∑ b ∈ insert a s, c b * e (t - b)) =
        c a • (fun t => e (t + -a)) + fun t => ∑ b ∈ s, c b * e (t - b) := by
      funext t; simp [Finset.sum_insert ha, sub_eq_add_neg]
    have h1 := translate_mem he (-a)
    rw [e1]
    refine ⟨add_mem (Submodule.smul_mem _ _ h1) ih.1, ?_⟩
    rw [hL.1 _ (Submodule.smul_mem _ _ h1) _ ih.1, hL.2.1 _ _ h1, hL.2.2 _ he, ih.2, Finset.sum_insert ha, add_mul]

end Group

end GlobalTheory.SBHaarDelta
