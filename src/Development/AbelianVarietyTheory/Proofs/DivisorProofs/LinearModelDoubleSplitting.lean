module

public import Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ProdFnMemSB
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsLinearOfBilinearSchwartzBruhatProduct
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SpanSchwartzBruhatProductEqTop
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FromBlocksSubOne
public import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicHeisenbergActsByLocalSchrodinger
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubledWeilInertPlaceVacuumEigenfunction
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchrodingerPreservesSchwartzBruhat
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
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
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfComponentTensorAdelicFunctionEq
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStdCharNegOneOfStandardTraceAdelicAddChar
import GroundTheory.GlobalFields.LocalAtPlace
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Tactic.Linter.Style
import Mathlib.Topology.MetricSpace.Ultra.TotallySeparated
import Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TotallyDisconnectedProductLocallyCompact, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LinearModelDoubleSplitting

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TotallyDisconnectedProductLocallyCompact =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TotallyDisconnectedProductLocallyCompact", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ProdFnMemSB\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsLinearOfBilinearSchwartzBruhatProduct\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SpanSchwartzBruhatProductEqTop\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped TensorProduct
open GlobalTheory.SplitWeil GlobalTheory.LocFlat.CFac

noncomputable section
namespace GlobalTheory.SBProdExt

def comapEquiv {X Y : Type} [TopologicalSpace X] [TopologicalSpace Y] (e : X ≃ₜ Y) :
    SB Y ≃ₗ[ℂ] SB X :=
  LinearEquiv.ofLinear (comapH e) (comapH e.symm)
    (LinearMap.ext fun F => Subtype.ext (funext fun x => by simp))
    (LinearMap.ext fun F => Subtype.ext (funext fun y => by simp))

def restrictEquiv {X Y : Type} [TopologicalSpace X] [TopologicalSpace Y]
    (f : (X → ℂ) →ₗ[ℂ] (Y → ℂ)) (hf : Set.BijOn f (SB X : Set (X → ℂ)) (SB Y : Set (Y → ℂ))) :
    SB X ≃ₗ[ℂ] SB Y :=
  LinearEquiv.ofBijective (f.restrict (p := SB X) (q := SB Y) fun x hx => hf.mapsTo hx)
    ⟨fun a b hab => Subtype.ext (hf.injOn a.2 b.2 (congrArg Subtype.val hab)),
     fun y => by
       obtain ⟨x, hx, hxy⟩ := hf.surjOn y.2
       exact ⟨⟨x, hx⟩, Subtype.ext hxy⟩⟩

