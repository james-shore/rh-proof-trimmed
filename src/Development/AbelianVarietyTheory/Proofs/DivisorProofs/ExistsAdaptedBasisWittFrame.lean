import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsGenericIffIsGenericFor
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.StrongMultiplicityOne
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeviBlockSizesSum
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsSplitChartSplitChart
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MeasureFundDomLtTop
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TripSizesSum
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsBlockEmb

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU GlobalTheory.SmGL GlobalTheory.PRep GlobalTheory.SplitWeil GlobalTheory.LeviBlockExponent GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
  GlobalTheory.UAut GlobalTheory.SiegelSet GlobalTheory.ThK.SquareIntegrability GlobalTheory.CuspBlock GlobalTheory.LFun.SplitTie
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section

namespace GlobalTheory.AdaptedBasis

open Matrix Module

variable {K : Type} [Field K] {n r : ℕ}

def perp (A B : Matrix (Fin r) (Fin n) K) : Submodule K (Fin n → K) :=
  LinearMap.ker A.mulVecLin ⊓ LinearMap.ker B.mulVecLin

def proj (X Y : Matrix (Fin n) (Fin r) K) (A B : Matrix (Fin r) (Fin n) K) : (Fin n → K) →ₗ[K] (Fin n → K) :=
  LinearMap.id - X.mulVecLin ∘ₗ B.mulVecLin - Y.mulVecLin ∘ₗ A.mulVecLin

theorem proj_apply (X Y : Matrix (Fin n) (Fin r) K) (A B : Matrix (Fin r) (Fin n) K) (z : Fin n → K) :
    proj X Y A B z = z - X *ᵥ (B *ᵥ z) - Y *ᵥ (A *ᵥ z) := rfl

end GlobalTheory.AdaptedBasis

end

