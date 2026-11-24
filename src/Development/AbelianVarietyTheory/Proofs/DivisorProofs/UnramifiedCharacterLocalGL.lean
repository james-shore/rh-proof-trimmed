module

public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
public import Development.AbelianVarietyTheory.Definitions.Foundations.T2SpaceTensorProductFiniteExtension
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalCharacterNormOneUnit
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubledUnitaryElementActsLocalOperatorAtPlaceStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdmittedDiagonalIntegralLinearFormStatement
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
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
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
import Mathlib.Tactic.Basify

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TripleLocalGlEmbeddingEquivariant, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TripleLocalGlEmbeddingEquivariantStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnramifiedCharacterLocalGL

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TripleLocalGlEmbeddingEquivariant =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TripleLocalGlEmbeddingEquivariant", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.T2SpaceTensorProductFiniteExtension\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalCharacterNormOneUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun
open scoped Matrix
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory.SiegelValGood

open scoped TensorProduct

theorem det_ne_zero_of_hasSig {n : ℕ} {M : Matrix (Fin n) (Fin n) ℂ} {r s : ℕ} (h : HasSig M r s) : M.det ≠ 0 := by
  obtain ⟨hn, A, hA⟩ := h
  let e : Fin r ⊕ Fin s ≃ Fin n := finSumFinEquiv.trans (finCongr hn)
  let A' : Matrix (Fin n) (Fin n) ℂ := A.submatrix id e.symm
  have key : A'ᵀ * M * A'.map star =
      (Matrix.fromBlocks 1 0 0 (-1) : Matrix (Fin r ⊕ Fin s) (Fin r ⊕ Fin s) ℂ).submatrix e.symm e.symm := by
    rw [← hA]
    ext i j
    simp [A', Matrix.mul_apply]
  have h2 := congrArg Matrix.det key
  rw [Matrix.det_submatrix_equiv_self, Matrix.det_mul, Matrix.det_mul, Matrix.det_fromBlocks_zero₂₁, Matrix.det_one,
    Matrix.det_neg, Matrix.det_one] at h2
  intro h0
  rw [h0, mul_zero, zero_mul] at h2
  simp at h2
  exact absurd h2.symm (pow_ne_zero _ (neg_ne_zero.2 one_ne_zero))

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem det_mul_cA {σ : E →ₐ[F] E} {n : ℕ} {J : Matrix (Fin n) (Fin n) E} (hJ : J.det ≠ 0) (h : UA σ J) :
    (mat h).det * cA σ (mat h).det = 1 := by
  have hm : (mat h)ᵀ * incM F J * (mat h).map (cA σ) = incM F J := h.2
  have h2 := congrArg Matrix.det hm
  rw [Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose] at h2
  have e1 : ((mat h).map (cA σ)).det = cA σ (mat h).det := (AlgHom.map_det (cA σ) _).symm
  have e2 : (incM F J).det = inclR (F := F) (AF F) J.det := (RingHom.map_det _ J).symm
  rw [e1, e2] at h2
  have hu : IsUnit (inclR (F := F) (AF F) J.det) := (isUnit_iff_ne_zero.2 hJ).map _
  have h3 : (mat h).det * cA σ (mat h).det * inclR (F := F) (AF F) J.det = 1 * inclR (F := F) (AF F) J.det := by
    linear_combination h2
  exact hu.mul_left_injective h3

theorem piW_algebraMap {v : Pl (F := F)} (τ : E →ₐ[F] Fv F v) (a : AF F) :
    piW τ (algebraMap (AF F) (AE F E) a) = evFin F v a := by
  show splitProj τ (compFin F E v (a ⊗ₜ[F] (1 : E))) = _
  show splitProj τ (evFin F v a ⊗ₜ[F] (1 : E)) = _
  rw [splitProj_tmul, map_one, mul_one]

theorem at_mul {v : Pl (F := F)} {x : AE F E} (hx : At (evFin F v) x) (y : AE F E) : At (evFin F v) (x * y) := fun u hu => by
  rw [← smul_mul_assoc, hx u hu, zero_mul]

theorem at_add {v : Pl (F := F)} {x y : AE F E} (hx : At (evFin F v) x) (hy : At (evFin F v) y) : At (evFin F v) (x + y) :=
  fun u hu => by rw [smul_add, hx u hu, hy u hu, add_zero]

theorem at_det_sub_one {v : Pl (F := F)} {n : ℕ} {M : Matrix (Fin n) (Fin n) (AE F E)} (hM : At (evFin F v) (M - 1)) :
    At (evFin F v) (M.det - 1) := by
  intro u hu
  let I : Ideal (AE F E) := Ideal.span (Set.range fun p : Fin n × Fin n => (M - 1) p.1 p.2)
  have hdet : M.det - 1 ∈ I := by
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_sub, map_one, RingHom.map_det, sub_eq_zero]
    have : (Ideal.Quotient.mk I).mapMatrix M = 1 := by
      ext i j
      rw [RingHom.mapMatrix_apply, Matrix.map_apply, ← map_one (Ideal.Quotient.mk I).mapMatrix,
        RingHom.mapMatrix_apply, Matrix.map_apply, Ideal.Quotient.eq]
      exact Ideal.subset_span ⟨(i, j), rfl⟩
    rw [this, Matrix.det_one]
  have hle : I ≤ (Submodule.span (AE F E) {algebraMap (AF F) (AE F E) u}).annihilator := by
    rw [Ideal.span_le]
    rintro _ ⟨p, rfl⟩
    rw [SetLike.mem_coe, Submodule.mem_annihilator_span_singleton, smul_eq_mul, mul_comm, ← Algebra.smul_def]
    have := congrFun (congrFun (hM u hu) p.1) p.2
    simpa using this
  have := (Submodule.mem_annihilator_span_singleton _ _).1 (hle hdet)
  rw [Algebra.smul_def, mul_comm]
  rwa [smul_eq_mul] at this

