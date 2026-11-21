import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Definitions.Divisors.IsCompactIsOpenUnitsAt
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.MemConfTOfDetNeZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfComponentTensorAdelicFunctionEq
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EigenIntertwinerTransitive
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaActionExists
import Development.AbelianVarietyTheory.Definitions.Divisors.IsPairOfIsTriple
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OneMemKAt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatAtVAtStable
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicHeisenbergActsByLocalSchrodinger
import Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts
import Development.AbelianVarietyTheory.Definitions.Divisors.DiscreteSeriesHermitianUnique
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchrodingerPreservesSchwartzBruhat
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardAdelicCharacterNontrivialAtPlaces
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsComplementaryAdelicSchwartzRestFunctionStatement

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)

noncomputable section
namespace GlobalTheory.ConeFourier
open scoped GlobalTheory.VacAny

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

variable (E) in

private def liftE (v : Pl F) : Fv F v ⊗[F] E →ₗ[F] AE F E := TensorProduct.map (GlobalTheory.LatVac.liftV v) LinearMap.id

private def ptAt {n d : ℕ} (v : Pl F) (y : Fin n → Fv F v ⊗[F] E) (w : Fin d → E) : Matrix (Fin n) (Fin d) (AE F E) :=
  Matrix.vecMulVec (fun i => liftE E v (y i)) (incV F w)

private theorem at_liftE (v : Pl F) (z : Fv F v ⊗[F] E) : At (evFin F v) (liftE E v z) := by
  intro u hu
  induction z using TensorProduct.induction_on with
  | zero => simp
  | tmul t x =>
    rw [liftE, TensorProduct.map_tmul, TensorProduct.smul_tmul', GlobalTheory.LatVac.at_liftV v t u hu, TensorProduct.zero_tmul]
  | add x y hx hy => rw [map_add, smul_add, hx, hy, add_zero]

private theorem compFin_liftE (v : Pl F) (z : Fv F v ⊗[F] E) : compFin F E v (liftE E v z) = z := by
  induction z using TensorProduct.induction_on with
  | zero => simp
  | tmul t x => exact congrArg (· ⊗ₜ[F] x) (GlobalTheory.LatVac.evFin_liftV v t)
  | add x y hx hy => rw [map_add, map_add, hx, hy]

private theorem at_smul {M : Type} [AddCommGroup M] [Module (AF F) M] (v : Pl F) (a : Fv F v) (z : M) :
    At (evFin F v) (GlobalTheory.LatVac.liftV v a • z) := fun u hu => by
  rw [smul_smul, ← smul_eq_mul, GlobalTheory.LatVac.at_liftV v a u hu, zero_smul]

private theorem eq_of_at {v : Pl F} {z z' : AE F E} (hz : At (evFin F v) z) (hz' : At (evFin F v) z')
    (h : compFin F E v z = compFin F E v z') : z = z' := by
  obtain ⟨h1, h2⟩ := at_evFin_iff.1 hz
  obtain ⟨h1', h2'⟩ := at_evFin_iff.1 hz'
  refine GlobalTheory.Doubling.adele_ext (fun w => by rw [h1, h1']) fun w => ?_
  by_cases hw : w = v
  · subst hw; exact h
  · rw [h2 w hw, h2' w hw]

private theorem liftE_smul (v : Pl F) (a : Fv F v) (z : Fv F v ⊗[F] E) :
    liftE E v (a • z) = GlobalTheory.LatVac.liftV v a • liftE E v z :=
  eq_of_at (at_liftE v _) (at_smul v a _) (by rw [compFin_smul, compFin_liftE, compFin_liftE, GlobalTheory.LatVac.evFin_liftV])

private theorem ptAt_add {n d : ℕ} (v : Pl F) (y y' : Fin n → Fv F v ⊗[F] E) (w : Fin d → E) :
    ptAt v (y + y') w = ptAt v y w + ptAt v y' w := by
  ext i j
  simp [ptAt, Matrix.vecMulVec_apply, map_add, add_mul]

private theorem ptAt_smul {n d : ℕ} (v : Pl F) (a : Fv F v) (y : Fin n → Fv F v ⊗[F] E) (w : Fin d → E) :
    ptAt v (a • y) w = GlobalTheory.LatVac.liftV v a • ptAt v y w := by
  ext i j
  simp only [ptAt, Matrix.vecMulVec_apply, Pi.smul_apply, liftE_smul, Matrix.smul_apply, smul_mul_assoc]

private theorem symp_add_left {σ : E →ₐ[F] E} {n d : ℕ} (JX : Matrix (Fin n) (Fin n) (AE F E)) (JW : Matrix (Fin d) (Fin d) (AE F E))
    (ξ : AE F E) (x x' y : Matrix (Fin n) (Fin d) (AE F E)) :
    symp (R := AF F) (cA σ) ξ JX JW (x + x') y = symp (R := AF F) (cA σ) ξ JX JW x y + symp (R := AF F) (cA σ) ξ JX JW x' y := by
  simp only [symp, hTens, Matrix.add_apply, map_add, mul_add, add_mul, Finset.sum_add_distrib]

private theorem symp_add_right {σ : E →ₐ[F] E} {n d : ℕ} (JX : Matrix (Fin n) (Fin n) (AE F E)) (JW : Matrix (Fin d) (Fin d) (AE F E))
    (ξ : AE F E) (x y y' : Matrix (Fin n) (Fin d) (AE F E)) :
    symp (R := AF F) (cA σ) ξ JX JW x (y + y') = symp (R := AF F) (cA σ) ξ JX JW x y + symp (R := AF F) (cA σ) ξ JX JW x y' := by
  simp only [symp, hTens, Matrix.add_apply, map_add, mul_add, Finset.sum_add_distrib]

private def pairAt (σ : E →ₐ[F] E) {n d : ℕ} (JX : Matrix (Fin n) (Fin n) E) (JW : Matrix (Fin d) (Fin d) E) (v : Pl F)
    (w' w : Fin d → E) : (Fin n → Fv F v ⊗[F] E) →ₗ[Fv F v] (Fin n → Fv F v ⊗[F] E) →ₗ[Fv F v] Fv F v :=
  LinearMap.mk₂ (Fv F v)
    (fun x y => evFin F v (symp (R := AF F) (cA σ) (-1) (incM F JX) (incM F JW) (ptAt v x w') (ptAt v y w)))
    (fun x x' y => by rw [ptAt_add, symp_add_left, map_add])
    (fun a x y => by
      rw [ptAt_smul, ← one_smul (AF F) (ptAt v y w), GlobalTheory.LatVac.symp_smul_smul, one_smul, mul_one, map_mul,
        GlobalTheory.LatVac.evFin_liftV, smul_eq_mul])
    (fun x y y' => by rw [ptAt_add, symp_add_right, map_add])
    (fun a x y => by
      rw [ptAt_smul, ← one_smul (AF F) (ptAt v x w'), GlobalTheory.LatVac.symp_smul_smul, one_smul, one_mul, map_mul,
        GlobalTheory.LatVac.evFin_liftV, smul_eq_mul])

private theorem pairAt_apply (σ : E →ₐ[F] E) {n d : ℕ} (JX : Matrix (Fin n) (Fin n) E) (JW : Matrix (Fin d) (Fin d) E) (v : Pl F)
    (w' w : Fin d → E) (x y : Fin n → Fv F v ⊗[F] E) : pairAt σ JX JW v w' w x y =
      evFin F v (symp (R := AF F) (cA σ) (-1) (incM F JX) (incM F JW) (ptAt v x w') (ptAt v y w)) := rfl

end GlobalTheory.ConeFourier
end

