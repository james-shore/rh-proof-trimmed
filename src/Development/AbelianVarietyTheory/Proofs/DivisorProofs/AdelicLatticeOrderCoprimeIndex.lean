import Mathlib
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.PolarisationModuleIndex
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemCompletedOrderOfLocalCongruenceSplit
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.Clauses
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp

noncomputable section

open NumberField IsDedekindDomain GlobalTheory.CMVal GlobalTheory.IndefiniteRowSideFullHecke.PolarisationModuleIndex GlobalTheory.CMVal.Euler

namespace GlobalTheory.CMVal.LatLoc

variable {E : Type} [Field E] [NumberField E]

theorem natCast_coord (n : ℕ) (w : HeightOneSpectrum (𝓞 E)) : (n : Af E) w = (n : w.adicCompletion E) := by
  rfl

end GlobalTheory.CMVal.LatLoc
