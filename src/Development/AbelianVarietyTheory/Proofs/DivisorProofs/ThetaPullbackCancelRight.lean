import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OneCompOfIsGrpPullback
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory

set_option autoImplicit false

open Limits (pullback)

namespace GlobalTheory.PPAS

theorem sqMap_comp {S S' S'' : Scheme.{0}} {A : Over S} {A' : Over S'} {A'' : Over S''}
    {f : S' ⟶ S} {g : S'' ⟶ S'} {φ : A'.left ⟶ A.left} {ψ : A''.left ⟶ A'.left}
    (w : φ ≫ A.hom = A'.hom ≫ f) (w' : ψ ≫ A'.hom = A''.hom ≫ g)
    (w'' : (ψ ≫ φ) ≫ A.hom = A''.hom ≫ (g ≫ f)) :
    sqMap w' ≫ sqMap w = sqMap w'' := by
  apply pullback.hom_ext
  · simp only [sqMap, pullback.map, Category.assoc]
    erw [pullback.lift_fst, pullback.lift_fst_assoc, pullback.lift_fst]
    simp only [Category.assoc]
  · simp only [sqMap, pullback.map, Category.assoc]
    erw [pullback.lift_snd, pullback.lift_snd_assoc, pullback.lift_snd]
    simp only [Category.assoc]

end GlobalTheory.PPAS
