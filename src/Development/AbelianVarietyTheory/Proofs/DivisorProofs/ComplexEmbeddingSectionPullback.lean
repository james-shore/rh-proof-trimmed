import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffTopMonEqZero

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField MeasureTheory
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.GeometryOfNumbersTheory
open GlobalTheory.LieHt GlobalTheory.Cartier GlobalTheory.ThetaOnto GlobalTheory.MBModel GlobalTheory.SecJet GlobalTheory.CovTop

namespace GlobalTheory.SecJetCmp

section Der

variable {R T : Type} [CommRing R] [CommRing T]

private def dl (s : R →+* T) (e : T) (he : e * e = 0) : DualNumber R →+* T where
  toFun a := s a.fst + e * s a.snd
  map_one' := by simp
  map_mul' a b := by
    simp only [TrivSqZeroExt.fst_mul, DualNumber.snd_mul, map_mul, map_add]
    linear_combination (-(s a.snd * s b.snd)) * he
  map_zero' := by simp
  map_add' a b := by simp; ring

private theorem dl_apply (s : R →+* T) (e : T) (he : e * e = 0) (a : DualNumber R) :
    dl s e he a = s a.fst + e * s a.snd := rfl

end Der

section Top

variable {R : Type} [CommRing R]

private def jp {k : ℕ} (a : ℕ → R) (l : List (Fin k)) : ℕ → MvPolynomial (Fin k) R :=
  l.foldr (fun x F n => F n + MvPolynomial.X x * F (n + 1)) (fun n => MvPolynomial.C (a n))

private theorem jp_nil {k : ℕ} (a : ℕ → R) (n : ℕ) : jp (k := k) a [] n = MvPolynomial.C (a n) := rfl

private theorem jp_cons {k : ℕ} (a : ℕ → R) (x : Fin k) (l : List (Fin k)) (n : ℕ) :
    jp a (x :: l) n = jp a l n + MvPolynomial.X x * jp a l (n + 1) := rfl

end Top

end GlobalTheory.SecJetCmp

