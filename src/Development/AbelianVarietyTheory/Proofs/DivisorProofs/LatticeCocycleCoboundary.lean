import Mathlib
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.SiegelReframe
open Matrix MeasureTheory GlobalTheory.IndefiniteRowSideFullHecke.SiegelReframe
open scoped Real ContDiff

noncomputable section

namespace GlobalTheory.IntCocycle

variable {M : Type} [AddCommGroup M]

@[ext] structure Ext (c : M → M → ℤ) where

  fst : ℤ

  snd : M

variable {c : M → M → ℤ}

instance : Add (Ext c) := ⟨fun x y => ⟨x.fst + y.fst + c x.snd y.snd, x.snd + y.snd⟩⟩
instance : Zero (Ext c) := ⟨⟨-c 0 0, 0⟩⟩
instance : Neg (Ext c) := ⟨fun x => ⟨-c 0 0 - x.fst - c (-x.snd) x.snd, -x.snd⟩⟩

@[simp] lemma add_fst (x y : Ext c) : (x + y).fst = x.fst + y.fst + c x.snd y.snd := rfl
@[simp] lemma add_snd (x y : Ext c) : (x + y).snd = x.snd + y.snd := rfl
@[simp] lemma zero_fst : (0 : Ext c).fst = -c 0 0 := rfl
@[simp] lemma zero_snd : (0 : Ext c).snd = 0 := rfl
@[simp] lemma neg_fst (x : Ext c) : (-x).fst = -c 0 0 - x.fst - c (-x.snd) x.snd := rfl
@[simp] lemma neg_snd (x : Ext c) : (-x).snd = -x.snd := rfl

def Ext.addCommGroup (hs : ∀ l l' : M, c l l' = c l' l)
    (hc : ∀ l l' l'' : M, c l l' + c (l + l') l'' = c l (l' + l'') + c l' l'') :
    AddCommGroup (Ext c) :=
  have h0 : ∀ m : M, c 0 m = c 0 0 := by
    intro m
    have := hc 0 0 m
    simp only [zero_add] at this
    linarith
  { AddGroup.ofLeftAxioms
      (fun x y z => by
        ext
        · simp only [add_fst, add_snd]
          have := hc x.snd y.snd z.snd
          linarith
        · simp [add_assoc])
      (fun x => by
        ext
        · simp [h0]
        · simp)
      (fun x => by
        ext
        · simp only [add_fst, neg_fst, neg_snd, zero_fst]
          ring
        · simp) with
    add_comm := fun x y => by
      ext
      · simp only [add_fst]
        rw [hs]
        ring
      · simp [add_comm] }

end GlobalTheory.IntCocycle

