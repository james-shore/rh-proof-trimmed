module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsIvDOfDefinite
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PolarizationTransferModels
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

@[expose] public section

open AlgebraicGeometry CategoryTheory Limits IsLocalRing
open ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.LocM

namespace GlobalTheory.AffinePointLift

theorem exists_lift : ∀ (Y Z : Scheme.{0}) (π : Y ⟶ Z) [IsAffineHom π], ∀ (U : Z.affineOpens) (V V' : Type) [CommRing V]
    [IsLocalRing V] [CommRing V'] [IsLocalRing V'] (ξ : Sp V ⟶ Z) (hξ : ⊤ ≤ ξ ⁻¹ᵁ U.1) (f : V →+* V')
    (ρ : Γ(Y, π ⁻¹ᵁ U.1) →+* V'),
    ρ.comp (π.app U.1).hom = f.comp (ξ.appLE U.1 ⊤ hξ ≫ (Scheme.ΓSpecIso (.of V)).hom).hom →
    ∃ ψ : Sp V' ⟶ Y, ψ ≫ π = spMap f ≫ ξ ∧
      ∀ I : Y.IdealSheafData, idlAlong I ψ = (I.ideal ⟨π ⁻¹ᵁ U.1, U.2.preimage π⟩).map ρ := by
  intro Y Z π _ U V V' _ _ _ _ ξ hξ f ρ h
  have hW : IsAffineOpen (π ⁻¹ᵁ U.1) := U.2.preimage π
  let g : Γ(Y, π ⁻¹ᵁ U.1) ⟶ CommRingCat.of V' := CommRingCat.ofHom ρ
  refine ⟨Spec.map g ≫ hW.fromSpec, ?_, fun I => ?_⟩
  · have e : π.appLE U.1 (π ⁻¹ᵁ U.1) le_rfl ≫ g =
        (ξ.appLE U.1 ⊤ hξ ≫ (Scheme.ΓSpecIso (.of V)).hom) ≫ CommRingCat.ofHom f := by
      rw [← Scheme.Hom.app_eq_appLE]
      exact CommRingCat.hom_ext h
    rw [Category.assoc, ← U.2.SpecMap_appLE_fromSpec π hW le_rfl, ← Spec.map_comp_assoc, e, Spec.map_comp,
      Category.assoc, _root_.GlobalTheory.AffinePointValues.specMap_appLE_fromSpec U.2 ξ hξ]
  · have hle : ⊤ ≤ (Spec.map g ≫ hW.fromSpec) ⁻¹ᵁ (π ⁻¹ᵁ U.1) :=
      fun q _ => hW.fromSpec_preimage_self.ge (x := Spec.map g q) trivial
    rw [GlobalTheory.TraitOrder.idlAlong_eq_map I _ ⟨π ⁻¹ᵁ U.1, hW⟩ hle]
    exact congrArg (fun k : Γ(Y, π ⁻¹ᵁ U.1) ⟶ CommRingCat.of V' => Ideal.map k.hom _)
      (_root_.GlobalTheory.AffinePointValues.appLE_specMap_fromSpec hW g hle)

end GlobalTheory.AffinePointLift
