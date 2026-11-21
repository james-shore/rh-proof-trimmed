import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IndicatorIntMMemSB
import Development.AbelianVarietyTheory.Definitions.Divisors.DiscreteSeriesHermitianUnique
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.ScaledIntegerPeriodic
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MulRightMemSB
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsMulLeftInvariantVolGL

open MeasureTheory ValuativeRel Matrix GlobalTheory.SplitWeil GlobalTheory.SplitFlip GlobalTheory.KSplit GlobalTheory.GJReg
namespace GlobalTheory.GJReg
end GlobalTheory.GJReg

open MeasureTheory ValuativeRel Matrix GlobalTheory.SplitWeil GlobalTheory.SplitFlip GlobalTheory.KSplit GlobalTheory.GJReg

noncomputable section
namespace GlobalTheory.GJReg

def Comb (k : Type) [Field k] (n : ℕ) : Type := Σ m : ℕ, (Fin m → ℂ) × (Fin m → GL (Fin n) k)

section Comb
variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] {n : ℕ}

def Comb.app (r r' : Comb k n) : Comb k n := ⟨r.1 + r'.1, (Fin.append r.2.1 r'.2.1, Fin.append r.2.2 r'.2.2)⟩

def Comb.smul (c : ℂ) (r : Comb k n) : Comb k n := ⟨r.1, (fun i => c * r.2.1 i, r.2.2)⟩

end Comb

end GlobalTheory.GJReg
