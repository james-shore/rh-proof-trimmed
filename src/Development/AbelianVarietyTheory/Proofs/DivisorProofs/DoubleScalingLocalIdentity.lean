module

public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianTensorSkewHermitianSplitSymplecticPairStatement
public import Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqSmulOfCommuteHeisenbergLinearModelSchwartzBruh
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FromBlocksSubOne
public import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsCompactIsOpenUnitsAt
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicTraceSupportedAtSplitPlaceStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSplitPlaceAdelicMatrixGivenComponentsStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianSelfDualLatticeSpaceFormHermitianNondeg
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LinearModelUnitaryConjugate
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraceSymplecticFormUnitaryGroupActionInvariant
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicHeisenbergActsByLocalSchrodinger
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsComplementaryAdelicSchwartzRestFunction
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchrodingerPreservesSchwartzBruhat
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardAdelicCharacterNontrivialAtPlaces
import Mathlib.RingTheory.PiTensorProduct
import Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianTensorLocalVanish, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianTensorLocalVanishStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilRepBijectionSchwartz, Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubleScalingLocalIdentity

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianTensorLocalVanish =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianTensorLocalVanish", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianTensorSkewHermitianSplitSymplecticPairStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open scoped Matrix
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
namespace GlobalTheory.DblTrace

open Matrix

theorem hTens_dbl {R E : Type} [CommRing R] [CommRing E] [Algebra R E] (c : E →ₐ[R] E)
    {α β : Type} [Fintype α] [DecidableEq α] [Fintype β] [DecidableEq β] (JA : Matrix α α E) (JB : Matrix β β E)
    (x y : Matrix α (β ⊕ β) E) :
    hTens c JA (dbl JB) x y = hTens c JA JB x.toCols₁ y.toCols₁ + hTens c JA (-JB) x.toCols₂ y.toCols₂ := by
  simp only [hTens, dbl, Fintype.sum_sum_type, fromBlocks_apply₁₁, fromBlocks_apply₁₂, fromBlocks_apply₂₁,
    fromBlocks_apply₂₂, Matrix.zero_apply, mul_zero, zero_mul, add_zero, zero_add, toCols₁, toCols₂,
    of_apply, ← Finset.sum_add_distrib]

theorem rhs_dbl {K : Type} [CommRing K] {m n : Type} [Fintype m] [Fintype n] (A : Matrix m m K)
    (X U : Matrix m (n ⊕ n) K) (B : Matrix n n K) :
    ∑ k, ∑ l, (-(A * X * (fromBlocks B 0 0 (-B))ᵀ)) k l * U k l =
      ∑ k, ∑ l, (-(A * X.toCols₁ * Bᵀ)) k l * U.toCols₁ k l +
        ∑ k, ∑ l, (-(A * X.toCols₂ * (-B)ᵀ)) k l * U.toCols₂ k l := by
  have hX : A * X = fromCols (A * X.toCols₁) (A * X.toCols₂) := by
    conv_lhs => rw [← fromCols_toCols X]
    rw [mul_fromCols]
  rw [hX, fromBlocks_transpose, fromCols_mul_fromBlocks]
  simp [Fintype.sum_sum_type, Finset.sum_add_distrib, toCols₁, toCols₂]
  ring

end GlobalTheory.DblTrace

