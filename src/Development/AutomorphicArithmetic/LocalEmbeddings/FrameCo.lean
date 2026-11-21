import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsFlagBundleRankOne
import Development.AbelianVarietyTheory.Proofs.ToricGeometry.TangentBijectionOfValues

set_option autoImplicit false

noncomputable section

open CategoryTheory AlgebraicGeometry Matrix
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.VB GlobalTheory.TangentOrigin
open GlobalTheory.Twist (resM resM_resM resM_smul)

namespace GlobalTheory.BcLie

variable {X X' : Scheme.{0}} {M : X.Modules} {r : ℕ} {K K' : Type} [CommRing K] [CommRing K']

def trS (c c' : Chart M r) : Matrix (Fin r) (Fin r) Γ(X, c.U ⊓ c'.U) :=
  Matrix.of fun a b => (c.isFrame.basis inf_le_left).repr (resM M inf_le_right (c'.e b)) a

open Classical in

def trAt (x : Sp K ⟶ X) (c c' : Chart M r) : Matrix (Fin r) (Fin r) K :=
  if h : ⊤ ≤ x ⁻¹ᵁ (c.U ⊓ c'.U) then (trS c c').map (evalPt x _ h) else 0

def IsTri (T : Matrix (Fin r) (Fin r) K) : Prop := ∀ a i, i < a → T a i = 0

def pos (dual : Bool) (i : Fin r) : Fin r := cond dual i.rev i

theorem le_inf_pre {x : Sp K ⟶ X} {U V : X.Opens} (h : ⊤ ≤ x ⁻¹ᵁ U) (h' : ⊤ ≤ x ⁻¹ᵁ V) : ⊤ ≤ x ⁻¹ᵁ (U ⊓ V) :=
  fun p hp => ⟨h hp, h' hp⟩

theorem trAt_eq {x : Sp K ⟶ X} (c c' : Chart M r) (h : ⊤ ≤ x ⁻¹ᵁ (c.U ⊓ c'.U)) :
    trAt x c c' = (trS c c').map (evalPt x _ h) := dif_pos h

theorem pos_pos (dual : Bool) (i : Fin r) : pos dual (pos dual i) = i := by
  cases dual <;> simp [pos]

end GlobalTheory.BcLie

end