theorem algebraMap_injective_AE : Function.Injective (algebraMap (AF F) (AE F E)) :=
  Algebra.TensorProduct.includeLeft_injective (R := F) (S := AF F) (A := AF F) (B := E) (algebraMap F E).injective

theorem norm_det_eq_one {σ : E →ₐ[F] E} (hσ : IsCMExt F E σ) {n : ℕ} {J : Matrix (Fin n) (Fin n) E} (hJ : J.det ≠ 0)
    (h : UA σ J) :
    Units.map (Algebra.norm (AF F) : AE F E →* AF F) (Matrix.GeneralLinearGroup.det (h : GL (Fin n) (AE F E))) = 1 := by
  apply Units.ext
  apply algebraMap_injective_AE (F := F) (E := E)
  show algebraMap (AF F) (AE F E) (Algebra.norm (AF F) (mat h).det) = algebraMap (AF F) (AE F E) 1
  rw [GlobalTheory.Doubling.algebraMap_norm_eq hσ, map_one]
  exact det_mul_cA hJ h

theorem ratio_algebraMap_eq_one {X : Chars F E} {a a' : ℕ}
    (hα : ResEtaPow (Units.map (algebraMap F (AF F)).toMonoidHom).range X.α a')
    (hβ : ResEtaPow (Units.map (algebraMap F (AF F)).toMonoidHom).range X.β a) (he : Even (a + a')) (u : (AF F)ˣ) :
    X.ν (Units.map (algebraMap (AF F) (AE F E) : AF F →* AE F E) u) = 1 := by
  have h1 := hα u
  have h2 := hβ u
  show (X.α / X.β) _ = 1
  rw [MonoidHom.div_apply, div_eq_one]
  apply Circle.ext
  rw [h1, h2]
  split_ifs
  · rfl
  · have key : Even a ↔ Even a' := Nat.even_add.1 he
    by_cases ha : Even a
    · rw [ha.neg_one_pow, (key.1 ha).neg_one_pow]
    · rw [(Nat.not_even_iff_odd.1 ha).neg_one_pow, (Nat.not_even_iff_odd.1 (fun h => ha (key.2 h))).neg_one_pow]

theorem at_localIdele (v : Pl (F := F)) (x : (Fv F v)ˣ) :
    At (evFin F v) (algebraMap (AF F) (AE F E) (Neutral.B1.localIdele F v x : AF F) - 1) := by
  intro c hc
  have hs := Neutral.B1.localIdele_isSupportedAt F v x
  have key : c * ((Neutral.B1.localIdele F v x : AF F) - 1) = 0 := by
    apply Prod.ext
    · funext w
      show c.1 w * ((Neutral.B1.localIdele F v x : AF F).1 w - 1) = 0
      rw [hs.1 w, sub_self, mul_zero]
    · apply RestrictedProduct.ext
      intro P
      show c.2 P * ((Neutral.B1.localIdele F v x : AF F).2 P - 1) = 0
      by_cases hP : P = v
      · subst hP
        have : c.2 P = 0 := hc
        rw [this, zero_mul]
      · rw [hs.2 P hP, sub_self, mul_zero]
  rw [Algebra.smul_def, ← map_one (algebraMap (AF F) (AE F E)), ← map_sub, ← map_mul, key, map_zero]

end GlobalTheory.SiegelValGood

open GlobalTheory.SiegelValGood in
theorem GlobalTheory.SiegelValGood.siegel_factor_eq_sq : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E) (B : Base F E)
    (a a' : ℕ) (G : Geo σ a a') (X : Chars F E) (om : Rep σ G.V G.W) (om' : Rep σ G.V' G.W), IsTriple B G X om om' →
    ∀ v, X.Good v → ∀ (t : E →ₐ[F] Fv F v)
    (K : GL (Fin a') (Fv F v) →* UA σ G.V'.J), (∀ g, K g ∈ UAt σ G.V' (evFin F v) ∧
      (mat (K g)).map (piW t) = g.val ∧
      (mat (K g)).map (piW (t.comp σ)) = (G.V'.J.map t)⁻¹ * ((g⁻¹ : GL _ _).val)ᵀ * G.V'.J.map t) →
    ∀ g : GL (Fin a') (Fv F v),
      ((X.α / X.β) (Matrix.GeneralLinearGroup.det ((K g : UA σ G.V'.J) : GL (Fin a') (AE F E))) : ℂ) *
        ((((adeleClass F).modu (Units.map (Algebra.norm (AF F) : AE F E →* AF F)
          (Matrix.GeneralLinearGroup.det ((K g : UA σ G.V'.J) : GL (Fin a') (AE F E)))) : ℝ) ^
            ((Fintype.card (Fin (a + a')) : ℝ) / 2) : ℝ) : ℂ) = (chrW X.ν t (GlobalTheory.SplitFlip.gdet g) : ℂ) ^ 2 ∨
      ((X.α / X.β) (Matrix.GeneralLinearGroup.det ((K g : UA σ G.V'.J) : GL (Fin a') (AE F E))) : ℂ) *
        ((((adeleClass F).modu (Units.map (Algebra.norm (AF F) : AE F E →* AF F)
          (Matrix.GeneralLinearGroup.det ((K g : UA σ G.V'.J) : GL (Fin a') (AE F E)))) : ℝ) ^
            ((Fintype.card (Fin (a + a')) : ℝ) / 2) : ℝ) : ℂ) = (((chrW X.ν t (GlobalTheory.SplitFlip.gdet g))⁻¹ : ℂˣ) : ℂ) ^ 2 := by
  intro F E _ _ _ _ _ σ B a a' G X om om' hT v hv t K hK g
  left
  have hσ : IsCMExt F E σ := hT.base.cm
  have hJ : G.V'.J.det ≠ 0 := by
    intro h0
    obtain ⟨w⟩ : Nonempty (InfinitePlace F) := inferInstance
    apply det_ne_zero_of_hasSig (hT.geo.hV'.sig w)
    have e : (G.V'.J.map (B.emb w).1).det = (B.emb w).1 G.V'.J.det := (RingHom.map_det _ _).symm
    rw [e, h0, map_zero]
  obtain ⟨hat, h1, h2⟩ := hK g
  set D := Matrix.GeneralLinearGroup.det ((K g : UA σ G.V'.J) : GL (Fin a') (AE F E)) with hD
  have hDv : (D : AE F E) = (mat (K g)).det := rfl
  have hN : Units.map (Algebra.norm (AF F) : AE F E →* AF F) D = 1 := norm_det_eq_one hσ hJ (K g)
  rw [hN, map_one, NNReal.coe_one, Real.one_rpow, Complex.ofReal_one, mul_one]
  have hpt : piW t (D : AE F E) = (GlobalTheory.SplitFlip.gdet g : Fv F v) := by
    rw [hDv, RingHom.map_det, RingHom.mapMatrix_apply, h1]; rfl
  have hJt : (G.V'.J.map t).det ≠ 0 := by
    have : (G.V'.J.map t).det = t G.V'.J.det := (AlgHom.map_det t _).symm
    rw [this]
    exact (map_ne_zero _).2 hJ
  have hgi : ((g⁻¹ : GL (Fin a') (Fv F v)) : Matrix (Fin a') (Fin a') (Fv F v)).det =
      (((GlobalTheory.SplitFlip.gdet g)⁻¹ : (Fv F v)ˣ) : Fv F v) := by
    rw [show (GlobalTheory.SplitFlip.gdet g)⁻¹ = Matrix.GeneralLinearGroup.det g⁻¹ from (map_inv _ _).symm]; rfl
  have hps : piW (t.comp σ) (D : AE F E) = (((GlobalTheory.SplitFlip.gdet g)⁻¹ : (Fv F v)ˣ) : Fv F v) := by
    rw [hDv, RingHom.map_det, RingHom.mapMatrix_apply, h2, Matrix.det_mul, Matrix.det_mul, Matrix.det_nonsing_inv,
      Matrix.det_transpose, Ring.inverse_eq_inv, mul_right_comm, inv_mul_cancel₀ hJt, one_mul, hgi]
  set u := Neutral.B1.localIdele F v (GlobalTheory.SplitFlip.gdet g) with hu
  set zz : (AE F E)ˣ := Units.map (algebraMap (AF F) (AE F E) : AF F →* AE F E) u with hzz
  have hzt : ∀ τ : E →ₐ[F] Fv F v, piW τ (zz : AE F E) = (GlobalTheory.SplitFlip.gdet g : Fv F v) := fun τ => by
    show piW τ (algebraMap (AF F) (AE F E) (u : AF F)) = _
    rw [piW_algebraMap]
    exact Neutral.B1.localIdele_snd_self F v _
  have hzat : At (evFin F v) ((zz : AE F E) - 1) := at_localIdele v _
  have hνz : X.ν zz = 1 := ratio_algebraMap_eq_one hT.chars.resα hT.chars.resβ hT.geo.even u
  have hyat : At (evFin F v) (((D * zz : (AE F E)ˣ) : AE F E) - 1) := by
    have e : ((D * zz : (AE F E)ˣ) : AE F E) - 1 = ((D : AE F E) - 1) * zz + ((zz : AE F E) - 1) := by
      rw [Units.val_mul]; ring
    rw [e]
    exact at_add (at_mul (at_det_sub_one hat) _) hzat
  have hy1 : piW (t.comp σ) ((D * zz : (AE F E)ˣ) : AE F E) = 1 := by
    rw [Units.val_mul, map_mul, hps, hzt, Units.inv_mul]
  have key := GlobalTheory.ChrLocal.chrW_piW_eq F E σ hσ X.ν v t (D * zz) hyat hy1
  have hsq : Units.map (piW t).toMonoidHom (D * zz) = GlobalTheory.SplitFlip.gdet g ^ 2 := by
    apply Units.ext
    show piW t ((D * zz : (AE F E)ˣ) : AE F E) = ((GlobalTheory.SplitFlip.gdet g ^ 2 : (Fv F v)ˣ) : Fv F v)
    rw [Units.val_mul, map_mul, hpt, hzt, Units.val_pow_eq_pow_val, sq]
  rw [hsq, map_pow, map_mul, hνz, mul_one] at key
  show ((X.ν D : Circle) : ℂ) = _
  rw [← Units.val_pow_eq_pow_val, key]
  rfl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TripleLocalGlEmbeddingEquivariant =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TripleLocalGlEmbeddingEquivariantStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TripleLocalGlEmbeddingEquivariantStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TripleLocalGlEmbeddingEquivariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun
open scoped Matrix
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

theorem _root_.GlobalTheory.T.triple_local_gl_embedding_equivariant : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E) (B : Base F E)
    (a a' : ℕ) (G : Geo σ a a') (X : Chars F E) (om : Rep σ G.V G.W) (om' : Rep σ G.V' G.W), IsTriple B G X om om' →
    ∀ v, X.Good v → ∀ (t : E →ₐ[F] Fv F v)
    (K : GL (Fin a') (Fv F v) →* UA σ G.V'.J), (∀ g, K g ∈ UAt σ G.V' (evFin F v) ∧
      (mat (K g)).map (piW t) = g.val ∧
      (mat (K g)).map (piW (t.comp σ)) = (G.V'.J.map t)⁻¹ * ((g⁻¹ : GL _ _).val)ᵀ * G.V'.J.map t) →
    ∀ g : GL (Fin a') (Fv F v),
      ((X.α / X.β) (Matrix.GeneralLinearGroup.det ((K g : UA σ G.V'.J) : GL (Fin a') (_root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.AE (F := F) (E := E)))) : ℂ) *
        ((((adeleClass F).modu (Units.map (Algebra.norm (AF F) : _root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.AE (F := F) (E := E) →* AF F)
          (Matrix.GeneralLinearGroup.det ((K g : UA σ G.V'.J) : GL (Fin a') (_root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.AE (F := F) (E := E))))) : ℝ) ^
            ((Fintype.card (Fin (a + a')) : ℝ) / 2) : ℝ) : ℂ) = (chrW X.ν t (GlobalTheory.SplitFlip.gdet g) : ℂ) ^ 2 ∨
      ((X.α / X.β) (Matrix.GeneralLinearGroup.det ((K g : UA σ G.V'.J) : GL (Fin a') (_root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.AE (F := F) (E := E)))) : ℂ) *
        ((((adeleClass F).modu (Units.map (Algebra.norm (AF F) : _root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.AE (F := F) (E := E) →* AF F)
          (Matrix.GeneralLinearGroup.det ((K g : UA σ G.V'.J) : GL (Fin a') (_root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.AE (F := F) (E := E))))) : ℝ) ^
            ((Fintype.card (Fin (a + a')) : ℝ) / 2) : ℝ) : ℂ) = (((chrW X.ν t (GlobalTheory.SplitFlip.gdet g))⁻¹ : ℂˣ) : ℂ) ^ 2 := by
  first | exact @GlobalTheory.SiegelValGood.siegel_factor_eq_sq
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TripleLocalGlEmbeddingEquivariantStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnramifiedCharacterLocalGL =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnramifiedCharacterLocalGL", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubledUnitaryElementActsLocalOperatorAtPlaceStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdmittedDiagonalIntegralLinearFormStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TripleLocalGlEmbeddingEquivariantStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun
open scoped Matrix
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory.LinBarChar

open Matrix

theorem boxFun_mem_SB {k : Type} [CommRing k] [TopologicalSpace k] [T2Space k] {κ κ' : Type}
    {φ₁ : (κ → k) → ℂ} {φ₂ : (κ' → k) → ℂ} (h₁ : φ₁ ∈ SB (κ → k)) (h₂ : φ₂ ∈ SB (κ' → k)) :
    boxFun φ₁ φ₂ ∈ SB (κ ⊕ κ' → k) := by
  have cl : Continuous fun x : κ ⊕ κ' → k => x ∘ Sum.inl := continuous_pi fun i => continuous_apply _
  have cr : Continuous fun x : κ ⊕ κ' → k => x ∘ Sum.inr := continuous_pi fun i => continuous_apply _
  refine ⟨(h₁.1.comp_continuous cl).mul (h₂.1.comp_continuous cr), ?_⟩
  let e := (Homeomorph.sumArrowHomeomorphProdArrow (X := k) (ι := κ) (ι' := κ'))
  refine HasCompactSupport.intro ((h₁.2.prod h₂.2).image e.symm.continuous) fun x hx => ?_
  have hx' : e x ∉ tsupport φ₁ ×ˢ tsupport φ₂ := fun h => hx ⟨e x, h, e.symm_apply_apply x⟩
  rw [Homeomorph.sumArrowHomeomorphProdArrow_apply, Set.mem_prod, not_and_or] at hx'
  simp only [boxFun]
  rcases hx' with h | h
  · rw [image_eq_zero_of_notMem_tsupport h, zero_mul]
  · rw [image_eq_zero_of_notMem_tsupport h, mul_zero]

theorem fromBlocks_diag_sub_one {R : Type} [CommRing R] {n : Type} [Fintype n] [DecidableEq n] (A : Matrix n n R) :
    Matrix.fromBlocks A 0 0 A - 1 = Matrix.fromBlocks (A - 1) 0 0 (A - 1) := by
  rw [← Matrix.fromBlocks_one, sub_eq_add_neg, Matrix.fromBlocks_neg, Matrix.fromBlocks_add]
  simp [sub_eq_add_neg]

theorem fromBlocks_diag_mul_diagCols {R : Type} [CommRing R] {n : Type} [Fintype n] [DecidableEq n] (A : Matrix n n R) :
    Matrix.fromBlocks A 0 0 A * (diagCols n : Matrix (n ⊕ n) n R) = (diagCols n : Matrix (n ⊕ n) n R) * A := by
  ext (i | i) j <;> simp [diagCols, Matrix.mul_apply, Fintype.sum_sum_type, Matrix.fromRows_apply_inl,
    Matrix.fromRows_apply_inr, Matrix.one_apply]

end GlobalTheory.LinBarChar
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnramifiedCharacterLocalGL =====
