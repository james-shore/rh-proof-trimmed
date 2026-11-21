import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsSubquotientDetRepParInd
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocFieldFv
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IndicatorIntMMemSB
import Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts
import Development.AbelianVarietyTheory.Definitions.Divisors.DiscreteSeriesHermitianUnique
import Development.AbelianVarietyTheory.Definitions.Divisors.RankEqCardIffExistsFrameMatrixFirstColumnBlock
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalGLEmbeddingUnitary

noncomputable section

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling (absE)
open GlobalTheory.SmGL GlobalTheory.IndLineGL GlobalTheory.EmbChart
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory.SplitCoord

abbrev Ix (m : ℕ) : Type := Σ i : Fin 3, Fin (blk3 m i)

def gamS {R : Type} [Ring R] {m : ℕ} (K : Matrix (Fin m) (Fin m) R) : Matrix (Ix m) (Ix m) R
  | ⟨0, _⟩, ⟨2, _⟩ => 1
  | ⟨2, _⟩, ⟨0, _⟩ => -1
  | ⟨1, i⟩, ⟨1, j⟩ => K i j
  | _, _ => 0

def gT {R : Type} [CommRing R] {m : ℕ} (g : GL (Fin m) R) : GL (Fin m) R :=
  ⟨(g : Matrix (Fin m) (Fin m) R)ᵀ, ((g⁻¹ : GL (Fin m) R) : Matrix (Fin m) (Fin m) R)ᵀ,
    by rw [← Matrix.transpose_mul, ← Units.val_mul, inv_mul_cancel, Units.val_one, Matrix.transpose_one],
    by rw [← Matrix.transpose_mul, ← Units.val_mul, mul_inv_cancel, Units.val_one, Matrix.transpose_one]⟩

theorem gT_val {R : Type} [CommRing R] {m : ℕ} (g : GL (Fin m) R) :
    (gT g : Matrix (Fin m) (Fin m) R) = (g : Matrix (Fin m) (Fin m) R)ᵀ := rfl

section Idele

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}
  {v : Pl F}

def ptA (hcm : IsCMExt F E σ) (t : E →ₐ[F] Fv F v) (p q : Fv F v) : AE F E :=
  1 + tensAt E v ((splitAlgEquiv hcm t).symm (p, q) - 1)

theorem ptA_mul (hcm : IsCMExt F E σ) (t : E →ₐ[F] Fv F v) (p q p' q' : Fv F v) :
    ptA hcm t p q * ptA hcm t p' q' = ptA hcm t (p * p') (q * q') := by
  set Y := (splitAlgEquiv hcm t).symm (p, q)
  set Z := (splitAlgEquiv hcm t).symm (p', q')
  have hYZ : (splitAlgEquiv hcm t).symm (p * p', q * q') = Y * Z := by
    rw [← map_mul]; rfl
  have e1 : Y * Z - 1 = (Y - 1) + (Z - 1) + (Y - 1) * (Z - 1) := by ring
  have e2 : tensAt E v (Y - 1) * tensAt E v (Z - 1) = tensAt E v ((Y - 1) * (Z - 1)) := by
    rw [tensAt_mul_right, compFin_tensAt]
  simp only [ptA, hYZ, e1, map_add, ← e2]
  ring

theorem ptA_one (hcm : IsCMExt F E σ) (t : E →ₐ[F] Fv F v) : ptA hcm t 1 1 = 1 := by
  have : (splitAlgEquiv hcm t).symm ((1 : Fv F v), (1 : Fv F v)) = 1 := by
    rw [← map_one (splitAlgEquiv hcm t).symm]; rfl
  rw [ptA, this, sub_self, map_zero, add_zero]

def unitHom (hcm : IsCMExt F E σ) (t : E →ₐ[F] Fv F v) : (Fv F v)ˣ × (Fv F v)ˣ →* (AE F E)ˣ where
  toFun x := ⟨ptA hcm t x.1 x.2, ptA hcm t (x.1⁻¹ : (Fv F v)ˣ) (x.2⁻¹ : (Fv F v)ˣ),
    by rw [ptA_mul, Units.mul_inv, Units.mul_inv, ptA_one],
    by rw [ptA_mul, Units.inv_mul, Units.inv_mul, ptA_one]⟩
  map_one' := Units.ext (by simp only [Prod.fst_one, Prod.snd_one, Units.val_one]; exact ptA_one hcm t)
  map_mul' x y := Units.ext (by simp only [Prod.fst_mul, Prod.snd_mul, Units.val_mul]; exact (ptA_mul hcm t _ _ _ _).symm)

theorem unitHom_val (hcm : IsCMExt F E σ) (t : E →ₐ[F] Fv F v) (x : (Fv F v)ˣ × (Fv F v)ˣ) :
    (unitHom hcm t x : AE F E) = ptA hcm t x.1 x.2 := rfl

end Idele

end GlobalTheory.SplitCoord
