module

public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsLogMult
public import Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.ExistsPushforwardRegularIdeal
public import Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.ExistsRoundedDownDivisorStatement
public import Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.MultiplierIdealIndependentStatement
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
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj
import Development.AbelianVarietyTheory.Definitions.Divisors.IsEtCoord
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsAbelianSchemeAway

@[expose] public section

open CategoryTheory Limits AlgebraicGeometry TopologicalSpace Filter
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open ReciprocityTheory.ChartRestriction.G.Out (nonzeroLocus)
open GlobalTheory GlobalTheory.Cartier GlobalTheory.TopForm GlobalTheory.CechPic GlobalTheory.QCoh GlobalTheory.Discrepancy GlobalTheory.LogPair

namespace GlobalTheory.MultIdealExists

theorem exists_isMultIdeal : ∀ (k : Type) [Field k] [CharZero k] (X : Scheme.{0}) [IsIntegral X] (p : X ⟶ Sp k) (n : ℕ), IsProjOver p → ∀ (η : RatForms p n) (m : ℕ) (G : CartierDiv X) (Y : Scheme.{0}) [IsIntegral Y] [IsLocallyNoetherian Y] (s : Y ⟶ X) [IsDominant s] (K : CartierDiv Y) (B : Closeds Y), η ≠ 0 → 0 < m → IsLogRes p n η m G s K B → ∃ J : X.IdealSheafData, IsMultIdeal p n η m G J := by
  intro k _ _ X _ p n hp η m G Y _ _ s _ K B hη hm hres
  haveI : SmoothOfRelativeDimension n (s ≫ p) := hres.smooth
  haveI : IsProper (s ≫ p) := _root_.GlobalTheory.SpreadAb.isProper_of_isProjOver hres.proj
  haveI : IsProper p := _root_.GlobalTheory.SpreadAb.isProper_of_isProjOver hp
  haveI : QuasiCompact s := QuasiCompact.of_comp s p
  obtain ⟨F, hF, -⟩ := _root_.GlobalTheory.exists_cartierDiv_mult_ediv k Y (s ≫ p) n hres.proj (pullCart s G - m • K) m
  obtain ⟨J, hJ⟩ := _root_.GlobalTheory.Cartier.PullIdeal.exists_idealSheaf X Y s (-F)
  exact ⟨J, (_root_.GlobalTheory.Discrepancy.isMultIdeal_iff_regularAt k X p n hp η m G Y s K B F hη hm hres hF J).2 hJ⟩

end GlobalTheory.MultIdealExists
