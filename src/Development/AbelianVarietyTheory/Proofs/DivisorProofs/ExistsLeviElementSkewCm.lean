import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsLevi

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK

noncomputable section

namespace GlobalTheory.LeviAdapted

open Matrix

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

theorem form_swap (hσ : ∀ x, σ (σ x) = x) {n : ℕ} {J : Matrix (Fin n) (Fin n) E} (hJ : ∀ i j, σ (J j i) = -J i j)
    (a b : Fin n → E) : form σ J a b = -σ (form σ J b a) := by
  simp only [form, dotProduct, mulVec, map_sum, map_mul, hσ, hJ, Finset.mul_sum, Finset.sum_neg_distrib, neg_mul, mul_neg, neg_neg]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun k _ => ?_
  ring

theorem form_add_left {n : ℕ} (J : Matrix (Fin n) (Fin n) E) (a a' b : Fin n → E) :
    form σ J (a + a') b = form σ J a b + form σ J a' b := by simp [form, add_dotProduct]

theorem form_smul_left {n : ℕ} (J : Matrix (Fin n) (Fin n) E) (s : E) (a b : Fin n → E) :
    form σ J (s • a) b = s * form σ J a b := by simp [form, smul_dotProduct]

theorem decomp {B : Base F E} {d d₁ r s : ℕ} {W : Spc F E d} {W₁ : Spc F E d₁} (hW : W.IsSkew σ B r s)
    {H' : Plane E d d₁} {i₀ i₁ : ℕ} (hA : H'.IsAdapted σ B W W₁ i₀ i₁) :
    (∀ v : Fin d → E, ∃ (a b : E) (u : Fin d₁ → E), v = a • H'.x + H'.ι *ᵥ u + b • H'.y) ∧
    ∀ u : Fin d₁ → E, H'.ι *ᵥ u = 0 → u = 0 := by
  let φ : ((E × (Fin d₁ → E)) × E) →ₗ[E] (Fin d → E) :=
    LinearMap.coprod (LinearMap.coprod (LinearMap.toSpanSingleton E _ H'.x) (Matrix.mulVecLin H'.ι))
      (LinearMap.toSpanSingleton E _ H'.y)
  have hφ : ∀ p, φ p = p.1.1 • H'.x + H'.ι *ᵥ p.1.2 + p.2 • H'.y := fun p => by
    simp [φ, LinearMap.coprod_apply]
  have hsurj : Function.Surjective φ := by
    rw [← LinearMap.range_eq_top, eq_top_iff, ← hW.lat.span_eq_top, Submodule.span_le]
    intro z hz
    obtain ⟨a, b, u, -, -, -, rfl⟩ := hA.split z hz
    exact ⟨((a, u), b), hφ _⟩
  have hrk : Module.finrank E ((E × (Fin d₁ → E)) × E) = Module.finrank E (Fin d → E) := by
    simp [Module.finrank_prod, hA.rank]; ring
  have hinj : Function.Injective φ := (LinearMap.injective_iff_surjective_of_finrank_eq_finrank hrk).2 hsurj
  refine ⟨fun v => ?_, fun u hu => ?_⟩
  · obtain ⟨p, rfl⟩ := hsurj v
    exact ⟨p.1.1, p.2, p.1.2, hφ p⟩
  · have : φ ((0, u), 0) = φ 0 := by rw [hφ, map_zero]; simp [hu]
    have := hinj this
    simpa using congrArg (fun p => p.1.2) this

theorem det_ne_zero {B : Base F E} {d r s : ℕ} {W : Spc F E d} (hW : W.IsSkew σ B r s) : W.J.det ≠ 0 := by
  obtain ⟨w⟩ : Nonempty (InfinitePlace F) := inferInstance
  have h := GlobalTheory.LeviUnitary.det_ne_zero_of_hasSig (hW.sig w)
  rw [det_smul] at h
  have h' := right_ne_zero_of_mul h
  intro h0
  apply h'
  have := RingHom.map_det (B.emb w).1 W.J
  rw [h0, map_zero] at this
  exact this.symm

theorem isUnit_det_low (hσ : ∀ x, σ (σ x) = x) {B : Base F E} {d d₁ r s : ℕ} {W : Spc F E d} {W₁ : Spc F E d₁}
    (hW : W.IsSkew σ B r s) {H' : Plane E d d₁} {i₀ i₁ : ℕ} (hA : H'.IsAdapted σ B W W₁ i₀ i₁) : IsUnit W₁.J.det := by
  obtain ⟨hdec, hinj⟩ := decomp hW hA
  rw [isUnit_iff_ne_zero]
  intro h0
  obtain ⟨w, hw0, hw⟩ := Matrix.exists_mulVec_eq_zero_iff.2 h0
  apply hw0
  set w' : Fin d₁ → E := fun j => σ (w j) with hw'
  set z : Fin d → E := H'.ι *ᵥ w' with hz
  have hσz : (fun i => σ (z i)) = H'.ι.map σ *ᵥ w := by
    funext i
    simp [hz, hw', mulVec, dotProduct, map_sum, map_mul, hσ]
  have hι : ∀ u, form σ W.J (H'.ι *ᵥ u) z = 0 := by
    intro u
    have e : form σ W.J (H'.ι *ᵥ u) z = u ⬝ᵥ (W₁.J *ᵥ w) := by
      rw [form, hσz, ← hA.gram, ← mulVec_mulVec, ← mulVec_mulVec, mulVec_transpose, dotProduct_comm,
        dotProduct_mulVec, dotProduct_comm]
    rw [e, hw, dotProduct_zero]
  have hx : form σ W.J H'.x z = 0 := by
    rw [form_swap hσ hW.skew, (hA.orth w').1, map_zero, neg_zero]
  have hy : form σ W.J H'.y z = 0 := by
    rw [form_swap hσ hW.skew, (hA.orth w').2, map_zero, neg_zero]
  have hall : ∀ v, form σ W.J v z = 0 := by
    intro v
    obtain ⟨a, b, u, rfl⟩ := hdec v
    rw [form_add_left, form_add_left, form_smul_left, form_smul_left, hx, hy, hι]
    simp
  have hJz : W.J *ᵥ (fun i => σ (z i)) = 0 := by
    funext i
    have := hall (Pi.single i 1)
    rw [form, single_one_dotProduct] at this
    exact this
  have hσz0 := Matrix.eq_zero_of_mulVec_eq_zero (det_ne_zero hW) hJz
  have hz0 : z = 0 := by
    funext i
    have := congrArg σ (congrFun hσz0 i)
    simpa [hσ] using this
  have := hinj w' hz0
  funext j
  have := congrArg σ (congrFun this j)
  simpa [hw', hσ] using this

end GlobalTheory.LeviAdapted

namespace GlobalTheory.ThK

end GlobalTheory.ThK

end
