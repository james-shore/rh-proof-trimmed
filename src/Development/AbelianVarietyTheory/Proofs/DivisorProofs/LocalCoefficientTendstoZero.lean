import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UAtMemIsoB
open MeasureTheory Filter NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ConeSoB
open scoped TensorProduct GlobalTheory.VacAny
open Matrix

noncomputable section
namespace GlobalTheory.VanishLocCont

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem liftV_mul (v : Pl F) (a b : Fv F v) :
    GlobalTheory.LatVac.liftV v (a * b) = GlobalTheory.LatVac.liftV v a * GlobalTheory.LatVac.liftV v b :=
  Prod.ext (mul_zero _).symm (GlobalTheory.AdelicU.singleFin_mul v a b)

theorem liftT_smul (v : Pl F) (a : Fv F v) (t : Fv F v ⊗[F] E) :
    GlobalTheory.VanishLoc.liftT (E := E) v (a • t) = GlobalTheory.LatVac.liftV v a • GlobalTheory.VanishLoc.liftT v t := by
  induction t using TensorProduct.induction_on with
  | zero => simp
  | tmul b e =>
    rw [TensorProduct.smul_tmul', GlobalTheory.VanishLoc.liftT, LinearMap.rTensor_tmul, LinearMap.rTensor_tmul,
      TensorProduct.smul_tmul', smul_eq_mul, smul_eq_mul, liftV_mul]
  | add x y hx hy => rw [smul_add, map_add, hx, hy, map_add, smul_add]

variable {n n₁ d d₁ : ℕ}

variable {σ : E →ₐ[F] E} {X : Spc F E n} {W : Spc F E d}

theorem locCo_smul (M : Model σ X W) (v : Pl F) (a : Fv F v) (u : Matrix (Fin n) (Fin d) (AE F E)) :
    GlobalTheory.LatVac.locCo M.co v (GlobalTheory.LatVac.liftV v a • u) = a • GlobalTheory.LatVac.locCo M.co v u := by
  simp only [GlobalTheory.LatVac.locCo, AddMonoidHom.coe_mk, ZeroHom.coe_mk, map_smul, Prod.smul_fst, Prod.smul_snd,
    Pi.smul_apply, smul_eq_mul, map_mul, GlobalTheory.LatVac.evFin_liftV]
  rfl

end GlobalTheory.VanishLocCont
