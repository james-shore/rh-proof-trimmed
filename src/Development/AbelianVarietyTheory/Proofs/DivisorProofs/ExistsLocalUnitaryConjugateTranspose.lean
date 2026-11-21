import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntLocConjIntLocConj
open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice IsDedekindDomain NumberField Matrix
open scoped TensorProduct
open GlobalTheory.TamSU GlobalTheory.SUVol GlobalTheory.UCls GlobalTheory.AdelicU GlobalTheory.TamOne

namespace GlobalTheory.TamOne

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ}

theorem algebraMap_locAlg_tmul (v : HeightOneSpectrum (𝓞 (maximalRealSubfield E)))
    (a : v.adicCompletionIntegers (maximalRealSubfield E)) :
    algebraMap (v.adicCompletionIntegers (maximalRealSubfield E)) (GlobalTheory.SelfDualGenus.LocAlg v) a =
      (a : Fv (maximalRealSubfield E) v) ⊗ₜ[maximalRealSubfield E] (1 : E) := rfl

end GlobalTheory.TamOne

