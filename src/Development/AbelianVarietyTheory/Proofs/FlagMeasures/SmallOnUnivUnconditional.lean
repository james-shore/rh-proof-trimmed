module

public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.RowsPtAt
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ElementarySizeBoundsOfSizeHypotheses
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsThresholdCriticalLevelLowerBoundStatement
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.RowColumnShapeOfWindowDataWidthGeOne
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.FinprodPlacesOverTypePrimesSplit
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LocalIndicesColumnRowLevelsExact
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.MassRatioStatement
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.NormalizedFormalDegreeEqVandermondeOfSizesStatement
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ProdSubEqProdFactorial
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.RowsRawMassAndGenusMass
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.StdLatIsOrthoLatticeAndMassProperties
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.LevelPrimeSplitsCompletelyInCmField
import Formalism.HermitianCurvature.HeisenbergConjugationMeasurePreserving
import Formalism.SharpRestriction.CuspSpanNormBounds.AbsoluteAmplitudeSecondOfSource
import Formalism.SharpRestriction.GlobalSchurBounds.ThickPlacesCorollaryOfAnyTranslate
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Int
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
import Mathlib.Tactic.ENatToNat
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
public import Development.AbelianVarietyTheory.BlockTheory.TorsionBlocks.SplitColumnClasses
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.TermTieOf

@[expose] public section

open scoped Classical
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.Full Formalism.L2.SG.RowsConc Formalism.L2.SG.PackageTie2 Formalism.L2.SG.TermTieOf GlobalTheory.Core.Deg
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

open NumberField Finset

namespace GlobalTheory.Core.Deg.AtRecord

open Formalism.FourierDecayAlt

def sizeData (D : D7) (u : D.what₂.Word) : Sz.SizeData D.what₂.Tau where
  k := D.R.k
  r := D.R.rS
  v := D.host.v
  dF := (2 * D.host.v) ^ D.R.f
  Lv := fun M => Formalism.HermitianLatticesTheory.lValEta D.host.E M
  vol := fun M => Cnt.massU D.host.E M
  g1 := D.host.g 0
  g2 := D.host.g 1
  T := (D.mem u).A.T
  dsig := D.dsig
  Vu := fun τ => vand (uS D u τ)
  du := D.duS u

theorem sq_le_two_pow (k : ℕ) (hk : 4 ≤ k) : k ^ 2 ≤ 2 ^ k := by
  induction k, hk using Nat.le_induction with
  | base => norm_num
  | succ k hk ih => rw [pow_succ 2 k]; nlinarith

theorem err_le (D : D7) {δ : ℝ} (hδ : 0 < δ) (h : 8 / Real.log (1 + δ) ≤ D.R.k) :
    Real.exp ((D.R.f : ℝ) * (2 : ℝ) ^ ((3 : ℝ) - D.R.k)) - 1 ≤ δ := by
  have hk := D.R.m_add_three_le_k
  have hm := D.R.two_le_m
  have hkR : (5 : ℝ) ≤ D.R.k := by exact_mod_cast (by omega : 5 ≤ D.R.k)
  have hl : 0 < Real.log (1 + δ) := Real.log_pos (by linarith)
  have hf : (D.R.f : ℝ) ≤ D.R.k := by exact_mod_cast (show D.R.f ≤ D.R.k from D.R.f_le_k)
  have h2 : (D.R.k : ℝ) ^ 2 ≤ 2 ^ D.R.k := by exact_mod_cast sq_le_two_pow D.R.k (by omega)
  have e2 : (2 : ℝ) ^ ((3 : ℝ) - D.R.k) = 8 / 2 ^ D.R.k := by
    rw [Real.rpow_sub two_pos, Real.rpow_natCast]; norm_num
  rw [sub_le_iff_le_add', ← Real.le_log_iff_exp_le (by linarith), e2]
  rw [div_le_iff₀ hl] at h
  calc (D.R.f : ℝ) * (8 / 2 ^ D.R.k) ≤ D.R.k * (8 / (D.R.k : ℝ) ^ 2) := by gcongr
    _ = 8 / D.R.k := by field_simp
    _ ≤ _ := by rw [div_le_iff₀ (by linarith)]; linarith

theorem form_of_ranks (D : D7) (hR : LocalBesselAndTopKernel.FamilyMidVolume D) (u : D.what₂.Word) (h3 : UnitaryVolumeMass.stLem3L0 D u) {C0 : ℝ}
    (hD : StandingNumericalData D C0) : UnitaryVolumeMass.FormAt D u := by
  intro F0 he hz what₂ hrows
  obtain ⟨-, -, -, -, -, -, -, -, hT, -⟩ := hD
  have hp := (D.mem u).A.T_prime
  have h3T : 3 ≤ (D.mem u).A.T := by
    have h1 := (hT u).2
    have h2 : 2 * 2 ≤ D.host.g 0 * D.host.g 1 :=
      Nat.mul_le_mul (D.host.g_prime 0).two_le (D.host.g_prime 1).two_le
    have h4 : D.host.g 0 * D.host.g 1 ≤ (D.host.g 0 * D.host.g 1) ^ 2 := Nat.le_self_pow (by norm_num) _
    have h5 := hp.two_le
    by_contra h
    rw [Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)] at h1
    omega
  have hst := GlobalTheory.Mass.StdMass.main D.host.E D.sp.cm.cmUnram D.R.k
  have h1 := (hR _ _ _ hst.1).1 hst.2.1 u
  have h2 := (h3 hp h3T (hT u).1 F0 he hz what₂ hrows).1
  have h4 : dimPi (hc := D.hcW) u = ∏ τ, vand (uS D u τ) / ∏ i ∈ range D.R.k, (i.factorial : ℝ) :=
    prod_congr rfl fun τ _ => (GlobalTheory.WeylDimU.weyl_dimension _ _ (_root_.GlobalTheory.CritLevel.isHCParam_uS D u τ)).2
  rw [h1, h2, h4]
  change _ * (Cnt.massU D.host.E D.R.k * (Tr D u ^ D.R.k - 1) ^ D.R.f) * _ =
    Cnt.massU D.host.E D.R.k * _ * _ * _
  ring

