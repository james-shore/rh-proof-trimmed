module

public import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.AdmissibleCoefficientsAnalytic
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsSmoothVec
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsAdmOnOfFiniteDimensional
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.AdmissibleUnitaryKFinite
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LeviModulusOneLinearReductiveExpMulExp
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LeviSubmoduleDense
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AlmostIsomOfGrowth
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.AnalyticOnUJOfWordBound
import Development.AutomorphicSpectrum.Proofs.GlobalProofs.DerivedActionAdditive
import Development.AutomorphicSpectrum.Proofs.GlobalProofs.DerivedActionOfSmoothVector
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsBasisLieOfOrthogonal
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsIsotypicSum
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsUnitaryIwasawaLeviOne
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IterateRealSmul
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.PolyGrowthOfIsometricOnK
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.RpowNegLeOfDichotomy
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.SecondCountableGrp
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.SpecialLinearMulApplyZeroZero
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.SumSquaresComm
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.WordBoundOfDelta
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.KoszulLowersPower
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.MatrixExponential
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init

@[expose] public section

noncomputable section

open Matrix Formalism.REAL Formalism.MainNotions.S Formalism.L2.Theta GlobalTheory.LinRed GlobalTheory.FlagMeas GlobalTheory.RealInd
open scoped InnerProductSpace ContDiff

namespace GlobalTheory.CompanionTheory.Hypotheses₂.HCA

alias growth := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.PolyGrowth.polyGrowth_of_isometric_on_K

alias volume := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.Volume.integrable_wt_rpow_neg

alias almost_of_growth := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.Growth.almostIsom_of_growth

alias iwa_levi := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.IwaLevi.exists_unitary_iwasawa_leviOne

alias admissible_of_iwasawa_decomposition := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.admitted.isAdmOn_of_iwasawa

alias analytic_uj := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.AnalyticWords.analyticOnUJ_of_wordBound

alias one_param := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.OneParam.analytic_coeff

