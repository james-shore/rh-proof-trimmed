import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IndicatorIntMMemSB
import Development.AbelianVarietyTheory.Definitions.Divisors.DiscreteSeriesHermitianUnique
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.ScaledIntegerPeriodic
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InducedScalarIrreducible

noncomputable section

open MeasureTheory ValuativeRel Matrix GlobalTheory.SplitWeil GlobalTheory.SplitFlip GlobalTheory.KSplit

namespace GlobalTheory.KSplit

section

open GlobalTheory.SmGL GlobalTheory.PRep GlobalTheory.RankFibre

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

theorem parChar_div_val (a a' : ℕ) (α β : kˣ →* ℂˣ) (p : parab k (blocks a a')) (A : GL (Fin a) k) (D : GL (Fin a') k)
    (hp : leviProj k (blocks a a') p = leviTwo k (Fin a) (Fin a') (A, D)) :
    (parChar (α * β⁻¹) β a a' p : ℂ) =
      (α (gdet A) : ℂ) * β (gdet D) * apow (gdet A) ((a' : ℂ) / 2) * apow (gdet D) (-(a : ℂ) / 2) := by
  have h1 : α * β⁻¹ * β = α := by ext x; simp
  simp only [parChar, h1, MonoidHom.comp_apply, MonoidHom.mul_apply, hp, deltaHalf_two, MulEquiv.coe_toMonoidHom,
    MulEquiv.symm_apply_apply, MonoidHom.coe_fst, MonoidHom.coe_snd, detChar_apply, Units.val_mul, val_absPow,
    Fintype.card_fin, apow]
  show _ = (α (GeneralLinearGroup.det A) : ℂ) * β (GeneralLinearGroup.det D) *
    ((nabs k (GeneralLinearGroup.det A) : ℝ) : ℂ) ^ _ * ((nabs k (GeneralLinearGroup.det D) : ℝ) : ℂ) ^ _
  ring

theorem indSp_eq_indScal (a a' : ℕ) (α β : kˣ →* ℂˣ) : indSp a a' α β = indScal (α * β⁻¹) β a a' := by
  ext f
  constructor
  · rintro ⟨h1, h2⟩
    refine ⟨mem_smoothPart_of_nhds (h2.mono fun u hu => funext hu), fun p g => ?_⟩
    have hp : leviProj k (blocks a a') p = leviTwo k (Fin a) (Fin a')
        (leviProj k (blocks a a') p false, leviProj k (blocks a a') p true) :=
      ((leviTwo k (Fin a) (Fin a')).apply_symm_apply _).symm
    rw [ofChar_apply, parChar_div_val a a' α β p _ _ hp]
    refine h1 p _ _ (fun i j => p.1.val (finSumFinEquiv (Sum.inl i)) (finSumFinEquiv (Sum.inr j))) ?_ g
    ext (i | i) (j | j)
    · rfl
    · rfl
    · exact (mem_parab_two k).1 p.2 i j
    · rfl
  · rintro ⟨h1, h2⟩
    refine ⟨fun b A D N hb h => ?_, ?_⟩
    · have hb' : b ∈ parab k (blocks a a') := (mem_parab_two k).2 fun j i =>
        congrFun (congrFun hb (Sum.inr j)) (Sum.inl i)
      have hp : leviProj k (blocks a a') ⟨b, hb'⟩ = leviTwo k (Fin a) (Fin a') (A, D) := by
        funext x
        cases x
        · ext i j
          exact congrFun (congrFun hb (Sum.inl i)) (Sum.inl j)
        · ext i j
          exact congrFun (congrFun hb (Sum.inr i)) (Sum.inr j)
      have := h2 ⟨b, hb'⟩ h
      rw [ofChar_apply, parChar_div_val a a' α β _ _ _ hp] at this
      exact this
    · have ho : IsOpen {g : GL (Fin (a + a')) k | rightReg ℂ (GL (Fin (a + a')) k) ℂ g f = f} := h1
      exact Filter.mem_of_superset (ho.mem_nhds (by simp)) fun u hu h => congrFun hu h

end

end GlobalTheory.KSplit

end
