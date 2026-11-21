import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SemiposAtOfPositive
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsModelOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecZEqZeroOfGenVal
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsRatSecOfPull
import Development.AbelianVarietyTheory.Definitions.Divisors.NotIsChowFormIntLineZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnfoldingSectionsFiniteType
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsProjOverLocallyOfFiniteTypeStatement
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsClosedImmersionGenericPoint
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ComplexPointsNonemptyDenseVariety
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFlatWeightInvertiblePair
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.VanBdLeSpace
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToroidalFlagNonempty
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlagSpaceComponentSmoothProjectiveConnectedStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteDimensionalOfGrowthOn
import Development.AutomorphicArithmetic.DivisorFrames.HolomorphicReductionSpan
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArcZeroZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CuspFormsExtendVanishCompactifiedFlagSpace
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsExtensionOfArcVanishingSmoothChart
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemRadicalOfHolomorphicRatioTendsto
import Formalism.LocalToGlobal.ProjectiveLattices.ReadAlg
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionQuotientOfContinuousReading
import Development.AutomorphicArithmetic.DivisorFrames.EvenWeightDictionaryFrame

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Pj Formalism.BasicNotions.TH Formalism.L2.Theta ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD GlobalTheory.AllWt GlobalTheory.CompHt GlobalTheory.CovTop GlobalTheory.CovHt GlobalTheory.Mean4 GlobalTheory.Mean4O
open scoped ENNReal Classical
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.Points GlobalTheory.ChartGlue GlobalTheory.CechPic GlobalTheory.CxPts GlobalTheory.Cartier
open ReciprocityTheory.ChartRestriction.G.Out (nonzeroLocus)

attribute [-instance] GlobalTheory.CompHS.cuspAddCommGroup in