variable {n : ℕ} {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

theorem smooth_word_of_adm {G : Set (Matrix (Fin n) (Fin n) ℂ)} [CompleteSpace H]
    {π : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)} (hG : IsLinRed G) (hcl : IsClosed G) (hA : IsAdmOn G π) (hQ : AlmostIsom G π) {v : H}
    (hv : IsKFinOn G π v) : IsSmoothVec G π v ∧ WordBound G π v := by
  obtain ⟨hrep, hc, hK, -⟩ := id hA
  obtain ⟨Y, hYf, hvY, hYK, hD⟩ := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.Isotypic.exists_isotypic_sum hG hA hv
  have hYs : ∀ y ∈ Y, IsSmoothVec G π y := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.Gard.smooth_of_commutant_stable hG hcl hrep hc hK Y fun T hT y hy => by
    have := hD ((T : H →ₗ[ℂ] H).comp Y.subtype) (fun k hk y y' e => by
      show T (y' : H) = π k (T (y : H))
      rw [e, hT k hk]) ⟨y, hy⟩
    exact this
  obtain ⟨d, b, hb, hli, hsp, hinv⟩ := _root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.exists_basis_lieOf_orthogonal hG
  refine ⟨hYs v hvY, _root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.WordDelta.word_bound_of_delta hG hrep hc hQ b hb hli hsp Y hYs ?_ v hvY⟩
  have hsm : ∀ (y : H), IsSmoothVec G π y → ∀ i, IsSmoothVec G π (dRep π (b i) (dRep π (b i) y)) := fun y hy i =>
    (_root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.hasDerivAt_dRep_and_isSmoothVec hG hrep (_root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.hasDerivAt_dRep_and_isSmoothVec hG hrep hy (hb i)).2 (hb i)).2
  let Dl : Y →ₗ[ℂ] H :=
    { toFun := fun y => ∑ i, dRep π (b i) (dRep π (b i) (y : H))
      map_add' := fun x y => by
        refine Finset.sum_congr rfl (fun i _ => ?_) |>.trans Finset.sum_add_distrib
        have hx := hYs x x.2
        have hy := hYs y y.2
        rw [Submodule.coe_add, (_root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.SmoothLin.dRep_linear hG hrep hx hy (hb i) (hb i)).2.1,
          (_root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.SmoothLin.dRep_linear hG hrep (_root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.hasDerivAt_dRep_and_isSmoothVec hG hrep hx (hb i)).2 (_root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.hasDerivAt_dRep_and_isSmoothVec hG hrep hy (hb i)).2
            (hb i) (hb i)).2.1]
      map_smul' := fun c x => by
        have hx := hYs x x.2
        rw [RingHom.id_apply, Finset.smul_sum]
        refine Finset.sum_congr rfl fun i _ => ?_
        rw [Submodule.coe_smul, (_root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.SmoothLin.dRep_linear hG hrep hx hx (hb i) (hb i)).2.2,
          (_root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.SmoothLin.dRep_linear hG hrep (_root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.hasDerivAt_dRep_and_isSmoothVec hG hrep hx (hb i)).2 (_root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.hasDerivAt_dRep_and_isSmoothVec hG hrep hx (hb i)).2
            (hb i) (hb i)).2.2] }
  intro y hy
  refine hD Dl (fun k hk y y' e => ?_) ⟨y, hy⟩
  obtain ⟨O, hO, hkb⟩ := hinv k hk
  show ∑ i, dRep π (b i) (dRep π (b i) (y' : H)) = π k (∑ i, dRep π (b i) (dRep π (b i) (y : H)))
  rw [e, _root_.GlobalTheory.CompanionTheory.Hypotheses₂.HCA.sumSquares_comm hG hrep b hb hk.1 O hO hkb (hYs y y.2)]

theorem isClosed_UJset (ε : Fin n → Bool) : IsClosed (UJset ε) := by
  show IsClosed {g : Matrix (Fin n) (Fin n) ℂ | gᴴ * Formalism.REAL.Jm ε * g = Formalism.REAL.Jm ε}
  exact isClosed_eq ((continuous_id.matrix_conjTranspose.matrix_mul continuous_const).matrix_mul continuous_id)
    continuous_const

theorem almostIsom_of_unitary {G : Set (Matrix (Fin n) (Fin n) ℂ)} {π : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)}
    (hU : IsURepOn G π) : AlmostIsom G π := by
  refine ⟨fun x y => ⟪x, y⟫_ℂ, 1, 1, 0, one_pos, zero_le_one, le_refl _, fun x y z => inner_add_right x y z,
    fun c x y => inner_smul_right x y c, fun x y => (inner_conj_symm y x).symm, fun x => ?_, fun x y => ?_,
    fun X hX t x => ?_⟩
  · show 1 * ‖x‖ ^ 2 ≤ (⟪x, x⟫_ℂ).re
    rw [one_mul]
    exact (inner_self_eq_norm_sq (𝕜 := ℂ) x).ge
  · show ‖⟪x, y⟫_ℂ‖ ≤ 1 * ‖x‖ * ‖y‖
    rw [one_mul]; exact norm_inner_le_norm x y
  · have h (u : H) : (⟪u, u⟫_ℂ).re = ‖u‖ ^ 2 := inner_self_eq_norm_sq (𝕜 := ℂ) u
    show (⟪π _ x, π _ x⟫_ℂ).re ≤ _ * (⟪x, x⟫_ℂ).re
    simp only [h, hU.2.1 _ (hX t) x]
    simp

end GlobalTheory.CompanionTheory.Hypotheses₂.HCA

namespace GlobalTheory.CompanionTheory.Hypotheses₂

open HCA

theorem admissibleCoefficientsAnalytic : GlobalTheory.Published.AdmissibleCoefficientsAnalytic := by
  intro n ε H _ _ _ π hπ v w hv _
  have hG := GlobalTheory.HCUnitary.isLinRed_UJset ε
  have hA : IsAdmOn (UJset ε) π := GlobalTheory.HCUnitary.isAdmOn_iff.2 hπ
  have hQ : AlmostIsom (UJset ε) π :=
    almost_of_growth hπ.1 hπ.2.1 (growth hπ.1 hπ.2.1 hπ.2.2.1) (volume ε)
  have hv' : IsKFinOn (UJset ε) π v := by
    obtain ⟨S, h1, h2, h3⟩ := hv
    exact ⟨S, h1, h2, GlobalTheory.HCUnitary.isKStable_iff.2 h3⟩
  obtain ⟨hs, hw⟩ := smooth_word_of_adm hG (isClosed_UJset ε) hA hQ hv'
  exact analytic_uj hπ.1 hπ.2.1 hs hw w

theorem leviSubmoduleDense : GlobalTheory.Published.LeviSubmoduleDense := by
  intro n ε a j W hW hj V _ _ _ σ hU hI S hS hK hL
  obtain ⟨hG, hexp⟩ := GlobalTheory.LeviPolar.isLinRed_leviOne n ε a j W hW hj
  have hA : IsAdmOn (mats (leviOne ε W)) σ := admissible_of_iwasawa_decomposition hG (iwa_levi hW hj) hU hI
  have hQ := almostIsom_of_unitary hU
  have hcl : IsClosed (mats (leviOne ε W)) := (Formalism.REAL.isClosedEmbeddingMatrix n ε).1.isClosedMap _ (isClosed_leviOne hW hj)
  have keep : ∀ X : Matrix (Fin n) (Fin n) ℂ, (∀ t : ℝ, NormedSpace.exp (t • X) ∈ mats (leviOne ε W)) →
      ∀ v ∈ S.topologicalClosure, σ (NormedSpace.exp X) v ∈ S.topologicalClosure := fun X hX => by
    have := GlobalTheory.LeviDense.oneParameter_mem_closure (T := fun t : ℝ => σ (NormedSpace.exp (t • X))) (by simp [hU.1.1])
      (fun s t => by
        rw [← hU.1.2 _ (hX s) _ (hX t), add_smul,
          Matrix.exp_add_of_commute _ _ (((Commute.refl X).smul_left s).smul_right t)])
      (hL X hX)
      (fun v hv w => by
        obtain ⟨h1, h2⟩ := smooth_word_of_adm hG hcl hA hQ (GlobalTheory.LeviDense.isKFinOn_of_isKFinIn (hK v hv))
        exact one_param hG hU h1 h2 hX w) 1
    simpa only [one_smul] using this
  rcases hI S.topologicalClosure S.isClosed_topologicalClosure (fun g hg v hv => by
    obtain ⟨X, Y, hX, hY, rfl⟩ := hexp g hg
    rw [hU.1.2 _ (by simpa using hX 1) _ (by simpa using hY 1)]
    exact keep X hX _ (keep Y hY v hv)) with h | h
  · exact absurd (le_bot_iff.1 (h ▸ S.le_topologicalClosure)) hS
  · exact Submodule.dense_iff_topologicalClosure_eq_top.2 h

theorem harishChandra_analyticity_density : GlobalTheory.Published.HarishChandraAnalyticity :=
  ⟨admissibleCoefficientsAnalytic, leviSubmoduleDense⟩

end GlobalTheory.CompanionTheory.Hypotheses₂

end
