import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoreConcl
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLineReps
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemLatticeZeroTorus

open scoped TensorProduct NNReal Matrix
open NumberField MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU GlobalTheory.SiegelSet GlobalTheory.EisRes GlobalTheory.EisRestrict
open GlobalTheory.Doubling (absE)

noncomputable section

namespace GlobalTheory.EisRestrictDual

end GlobalTheory.EisRestrictDual

namespace GlobalTheory.EisRestrictDual

section Glob

variable {F E : Type} [Field F] [Field E] [Algebra F E] (σ : E →ₐ[F] E)

theorem hRight_apply {n : ℕ} (J : Matrix (Fin n) (Fin n) E) (x z : Fin n → E) : hRight σ J x z = hE σ J x z := rfl

end Glob

end GlobalTheory.EisRestrictDual

namespace GlobalTheory.EisRestrictDual

open GlobalTheory.EisMidHt (firstColumn)

section Frame

variable {F E : Type} [Field F] [Field E] [Algebra F E] (σ : E →ₐ[F] E)

variable {n : ℕ} (J : Matrix (Fin n) (Fin n) E) {r : ℕ} (X Y : Matrix (Fin n) (Fin (r + 1)) E)

def projOrthogonal : (Fin n → E) →ₗ[E] (Fin n → E) :=
  LinearMap.id - (hRight σ J (firstColumn Y)).smulRight (firstColumn X) - (hRight σ J (firstColumn X)).smulRight (firstColumn Y)

theorem projOrthogonal_apply (z : Fin n → E) :
    projOrthogonal σ J X Y z = z - hE σ J (firstColumn Y) z • firstColumn X - hE σ J (firstColumn X) z • firstColumn Y := rfl

variable {σ J X Y}

end Frame

end GlobalTheory.EisRestrictDual

namespace GlobalTheory.EisRestrictDual

end GlobalTheory.EisRestrictDual
