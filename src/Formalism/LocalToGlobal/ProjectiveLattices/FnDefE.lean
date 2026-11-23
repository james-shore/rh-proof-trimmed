module

public import Formalism.LocalToGlobal.ProjectiveLattices.NrmTieDef
public import Formalism.LocalToGlobal.ProjectiveLattices.CompSplitPfB
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.ExistsPowSmulMemBall
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.FlowCoefficientBounds

@[expose] public section

noncomputable section

namespace Formalism.L2.Pj

open NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.T0 ReciprocityTheory.ChartRestriction.G.FD

section FD

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ}

theorem continuousOn_pnorm (X : Data E r) (la : Wt X.Ψ r) {P : Frame X.Ψ r → ℂ} (hP : ContinuousOn P X.dom) :
    ContinuousOn (X.pnorm la P) X.dom := by
  have hd : ∀ (τ : X.Ψ) (i : Fin (r + 1)), Continuous fun x : Frame X.Ψ r => dmin X.Gm x τ i := by
    intro τ i
    simp only [dmin, lminor, gram, hermC, col, mat, Matrix.det_apply, Matrix.submatrix_apply,
      Matrix.of_apply, starRingEnd_apply, Units.smul_def, zsmul_eq_mul]
    first | fun_prop | continuity
  have hterm : ∀ (τ : X.Ψ) (i : Fin r), ContinuousOn
      (fun x => ‖dmin X.Gm x τ i.succ / dmin X.Gm x τ i.castSucc‖ ^ (-(la τ i : ℝ) / 2)) X.dom := by
    intro τ i
    refine ContinuousOn.rpow_const ?_ ?_
    · exact (((hd τ i.succ).continuousOn).div (hd τ i.castSucc).continuousOn
        fun x hx => _root_.ReciprocityTheory.ChartRestriction.G.FD.FlowCoefficientBounds.dmin_ne X hx τ _).norm
    · intro x hx
      exact Or.inl (norm_ne_zero_iff.2 (div_ne_zero (_root_.ReciprocityTheory.ChartRestriction.G.FD.FlowCoefficientBounds.dmin_ne X hx τ _) (_root_.ReciprocityTheory.ChartRestriction.G.FD.FlowCoefficientBounds.dmin_ne X hx τ _)))
  unfold Data.pnorm
  refine ContinuousOn.mul hP.norm ?_
  first
    | exact continuousOn_finset_prod _ fun τ _ => continuousOn_finset_prod _ fun i _ => hterm τ i
    | fun_prop

end FD

section Core

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.WeightAlgebra Formalism.MainNotions.Gaps.EtaleWeightGaps CompSplitPfB

variable {D : D7} {Tc : Core D} (hL : LawsCore Tc) (j : ℕ)


variable {j} in
def CompOf (cm : ∀ σ : Tc.Q.c.F →+* ℂ, (Tc.U j σ).Comp → Comp (Tc.Q.Xo j) Tc.Q.c) : Prop :=
  ∀ (σ : Tc.Q.c.F →+* ℂ) (k : (Tc.U j σ).Comp) (x : ((Tc.U j σ).X k).dom) (q : PrimeSpectrum (CAt σ)),
    cspB_lift ((Tc.U j σ).un k x).x ((Tc.U j σ).un k x).x_over q ∈
      ((cm σ k : Comp (Tc.Q.Xo j) Tc.Q.c) : Set ((Tc.Q.Xo j).XF Tc.Q.c))

def ptAt (hj : InR D j) (hA : AllTest (Tc.Q.Xo j) Tc.Q.c) (hB : ∀ σ, GoodEmb Tc.Q.c σ → BCEx (Tc.Q.Xo j) Tc.Q.c σ)
    (h : GenFrEx (Tc.Q.Xo j) Tc.Q.c) (hb : CBaseEx (Tc.Q.Xo j) Tc.Q.c h) (Z : Comp (Tc.Q.Xo j) Tc.Q.c)
    (P : Om Z →+* ℂ) (sg : Tc.Q.c.F →+* ℂ) (hP : sgOf P = sg) : SupPtAt j (goodOf Tc.Q.c sg) :=
  hP ▸ nrmTieDefPt hL j hj hA hB h hb Z P

end Core

end Formalism.L2.Pj
