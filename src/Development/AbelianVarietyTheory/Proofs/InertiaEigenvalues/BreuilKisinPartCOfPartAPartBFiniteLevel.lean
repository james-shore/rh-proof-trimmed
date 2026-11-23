module

public import Formalism.SharpRestriction.LevelLetterCocycles.LocalSituation
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoQuotientOfDivisibleImageMemStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoReductionsOrthogonalModPowStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CupDivisibleImageCoboundaryIffFiniteLevelStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteLevelCupSwapCoboundaryIffStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeDivisibleCoboundariesLeLocConstCocyclesAlStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeDualCyclotomicStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeQuotientToDivisibleQuotientMemCocyclesStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeReductionModPowMemLocConstCocyclesStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemBlochKatoQuotientPowIffReductionStatement
import Formalism.SharpRestriction.LevelLetterCocycles.RamificationTwoAndConjugationAtQAndD
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Topology.Sheaves.Init

@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

namespace GlobalTheory.BKFinLevel

theorem bkC_of_bkA_bkB : Formalism.GaloisCohomology.LocalTateDualityK → Formalism.GaloisCohomology.LocalEulerCharK → ∀ (l : ℕ) [Fact l.Prime] (P : LocPrime l) (AI : LocAinf l P), LocTied l P AI → ∀ K : FinExt l, bkACore (P.PD K) → bkBCore (P.PD K) → Formalism.MainNotions.LocalSituation.bkC (P.PD K) := by
  intro hT _ l _ P _ _ K hA hB LL _ _ _ O _ _ hO L1 hL1 A A' LA LA' m hDR hd ϖ hϖ r hI hI'
  show (∀ c ∈ quotientCocycles LA _ hI, (c ∈ HfQ (P.PD K) LA _ hI ↔ ∀ c' ∈ HfQ (P.PD K) LA' _ hI',
      CobO (P.PD K) L1 (GlobalTheory.BKFinLevel.cupQ LA LA' m ϖ r c c'))) ∧
    (∀ c' ∈ quotientCocycles LA' _ hI', (c' ∈ HfQ (P.PD K) LA' _ hI' ↔ ∀ c ∈ HfQ (P.PD K) LA _ hI,
      CobO (P.PD K) L1 (GlobalTheory.BKFinLevel.cupQ LA LA' m ϖ r c c')))
  have orth := _root_.GlobalTheory.BKOrthRed.cupQ_cobO_of_bkA l P K hA LL O hO L1 hL1 A A' LA LA' m hDR hd ϖ r hI hI'

  have hfz : ∀ s ∈ HfQ (P.PD K) LA _ hI, s ∈ quotientCocycles LA _ hI := by
    intro s hs
    obtain ⟨a, -, has⟩ := (_root_.GlobalTheory.BKTorsionRed.mem_HfQ_iff_red l P K LL O hO A LA ϖ r hI s).1 hs
    rw [has]
    exact _root_.GlobalTheory.RedLocConst.redT_mem_Z1Q l P K LL O hO A LA ϖ hϖ r hI a

  have clause2 : ∀ c' ∈ quotientCocycles LA' _ hI', (∀ c ∈ HfQ (P.PD K) LA _ hI,
      CobO (P.PD K) L1 (GlobalTheory.BKFinLevel.cupQ LA LA' m ϖ r c c')) → c' ∈ HfQ (P.PD K) LA' _ hI' := by
    intro c' hc' horth
    apply _root_.GlobalTheory.BKFinLevelKer.hfQ_of_ioL_mem_HfD l P K LL O hO A' LA' ϖ hϖ r hI' c'
    have hZ := _root_.GlobalTheory.BKFinLevelCocycle.ioL_mem_Z1D l P K LL O hO A' LA' ϖ r hI' c' hc'
    refine ((hB LL O hO L1 hL1 A A' LA LA' m hDR hd).1 _ hZ).2 ?_
    intro d hdf
    have hdT : d ∈ latticeCocycles LA := hdf.1
    rw [_root_.GlobalTheory.BKFinLevel.cobO_cupLD_ioL_iff l P K LL O hO L1 hL1 A A' LA LA' m hd ϖ r ⟨d, hdT⟩ c']
    exact horth _ ((_root_.GlobalTheory.BKTorsionRed.mem_HfQ_iff_red l P K LL O hO A LA ϖ r hI _).2 ⟨⟨d, hdT⟩, hdf.2, rfl⟩)
  refine ⟨fun c hc => ⟨fun h c' hc' => orth c h c' hc', fun h => ?_⟩,
    fun c' hc' => ⟨fun h c hc => orth c hc c' h, clause2 c' hc'⟩⟩

  let S : Submodule O (↥(GK K) → A.V ⧸ LA.T) :=
    (HfQ (P.PD K) LA _ hI).map ((GlobalTheory.BKFinLevel.ioL LA ϖ r).compLeft ↥(GK K)) ⊔ BD LA
  have hS1 : BD LA ≤ S := le_sup_right
  have hS2 : S ≤ divisibleCocycles LA := by
    refine sup_le ?_ (_root_.GlobalTheory.BDLocConst.lattice_divisible_coboundaries_le_locConst_cocycles l P K LL O hO A LA)
    rintro _ ⟨s, hs, rfl⟩
    exact _root_.GlobalTheory.BKFinLevelCocycle.ioL_mem_Z1D l P K LL O hO A LA ϖ r hI s (hfz s hs)
  have hflip : IsDualLat1 (P.PD K) LA' LA m.flip := by
    obtain ⟨⟨hDom, hDVR, hFr⟩, -, -, htr, -⟩ := id hO
    exact Formalism.MainNotions.BlochKatoDuality.Br.isDualLat1_flip (P.PD K) hd
  have hC := _root_.GlobalTheory.BKFinLevelCocycle.ioL_mem_Z1D l P K LL O hO A LA ϖ r hI c hc
  have key := _root_.GlobalTheory.tate_double_annihilator hT l P K LL O hO L1 hL1 A' A LA' LA m.flip hflip S hS1 hS2 _ hC (by
    intro d hdZ hdS
    rw [← _root_.GlobalTheory.BKSwapCup.cobO_cupQ_iff l P K LL O hO L1 hL1 A A' LA LA' m hd ϖ r hI c hc ⟨d, hdZ⟩]
    apply h
    apply clause2 _ (_root_.GlobalTheory.RedLocConst.redT_mem_Z1Q l P K LL O hO A' LA' ϖ hϖ r hI' ⟨d, hdZ⟩)
    intro s hs
    rw [_root_.GlobalTheory.BKSwapCup.cobO_cupQ_iff l P K LL O hO L1 hL1 A A' LA LA' m hd ϖ r hI s (hfz s hs) ⟨d, hdZ⟩]
    exact hdS _ (Submodule.mem_sup_left ⟨s, hs, rfl⟩))
  obtain ⟨y, ⟨a, ha, rfl⟩, z, hz, hyz⟩ := Submodule.mem_sup.1 key
  have hdiff : (fun g => GlobalTheory.BKFinLevel.ioL LA ϖ r ((c - a) g)) ∈ HfD (P.PD K) LA := by
    have : (fun g => GlobalTheory.BKFinLevel.ioL LA ϖ r ((c - a) g)) = z := by
      funext g
      have := congrFun hyz g
      simp only [Pi.sub_apply, map_sub, LinearMap.compLeft_apply, Function.comp_apply,
        Pi.add_apply] at this ⊢
      rw [← this]; abel
    rw [this]
    exact Submodule.mem_sup_right hz
  have := _root_.GlobalTheory.BKFinLevelKer.hfQ_of_ioL_mem_HfD l P K LL O hO A LA ϖ hϖ r hI _ hdiff
  simpa using (HfQ (P.PD K) LA _ hI).add_mem this ha

end GlobalTheory.BKFinLevel