theorem exists_prod_equiv {P Q P' Q' : Type} [TopologicalSpace P] [T2Space P] [LocallyCompactSpace P]
    [TotallyDisconnectedSpace P] [TopologicalSpace Q] [T2Space Q] [LocallyCompactSpace Q]
    [TotallyDisconnectedSpace Q] [TopologicalSpace P'] [T2Space P'] [LocallyCompactSpace P']
    [TotallyDisconnectedSpace P'] [TopologicalSpace Q'] [T2Space Q'] [LocallyCompactSpace Q']
    [TotallyDisconnectedSpace Q'] (eP : SB P ≃ₗ[ℂ] SB P') (eQ : SB Q ≃ₗ[ℂ] SB Q') :
    ∃ L : SB (P × Q) ≃ₗ[ℂ] SB (P' × Q'), ∀ a b, L (prodSB a b) = prodSB (eP a) (eQ b) := by
  obtain ⟨l, hl⟩ := exists_linear_of_bilinear_prodSB P Q (SB (P' × Q'))
    ((prodSBBil P' Q').compl₁₂ eP.toLinearMap eQ.toLinearMap)
  obtain ⟨l', hl'⟩ := exists_linear_of_bilinear_prodSB P' Q' (SB (P × Q))
    ((prodSBBil P Q).compl₁₂ eP.symm.toLinearMap eQ.symm.toLinearMap)
  have h1 : l.comp l' = LinearMap.id := by
    refine LinearMap.ext_on_range (Span.span_prodSB_eq_top P' Q') fun q => ?_
    simp [hl, hl', prodSBBil]
  have h2 : l'.comp l = LinearMap.id := by
    refine LinearMap.ext_on_range (Span.span_prodSB_eq_top P Q) fun q => ?_
    simp [hl, hl', prodSBBil]
  refine ⟨LinearEquiv.ofLinear l l' h1 h2, fun a b => ?_⟩
  simp [hl, prodSBBil]

theorem exists_linear_bijOn_prod : ∀ {P Q P' Q' Z Z' : Type} [TopologicalSpace P] [T2Space P] [LocallyCompactSpace P]
    [TotallyDisconnectedSpace P] [TopologicalSpace Q] [T2Space Q] [LocallyCompactSpace Q] [TotallyDisconnectedSpace Q]
    [TopologicalSpace P'] [T2Space P'] [LocallyCompactSpace P'] [TotallyDisconnectedSpace P']
    [TopologicalSpace Q'] [T2Space Q'] [LocallyCompactSpace Q'] [TotallyDisconnectedSpace Q']
    [TopologicalSpace Z] [TopologicalSpace Z'] (eZ : Z ≃ₜ P × Q) (eZ' : Z' ≃ₜ P' × Q')
    (f : (P → ℂ) →ₗ[ℂ] (P' → ℂ)) (g : (Q → ℂ) →ₗ[ℂ] (Q' → ℂ)),
    Set.BijOn f (GlobalTheory.WeilM.SB P : Set (P → ℂ)) (GlobalTheory.WeilM.SB P' : Set (P' → ℂ)) →
    Set.BijOn g (GlobalTheory.WeilM.SB Q : Set (Q → ℂ)) (GlobalTheory.WeilM.SB Q' : Set (Q' → ℂ)) →
    ∃ h : (Z → ℂ) →ₗ[ℂ] (Z' → ℂ), Set.BijOn h (GlobalTheory.WeilM.SB Z : Set (Z → ℂ)) (GlobalTheory.WeilM.SB Z' : Set (Z' → ℂ)) ∧
      ∀ a ∈ GlobalTheory.WeilM.SB P, ∀ b ∈ GlobalTheory.WeilM.SB Q,
        h (fun z => a (eZ z).1 * b (eZ z).2) = fun z' => f a (eZ' z').1 * g b (eZ' z').2 := by
  intro P Q P' Q' Z Z' _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ eZ eZ' f g hf hg
  simp only [GlobalTheory.WeilM.SB_eq] at hf hg ⊢
  obtain ⟨L, hL⟩ := exists_prod_equiv (restrictEquiv f hf) (restrictEquiv g hg)
  let E : SB Z ≃ₗ[ℂ] SB Z' := ((comapEquiv eZ).symm.trans L).trans (comapEquiv eZ')
  obtain ⟨h, hh⟩ := LinearMap.exists_extend ((SB Z').subtype.comp E.toLinearMap)
  have happ : ∀ F : SB Z, h F.1 = (E F).1 := fun F => LinearMap.congr_fun hh F
  refine ⟨h, ⟨fun x hx => ?_, fun x hx y hy hxy => ?_, fun y hy => ?_⟩, fun a ha b hb => ?_⟩
  · rw [happ ⟨x, hx⟩]; exact (E _).2
  · rw [happ ⟨x, hx⟩, happ ⟨y, hy⟩] at hxy
    exact congrArg Subtype.val (E.injective (Subtype.ext hxy))
  · refine ⟨(E.symm ⟨y, hy⟩).1, (E.symm ⟨y, hy⟩).2, ?_⟩
    rw [happ]; simp
  · have hF : (fun z => a (eZ z).1 * b (eZ z).2) = (comapEquiv eZ (prodSB ⟨a, ha⟩ ⟨b, hb⟩)).1 := rfl
    rw [hF, happ]
    funext z'
    simp only [E, LinearEquiv.trans_apply, LinearEquiv.symm_apply_apply, hL]
    rfl

end GlobalTheory.SBProdExt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TotallyDisconnectedProductLocallyCompact =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LinearModelDoubleSplitting =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LinearModelDoubleSplitting", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FromBlocksSubOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SpanSchwartzBruhatProductEqTop\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicHeisenbergActsByLocalSchrodinger\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubledWeilInertPlaceVacuumEigenfunction\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchrodingerPreservesSchwartzBruhat\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TotallyDisconnectedProductLocallyCompact\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ProdFnMemSB\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfComponentTensorAdelicFunctionEq\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStdCharNegOneOfStandardTraceAdelicAddChar\nimport GroundTheory.GlobalFields.LocalAtPlace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.MetricSpace.Ultra.TotallySeparated\nimport Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.KSplit
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open scoped GlobalTheory.VacAny

noncomputable section

namespace GlobalTheory.DblLin

open Matrix

def schrLin {R : Type} [CommRing R] [Invertible (2 : R)] (ψ : AddChar R ℂ) {κ : Type} [Fintype κ]
    (w : (κ → R) × (κ → R)) : ((κ → R) → ℂ) →ₗ[ℂ] ((κ → R) → ℂ) where
  toFun := schr ψ w
  map_add' f g := by funext x; simp only [schr, Pi.add_apply, mul_add]
  map_smul' a f := by funext x; simp only [schr, Pi.smul_apply, smul_eq_mul, RingHom.id_apply]; ring

def conjLin {Y Y' : Type} (ι : (Y → ℂ) →ₗ[ℂ] (Y' → ℂ)) : (Y → ℂ) →ₗ[ℂ] (Y' → ℂ) where
  toFun φ := star (ι (star φ))
  map_add' f g := by rw [star_add, map_add (f := _), star_add]
  map_smul' a f := by rw [star_smul, map_smul, star_smul, star_star]; rfl

theorem star_mem_SB {Y : Type} [TopologicalSpace Y] {f : Y → ℂ} (hf : f ∈ SB Y) : star f ∈ SB Y :=
  ⟨hf.1.comp star, hf.2.comp_left (g := star) (star_zero ℂ)⟩

theorem conjLin_bijOn {Y Y' : Type} [TopologicalSpace Y] [TopologicalSpace Y'] (ι : (Y → ℂ) →ₗ[ℂ] (Y' → ℂ))
    (h : Set.BijOn ι (SB Y : Set (Y → ℂ)) (SB Y' : Set (Y' → ℂ))) :
    Set.BijOn (conjLin ι) (SB Y : Set (Y → ℂ)) (SB Y' : Set (Y' → ℂ)) := by
  refine ⟨fun φ hφ => star_mem_SB (h.mapsTo (star_mem_SB hφ)), fun φ hφ φ' hφ' e => ?_, fun g hg => ?_⟩
  · have e' : ι (star φ) = ι (star φ') := star_injective e
    exact star_injective (h.injOn (star_mem_SB hφ) (star_mem_SB hφ') e')
  · obtain ⟨φ, hφ, e⟩ := h.surjOn (star_mem_SB hg)
    refine ⟨star φ, star_mem_SB hφ, ?_⟩
    show star (ι (star (star φ))) = g
    rw [star_star, e, star_star]

def colsHomeo (m a b k : Type) [TopologicalSpace k] :
    Matrix m (a ⊕ b) k ≃ₜ Matrix m a k × Matrix m b k where
  toFun Y := (Y.submatrix id Sum.inl, Y.submatrix id Sum.inr)
  invFun p := Matrix.fromCols p.1 p.2
  left_inv Y := by ext i (j | j) <;> rfl
  right_inv p := by ext <;> rfl
  continuous_toFun := (continuous_id.matrix_submatrix _ _).prodMk (continuous_id.matrix_submatrix _ _)
  continuous_invFun := by
    refine continuous_pi fun i => continuous_pi fun j => ?_
    rcases j with j | j
    · exact (continuous_apply_apply i j).comp continuous_fst
    · exact (continuous_apply_apply i j).comp continuous_snd

theorem eqOn_SB_of_box {k : Type} [TopologicalSpace k] [T2Space k] [LocallyCompactSpace k] [TotallyDisconnectedSpace k]
    {κ : Type} [Fintype κ] {N : Type} [AddCommGroup N] [Module ℂ N] (L₁ L₂ : ((κ ⊕ κ → k) → ℂ) →ₗ[ℂ] N)
    (h : ∀ a ∈ SB (κ → k), ∀ b ∈ SB (κ → k), L₁ (boxFun a b) = L₂ (boxFun a b)) :
    ∀ φ ∈ SB (κ ⊕ κ → k), L₁ φ = L₂ φ := by
  intro φ hφ
  let e : (κ ⊕ κ → k) ≃ₜ (κ → k) × (κ → k) := Homeomorph.sumArrowHomeomorphProdArrow
  let M₁ : GlobalTheory.SplitWeil.SB ((κ → k) × (κ → k)) →ₗ[ℂ] N :=
    L₁ ∘ₗ (SB (κ ⊕ κ → k)).subtype ∘ₗ GlobalTheory.LocFlat.CFac.comapH e
  let M₂ : GlobalTheory.SplitWeil.SB ((κ → k) × (κ → k)) →ₗ[ℂ] N :=
    L₂ ∘ₗ (SB (κ ⊕ κ → k)).subtype ∘ₗ GlobalTheory.LocFlat.CFac.comapH e
  have hM : M₁ = M₂ := LinearMap.ext_on_range (GlobalTheory.LocFlat.CFac.Span.span_prodSB_eq_top _ _)
    fun q => h q.1.1 q.1.2 q.2.1 q.2.2
  have := LinearMap.congr_fun hM (GlobalTheory.LocFlat.CFac.comapH e.symm ⟨φ, hφ⟩)
  have e2 : ((GlobalTheory.LocFlat.CFac.comapH e (GlobalTheory.LocFlat.CFac.comapH e.symm ⟨φ, hφ⟩)).1 : (κ ⊕ κ → k) → ℂ) = φ := by
    funext x
    simp only [GlobalTheory.LocFlat.CFac.comapH_apply, Homeomorph.symm_apply_apply]
  simp only [M₁, M₂, LinearMap.comp_apply] at this
  rw [← e2]
  exact this

theorem coord_inl {m k : Type} [Fintype m] [DecidableEq m] [Field k] {d : ℕ} (B : Matrix m m k)
    (A : Matrix m (Fin d ⊕ Fin d) k) (c : GL (Fin d) k) :
    (B * A * ((GlobalTheory.DblScal.dsum c)⁻¹).valᵀ).submatrix id Sum.inl = B * A.toCols₁ * (c⁻¹).valᵀ := by
  have e : ((GlobalTheory.DblScal.dsum c)⁻¹).val = Matrix.fromBlocks (c⁻¹).val 0 0 (c⁻¹).val := rfl
  conv_lhs => rw [e, fromBlocks_transpose, ← Matrix.fromCols_toCols A, Matrix.mul_fromCols, Matrix.fromCols_mul_fromBlocks]
  ext i j
  simp

theorem coord_inr {m k : Type} [Fintype m] [DecidableEq m] [Field k] {d : ℕ} (B : Matrix m m k)
    (A : Matrix m (Fin d ⊕ Fin d) k) (c : GL (Fin d) k) :
    (B * A * ((GlobalTheory.DblScal.dsum c)⁻¹).valᵀ).submatrix id Sum.inr = B * A.toCols₂ * (c⁻¹).valᵀ := by
  have e : ((GlobalTheory.DblScal.dsum c)⁻¹).val = Matrix.fromBlocks (c⁻¹).val 0 0 (c⁻¹).val := rfl
  conv_lhs => rw [e, fromBlocks_transpose, ← Matrix.fromCols_toCols A, Matrix.mul_fromCols, Matrix.fromCols_mul_fromBlocks]
  ext i j
  simp

end GlobalTheory.DblLin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LinearModelDoubleSplitting =====
