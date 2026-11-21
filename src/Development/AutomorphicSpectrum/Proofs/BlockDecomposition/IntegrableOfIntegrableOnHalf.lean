import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.LocallyConstantMajorants.GammaSplitting.UnipotentTateFunctionalEquation

noncomputable section

open MeasureTheory Matrix Filter Topology
open Ad3 Ad3.K Ad3.K.LC Ad3.K.LC.C

namespace GlobalTheory.CompanionTheory.PuBndC.RowSwap

def rowSwap (h : M22) : M22 := fun i => h (Equiv.swap 0 1 i)

@[simp] theorem rowSwap_zero (h : M22) : rowSwap h 0 = h 1 := by simp [rowSwap]

@[simp] theorem rowSwap_one (h : M22) : rowSwap h 1 = h 0 := by simp [rowSwap]

end GlobalTheory.CompanionTheory.PuBndC.RowSwap
