import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ShortExactOfCover

set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry Limits TopologicalSpace
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.VB GlobalTheory.LieVB GlobalTheory.CurveRootGeometry

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.TwoSeq

local notation "pb" => Scheme.Modules.pullback

section General

variable {O : Type} [CommRing O] {X : Scheme.{0}} {A B A' B' : X.Modules}
  {α : O →+* End A} {β : O →+* End B} {α' : O →+* End A'} {β' : O →+* End B'} {r : ℕ}

theorem shortExact_map_open {T : Scheme.{0}} (f : T ⟶ X) [IsOpenImmersion f] {K : ShortComplex X.Modules}
    (h : K.ShortExact) : (K.map (pb f)).ShortExact := by
  haveI := h.mono_f
  haveI := h.epi_g
  exact ShortComplex.ShortExact.mk' (QCoh.exact_map_pullback f h.exact).1
    (FlagLocal.mono_pullback_of_isOpenImmersion f K.f) (QCoh.exact_map_pullback f h.exact).2

def Datum.restrict (d : Datum α β α' β' r) {T : Scheme.{0}} (f : T ⟶ X) [IsOpenImmersion f] : DatumOn α β α' β' r f where
  D := (pb f).obj d.D
  ρ := pullAct d.ρ f
  a := (pb f).map d.a
  b := (pb f).map d.b
  u := (pb f).map d.u
  v := (pb f).map d.v
  w₁ := by rw [← Functor.map_comp, d.w₁, Functor.map_zero]
  w₂ := by rw [← Functor.map_comp, d.w₂, Functor.map_zero]
  isVB := d.isVB.pullback f
  exact₁ := shortExact_map_open f d.exact₁
  exact₂ := shortExact_map_open f d.exact₂
  equiv_a := d.equiv_a.pullback f
  equiv_b := d.equiv_b.pullback f
  equiv_u := d.equiv_u.pullback f
  equiv_v := d.equiv_v.pullback f

end General

end GlobalTheory.TwoSeq
