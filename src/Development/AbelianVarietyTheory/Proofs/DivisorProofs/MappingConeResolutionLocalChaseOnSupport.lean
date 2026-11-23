module

public import Development.AbelianVarietyTheory.Definitions.Divisors.SecClass
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChosenInjectiveResolutionEtaleSheafPropertiesStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChosenInjectiveResolutionEtaleSheafSectionsExactStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleLocalPropertyCalculusRulesStatement
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
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsZeroChains
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SubsingletonHypercohomologyOfLocallyExactOnSuppo

@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC

namespace GlobalTheory.EtC.ConeChase

variable {R : Type} [CommRing R]

alias map_comp := _root_.GlobalTheory.EtC.exactIff_map_comp

theorem map_congr {F G : Shv R} {a b : F ⟶ G} (h : a = b) {U : Scheme.{0}} (x : Sec F U) :
    Sec.map a x = Sec.map b x := by rw [h]

theorem map_zero_hom {F G : Shv R} {U : Scheme.{0}} (x : Sec F U) :
    Sec.map (0 : F ⟶ G) x = 0 := rfl

theorem map_add' {F G : Shv R} (a : F ⟶ G) {U : Scheme.{0}} (x y : Sec F U) :
    Sec.map a (x + y) = Sec.map a x + Sec.map a y := map_add _ _ _

theorem map_neg' {F G : Shv R} (a : F ⟶ G) {U : Scheme.{0}} (x : Sec F U) :
    Sec.map a (-x) = -Sec.map a x := map_neg _ _

theorem res_add {F : Shv R} {V U : Scheme.{0}} (g : V ⟶ U) (x y : Sec F U) :
    Sec.res g (x + y) = Sec.res g x + Sec.res g y := map_add _ _ _

theorem res_zero {F : Shv R} {V U : Scheme.{0}} (g : V ⟶ U) :
    Sec.res g (0 : Sec F U) = 0 := map_zero _

theorem res_comp {F : Shv R} {W V U : Scheme.{0}} (k : W ⟶ V) (g : V ⟶ U) (x : Sec F U) :
    Sec.res (k ≫ g) x = Sec.res k (Sec.res g x) := by
  have := congrArg (fun t => t.hom x) (F.obj.map_comp g.op k.op)
  exact this

theorem comm' {I J : Cx R} (f : I ⟶ J) (i j : ℤ) {U : Scheme.{0}} (x : Sec (I.X i) U) :
    Sec.map (J.d i j) (Sec.map (f.f i) x) = Sec.map (f.f j) (Sec.map (I.d i j) x) :=
  map_congr (f.comm i j) x

