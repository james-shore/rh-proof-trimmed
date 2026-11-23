module

public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.UnderTie
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ChartLevelBaseFrameCongrOneAtBadPrimeStatement
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ChartPointFramesMoveIntegralRightTranslateStatement
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.FunctionalConditionInvariantRightLevelTranslateStatement
import Formalism.LocalToGlobal.LatticeGeometry.GeometryDefinitions.PNeatB
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
import Mathlib.Topology.Sheaves.Init

@[expose] public section

open NumberField IsDedekindDomain Matrix Formalism.BasicNotions Formalism.UG Formalism.L2.Col Formalism.L2.PairingIndexBounds.F Formalism.MainNotions.G.KAat Formalism.L2.Forms Formalism.L2.Ker Formalism.MainNotions Formalism.L2.DIV Formalism.MainNotions.G GlobalTheory.TwU GlobalTheory.TwV
open scoped TensorProduct

noncomputable section

namespace GlobalTheory.TwV

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem isPtAd_mul_lev : UnderTie (fun {D L hT Gi Gl Kc Y cX ex t u μ St} A dtU a => ∀ (i : ℕ) (hi : i ≤ D.R.m) (β : (St i hi).Ch) (x x' : UA D i hi) p (κ : ((St i hi).K β).lev.U), x'.1 = x.1 * κ.1 → IsPtAd A a i hi β x p → ∃ p', IsPtAd A a i hi β x' p') := by
  intro D L hT Gi Gl Kc Y cX ex t u μ St A dtU a hP H i hi β x x' p κ hx hp
  obtain ⟨p', hN, hf, hfr⟩ := _root_.GlobalTheory.FrameShift.exists_pt_mul A dtU a hP H i p
    (fun P => ratA D.host.F (A.crd i hi) * x.1 * ratA D.host.F (A.fb i hi β P))
    (fun P => (ratA D.host.F (A.fb i hi β P))⁻¹ * κ.1 * ratA D.host.F (A.fb i hi β P))
    (GlobalTheory.T.chartLevel_baseFrame_congr_one_at_badPrime A dtU a hP H i hi β x p κ hp) hp.frame
  refine ⟨p', ⟨?_, ?_, ?_⟩⟩
  · rw [hN, hp.lat]
    unfold latCo
    rw [hx, latAd_stab _ _ _ (_root_.GlobalTheory.TwU.hatStab_of_lev _ κ)]
  · intro P
    have e : ratA D.host.F (A.crd i hi) * x'.1 * ratA D.host.F (A.fb i hi β P) =
        ratA D.host.F (A.crd i hi) * x.1 * ratA D.host.F (A.fb i hi β P) *
          ((ratA D.host.F (A.fb i hi β P))⁻¹ * κ.1 * ratA D.host.F (A.fb i hi β P)) := by
      rw [hx]; simp only [mul_assoc, mul_inv_cancel_left]
    rw [e]
    exact hfr P
  · intro P v h hv
    have e : ratA D.host.F (A.crd i hi) * x'.1 = ratA D.host.F (A.crd i hi) * x.1 * κ.1 := by
      rw [hx, mul_assoc]
    have h1 := GlobalTheory.T.functionalCondition_invariant_rightLevelTranslate t.seam _ P v h (iotaOf A i hi β P v h) _ κ _ (hp.fnl P v h hv)
    rw [e]
    intro w hw z hz
    have h2 := h1 w (by rw [← hN]; exact hw) z hz
    exact (congrFun (congrFun hf P) w).trans h2

end GlobalTheory.TwV

end
