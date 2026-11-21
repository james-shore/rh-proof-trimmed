import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ZetaSuccPow
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPolarizationTorsionTower
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConvEqOneOfForallPairing

set_option autoImplicit false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.PDiv GlobalTheory.PDivGroup WithConv
open GlobalTheory.DeRham (spOver spOver_comp)

open scoped TensorProduct
open GlobalTheory GlobalTheory.GroupBplus GlobalTheory.GroupBplus.Closed

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.PDivGroup

def isoOfBijective {p : ℕ} {O : Type} [CommRing O] {G H : PDivGroup p O} (f : G ⟶ H)
    (hf : ∀ n, Function.Bijective (f.app n)) : G ≅ H where
  hom := f
  inv := ⟨fun n => ((BialgEquiv.ofBijective (f.app n) (hf n)).symm : G.A n →ₐc[O] H.A n),
    fun n => BialgHom.ext fun a => by
      obtain ⟨b, rfl⟩ := (hf (n + 1)).2 a
      have e1 : (BialgEquiv.ofBijective (f.app (n + 1)) (hf (n + 1))).symm (f.app (n + 1) b) = b :=
        (BialgEquiv.ofBijective (f.app (n + 1)) (hf (n + 1))).symm_apply_apply b
      change H.res n ((BialgEquiv.ofBijective (f.app (n + 1)) (hf (n + 1))).symm (f.app (n + 1) b)) =
        (BialgEquiv.ofBijective (f.app n) (hf n)).symm (G.res n (f.app (n + 1) b))
      rw [e1, res_app]
      exact ((BialgEquiv.ofBijective (f.app n) (hf n)).symm_apply_apply _).symm⟩
  hom_inv_id := hom_ext fun n => BialgHom.ext fun a =>
    (BialgEquiv.ofBijective (f.app n) (hf n)).apply_symm_apply a
  inv_hom_id := hom_ext fun n => BialgHom.ext fun a =>
    (BialgEquiv.ofBijective (f.app n) (hf n)).symm_apply_apply a

@[simp] theorem isoOfBijective_hom {p : ℕ} {O : Type} [CommRing O] {G H : PDivGroup p O} (f : G ⟶ H)
    (hf : ∀ n, Function.Bijective (f.app n)) : (isoOfBijective f hf).hom = f := rfl

end GlobalTheory.PDivGroup

namespace GlobalTheory.GroupBplus.Closed

end GlobalTheory.GroupBplus.Closed

namespace GlobalTheory.GroupBplus.Closed

end GlobalTheory.GroupBplus.Closed
