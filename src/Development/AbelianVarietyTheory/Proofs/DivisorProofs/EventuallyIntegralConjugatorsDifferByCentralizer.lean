module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntBTmulBasis
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsCyclotomicExtensionQI
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdicIntegralTensorBasisRingEventuallyStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AlmostAllPlacesBasisIntegral
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BasisChangeAdicTensorIdentity
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EventuallyIntegralConjOfIntegralConjGeneratorStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EventuallyOneTmulAdicIntegralCoordsStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBasisOverSubfieldEmbedding
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntSmulIsAdicIntegralInTensorBasisStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSumTwoSidedMulEqMatrixUnitUnitaryDatumStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueLeftBasisCoordsAdicCompletionStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FractionalIdealIntegralLattice
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrderLatticeBasisIntegrality
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
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
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsRootSelectionUnitaryRankOne
import Development.AbelianVarietyTheory.Definitions.Divisors.TwOrbMEqTwOrbUOfNormal

@[expose] public section

open Matrix NumberField GlobalTheory.LKTrip GlobalTheory.LKRes GlobalTheory.LKMid GlobalTheory.LKCount IsDedekindDomain GlobalTheory.AdicSpan
open scoped TensorProduct Classical

noncomputable section

namespace GlobalTheory.LatStep

theorem isIntB_neg' (v : HeightOneSpectrum ℤ) {M : Type} [AddCommGroup M] [Module ℚ M] {κ : Type}
    (b : Module.Basis κ ℚ M) {x : v.adicCompletion ℚ ⊗[ℚ] M} (hx : IsIntB v b x) :
    IsIntB v b (-x) := fun i => by
  rw [map_neg, Finsupp.neg_apply]; exact neg_mem (hx i)

