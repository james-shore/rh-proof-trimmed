module

public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
public import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicWeilRepSchrodingerModelUnique
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.Tactic.ENatToNat

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodModelsDifferBySymplecticMatrix, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaModelChange

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodModelsDifferBySymplecticMatrix =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodModelsDifferBySymplecticMatrix", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open scoped Matrix

namespace GlobalTheory

theorem goodModel_coords_rat_symplectic : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E) (ψ : AddChar (AF F) ℂ) (n d : ℕ) (X : Spc F E n) (W : Spc F E d) (M M₁ : Model σ X W), M.IsGood ψ → M₁.IsGood ψ → ∃ a : Matrix ((Fin n × Fin d) ⊕ (Fin n × Fin d)) ((Fin n × Fin d) ⊕ (Fin n × Fin d)) F, aᵀ * Matrix.fromBlocks 0 1 (-1) 0 * a = Matrix.fromBlocks 0 1 (-1) 0 ∧ ∀ u, M₁.co.e u = ((a.map (algebraMap F (AF F)) *ᵥ Sum.elim (M.co.e u).1 (M.co.e u).2) ∘ Sum.inl, (a.map (algebraMap F (AF F)) *ᵥ Sum.elim (M.co.e u).1 (M.co.e u).2) ∘ Sum.inr) := by
  intro F E _ _ _ _ _ σ ψ n d X W M M₁ hM hM₁
  classical
  let ι := algebraMap F (AF F)
  have hι : Function.Injective ι := AdeleRing.algebraMap_injective (𝓞 F) F
  let sp := LinearEquiv.sumArrowLequivProdArrow (Fin n × Fin d) (Fin n × Fin d) (AF F) (AF F)
  let Φ₀ := M.co.e.trans sp.symm
  let Φ₁ := M₁.co.e.trans sp.symm
  have hΦ₀ : ∀ u, Φ₀ u = Sum.elim (M.co.e u).1 (M.co.e u).2 := fun u => rfl
  have hΦ₁ : ∀ u, Φ₁ u = Sum.elim (M₁.co.e u).1 (M₁.co.e u).2 := fun u => rfl
  let A : Matrix ((Fin n × Fin d) ⊕ (Fin n × Fin d)) ((Fin n × Fin d) ⊕ (Fin n × Fin d)) (AF F) :=
    LinearMap.toMatrix' ((Φ₀.symm.trans Φ₁ : _ ≃ₗ[AF F] _) : ((Fin n × Fin d) ⊕ (Fin n × Fin d) → AF F) →ₗ[AF F] _)
  have hA : ∀ u, A *ᵥ Φ₀ u = Φ₁ u := by
    intro u; simp [A, LinearMap.toMatrix'_mulVec]

  have hspan : Submodule.span (AF F) (Set.range (incM F : Matrix (Fin n) (Fin d) E → Matrix (Fin n) (Fin d) (_root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.AE (F := F) (E := E)))) = ⊤ := by
    rw [eq_top_iff]; intro U _
    rw [Matrix.matrix_eq_sum_single U]
    refine Submodule.sum_mem _ fun i _ => Submodule.sum_mem _ fun j _ => ?_
    generalize U i j = t
    induction t using TensorProduct.induction_on with
    | zero => simp
    | tmul a e =>
      have : Matrix.single i j (a ⊗ₜ[F] e : _root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.AE (F := F) (E := E)) = a • incM F (Matrix.single i j e) := by
        ext k l
        simp only [incM, Matrix.single_apply, Matrix.smul_apply, Matrix.map_apply, inclR]
        split_ifs
        · simp [TensorProduct.smul_tmul']
        · simp
      rw [this]; exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨_, rfl⟩)
    | add x y hx hy => rw [Matrix.single_add]; exact Submodule.add_mem _ hx hy
  have hspan' : Submodule.span (AF F) (Φ₀.toLinearMap '' Set.range (incM F : Matrix (Fin n) (Fin d) E → Matrix (Fin n) (Fin d) (_root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.AE (F := F) (E := E)))) = ⊤ := by
    rw [Submodule.span_image, hspan, Submodule.map_top, LinearEquiv.range]
  have hrat0 : ∀ x : Matrix (Fin n) (Fin d) E, ∃ w : (Fin n × Fin d) ⊕ (Fin n × Fin d) → F, Φ₀ (incM F x) = fun i => ι (w i) := by
    intro x; obtain ⟨y, z, h⟩ := hM.rat x
    refine ⟨Sum.elim y z, ?_⟩; funext i; rw [hΦ₀, h]; cases i <;> rfl
  have hrat1 : ∀ x : Matrix (Fin n) (Fin d) E, ∃ w : (Fin n × Fin d) ⊕ (Fin n × Fin d) → F, Φ₁ (incM F x) = fun i => ι (w i) := by
    intro x; obtain ⟨y, z, h⟩ := hM₁.rat x
    refine ⟨Sum.elim y z, ?_⟩; funext i; rw [hΦ₁, h]; cases i <;> rfl
  let G : Set ((Fin n × Fin d) ⊕ (Fin n × Fin d) → F) := {w | ∃ x, Φ₀ (incM F x) = fun i => ι (w i)}
  have hG : Submodule.span F G = ⊤ := by
    by_contra hne
    obtain ⟨f, hf0, hfk⟩ := Submodule.exists_le_ker_of_lt_top _ (lt_top_iff_ne_top.2 hne)
    let c : (Fin n × Fin d) ⊕ (Fin n × Fin d) → F := fun i => f (fun j => if i = j then 1 else 0)
    have hfc : ∀ w, f w = ∑ i, w i * c i := by
      intro w; rw [LinearMap.pi_apply_eq_sum_univ f w]; simp [c, smul_eq_mul]
    have hP : ∀ V ∈ Submodule.span (AF F) (Φ₀.toLinearMap '' Set.range (incM F : Matrix (Fin n) (Fin d) E → Matrix (Fin n) (Fin d) (_root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.AE (F := F) (E := E)))),
        ∑ i, V i * ι (c i) = 0 := by
      intro V hV
      induction hV using Submodule.span_induction with
      | mem V hV =>
        obtain ⟨_, ⟨x, rfl⟩, rfl⟩ := hV
        obtain ⟨w, hw⟩ := hrat0 x
        have h1 := hfk (Submodule.subset_span (show w ∈ G from ⟨x, hw⟩))
        rw [LinearMap.mem_ker, hfc] at h1

        simp only [LinearEquiv.coe_coe, hw, ← map_mul, ← map_sum, h1, map_zero]
      | zero => simp
      | add x y _ _ hx hy => simp [add_mul, Finset.sum_add_distrib, hx, hy]
      | smul a x _ hx => simp [mul_assoc, ← Finset.mul_sum, hx]
    have hc : ∀ i, c i = 0 := by
      intro i
      have h1 := hP (Pi.single i 1) (by rw [hspan']; trivial)
      simp [Pi.single_apply] at h1
      exact hι (by simpa using h1)
    exact hf0 (LinearMap.ext fun w => by simp [hfc, hc])

  have hrat : ∀ w : (Fin n × Fin d) ⊕ (Fin n × Fin d) → F, ∃ q : (Fin n × Fin d) ⊕ (Fin n × Fin d) → F,
      A *ᵥ (fun i => ι (w i)) = fun i => ι (q i) := by
    intro w
    have hw : w ∈ Submodule.span F G := hG ▸ Submodule.mem_top
    induction hw using Submodule.span_induction with
    | mem w hw =>
      obtain ⟨x, hx⟩ := hw
      obtain ⟨q, hq⟩ := hrat1 x
      exact ⟨q, (congrArg (A *ᵥ ·) hx).symm.trans ((hA _).trans hq)⟩
    | zero => exact ⟨0, by funext i; simp [Matrix.mulVec, dotProduct]⟩
    | add x y _ _ hx hy =>
      obtain ⟨p, hp⟩ := hx; obtain ⟨q, hq⟩ := hy
      refine ⟨p + q, ?_⟩
      have : (fun i => ι ((x + y) i)) = (fun i => ι (x i)) + (fun i => ι (y i)) := by funext i; simp
      rw [this, Matrix.mulVec_add, hp, hq]; funext i; simp
    | smul c x _ hx =>
      obtain ⟨p, hp⟩ := hx
      refine ⟨c • p, ?_⟩
      have : (fun i => ι ((c • x) i)) = ι c • (fun i => ι (x i)) := by funext i; simp
      rw [this, Matrix.mulVec_smul, hp]; funext i; simp
  choose q hq using fun j : (Fin n × Fin d) ⊕ (Fin n × Fin d) => hrat (Pi.single j 1)
  let a : Matrix ((Fin n × Fin d) ⊕ (Fin n × Fin d)) ((Fin n × Fin d) ⊕ (Fin n × Fin d)) F := Matrix.of fun i j => q j i
  have haA : a.map ι = A := by
    ext i j
    have h1 : A *ᵥ Pi.single j 1 = fun i => ι (q j i) := by
      rw [← hq j]; congr 1; funext k; simp [Pi.single_apply]
    have h2 := congrFun h1 i
    rw [Matrix.mulVec_single_one] at h2
    simpa [a] using h2.symm
  have hstd : ∀ w w' : (Fin n × Fin d) ⊕ (Fin n × Fin d) → AF F,
      w ⬝ᵥ (Matrix.fromBlocks 0 1 (-1) 0 *ᵥ w') = (w ∘ Sum.inl) ⬝ᵥ (w' ∘ Sum.inr) - (w' ∘ Sum.inl) ⬝ᵥ (w ∘ Sum.inr) := by
    intro w w'
    rw [Matrix.fromBlocks_mulVec]
    simp [dotProduct, Fintype.sum_sum_type, Matrix.neg_mulVec, mul_comm, sub_eq_add_neg]
  have hform : ∀ u u', Φ₁ u ⬝ᵥ (Matrix.fromBlocks 0 1 (-1) 0 *ᵥ Φ₁ u') = Φ₀ u ⬝ᵥ (Matrix.fromBlocks 0 1 (-1) 0 *ᵥ Φ₀ u') := by
    intro u u'
    rw [hstd, hstd, hΦ₀, hΦ₀, hΦ₁, hΦ₁]
    simp only [Sum.elim_comp_inl, Sum.elim_comp_inr]
    rw [← M.co.form, ← M₁.co.form]
  have hsympA : Aᵀ * Matrix.fromBlocks 0 1 (-1) 0 * A = Matrix.fromBlocks 0 1 (-1) 0 := by
    ext i j
    have key : ∀ N : Matrix ((Fin n × Fin d) ⊕ (Fin n × Fin d)) ((Fin n × Fin d) ⊕ (Fin n × Fin d)) (AF F),
        N i j = Pi.single i 1 ⬝ᵥ (N *ᵥ Pi.single j 1) := by
      intro N; simp
    rw [key (Aᵀ * Matrix.fromBlocks 0 1 (-1) 0 * A), key (Matrix.fromBlocks 0 1 (-1) 0)]
    rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, Matrix.dotProduct_mulVec, Matrix.vecMul_transpose]
    have e1 : ∀ s, A *ᵥ s = Φ₁ (Φ₀.symm s) := fun s => by rw [← hA, LinearEquiv.apply_symm_apply]
    rw [e1, e1, hform]
    simp
  refine ⟨a, ?_, ?_⟩
  · apply Matrix.map_injective hι
    simp only [Matrix.map_mul, Matrix.transpose_map, Matrix.fromBlocks_map]
    rw [haA]
    simpa [Matrix.map_zero, Matrix.map_one, Matrix.map_neg] using hsympA
  · intro u
    rw [show a.map (algebraMap F (AF F)) = A from haA, ← hΦ₀, hA, hΦ₁]
    rfl

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodModelsDifferBySymplecticMatrix =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaModelChange =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaModelChange", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicWeilRepSchrodingerModelUnique\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodModelsDifferBySymplecticMatrix\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open scoped Matrix

namespace GlobalTheory.ModelChg

theorem det_ne_zero_of_hasSig {n r s : ℕ} {A : Matrix (Fin n) (Fin n) ℂ} (h : HasSig A r s) : A.det ≠ 0 := by
  obtain ⟨hrs, P, hP⟩ := h
  have hu : IsUnit (Matrix.fromBlocks (1 : Matrix (Fin r) (Fin r) ℂ) (0 : Matrix (Fin r) (Fin s) ℂ)
      (0 : Matrix (Fin s) (Fin r) ℂ) (-1 : Matrix (Fin s) (Fin s) ℂ)) := by
    rw [Matrix.isUnit_iff_isUnit_det, Matrix.det_fromBlocks_zero₂₁]; simp [Matrix.det_neg]
  have h1 := Matrix.rank_of_isUnit _ hu
  have h2 : (Pᵀ * A * P.map star).rank ≤ A.rank :=
    (Matrix.rank_mul_le_left _ _).trans (Matrix.rank_mul_le_right _ _)
  rw [hP, h1] at h2
  simp at h2
  have h3 : A.rank = n := le_antisymm (by simpa using A.rank_le_card_width) (by omega)
  have h4 : LinearMap.range A.mulVecLin = ⊤ :=
    Submodule.eq_top_of_finrank_eq (by rw [Module.finrank_fin_fun]; exact (Matrix.finrank_range_mulVecLin A).trans h3)
  have h5 : Function.Surjective A.mulVec := LinearMap.range_eq_top.mp h4
  exact (Matrix.isUnit_iff_isUnit_det A |>.mp (Matrix.mulVec_surjective_iff_isUnit.mp h5)).ne_zero

theorem det_ne_zero_of_sig {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (B : Base F E) {n r s : ℕ} (J : Matrix (Fin n) (Fin n) E) (c : ℂ) (hc : c ≠ 0)
    (h : ∀ w, HasSig (c • J.map (B.emb w).1) r s) : J.det ≠ 0 := by
  obtain ⟨w⟩ := (inferInstance : Nonempty (InfinitePlace F))
  have h1 := det_ne_zero_of_hasSig (h w)
  rw [Matrix.det_smul] at h1
  intro h0
  apply h1
  rw [show (J.map (B.emb w).1).det = (B.emb w).1 J.det from ((B.emb w).1.map_det J).symm, h0, map_zero, mul_zero]

end GlobalTheory.ModelChg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaModelChange =====
