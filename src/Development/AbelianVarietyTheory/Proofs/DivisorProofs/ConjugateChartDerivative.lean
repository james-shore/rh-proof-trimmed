import Mathlib
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsTypeIsRealConst
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousAndExistsConjChart
open Filter Topology
open GlobalTheory.CxForm
open ReciprocityTheory.L2DbarEstimates (V)
open scoped ComplexConjugate

namespace GlobalTheory.ConjDeriv

open GlobalTheory.ConjChart

theorem conjCoord_apply (d : ℕ) (w : V d) (i : Fin d) : conjCoord d w i = conj (w i) := rfl

end GlobalTheory.ConjDeriv