theorem lattice_step : ∀ (p : ℕ) [Fact p.Prime] (G : HTGroup p) (γ : G.Cˣ), (minpoly G.F (γ : G.C)).natDegree = G.n →
    (minpoly G.F (γ : G.C)).Separable → ∀ (L : Type) [Field L] [NumberField L] (ι : L →ₐ[ℚ] G.C),
    Function.Injective ι → (∀ z : G.C, z * γ = γ * z ↔ ∃ w, ι w = z) → ∀ (κ : Type) (b : Module.Basis κ ℚ G.C),
    ∃ S : Finset (HeightOneSpectrum ℤ), ∀ v ∉ S, ∀ X X' : (v.adicCompletion ℚ ⊗[ℚ] G.C)ˣ,
      IsIntB v b (↑X * ((1 : v.adicCompletion ℚ) ⊗ₜ[ℚ] (γ : G.C)) * ↑X⁻¹) →
      IsIntB v b (↑X' * ((1 : v.adicCompletion ℚ) ⊗ₜ[ℚ] (γ : G.C)) * ↑X'⁻¹) →
      ∃ m : (v.adicCompletion ℚ ⊗[ℚ] L)ˣ,
        IsIntB v b (↑X * Algebra.TensorProduct.map (AlgHom.id ℚ (v.adicCompletion ℚ)) ι ↑m * ↑X'⁻¹) ∧
        IsIntB v b (↑X' * Algebra.TensorProduct.map (AlgHom.id ℚ (v.adicCompletion ℚ)) ι ↑m⁻¹ * ↑X⁻¹) := by
  intro p _ G γ hdeg _hsep L _ _ ι hι hcent κ b
  let ℓ := Module.finBasis ℚ L
  obtain ⟨r, e, he⟩ := _root_.GlobalTheory.exists_left_basis_through_algHom L G.C ι
  have hE := fun i i' => _root_.GlobalTheory.exists_sum_mul_mul_eq_matrixUnit_htGroup p G γ hdeg L ι hι hcent r e he i i'
  choose N l c hlc using hE
  have hl := fun (i i' : Fin r) (k : Fin (N i i')) => _root_.GlobalTheory.AdicSpan.exists_finset_isIntB_one_tmul L _ ℓ (l i i' k)
  have hc := fun (i i' : Fin r) (k : Fin (N i i')) => _root_.GlobalTheory.AdicSpan.exists_finset_isIntB_one_tmul G.C κ b (c i i' k)
  choose Sl hSl using hl
  choose Sc hSc using hc
  obtain ⟨S1, hS1⟩ := _root_.GlobalTheory.AdicSpan.isIntB_one_mul_eventually G.C κ b
  obtain ⟨S2, hS2⟩ := _root_.GlobalTheory.AdicSpan.isIntB_one_mul_eventually L _ ℓ
  obtain ⟨S3, hS3⟩ := _root_.GlobalTheory.AdicSpan.LeftBasis.isIntB_sum_leftBasis_iff_eventually L G.C ι r e he _ ℓ κ b
  obtain ⟨S4, hS4⟩ := _root_.GlobalTheory.ConjInt.isIntB_conj_map_of_isIntB_conj p G γ hdeg L ι hι hcent κ b _ ℓ
  obtain ⟨S5, hS5⟩ := _root_.GlobalTheory.AdicSpan.isIntB_lattice_principal_eventually L _ ℓ
  let SE : Finset (HeightOneSpectrum ℤ) := Finset.univ.biUnion (fun ii : Fin r × Fin r =>
    Finset.univ.biUnion (fun k : Fin (N ii.1 ii.2) => Sl ii.1 ii.2 k ∪ Sc ii.1 ii.2 k))
  refine ⟨S1 ∪ S2 ∪ S3 ∪ S4 ∪ S5 ∪ SE, ?_⟩
  intro v hv X X' hX hX'
  simp only [Finset.mem_union, not_or] at hv
  obtain ⟨⟨⟨⟨⟨hv1, hv2⟩, hv3⟩, hv4⟩, hv5⟩, hvE⟩ := hv
  have hvE' : ∀ i i' k, v ∉ Sl i i' k ∧ v ∉ Sc i i' k := fun i i' k => by
    have : v ∉ Sl i i' k ∪ Sc i i' k := fun h => hvE (Finset.mem_biUnion.2
      ⟨(i, i'), Finset.mem_univ _, Finset.mem_biUnion.2 ⟨k, Finset.mem_univ _, h⟩⟩)
    simpa [Finset.mem_union, not_or] using this
  let jv := Algebra.TensorProduct.map (AlgHom.id ℚ (v.adicCompletion ℚ)) ι
  have key := _root_.GlobalTheory.AbsLattice.exists_unit_of_conj_stable (jv : v.adicCompletion ℚ ⊗[ℚ] L →+* v.adicCompletion ℚ ⊗[ℚ] G.C)
    {y | IsIntB v b y} {x | IsIntB v ℓ x} r (fun i => (1 : v.adicCompletion ℚ) ⊗ₜ[ℚ] e i)
    (isIntB_zero v b) (hS1 v hv1).1 (fun x hx y hy => _root_.GlobalTheory.ConjInt.isIntB_add v b hx hy) (fun x hx => isIntB_neg' v b hx)
    (fun x hx y hy => (hS1 v hv1).2 x y hx hy)
    (isIntB_zero v ℓ) (hS2 v hv2).1 (fun x hx y hy => _root_.GlobalTheory.ConjInt.isIntB_add v ℓ hx hy) (fun x hx => isIntB_neg' v ℓ hx)
    (fun x hx y hy => (hS2 v hv2).2 x y hx hy)
    (fun a => _root_.GlobalTheory.LeftBasisBC.existsUnique_coords_adicCompletion L G.C ι r e he v a) (hS3 v hv3)
    (fun i i' => ⟨N i i', fun k => (1 : v.adicCompletion ℚ) ⊗ₜ[ℚ] l i i' k,
      fun k => (1 : v.adicCompletion ℚ) ⊗ₜ[ℚ] c i i' k, fun k => hSl i i' k v (hvE' i i' k).1,
      fun k => hSc i i' k v (hvE' i i' k).2,
      fun β => _root_.GlobalTheory.adicCompletion_tensor_matrixUnit_identity L G.C ι r e (N i i') (l i i') (c i i') i i' (hlc i i') v β⟩)
    (fun a => by
      obtain ⟨D, hD, h⟩ := _root_.GlobalTheory.AdicSpan.exists_int_smul_isIntB G.C κ b v a
      exact ⟨D, hD, by simpa [zsmul_eq_mul] using h⟩)
    (fun I h0 hadd hmul hD => hS5 v hv5 I h0 hadd hmul hD)
  obtain ⟨m, hm1, hm2⟩ := key X (fun ρ hρ => hS4 v hv4 X hX ρ hρ)
  obtain ⟨m', hm1', hm2'⟩ := key X' (fun ρ hρ => hS4 v hv4 X' hX' ρ hρ)
  refine ⟨m * m'⁻¹, ?_, ?_⟩
  · have := (hS1 v hv1).2 _ _ hm1 hm2'
    convert this using 1
    simp only [RingHom.coe_coe, Units.val_mul, map_mul, mul_assoc, jv]
  · have := (hS1 v hv1).2 _ _ hm1' hm2
    convert this using 1
    simp only [RingHom.coe_coe, _root_.mul_inv_rev, inv_inv, Units.val_mul, map_mul, mul_assoc, jv]

end GlobalTheory.LatStep