end GlobalTheory.Core.Deg.AtRecord

namespace GlobalTheory.Core.Deg

theorem smallOn_univ_unconditional : SmallOn Set.univ := by
  intro Cg cb Cu cT CT δ hcb _ hδ
  obtain ⟨t1, h1⟩ := elementary_size_bounds_of_size_hypotheses (8 / Real.log (1 + δ))
  obtain ⟨t2, h2⟩ := GlobalTheory.T.exists_threshold_criticalLevel_lower_bound cb Cu hcb
  obtain ⟨t3, h3⟩ := GlobalTheory.T.normalizedFormalDegree_eq_vandermonde_of_sizes
  refine ⟨max (max t1 t2) t3, fun C0 _ C' Cl hC' hCl D large₂ hT hR => ?_⟩
  have hC1 : t1 ≤ C' := (le_max_left _ _).trans ((le_max_left _ _).trans hC')
  have hCl1 : t1 ≤ Cl := (le_max_left _ _).trans ((le_max_left _ _).trans hCl)
  have hCl2 : t2 ≤ Cl := (le_max_right _ _).trans ((le_max_left _ _).trans hCl)
  have hC3 : t3 ≤ C' := (le_max_right _ _).trans hC'
  have hCl3 : t3 ≤ Cl := (le_max_right _ _).trans hCl
  have hVV : Cnt.Hyp0 D large₂ C' Cl Cg cb Cu cT CT C0 → ∀ τ, VV D τ = vand (lamSH D.R (D.hc τ)) := fun hH0 =>
    h3 D large₂ C' Cl Cg cb Cu cT CT hC3 hCl3 hT hH0.1 (rowColumnShape_of_windowData_width_ge_one D C0 hH0.2.2 hH0.2.1)
  refine ⟨?_, ?_, ?_, fun hH0 => h2 D large₂ C' Cl Cg cT CT C0 hCl2 (hVV hH0) hH0,
    fun hH0 u => AtRecord.form_of_ranks D hR u (GlobalTheory.Mass.RowsRawMass.main D u) hH0.2.1⟩
  · intro τ w H _ _ z π hπ
    obtain ⟨g, -, hg⟩ := hπ
    exact (GlobalTheory.WeylDimU.weyl_dimension _ _ (_root_.GlobalTheory.CritLevel.isHCParam_uS D w τ)).1 H _ hg
  · intro _ w τ
    exact (GlobalTheory.WeylDimU.weyl_dimension _ _ (_root_.GlobalTheory.CritLevel.isHCParam_uS D w τ)).2
  · intro hH0 w
    obtain ⟨-, -, -, hk, hrd, -⟩ := h1 D large₂ C' Cl Cg cb Cu cT CT hC1 hCl1 hH0.1
    obtain ⟨-, -, -, -, -, -, -, -, -, -, -, hg0, -, hg1, -, -, -, -, hv, -⟩ := hH0.1
    have hkR : (5 : ℝ) ≤ D.R.k := by
      have := D.R.m_add_three_le_k
      have := D.R.two_le_m
      exact_mod_cast (by omega : 5 ≤ D.R.k)
    have hrdv : D.host.rdE = 2 * D.host.v := by unfold Host.v; ring
    have hb : 1 ≤ large₂.sc.b := by linarith
    have h4 : (4 : ℝ) ≤ ((D.R.k : ℝ) * large₂.sc.b) ^ 8 :=
      le_trans (by nlinarith) (le_self_pow₀ (by nlinarith) (by norm_num))
    have hg0' : 4 ≤ D.host.g 0 := by exact_mod_cast h4.trans hg0
    have hg1' : 4 ≤ D.host.g 1 := by exact_mod_cast h4.trans hg1
    exact tprod_mono D (_root_.GlobalTheory.CritLevel.ratio_ranks D (GlobalTheory.MassAtRecord.massRatio_at_record D) hR (by linarith)
      hg0' hg1') (AtRecord.err_le D hδ hk) w

end GlobalTheory.Core.Deg
