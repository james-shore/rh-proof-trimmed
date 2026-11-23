module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.CompatH
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.IsFirstChernClassOfLineBundle
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.MapUSharp
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.InWmTeichmullerSubOne
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.PropsC
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.SubsingletonH
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

namespace CrystallineSemistableComparison.B

variable (l : ℕ) [Fact l.Prime]

theorem main : Main l := main_of (D.out l)

theorem compat : Compat l :=
  ⟨_root_.GlobalTheory.CompanionTheory.BetaRed.beta_red, _root_.GlobalTheory.CompanionTheory.BetaGal.β_gal, _root_.GlobalTheory.CompanionTheory.CrysPhi.phi_beta, _root_.GlobalTheory.CompanionTheory.BetaPull.beta_pull, _root_.GlobalTheory.CompanionTheory.BetaCmp.β_cmp, _root_.GlobalTheory.CompanionTheory.CupBeta.beta_cup, _root_.GlobalTheory.CompanionTheory.CrisOne.β_one, _root_.GlobalTheory.CompanionTheory.CrisFil.red_fil, _root_.GlobalTheory.CompanionTheory.BetaFil.smul_fil⟩

theorem compatH : CompatH l := ⟨_root_.GlobalTheory.CompanionTheory.CrisTransition.redHc_galHc, _root_.GlobalTheory.CompanionTheory.CrisFrob.red_phi_le, _root_.GlobalTheory.CompanionTheory.CrisTransition.redHc_pullHc, _root_.GlobalTheory.CompanionTheory.CupTrans.redHc_cup, _root_.GlobalTheory.CompanionTheory.CrisUnit.redHc_oneH, _root_.GlobalTheory.CompanionTheory.CrisCmp.red_cmp⟩

end CrystallineSemistableComparison.B
