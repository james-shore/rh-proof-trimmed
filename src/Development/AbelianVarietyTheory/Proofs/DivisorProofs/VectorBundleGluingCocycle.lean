import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSplitting
open NumberField MvPolynomial Filter Topology Formalism.BasicNotions Formalism.MainNotions Formalism.DegreeFormula GlobalTheory.FlagPoly GlobalTheory.Mean4 GlobalTheory.Mean4O GlobalTheory.CovTop GlobalTheory.CovHt GlobalTheory.CovTest GlobalTheory.Published
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory GlobalTheory.ArInt
open Formalism.BasicNotions.DV Formalism.MainNotions.WeightThresholdDefs GlobalTheory.FlagAr GlobalTheory.ShFam.Pad GlobalTheory.VB GlobalTheory.ShFam GlobalTheory.TrueGeo Formalism.L2.Pj GlobalTheory.Toroidal
open Formalism.MainNotions.DIV.Cons (intO)
open GlobalTheory.ArLieBase

set_option autoImplicit false

noncomputable section

open TopologicalSpace Opposite
open GlobalTheory.LB (resG_resG resG_self fun_ext_of_cover exists_fun_of_cover)

namespace GlobalTheory.MatrixCocycle

variable {X : Scheme.{0}} {r : ℕ} {ι : Type} {U : ι → X.Opens}
  (A : ∀ i j, Matrix (Fin r) (Fin r) Γ(X, U i ⊓ U j)) {V W : X.Opens}

variable (V) in

def secGroup : AddSubgroup (∀ p : {p : ι × X.Opens // p.2 ≤ V ∧ p.2 ≤ U p.1}, Fin r → Γ(X, p.1.2)) where
  carrier := {s | (∀ (i : ι) (T T' : X.Opens) (h : T ≤ V) (hi : T ≤ U i) (h' : T' ≤ T) (b : Fin r),
      s ⟨(i, T'), h'.trans h, h'.trans hi⟩ b = resG X h' (s ⟨(i, T), h, hi⟩ b)) ∧
    ∀ (i j : ι) (T : X.Opens) (h : T ≤ V) (hi : T ≤ U i) (hj : T ≤ U j) (b : Fin r),
      s ⟨(i, T), h, hi⟩ b = ∑ c, resG X (le_inf hi hj) (A i j b c) * s ⟨(j, T), h, hj⟩ c}
  add_mem' := fun {s t} hs ht => ⟨fun i T T' h hi h' b => by
      simp only [Pi.add_apply, map_add, hs.1 i T T' h hi h', ht.1 i T T' h hi h'],
    fun i j T h hi hj b => by
      simp only [Pi.add_apply, mul_add, Finset.sum_add_distrib, ← hs.2 i j T h hi hj, ← ht.2 i j T h hi hj]⟩
  zero_mem' := ⟨fun i T T' h hi h' b => by simp only [Pi.zero_apply, map_zero],
    fun i j T h hi hj b => by simp only [Pi.zero_apply, mul_zero, Finset.sum_const_zero]⟩
  neg_mem' := fun {s} hs => ⟨fun i T T' h hi h' b => by
      simp only [Pi.neg_apply, map_neg, hs.1 i T T' h hi h'],
    fun i j T h hi hj b => by
      simp only [Pi.neg_apply, mul_neg, Finset.sum_neg_distrib, ← hs.2 i j T h hi hj]⟩

theorem sec_ext {s t : secGroup A V}
    (e : ∀ i T h hi b, s.1 ⟨(i, T), h, hi⟩ b = t.1 ⟨(i, T), h, hi⟩ b) : s = t :=
  Subtype.ext (funext fun p => funext fun b => e p.1.1 p.1.2 p.2.1 p.2.2 b)

instance secModule : Module Γ(X, V) (secGroup A V) where
  smul a s := ⟨fun p b => resG X p.2.1 a * s.1 p b, fun i T T' h hi h' b => by
      dsimp only
      rw [s.2.1 i T T' h hi h', map_mul, resG_resG],
    fun i j T h hi hj b => by
      dsimp only
      rw [s.2.2 i j T h hi hj, Finset.mul_sum]
      exact Finset.sum_congr rfl fun c _ => mul_left_comm _ _ _⟩
  one_smul s := sec_ext A fun i T h hi b => by
    change resG X h 1 * _ = _
    rw [map_one, one_mul]
  mul_smul a a' s := sec_ext A fun i T h hi b => by
    change resG X h (a * a') * _ = resG X h a * (resG X h a' * _)
    rw [map_mul, mul_assoc]
  smul_zero a := sec_ext A fun i T h hi b => mul_zero (resG X h a)
  smul_add a s t := sec_ext A fun i T h hi b => mul_add (resG X h a) _ _
  add_smul a a' s := sec_ext A fun i T h hi b => by
    change resG X h (a + a') * _ = resG X h a * _ + resG X h a' * _
    rw [map_add, add_mul]
  zero_smul s := sec_ext A fun i T h hi b => by
    change resG X h 0 * _ = 0
    rw [map_zero, zero_mul]

variable (hA : ∀ (i j k : ι) (V : X.Opens) (hij : V ≤ U i ⊓ U j) (hjk : V ≤ U j ⊓ U k) (hik : V ≤ U i ⊓ U k),
    (A i j).map (resG X hij) * (A j k).map (resG X hjk) = (A i k).map (resG X hik))

end GlobalTheory.MatrixCocycle

end
