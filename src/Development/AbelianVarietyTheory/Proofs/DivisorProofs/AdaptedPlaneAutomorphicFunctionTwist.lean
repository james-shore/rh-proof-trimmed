import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLeviLeviElt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConstantTermUnipotentIntegral
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLeviElementAdapted

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)
open GlobalTheory.UAut GlobalTheory.SiegelSet GlobalTheory.ThK.SquareIntegrability GlobalTheory.ThKCtFin

noncomputable section

namespace GlobalTheory.ThKCtFin.LeftInvLevi

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

def planeMap {n n₁ : ℕ} (H : Plane E n n₁) : E × E × (Fin n₁ → E) →ₗ[E] (Fin n → E) where
  toFun p := p.1 • H.x + H.ι *ᵥ p.2.2 + p.2.1 • H.y
  map_add' p q := by
    simp only [Prod.fst_add, Prod.snd_add, add_smul, Matrix.mulVec_add]
    abel
  map_smul' r p := by
    simp only [Prod.smul_fst, Prod.smul_snd, smul_eq_mul, Matrix.mulVec_smul, RingHom.id_apply, smul_add, mul_smul]

theorem planeMap_apply {n n₁ : ℕ} (H : Plane E n n₁) (s t : E) (u : Fin n₁ → E) :
    planeMap H (s, t, u) = s • H.x + H.ι *ᵥ u + t • H.y := rfl

section Levi

variable {d d₁ : ℕ} {W : Spc F E d} {W₁ : Spc F E d₁} {H' : Plane E d d₁}

theorem mat_mul' (g k : UA σ W.J) : mat (g * k) = mat g * mat k := rfl

theorem mat_one' : mat (1 : UA σ W₁.J) = 1 := rfl

end Levi

theorem cA_inclR (x : E) : cA σ (inclR (F := F) (AF F) x) = inclR (F := F) (AF F) (σ x) := rfl

end GlobalTheory.ThKCtFin.LeftInvLevi

end
