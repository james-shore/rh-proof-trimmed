import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.GlobalHeightBoundIffAtGoodPrimes
import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing
import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.BijectiveToPushforwardComp
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFrobCokernelSmulHomPow
import Development.AbelianVarietyTheory.Definitions.Divisors.IsTorsionFreeOfForallExists
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsZeroPresZeroMod
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf

set_option autoImplicit false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.LB

namespace GlobalTheory.FrobPow

variable {X Y : Scheme.{0}}

section Pow

abbrev pwN (L : LB X) (n : ℕ) : LB X := ⟨L.ι, L.U, fun i j => L.g i j ^ (n : ℤ)⟩

variable {L M N : LB X} (n : ℕ)

theorem resG_pw_g (i j : L.ι) {W : X.Opens} (h : W ≤ L.U i ⊓ L.U j) :
    resG X h ((pwN L n).g i j).val =
      resG X h (L.g i j : Γ(X, L.U i ⊓ L.U j)) ^ n := by
  rw [← map_pow]
  exact congrArg _ ((congrArg Units.val (zpow_natCast (L.g i j) n)).trans
    (Units.val_pow_eq_pow_val _ _))

def powSec {V : X.Opens} (s : Γ(toMod L, V)) : Γ(toMod (pwN L n), V) :=
  mkSec (L := pwN L n) (fun i => coord s i ^ n) fun i j => by
    have h := congrArg (· ^ n) (coord_mem s i j)
    simp only [mul_pow] at h
    refine (map_pow _ _ _).trans (h.trans ?_)
    exact congrArg₂ (· * ·) (resG_pw_g (L := L) n i j _).symm (map_pow _ _ _).symm

theorem coord_powSec {V : X.Opens} (s : Γ(toMod L, V)) (i : L.ι) :
    coord (L := pwN L n) (powSec n s) i = coord s i ^ n := rfl

end Pow

end GlobalTheory.FrobPow

namespace GlobalTheory.FrobFilt

end GlobalTheory.FrobFilt
