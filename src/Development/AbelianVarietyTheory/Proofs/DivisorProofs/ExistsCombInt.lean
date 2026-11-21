import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ActMatApply
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CutsSecOfIsLat
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsHomogeneousPolysTangentBasis
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UniqueIntegralLiftNormPInverse
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsTangentPresentationPrime
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SplitTorsAlgClosedFractionField
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ScaleZeroComp
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TorsionCharEqOfEqOnTorsion
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TorsionCharExtendsDivisibleLevel
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsUnitOfPowEqOne

set_option autoImplicit false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry NumberField MonObj WithConv
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.PDiv GlobalTheory.PDivGroup GlobalTheory.GroupBplus GlobalTheory.LineNorm
open Formalism.MainNotions.DIV.Cons (intO SCF)
open GlobalTheory.DeRham (spOver spOver_comp)
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.ChainPts.SysB.HT

theorem exists_extend {G G' K : Type} [CommGroup G] [CommGroup G'] [Field K] [IsAlgClosed K] (j : G →* G')
    (hj : Function.Injective j) (f : G →* Kˣ) : ∃ f' : G' →* Kˣ, ∀ g, f' (j g) = f g := by
  letI : DivisibleBy (Additive Kˣ) ℕ := divisibleByOfSMulRightSurj (Additive Kˣ) ℕ fun {n} hn a => by
    obtain ⟨z, hz⟩ := IsAlgClosed.exists_pow_nat_eq (a.toMul : K) (Nat.pos_of_ne_zero hn)
    have h0 : z ≠ 0 := fun h => a.toMul.ne_zero (by rw [← hz, h, zero_pow hn])
    exact ⟨Additive.ofMul (Units.mk0 z h0), congrArg Additive.ofMul (Units.ext hz)⟩
  letI : DivisibleBy (Additive Kˣ) ℤ := AddGroup.divisibleByIntOfDivisibleByNat _
  obtain ⟨k, hk⟩ := (Module.Baer.of_divisible (Additive Kˣ)).extension_property_addMonoidHom
    (MonoidHom.toAdditive j) (fun a b h => hj h) (MonoidHom.toAdditive f)
  exact ⟨MonoidHom.toAdditive.symm k, fun g => DFunLike.congr_fun hk (Additive.ofMul g)⟩

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {p : ℕ} [hp : Fact p.Prime] {X : Scheme.{0}}
  {tX : SAB H X} {A : Type} [CommRing A] {x : Sp A ⟶ X} {t : SAB H (Sp A)} {φ : t.G.left ⟶ tX.G.left}
  {GG : PDivGroup p A}

variable {O : Type} [CommRing O] [Algebra A O] (φ) (θ : TorsionMap t.G GG)

variable {φ}

omit hp in

theorem base (B : Type) [CommRing B] [Algebra O B] [Algebra A B] [IsScalarTower A O B] :
    spMap (algebraMap A B) ≫ x = spMap (algebraMap O B) ≫ spMap (algebraMap A O) ≫ x := by
  rw [GlobalTheory.HTMap.spc_assoc, ← IsScalarTower.algebraMap_eq]

end GlobalTheory.ChainPts.SysB.HT

end
