import Development.AutomorphicArithmetic.LocalEmbeddings.RootFrame
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsModelPresentingDivisor
import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.HodgeTateLatticePointFinrankTateModule

open CategoryTheory AlgebraicGeometry NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Formalism.BasicNotions Formalism.L2.Pj GlobalTheory GlobalTheory.Cartier GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.Mean4O GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.TrivFlag GlobalTheory.LineNorm
open Formalism.MainNotions.DIV.Cons (intO)
open scoped TensorProduct Matrix
open MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Toroidal GlobalTheory.RootFrame

section Flags

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}
  {lv : Level H} {Xo : Moduli Dw lv} {c : Coeff lv} {O : Type} [CommRing O] {β : O →+* c.F}
  {Z : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Model Xo c β} {F : Type} [Field F] [NumberField F] {ε : F ≃+* c.F} (C : GlobalTheory.ShFam.FlagCpt Z ε)

private theorem single_spec (b : ℕ → Bool) (R : Option ℝ) (σ : E →+* ℂ) (k : Fin (Dw.mult σ)) (n : ℤ)
    {w : Pad.Sym E →₀ ℤ} (hw : w = Finsupp.single (b, R, .inl (σ, (k : ℕ))) n) :
    (∀ y : C.Y.X, UnitAt y (((dg C y σ k ^ n) * (eqn (divOf C (expo Dw w)) y)⁻¹ : C.Y.Fnˣ) : C.Y.Fn)) ∧
    ∀ v e y, lgOf C w v e y = Real.log (e.w (TrueGeo.valAt y.1
      (((dg C (below y.1) σ k ^ n) * (eqn (divOf C (expo Dw w)) (below y.1))⁻¹ : C.Y.Fnˣ) : C.Y.Fn))) +
      n * symLog C b (.inl (σ, k)) v e y := by
  obtain ⟨k, hk⟩ := k
  have hP (y : C.Y.X) : ∏ x : Pad.Letter Dw, dg C y x.1 x.2 ^ expo Dw w x = dg C y σ ⟨k, hk⟩ ^ n := by
    rw [Finset.prod_eq_single ⟨σ, ⟨k, hk⟩⟩ (fun x _ hx => by
      rw [hw, expo_single, if_neg (by simpa [letterOf, hk] using hx.symm), zpow_zero]) (by simp), hw, expo_single,
      if_pos (by simp [letterOf, hk])]
  refine ⟨fun y => ?_, fun v e y => ?_⟩
  · have h₁ : (divOf C (expo Dw w)).IsEqn y (∏ x : Pad.Letter Dw, dg C y x.1 x.2 ^ expo Dw w x) :=
      isEqn_sum _ y fun x => ((fr_spec C y).2 x.1 x.2).zsmul _
    rw [hP] at h₁
    simpa [div_eq_mul_inv] using (Base.isEqn_eqn _ y).iff_unitAt.1 h₁
  · rw [lgOf_eq_lgCopy, lgCopy_eq, hP]
    congr 1
    rw [hw]
    exact Finsupp.sum_single_index (h := fun (a : Pad.Sym E) (n : ℤ) => (n : ℝ) * symLog C a.1 a.2.2 v e y) (by simp)

end Flags

