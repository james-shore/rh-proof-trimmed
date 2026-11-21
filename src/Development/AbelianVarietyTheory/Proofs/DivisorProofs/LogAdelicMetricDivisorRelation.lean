import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsUniqueLiesUnder
import Development.AbelianVarietyTheory.Definitions.Divisors.SemiposAtOfPositive
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FormsOver
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.MumfordProportionality
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlagDegreeFormula
import Development.AbelianVarietyTheory.Definitions.Divisors.IsAlgAtlasAtlasOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictChernPart
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.AntisymmFibrePointTwo
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsClosedImmersionGenericPoint
import Development.AbelianVarietyTheory.Definitions.Divisors.AnalyticOnNhdFinChartIff

open CategoryTheory AlgebraicGeometry NumberField ReciprocityTheory.AnForm ReciprocityTheory.AnForm.M
open GlobalTheory.Cartier GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.CxPts GlobalTheory.Mean4O

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.Mean4O.CombGen

variable {F : Type} [Field F] [NumberField F] {C : CxSt F} {Y : Var F} {σ : F →+* ℂ}

def unitsAt (x : Y.X) : Subgroup Y.Fnˣ where
  carrier := {u | UnitAt x (u : Y.Fn)}
  mul_mem' {a b} ha hb := by
    show UnitAt x ((a * b : Y.Fnˣ) : Y.Fn)
    rw [Units.val_mul]
    exact UnitAt.mul ha hb
  one_mem' := by
    show UnitAt x ((1 : Y.Fnˣ) : Y.Fn)
    rw [Units.val_one]
    exact unitAt_one x
  inv_mem' {a} ha := by
    show UnitAt x ((a⁻¹ : Y.Fnˣ) : Y.Fn)
    rw [Units.val_inv_eq_inv_val]
    exact UnitAt.inv ha

def mkAt {x : Y.X} (a : Y.Fn) (ha : UnitAt x a) : unitsAt x := ⟨Units.mk0 a ha.ne_zero, ha⟩

theorem val_mkAt {x : Y.X} (a : Y.Fn) (ha : UnitAt x a) : (((mkAt a ha : unitsAt x) : Y.Fnˣ) : Y.Fn) = a := rfl

def logNormAt (z : Pts Y σ) : Additive (unitsAt (under z)) →+ ℝ where
  toFun u := Real.log ‖ratVal (((Additive.toMul u : unitsAt (under z)) : Y.Fnˣ) : Y.Fn) z‖
  map_zero' := by
    simp only [toMul_zero, OneMemClass.coe_one, Units.val_one, Base.ratVal_one, norm_one, Real.log_one]
  map_add' u v := by
    have hu : UnitAt (under z) (((Additive.toMul u : unitsAt (under z)) : Y.Fnˣ) : Y.Fn) := (Additive.toMul u).2
    have hv : UnitAt (under z) (((Additive.toMul v : unitsAt (under z)) : Y.Fnˣ) : Y.Fn) := (Additive.toMul v).2
    simp only [toMul_add, Subgroup.coe_mul, Units.val_mul]
    rw [ratVal_mul hu.regAt hv.regAt, norm_mul,
      Real.log_mul (norm_ne_zero_iff.2 (ratVal_ne_zero hu)) (norm_ne_zero_iff.2 (ratVal_ne_zero hv))]

theorem logNormAt_mkAt (z : Pts Y σ) (a : Y.Fn) (ha : UnitAt (under z) a) :
    logNormAt z (Additive.ofMul (mkAt a ha)) = Real.log ‖ratVal a z‖ := rfl

end GlobalTheory.Mean4O.CombGen

namespace GlobalTheory.Mean4O.CombGen

end GlobalTheory.Mean4O.CombGen

