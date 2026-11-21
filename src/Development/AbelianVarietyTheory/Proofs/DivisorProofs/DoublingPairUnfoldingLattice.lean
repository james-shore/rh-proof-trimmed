import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BoxC
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchActionReadingsCompatible
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchHeisenbergDerivativesExist
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DarbouxDerivativeExistence
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProductFunctionOnSumCoordsMemAdelicSchwartzSpace
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicSchwartzConjMem
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictedFinprodPureTensorAdelicSchwartz
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.WeilModelArchimedeanExponent
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.MemGaussianVacuaSpanOfVacuumEquations

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.Doubling
open GlobalTheory.DblDatum

noncomputable section

namespace GlobalTheory.DblPolArch

open scoped Classical
open GlobalTheory.HeisDer GlobalTheory.RealLift GlobalTheory.ThK.PlaneEv

section Model

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E} {n d : ℕ}
  {X : Spc F E n} {W : Spc F E d}

theorem topC_smul (a : AF F) (u : Matrix (Fin n) (Fin (d + d)) (AE F E)) : topC (a • u) = a • topC u := rfl

theorem botC_smul (a : AF F) (u : Matrix (Fin n) (Fin (d + d)) (AE F E)) : botC (a • u) = a • botC u := rfl

end Model

end GlobalTheory.DblPolArch

end