private theorem chart_bound {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E}
    {Dw : Datum H} {l : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Level H} {Xo : Moduli Dw l} {c : Coeff l} {r : ℕ}
    {U : ∀ σ : c.F →+* ℂ, Unf Xo c σ r} {x : ℝ} {D : D7} {V : (c.F →+* ℂ) → HSp D}
    {dict : ∀ σ, GA D (V σ) → Σ k, Frame ((U σ).X k).Ψ r} {Z : Comp Xo c} {G : WTZ E} (hev : Even G.2)
    (σ : c.F →+* ℂ) (hU : IsUnf (U (goodOf c σ)))
    (hd : ∀ g, (dict (goodOf c σ) g).2 ∈ ((U (goodOf c σ)).X (dict (goodOf c σ) g).1).dom)
    (hspan : ∀ P ∈ holSub (U (goodOf c σ)).X (modelWt (U (goodOf c σ)) G),
      ∃ Q ∈ Submodule.span ℂ (rdU (U (goodOf c σ)) '' (cuspOn U Z G : Set (Rul Xo c))),
        ∀ w ∈ framesOn (U (goodOf c σ)) Z, P w.1 w.2 = Q w.1 w.2)
    {τ : ℕ} {t : ℝ} {f : cuspOn U Z (τ • G)} (hfm : f ∈ smallL U x V dict Z G τ t) :
    ∃ (R : Subalgebra c.F (Om Z)) (_ : Algebra.FiniteType c.F R) (d : Om Z) (_ : d ≠ 0)
      (hc : ∀ v, d * genPoint Z (cuspOn U Z G) v ∈ R) (hF : d ^ τ * genVal Z (f : Rul Xo c) ∈ R),
      ∀ (N n : ℕ) (b : Module.Basis (Fin N) c.F (cuspOn U Z G)) (g : Matrix (Fin N) (Fin n) c.F)
        (A : (c.F →+* ℂ) → Matrix (Fin N) (Fin N) ℂ),
        GlobalTheory.CompHt.IsFrame (normOn U x V dict Z G) (latOn U Z G) b g A → ∀ φ : R →+* ℂ,
        φ.comp (algebraMap c.F R) = σ →
        ‖φ ⟨_, hF⟩‖ ^ 2 ≤ Real.exp (2 * τ * t) * (∑ a, ‖∑ m, A σ m a * φ ⟨_, hc (b m)⟩‖ ^ 2) ^ τ := by
  obtain ⟨κ, hκn, hκκ, hκσ⟩ : ∃ κ : ℂ →+* ℂ, (∀ a, ‖κ a‖ = ‖a‖) ∧ (∀ a, κ (κ a) = a) ∧
      κ.comp (goodOf c σ) = σ := by
    by_cases h : GoodEmb c σ
    · exact ⟨RingHom.id ℂ, fun _ => rfl, fun _ => rfl, by rw [goodOf, if_pos h]; rfl⟩
    · exact ⟨starRingEnd ℂ, Complex.norm_conj, Complex.conj_conj, by
        rw [goodOf, if_neg h]; exact RingHom.ext fun a => Complex.conj_conj _⟩
  obtain ⟨R, hR, tt, hmem, hread⟩ := GlobalTheory.DegCmp.exists_chart_read_at_frames _ _ _ _ _ _ _ (goodOf c σ)
    (U (goodOf c σ)) hU Z
  have hex : exZ Dw (τ • G) = fun ix => exZ Dw G ix * τ := by
    funext ix
    cases ix <;> simp [exZ, mul_comm]
  have hfs : (f : Rul Xo c) ∈ secZ Xo c (fun ix => exZ Dw G ix * (τ : ℤ)) := by
    rw [← hex]; exact cuspW_le_secZ _ f.2.1
  have hpow : ∀ {M : Type} [Field M] (a : Formalism.L2.Pj.Ix Dw → Mˣ),
      ((∏ ix, a ix ^ (exZ Dw G ix * (τ : ℤ)) : Mˣ) : M) = ((∏ ix, a ix ^ exZ Dw G ix : Mˣ) : M) ^ τ := fun a => by
    rw [← Units.val_pow_eq_pow_val, ← Finset.prod_pow]
    simp only [zpow_mul, zpow_natCast]
  have hF := hmem _ _ hfs
  rw [hpow] at hF
  have hs : ∀ v : cuspOn U Z G, (v : Rul Xo c) ∈ secZ Xo c (exZ Dw G) := fun v => cuspW_le_secZ _ v.2.1
  have hc : ∀ v, ((∏ ix, tt ix ^ exZ Dw G ix : (Om Z)ˣ) : Om Z) * genPoint Z (cuspOn U Z G) v ∈ R :=
    fun v => hmem _ _ (hs v)
  refine ⟨R, hR, _, Units.ne_zero _, hc, hF, fun N n b g A hfr φ hφ => ?_⟩
  obtain ⟨z, hz, a, ha⟩ := hread (κ.comp φ) (by
    rw [RingHom.comp_assoc, hφ]
    refine RingHom.ext fun x => ?_
    conv_lhs => rw [← hκσ]
    exact hκκ _)
  have hb := UpperTheory.even_weight_dictionary_frame _ _ _ _ _ _ _ U x D V dict Z G hev σ hd hspan N n b g A hfr κ hκn hκσ τ t f hfm z hz
  have e1 := ha _ _ hfs ⟨_, hF⟩ (by rw [hpow])
  rw [hpow] at e1
  have e2 := fun m => congrArg κ (ha _ _ (hs (b m)) ⟨_, hc (b m)⟩ rfl)
  simp only [RingHom.comp_apply, hκκ, map_mul] at e1 e2
  generalize ((∏ ix, a ix ^ exZ Dw G ix : ℂˣ) : ℂ) = S at e1 e2
  have e3 : ∑ a, ‖∑ m, A σ m a * φ ⟨_, hc (b m)⟩‖ ^ 2 =
      (∑ a, ‖∑ m, A σ m a * κ (rdU (U (goodOf c σ)) (b m : Rul Xo c) z.1 z.2)‖ ^ 2) * ‖S‖ ^ 2 := by
    rw [Finset.sum_mul]
    refine Finset.sum_congr rfl fun a _ => ?_
    rw [← hκn S, ← mul_pow, ← norm_mul, Finset.sum_mul]
    exact congrArg (fun q : ℂ => ‖q‖ ^ 2) (Finset.sum_congr rfl fun m _ => by rw [e2]; ring)
  rw [e3, ← hκn, e1, norm_mul, mul_pow, mul_pow, norm_pow, ← pow_mul, ← pow_mul, mul_comm τ 2, ← mul_assoc, mul_comm]
  exact mul_le_mul_of_nonneg_right hb (pow_nonneg (norm_nonneg _) _)