theorem mappingCone_resolution_localChase_of_succ (E : Spc) {F G : Shv R} (φ : F ⟶ G)
    (hφ : ∀ U : Scheme.{0}, Nonempty (Sx E 0 U) → Function.Bijective (Sec.map φ (U := U)))
    (U : Scheme.{0}) (hU : Nonempty (Sx E 0 U)) (m n k l : ℤ) (hm : m + 1 = n) (hk : n + 1 = k) (hl : k + 1 = l)
    (b₁ : Sec ((res R F).X k) U) (b₂ : Sec ((res R G).X n) U)
    (h₁ : Sec.map ((res R F).d k l) b₁ = 0)
    (h₂ : Sec.map ((resMap R φ).f k) b₁ + Sec.map ((res R G).d n k) b₂ = 0) :
    Loc U fun V g => ∃ (a₁ : Sec ((res R F).X n) V) (a₂ : Sec ((res R G).X m) V),
      Sec.map ((res R F).d n k) a₁ = -Sec.res g b₁ ∧
      Sec.map ((resMap R φ).f n) a₁ + Sec.map ((res R G).d m n) a₂ = Sec.res g b₂ := by
  obtain ⟨Lall, Lmono, -, -, Ltrans, -, -⟩ := GlobalTheory.T.etaleLocal_property_calculus_rules
  have hι := ((GlobalTheory.T.chosenInjectiveResolution_etaleSheaf_properties R F).2.2.2.2.2.2.2 G φ).2
  have hd := (GlobalTheory.T.chosenInjectiveResolution_etaleSheaf_properties R F).2.2.2.2.2.2.1
  rcases lt_or_ge n 0 with hn | hn
  · have hb₂ : b₂ = 0 := ((_root_.GlobalTheory.EtC.resSec R G U).2.2.2 n hn).elim _ _
    have hb₁ : b₁ = 0 := by
      rcases lt_or_ge k 0 with hk0 | hk0
      · exact ((_root_.GlobalTheory.EtC.resSec R F U).2.2.2 k hk0).elim _ _
      · obtain rfl : k = 0 := by omega
        obtain rfl : l = 1 := by omega
        obtain ⟨s, rfl⟩ := ((_root_.GlobalTheory.EtC.resSec R F U).1 b₁).1 h₁
        rw [hb₂, _root_.GlobalTheory.EtC.SuppAcyc.map_zero', add_zero, ← map_comp, map_congr hι, map_comp] at h₂
        have h3 : Sec.map φ s = 0 := (_root_.GlobalTheory.EtC.resSec R G U).2.1 (by rw [h₂, _root_.GlobalTheory.EtC.SuppAcyc.map_zero'])
        have h4 : s = 0 := (hφ U hU).1 (by rw [h3, _root_.GlobalTheory.EtC.SuppAcyc.map_zero'])
        rw [h4, _root_.GlobalTheory.EtC.SuppAcyc.map_zero']
    refine Lall _ _ fun V g => ⟨0, 0, ?_, ?_⟩
    · rw [hb₁, _root_.GlobalTheory.EtC.SuppAcyc.map_zero', res_zero, neg_zero]
    · rw [hb₂, _root_.GlobalTheory.EtC.SuppAcyc.map_zero', _root_.GlobalTheory.EtC.SuppAcyc.map_zero', res_zero, add_zero]
  · apply Ltrans
    refine Lmono _ _ _ ((_root_.GlobalTheory.EtC.resSec R F U).2.2.1 n k l (by omega) hk b₁ hl h₁) ?_
    rintro V g ⟨y, hy⟩
    have hc : Sec.map ((res R G).d n k) (Sec.res g b₂ + Sec.map ((resMap R φ).f n) y) = 0 := by
      rw [map_add', comm', hy, ← _root_.GlobalTheory.EtC.CupSpec.map_res, ← _root_.GlobalTheory.EtC.CupSpec.map_res, ← res_add, add_comm, h₂, res_zero]
    rcases lt_or_eq_of_le hn with hn' | hn'
    · refine Lmono _ _ _ ((_root_.GlobalTheory.EtC.resSec R G V).2.2.1 m n k hn' hm _ hk hc) ?_
      rintro W j ⟨z, hz⟩
      refine ⟨-Sec.res j y, z, ?_, ?_⟩
      · rw [map_neg', ← _root_.GlobalTheory.EtC.CupSpec.map_res, hy, res_comp]
      · rw [hz, map_neg', res_add, _root_.GlobalTheory.EtC.CupSpec.map_res, res_comp]; abel
    · subst hn'
      obtain rfl : k = 1 := by omega
      obtain ⟨s, hs⟩ := ((_root_.GlobalTheory.EtC.resSec R G V).1 _).1 hc
      obtain ⟨x⟩ := hU
      obtain ⟨t, rfl⟩ := (hφ V ⟨Sx.res g x⟩).2 s
      refine Lall _ _ fun W j => ⟨Sec.res j (-y + Sec.map (resι R F) t), 0, ?_, ?_⟩
      · rw [← _root_.GlobalTheory.EtC.CupSpec.map_res, map_add', map_neg', hy, ← map_comp, map_congr hd, map_zero_hom, add_zero, res_comp]
        exact map_neg _ _
      · rw [_root_.GlobalTheory.EtC.SuppAcyc.map_zero', add_zero, ← _root_.GlobalTheory.EtC.CupSpec.map_res, map_add', map_neg', ← map_comp, map_congr hι, map_comp, hs, res_comp]
        congr 1
        abel

theorem chase : ∀ (R : Type) [CommRing R] (E : Spc) {F G : Shv R} (φ : F ⟶ G), (∀ U : Scheme.{0}, Nonempty (Sx E 0 U) → Function.Bijective (Sec.map φ (U := U))) → ∀ (U : Scheme.{0}), Nonempty (Sx E 0 U) → ∀ (n : ℤ) (b₁ : Sec ((res R F).X (n + 1)) U) (b₂ : Sec ((res R G).X n) U), Sec.map ((res R F).d (n + 1) (n + 2)) b₁ = 0 → Sec.map ((resMap R φ).f (n + 1)) b₁ + Sec.map ((res R G).d n (n + 1)) b₂ = 0 → Loc U fun V g => ∃ (a₁ : Sec ((res R F).X n) V) (a₂ : Sec ((res R G).X (n - 1)) V), Sec.map ((res R F).d n (n + 1)) a₁ = -Sec.res g b₁ ∧ Sec.map ((resMap R φ).f n) a₁ + Sec.map ((res R G).d (n - 1) n) a₂ = Sec.res g b₂ :=
  fun _ _ E _ _ φ hφ U hU n b₁ b₂ h₁ h₂ =>
    mappingCone_resolution_localChase_of_succ E φ hφ U hU (n - 1) n (n + 1) (n + 2) (by ring) rfl (by ring) b₁ b₂ h₁ h₂

end GlobalTheory.EtC.ConeChase
