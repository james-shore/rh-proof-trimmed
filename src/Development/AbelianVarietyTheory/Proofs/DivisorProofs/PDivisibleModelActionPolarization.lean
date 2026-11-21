import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsMulVal
set_option autoImplicit false
noncomputable section
open CategoryTheory Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj NumberField WithConv
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.PDiv GlobalTheory.PDivGroup GlobalTheory.PerfdLat GlobalTheory.GroupBplus GlobalTheory.GroupBplus.Aff
open Coalgebra Bialgebra
open GlobalTheory.DeRham (spOver spOver_comp)
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.GroupBplus.Aff

def liftPt {R K : Type} [CommRing R] [Field K] [Algebra R K] {G : Over (Sp R)} {G₀ : Over (Sp K)}
    {F : G₀.left ⟶ G.left} (hF : F ≫ G.hom = G₀.hom ≫ spMap (algebraMap R K)) {B : Type} [CommRing B] [Algebra R B]
    [Algebra K B] [IsScalarTower R K B] (x : SpAlg K B ⟶ G₀) : SpAlg R B ⟶ G :=
  Over.homMk (x.left ≫ F) (by
    change (x.left ≫ F) ≫ G.hom = spMap (algebraMap R B)
    rw [Category.assoc, hF, ← Category.assoc, Over.w x]
    change spMap (algebraMap K B) ≫ spMap (algebraMap R K) = _
    rw [← Cris.spMap_comp, ← IsScalarTower.algebraMap_eq])

@[simp] theorem liftPt_left {R K : Type} [CommRing R] [Field K] [Algebra R K] {G : Over (Sp R)} {G₀ : Over (Sp K)}
    {F : G₀.left ⟶ G.left} (hF : F ≫ G.hom = G₀.hom ≫ spMap (algebraMap R K)) {B : Type} [CommRing B] [Algebra R B]
    [Algebra K B] [IsScalarTower R K B] (x : SpAlg K B ⟶ G₀) : (liftPt hF x).left = x.left ≫ F := rfl

section Lift

variable {R K : Type} [CommRing R] [Field K] [Algebra R K] {G : Over (Sp R)} [GrpObj G] {G₀ : Over (Sp K)} [GrpObj G₀]
  {F : G₀.left ⟶ G.left} (hF : IsGrpPullback G₀ G (spMap (algebraMap R K)) F) {B : Type} [CommRing B] [Algebra R B]
  [Algebra K B] [IsScalarTower R K B]

theorem liftPt_mul (x y : SpAlg K B ⟶ G₀) :
    liftPt hF.1.w (x * y) = liftPt hF.1.w x * liftPt hF.1.w y := by
  let j : Over.mk ((SpAlg K B).hom ≫ spMap (algebraMap R K)) ⟶ SpAlg R B :=
    Over.homMk (𝟙 _) (by
      change 𝟙 _ ≫ spMap (algebraMap R B) = spMap (algebraMap K B) ≫ spMap (algebraMap R K)
      rw [Category.id_comp, ← Cris.spMap_comp, ← IsScalarTower.algebraMap_eq])
  have h := hF.2 (SpAlg K B) x y (j ≫ liftPt hF.1.w x) (j ≫ liftPt hF.1.w y) rfl rfl
  rw [← MonObj.comp_mul] at h
  refine Over.OverMorphism.ext ?_
  rw [liftPt_left]
  exact h.symm.trans (by simp [j])

theorem liftPt_one : liftPt hF.1.w (1 : SpAlg K B ⟶ G₀) = 1 := by
  have h := liftPt_mul hF (1 : SpAlg K B ⟶ G₀) 1
  rw [_root_.mul_one] at h
  exact (mul_eq_left.1 h.symm)

theorem liftPt_pow (x : SpAlg K B ⟶ G₀) (N : ℕ) : liftPt hF.1.w (x ^ N) = liftPt hF.1.w x ^ N := by
  induction N with
  | zero => simpa using liftPt_one hF
  | succ N ih => rw [pow_succ, liftPt_mul hF, ih, pow_succ]

def liftTors {N : ℕ} (z : Tors G₀ N B) : Tors G N B :=
  ⟨liftPt hF.1.w z.1, by rw [← liftPt_pow hF, z.2, liftPt_one hF]⟩

@[simp] theorem liftTors_left {N : ℕ} (z : Tors G₀ N B) : (liftTors hF z).1.left = z.1.left ≫ F := rfl

end Lift

end GlobalTheory.GroupBplus.Aff

namespace GlobalTheory.GroupBplus.Aff

end GlobalTheory.GroupBplus.Aff
