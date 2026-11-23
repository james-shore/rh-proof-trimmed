module

public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsClosedImmersionGenericPoint
public import Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.CartierDivisorMultCharacterize
public import Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.CodimOnePointMinimalPrime
public import Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.HeightOnePrimePrincipalLocal
public import Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.OrderAtCodimOneEqOne
public import Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.OrderOffCodimOneEqZero
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
import Development.AbelianVarietyTheory.Definitions.Divisors.IsEtCoord

@[expose] public section

open CategoryTheory Limits AlgebraicGeometry TopologicalSpace Filter
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open ReciprocityTheory.ChartRestriction.G.Out (nonzeroLocus)
open GlobalTheory GlobalTheory.Cartier GlobalTheory.TopForm GlobalTheory.CechPic GlobalTheory.QCoh GlobalTheory.Discrepancy GlobalTheory.LogPair

namespace GlobalTheory.PrimeDivCartier

alias ord_eq_zero := _root_.GlobalTheory.Cartier.ord_fnOf_eq_zero_off_center


open Classical in
theorem exists_local_eqn (X : Scheme.{0}) [IsIntegral X] [IsLocallyNoetherian X]
    (hu : ∀ x : X, UniqueFactorizationMonoid (X.presheaf.stalk x)) (z : X)
    (h1 : Order.coheight z = 1) (x : X) :
    ∃ U : X.Opens, x ∈ U ∧ ∃ π : X.functionFieldˣ, ∀ v ∈ U,
      Scheme.ord (π : X.functionField) v = if v = z then 1 else 0 := by
  classical
  by_cases hzx : z ⤳ x
  · obtain ⟨U, hU, hxU, -⟩ := exists_isAffineOpen_mem_and_subset (X := X) (x := x) (U := ⊤) trivial
    have hzU : z ∈ U := hzx.mem_open U.isOpen hxU
    haveI : Nonempty U := ⟨⟨x, hxU⟩⟩
    haveI : IsNoetherianRing Γ(X, U) := IsLocallyNoetherian.component_noetherian ⟨U, hU⟩
    letI : Algebra Γ(X, U) (X.presheaf.stalk x) :=
      TopCat.Presheaf.algebra_section_stalk X.presheaf ⟨x, hxU⟩
    haveI := hU.isLocalization_stalk ⟨x, hxU⟩
    haveI := hu x
    have hPp : (hU.primeIdealOf ⟨z, hzU⟩).asIdeal ≤ (hU.primeIdealOf ⟨x, hxU⟩).asIdeal := by
      have h' : (⟨z, hzU⟩ : U) ⤳ ⟨x, hxU⟩ := Topology.IsInducing.subtypeVal.specializes_iff.1 hzx
      exact (PrimeSpectrum.le_iff_specializes _ _).2 (h'.map hU.isoSpec.hom.continuous)
    obtain ⟨hP0, hmin⟩ := _root_.GlobalTheory.primeIdealOf_minimal_of_coheight_eq_one X U hU z hzU h1
    obtain ⟨a, haP, ha0, t, htp, hg⟩ := _root_.GlobalTheory.heightOne_prime_locallyPrincipal_of_factorial_localization Γ(X, U) (X.presheaf.stalk x)
      (hU.primeIdealOf ⟨x, hxU⟩).asIdeal (hU.primeIdealOf ⟨z, hzU⟩).asIdeal
      (hU.primeIdealOf ⟨z, hzU⟩).2 hPp hP0 hmin
    have hf0 : fnOf U (gen_mem hxU) a ≠ 0 := fun h =>
      ha0 (fnOf_injective U (gen_mem hxU) (h.trans (map_zero _).symm))
    refine ⟨U ⊓ X.basicOpen t, ⟨hxU, ?_⟩, Units.mk0 _ hf0, fun v hv => ?_⟩
    · exact (Scheme.mem_basicOpen X t x hxU).2 ((IsLocalization.AtPrime.isUnit_to_map_iff _ _ t).2 htp)
    · simp only [Units.val_mk0]
      split_ifs with hvz
      · subst hvz
        exact _root_.GlobalTheory.Cartier.ord_fnOf_eq_one_of_generates X U hU v hzU a t h1 ha0 haP (fun h => htp (hPp h)) hg
      · exact ord_eq_zero X U hU z hzU a t h1 hg v hv.1 hv.2 hvz
  · refine ⟨⟨(closure {z})ᶜ, isClosed_closure.isOpen_compl⟩, ?_, 1, fun v hv => ?_⟩
    · exact fun h => hzx (specializes_iff_mem_closure.2 h)
    · have hvz : v ≠ z := fun e => hv (e ▸ subset_closure rfl)
      rw [if_neg hvz, Units.val_one]
      exact (unitAt_one v).ord_eq_zero

end GlobalTheory.PrimeDivCartier


open GlobalTheory.PrimeDivCartier in
theorem GlobalTheory.primeDivisor_isCartier : ∀ (X : Scheme.{0}) [IsIntegral X] [IsLocallyNoetherian X],
    (∀ x : X, UniqueFactorizationMonoid (X.presheaf.stalk x)) → ∀ z : X, Order.coheight z = 1 →
      ∃ D : CartierDiv X, D.mult z = 1 ∧ ∀ v, v ≠ z → D.mult v = 0 := by
  intro X _ _ hu z h1
  classical
  haveI : GlobalTheory.IsNormalScheme X := ⟨fun x => inferInstance, fun x => by
    haveI := hu x; exact UniqueFactorizationMonoid.instIsIntegrallyClosed⟩
  choose U hxU π hπ using exists_local_eqn X hu z h1
  have hunit : ∀ x y, y ∈ U x → UnitAt y ((π x : X.functionField) / π y) := by
    intro x y hy
    have h := (_root_.GlobalTheory.Cartier.MultEff.eff_supp_eq_of_mult X (0 : CartierDiv X)).2.2.2 y (π x / π y) (fun v hv => by
      have hvx : v ∈ U x := hv.mem_open (U x).isOpen hy
      have hvy : v ∈ U y := hv.mem_open (U y).isOpen (hxU y)
      have e := Scheme.ord_mul (X := X) (x := v) (Units.ne_zero (π x / π y)) (Units.ne_zero (π y))
      rw [← Units.val_mul, div_mul_cancel, hπ x v hvx, hπ y v hvy] at e
      rw [(CartierDiv.isEqn_zero v).mult_eq, Units.val_one, (unitAt_one v).ord_eq_zero]
      split_ifs at e <;> omega)
    simpa using (CartierDiv.isEqn_zero y).iff_unitAt.1 h
  let D : CartierDiv X := show cartierGroup X from
    ⟨fun y => germOf y (π y), fun x => ⟨U x, hxU x, π x, fun y hy => germOf_eq_iff.2 (hunit x y hy)⟩⟩
  have hD : ∀ y, D.IsEqn y (π y) := fun y => rfl
  refine ⟨D, ?_, fun v hv => ?_⟩
  · rw [(hD z).mult_eq, hπ z z (hxU z), if_pos rfl]
  · rw [(hD v).mult_eq, hπ v v (hxU v), if_neg hv]
