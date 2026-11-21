import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SemiposAtOfPositive
import Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DemaillyRegularisation
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.MatrixLemma
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.AbsoluteSiegel
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ScholzeWeinsteinB
import ReciprocityTheory.AnalyticForms.PotentialTheory.IsPotentialOfFun
import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.IsPshLocallyIntegrableStatement
import Development.AbelianVarietyTheory.Definitions.Divisors.ExtFormAdjEqNegSecondForm
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.LieAlgebraMaps
import Development.AbelianVarietyTheory.PublishedTheorems.SemiabelianTori.GeometricallyConnectedSplitTorusAff
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.LocallyOfFinitePresentationDiagMap

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open scoped CategoryTheory.Obj CategoryTheory.MonObj
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Pdiv ReciprocityTheory.ChartRestriction.G.Pdiv.AvDefs
open GlobalTheory.IndefiniteRowSideFullHecke.LieAlgebraMaps (torus lieMap lieAdd LieCongr IsLieLinear lieCoord)

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.TorusLieCoord

variable {R : Type} [CommRing R] {r : ℕ}

def valA {A : Type} [CommRing A] [Algebra R A] (t : specO R A ⟶ torus R r) (χ : Fin r → ℤ) : A :=
  (Scheme.ΓSpecIso (CommRingCat.of A)).hom.hom
    (t.left.appTop.hom (charUnit (Spec (CommRingCat.of R)) (Fin r → ℤ) χ).val)

theorem valA_eq {A : Type} [CommRing A] [Algebra R A] (t : specO R A ⟶ torus R r) (χ : Fin r → ℤ) :
    valA t χ = (Scheme.ΓSpecIso (CommRingCat.of A)).hom.hom
      (GlobalTheory.splitTorusPointsEquiv _ _ _ t (Multiplicative.ofAdd χ)).val := by
  rw [GlobalTheory.splitTorusPointsEquiv_val]; rfl

theorem valA_comp {A B : Type} [CommRing A] [Algebra R A] [CommRing B] [Algebra R B]
    (f : A →ₐ[R] B) (t : specO R A ⟶ torus R r) (χ : Fin r → ℤ) :
    valA (ptMap f ≫ t) χ = f (valA t χ) := by
  have h := Scheme.ΓSpecIso_naturality (CommRingCat.ofHom f.toRingHom)
  unfold valA
  rw [Over.comp_left, Scheme.Hom.comp_appTop, CommRingCat.comp_apply]
  exact congrArg (fun g => g.hom (t.left.appTop.hom (charUnit (Spec (CommRingCat.of R)) (Fin r → ℤ) χ).val)) h

theorem valA_one {A : Type} [CommRing A] [Algebra R A] (χ : Fin r → ℤ) :
    valA (1 : specO R A ⟶ torus R r) χ = 1 := by
  rw [valA_eq, map_one, MonoidHom.one_apply, Units.val_one, map_one]

theorem valA_add {A : Type} [CommRing A] [Algebra R A] (t : specO R A ⟶ torus R r) (χ ψ : Fin r → ℤ) :
    valA t (χ + ψ) = valA t χ * valA t ψ := by
  rw [valA_eq, valA_eq, valA_eq, ofAdd_add, map_mul, Units.val_mul, map_mul]

theorem valA_toUnit {A : Type} [CommRing A] [Algebra R A] (χ : Fin r → ℤ) :
    valA (toUnit (specO R A) ≫ η[torus R r]) χ = 1 := by
  rw [← Hom.one_def]; exact valA_one χ

theorem fst_val (x : LieG (torus R r)) (χ : Fin r → ℤ) : (valA x.1 χ).fst = 1 := by
  have h : valA (ptMap (TrivSqZeroExt.fstHom R R R) ≫ x.1) χ =
      valA (toUnit (specO R R) ≫ η[torus R r]) χ := congrArg (fun t => valA t χ) x.2
  rw [valA_comp, valA_toUnit] at h
  exact h

def dChar (x : LieG (torus R r)) : (Fin r → ℤ) →+ R where
  toFun χ := (valA x.1 χ).snd
  map_zero' := by
    have h := valA_add x.1 0 0
    rw [add_zero] at h
    have h2 := congrArg TrivSqZeroExt.snd h
    rw [DualNumber.snd_mul, fst_val] at h2
    simpa using h2
  map_add' χ ψ := by
    rw [valA_add, DualNumber.snd_mul, fst_val, fst_val, _root_.one_mul, _root_.mul_one, add_comm]

theorem lieCoord_eq (x : LieG (torus R r)) (i : Fin r) : lieCoord x i = dChar x (Pi.single i 1) := rfl

end GlobalTheory.TorusLieCoord