open GlobalTheory.DblTrace in
theorem GlobalTheory.DblTrace.trace_pairing_dbl : ∀ {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E},
    IsCMExt F E σ → ∀ {v : Pl (F := F)} (τ : E →ₐ[F] Fv F v) {m n : ℕ} (JA : Matrix (Fin m) (Fin m) E)
    (JB : Matrix (Fin n) (Fin n) E), (∀ i j, σ (JA j i) = JA i j) → (∀ i j, σ (JB j i) = -JB i j) →
    ∀ (x u : Matrix (Fin m) (Fin n ⊕ Fin n) (AE F E)), x.map (piW τ) = 0 → u.map (piW (τ.comp σ)) = 0 →
    piW τ (hTens (cA σ) (incM F JA) (dbl (incM F JB)) x u) + piW (τ.comp σ) (hTens (cA σ) (incM F JA) (dbl (incM F JB)) x u) =
      ∑ k, ∑ l, (-(JA.map τ * x.map (piW (τ.comp σ)) * ((dbl JB).map τ)ᵀ)) k l * u.map (piW τ) k l := by
  intro F E _ _ _ _ _ σ hcm v τ m n JA JB hA hB x u hx hu
  have hneg : incM F (-JB) = -incM F JB := by
    simp [incM, Matrix.map_neg]
  have hB' : ∀ i j, σ ((-JB) j i) = -(-JB) i j := by
    intro i j; simp [hB]
  have h1 : x.toCols₁.map (piW τ) = 0 := by
    exact Matrix.ext fun i j => congrFun (congrFun hx i) (Sum.inl j)
  have h2 : u.toCols₁.map (piW (τ.comp σ)) = 0 := by
    exact Matrix.ext fun i j => congrFun (congrFun hu i) (Sum.inl j)
  have h3 : x.toCols₂.map (piW τ) = 0 := by
    exact Matrix.ext fun i j => congrFun (congrFun hx i) (Sum.inr j)
  have h4 : u.toCols₂.map (piW (τ.comp σ)) = 0 := by
    exact Matrix.ext fun i j => congrFun (congrFun hu i) (Sum.inr j)
  have hd : (dbl JB).map τ = Matrix.fromBlocks (JB.map τ) 0 0 (-(JB.map τ)) := by
    ext i j; rcases i with i | i <;> rcases j with j | j <;> simp [dbl]
  rw [hTens_dbl, ← hneg, map_add (f := _), map_add (f := _), add_add_add_comm, _root_.GlobalTheory.FourSumComposition.main hcm τ JA JB hA hB _ _ h1 h2,
    _root_.GlobalTheory.FourSumComposition.main hcm τ JA (-JB) hA hB' _ _ h3 h4, hd, rhs_dbl]
  have hm : (-JB).map τ = -(JB.map τ) := by ext i j; simp
  rw [hm]
  rfl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianTensorLocalVanish =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianTensorLocalVanishStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianTensorLocalVanishStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianTensorLocalVanish\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open scoped Matrix
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

theorem _root_.GlobalTheory.T.hermitian_tensor_local_vanish : ∀ {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E},
    IsCMExt F E σ → ∀ {v : Pl (F := F)} (τ : E →ₐ[F] Fv F v) {m n : ℕ} (JA : Matrix (Fin m) (Fin m) E)
    (JB : Matrix (Fin n) (Fin n) E), (∀ i j, σ (JA j i) = JA i j) → (∀ i j, σ (JB j i) = -JB i j) →
    ∀ (x u : Matrix (Fin m) (Fin n ⊕ Fin n) (_root_.GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.AE (F := F) (E := E))), x.map (piW τ) = 0 → u.map (piW (τ.comp σ)) = 0 →
    piW τ (hTens (cA σ) (incM F JA) (dbl (incM F JB)) x u) + piW (τ.comp σ) (hTens (cA σ) (incM F JA) (dbl (incM F JB)) x u) =
      ∑ k, ∑ l, (-(JA.map τ * x.map (piW (τ.comp σ)) * ((dbl JB).map τ)ᵀ)) k l * u.map (piW τ) k l := by
  first | exact @GlobalTheory.DblTrace.trace_pairing_dbl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianTensorLocalVanishStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilRepBijectionSchwartz =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilRepBijectionSchwartz", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqSmulOfCommuteHeisenbergLinearModelSchwartzBruh\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix

namespace GlobalTheory.SchurHeisReindex

variable {k : Type} [Field k] [TopologicalSpace k] {n : ℕ} {β : Type} [Fintype β] [DecidableEq β]

noncomputable def eL (k : Type) [Field k] (n : ℕ) (β : Type) [Fintype β] [DecidableEq β] :
    Matrix (Fin n) (Fin (Fintype.card β)) k ≃ₗ[k] Matrix (Fin n) β k :=
  Matrix.reindexLinearEquiv k k (Equiv.refl (Fin n)) (Fintype.equivFin β).symm

theorem eL_apply (C : Matrix (Fin n) (Fin (Fintype.card β)) k) (i : Fin n) (b : β) :
    eL k n β C i b = C i (Fintype.equivFin β b) := by
  simp [eL, reindexLinearEquiv_apply, reindex_apply, submatrix_apply]

theorem eL_symm_apply (D : Matrix (Fin n) β k) (i : Fin n) (j : Fin (Fintype.card β)) :
    (eL k n β).symm D i j = D i ((Fintype.equivFin β).symm j) := by
  simp [eL, reindexLinearEquiv_apply, reindex_apply, submatrix_apply]

theorem continuous_eL : Continuous (eL k n β) := by
  refine continuous_pi fun i => continuous_pi fun b => ?_
  simp only [eL_apply]
  exact (continuous_apply _).comp (continuous_apply i)

theorem continuous_eL_symm : Continuous (eL k n β).symm := by
  refine continuous_pi fun i => continuous_pi fun j => ?_
  simp only [eL_symm_apply]
  exact (continuous_apply _).comp (continuous_apply i)

noncomputable def eH (k : Type) [Field k] [TopologicalSpace k] (n : ℕ) (β : Type) [Fintype β] [DecidableEq β] :
    Matrix (Fin n) (Fin (Fintype.card β)) k ≃ₜ Matrix (Fin n) β k where
  toEquiv := (eL k n β).toEquiv
  continuous_toFun := continuous_eL
  continuous_invFun := continuous_eL_symm

theorem comp_mem_SB' {X Y : Type} [TopologicalSpace X] [TopologicalSpace Y] (e : Y ≃ₜ X) {f : X → ℂ}
    (hf : f ∈ GlobalTheory.WeilM.SB X) : (f ∘ e) ∈ GlobalTheory.WeilM.SB Y :=
  ⟨hf.1.comp_continuous e.continuous, hf.2.comp_homeomorph e⟩

end GlobalTheory.SchurHeisReindex


open GlobalTheory.SchurHeisReindex in
theorem GlobalTheory.schur_heisenberg_linearModel_fintype : ∀ {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] {n : ℕ}
    {β : Type} [Fintype β] [DecidableEq β] {Xt : Type} [AddCommGroup Xt] [Module ℂ Xt] (V : Submodule ℂ Xt)
    (ψ0 : AddChar k ℂ), Continuous ψ0 → ψ0 ≠ 1 →
    ∀ (ι₁ : Xt →ₗ[ℂ] (Matrix (Fin n) β k → ℂ)) (ι₂ : Xt → Matrix (Fin n) β k → ℂ),
    Set.BijOn ι₁ (V : Set Xt) (GlobalTheory.WeilM.SB (Matrix (Fin n) β k) : Set _) →
    (∀ x ∈ V, ∀ y ∈ V, ∀ c : ℂ, ι₂ (c • x + y) = c • ι₂ x + ι₂ y) →
    ∀ (Tr : Matrix (Fin n) β k → Xt → Xt) (Mu : (Matrix (Fin n) β k →ₗ[k] k) → Xt → Xt),
    (∀ C, ∀ x ∈ V, Tr C x ∈ V ∧ ι₁ (Tr C x) = (fun Y => ι₁ x (Y + C)) ∧ ι₂ (Tr C x) = fun Y => ι₂ x (Y + C)) →
    (∀ l, ∀ x ∈ V, Mu l x ∈ V ∧ ι₁ (Mu l x) = (fun Y => ψ0 (l Y) * ι₁ x Y) ∧ ι₂ (Mu l x) = fun Y => ψ0 (l Y) * ι₂ x Y) →
    ∃ c : ℂ, ∀ x ∈ V, ι₂ x = c • ι₁ x := by
  intro k _ _ _ _ n β _ _ Xt _ _ V ψ0 hψc hψ1 ι₁ ι₂ hbij hlin Tr Mu hTr hMu
  set e := eL k n β with he
  let ι₁' : Xt →ₗ[ℂ] (Matrix (Fin n) (Fin (Fintype.card β)) k → ℂ) := LinearMap.funLeft ℂ ℂ e ∘ₗ ι₁
  have hι₁' : ∀ x, ι₁' x = ι₁ x ∘ e := fun x => rfl
  let ι₂' : Xt → Matrix (Fin n) (Fin (Fintype.card β)) k → ℂ := fun x => ι₂ x ∘ e
  have hsurj : Function.Surjective e := e.surjective
  have hbij' : Set.BijOn ι₁' (V : Set Xt) (GlobalTheory.WeilM.SB (Matrix (Fin n) (Fin (Fintype.card β)) k) : Set _) := by
    refine ⟨fun x hx => ?_, fun x hx y hy hxy => ?_, fun f hf => ?_⟩
    · rw [hι₁']
      exact comp_mem_SB' (eH k n β) (hbij.1 hx)
    · apply hbij.2.1 hx hy
      rw [hι₁', hι₁'] at hxy
      funext Z
      obtain ⟨Y, rfl⟩ := hsurj Z
      exact congrFun hxy Y
    · have hf' : f ∘ (eH k n β).symm ∈ GlobalTheory.WeilM.SB (Matrix (Fin n) β k) := comp_mem_SB' (eH k n β).symm hf
      obtain ⟨x, hx, hxf⟩ := hbij.2.2 hf'
      refine ⟨x, hx, ?_⟩
      rw [hι₁', hxf]
      funext Y
      show f ((eH k n β).symm (e Y)) = f Y
      exact congrArg f ((eL k n β).symm_apply_apply Y)
  have hlin' : ∀ x ∈ V, ∀ y ∈ V, ∀ c : ℂ, ι₂' (c • x + y) = c • ι₂' x + ι₂' y := by
    intro x hx y hy c
    funext Y
    simp [ι₂', hlin x hx y hy c]
  have hadd : ∀ Y C, e (Y + C) = e Y + e C := fun Y C => map_add e Y C
  obtain ⟨c, hc⟩ := _root_.GlobalTheory.LinSchur.eq_smul_of_commute V ψ0 hψc hψ1 ι₁' ι₂' hbij' hlin'
    (fun C => Tr (e C)) (fun l => Mu (l ∘ₗ e.symm.toLinearMap))
    (fun C x hx => by
      obtain ⟨h1, h2, h3⟩ := hTr (e C) x hx
      refine ⟨h1, ?_, ?_⟩
      · funext Y; simp [hι₁', h2, hadd]
      · funext Y; simp [ι₂', h3, hadd])
    (fun l x hx => by
      obtain ⟨h1, h2, h3⟩ := hMu (l ∘ₗ e.symm.toLinearMap) x hx
      refine ⟨h1, ?_, ?_⟩
      · funext Y; simp [hι₁', h2]
      · funext Y; simp [ι₂', h3])
  refine ⟨c, fun x hx => ?_⟩
  funext Z
  obtain ⟨Y, rfl⟩ := hsurj Z
  have := congrFun (hc x hx) Y
  simpa [ι₂', hι₁'] using this
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilRepBijectionSchwartz =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubleScalingLocalIdentity =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubleScalingLocalIdentity", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FromBlocksSubOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsCompactIsOpenUnitsAt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicTraceSupportedAtSplitPlaceStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSplitPlaceAdelicMatrixGivenComponentsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianSelfDualLatticeSpaceFormHermitianNondeg\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianTensorLocalVanishStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LinearModelUnitaryConjugate\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraceSymplecticFormUnitaryGroupActionInvariant\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilRepBijectionSchwartz\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicHeisenbergActsByLocalSchrodinger\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsComplementaryAdelicSchwartzRestFunction\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchrodingerPreservesSchwartzBruhat\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardAdelicCharacterNontrivialAtPlaces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.KSplit
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

open scoped Matrix
open scoped GlobalTheory.VacAny

noncomputable section

namespace GlobalTheory.DblShape

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem at_hTens {σ : E →ₐ[F] E} {v : Pl (F := F)} {α β : Type} [Fintype α] [Fintype β] (JA : Matrix α α (AE F E))
    (JB : Matrix β β (AE F E)) (x u : Matrix α β (AE F E)) (hx : At (evFin F v) x) :
    At (evFin F v) ((-1 : AE F E) * hTens (_root_.Algebra.TensorProduct.map (_root_.AlgHom.id (AF F) (AF F)) σ) JA JB x u) := by
  intro r hr
  have h : ∀ i j, r • x i j = 0 := fun i j => by
    have := congrFun (congrFun (hx r hr) i) j
    simpa using this
  rw [← mul_smul_comm]
  unfold hTens
  simp only [Finset.smul_sum, ← smul_mul_assoc, h, zero_mul, Finset.sum_const_zero, mul_zero]

theorem local_intertw {σ : E →ₐ[F] E} {α β : Type} [Fintype α] [DecidableEq α] [Fintype β] [DecidableEq β]
    {JA : Matrix α α (AE F E)} {JB : Matrix β β (AE F E)} {κ : Type} [Fintype κ] {ψ : AddChar (AF F) ℂ}
    (dd : Darboux (symp (R := AF F) (_root_.Algebra.TensorProduct.map (_root_.AlgHom.id (AF F) (AF F)) σ) (-1) JA JB) κ) (omd : UG (_root_.Algebra.TensorProduct.map (_root_.AlgHom.id (AF F) (AF F)) σ) JB →* Module.End ℂ ((κ → AF F) → ℂ))
    (hS : IsUSplitting (adeleClass F) ψ dd (actB (_root_.Algebra.TensorProduct.map (_root_.AlgHom.id (AF F) (AF F)) σ)) omd) (v : Pl (F := F)) (p : UG (_root_.Algebra.TensorProduct.map (_root_.AlgHom.id (AF F) (AF F)) σ) JB)
    (u : Matrix α β (AE F E)) (φ φ₁ φ₂ φ₃ φ₄ : (κ → Fv F v) → ℂ) (hφ : φ ∈ SB (κ → Fv F v))
    (hφ₁ : φ₁ ∈ SB (κ → Fv F v)) (hφ₂ : φ₂ ∈ SB (κ → Fv F v))
    (h1 : Acts (evFin F v) (dd.rho ψ u) φ φ₁) (h2 : Acts (evFin F v) (omd p) φ φ₂)
    (h3 : Acts (evFin F v) (omd p) φ₁ φ₃)
    (h4 : Acts (evFin F v) (dd.rho ψ (u * ((p : GL β (AE F E)) : Matrix β β (AE F E))ᵀ)) φ₂ φ₄) : φ₄ = φ₃ := by
  obtain ⟨R, hR0, hR⟩ := GlobalTheory.RestWitness.exists_rest κ v
  have hΦ : tens (evFin F v) φ R ∈ GlobalTheory.WeilM.schA F κ := (hR φ hφ).2
  have himpl := hS.impl p u (tens (evFin F v) φ R) hΦ
  have hact : actB (_root_.Algebra.TensorProduct.map (_root_.AlgHom.id (AF F) (AF F)) σ) p u = u * ((p : GL β (AE F E)) : Matrix β β (AE F E))ᵀ := rfl
  rw [hact] at himpl
  have key : tens (evFin F v) φ₄ R = tens (evFin F v) φ₃ R := by
    rw [← h4 R (hR φ₂ hφ₂), ← h2 R (hR φ hφ), ← himpl, h1 R (hR φ hφ), h3 R (hR φ₁ hφ₁)]
  funext t
  have hz : At (evFin F v) (fun i => GlobalTheory.LatVac.liftV v (t i)) := by
    intro u' hu'; funext i; exact GlobalTheory.LatVac.at_liftV v _ u' hu'
  have hRz : R (fun i => GlobalTheory.LatVac.liftV v (t i)) = R 0 := by
    simpa using (hR φ hφ).1 0 _ hz
  have := congrFun key (fun i => GlobalTheory.LatVac.liftV v (t i))
  simp only [tens, GlobalTheory.LatVac.evFin_liftV, hRz] at this
  exact mul_right_cancel₀ hR0 this

end GlobalTheory.DblShape
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubleScalingLocalIdentity =====
