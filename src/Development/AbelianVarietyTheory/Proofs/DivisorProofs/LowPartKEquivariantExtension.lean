import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolEqISupFockDeg
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFockMap
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaKernelReal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorIrreducibleModules
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchimedeanPolynomialTensorWeight
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockPolynomialSpaceEqFockImageOfArchLaws
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemTensSpanOfKilled

noncomputable section

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.IndLine
open GlobalTheory.Doubling (absE)

open scoped Classical

open GlobalTheory.RealLift GlobalTheory.RealLift.Main Formalism.BasicNotions.TH GlobalTheory.KFixIrr

namespace GlobalTheory.DegKeep

def graphOf {V Z : Type} [AddCommGroup V] [Module ℂ V] [AddCommGroup Z] [Module ℂ Z] (q : V →ₗ[ℂ] Z) (A : Z →ₗ[ℂ] Z) :
    Submodule ℂ (V × V) :=
  LinearMap.eqLocus (A ∘ₗ q ∘ₗ LinearMap.fst ℂ V V) (q ∘ₗ LinearMap.snd ℂ V V)

theorem mem_graphOf {V Z : Type} [AddCommGroup V] [Module ℂ V] [AddCommGroup Z] [Module ℂ Z] {q : V →ₗ[ℂ] Z} {A : Z →ₗ[ℂ] Z}
    {T T' : V} : (T, T') ∈ graphOf q A ↔ A (q T) = q T' := Iff.rfl

end GlobalTheory.DegKeep

end
