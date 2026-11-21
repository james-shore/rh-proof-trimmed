import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictsTo

set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry Limits TopologicalSpace
open GlobalTheory.VB GlobalTheory.FlagLocal
open GlobalTheory.QCoh (pullbackSections res_pullbackSections pullbackSections_res pullback_map_app_pullbackSections app_app)
open GlobalTheory.Twist (resM resM_resM resM_self app_resM)

namespace GlobalTheory.TwoSeq

local notation "pb" => Scheme.Modules.pullback
local notation "pf" => Scheme.Modules.pushforward
local notation "adj" => Scheme.Modules.pullbackPushforwardAdjunction

section Square

variable {X T T' S : Scheme.{0}} {a : T ⟶ X} {a' : T' ⟶ X} {b : S ⟶ T'} {c : S ⟶ T}

def tr {F : X.Modules} {M : T.Modules} (f : (pb a).obj F ⟶ M) : F ⟶ (pf a).obj M :=
  (adj a).unit.app F ≫ (pf a).map f

theorem tr_app {F : X.Modules} {M : T.Modules} (f : (pb a).obj F ⟶ M) (V : X.Opens) (s : Γ(F, V)) :
    (tr f).app V s = f.app (a ⁻¹ᵁ V) (pullbackSections a F le_rfl s) :=
  congrArg (f.app (a ⁻¹ᵁ V)) (resM_self _ _).symm

end Square

end GlobalTheory.TwoSeq
