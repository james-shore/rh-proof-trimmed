import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoreConcl
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLineReps
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemLatticeZeroTorus
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsConstAlongSingleton

open scoped TensorProduct NNReal Matrix
open NumberField MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU GlobalTheory.SiegelSet GlobalTheory.EisRes GlobalTheory.EisRestrict
open GlobalTheory.Doubling (absE)

noncomputable section

namespace GlobalTheory.EisRestrict.LatLocPre

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E) {n : ℕ}
  (J : Matrix (Fin n) (Fin n) E) {r : ℕ} (X Y : Matrix (Fin n) (Fin (r + 1)) E)

def prj : (Fin n → E) →ₗ[E] (Fin n → E) :=
  LinearMap.id - LinearMap.smulRight (hRight σ J (GlobalTheory.EisMidHt.firstColumn Y)) (GlobalTheory.EisMidHt.firstColumn X) -
    LinearMap.smulRight (hRight σ J (GlobalTheory.EisMidHt.firstColumn X)) (GlobalTheory.EisMidHt.firstColumn Y)

theorem prj_apply (z : Fin n → E) : prj σ J X Y z =
    z - hE σ J (GlobalTheory.EisMidHt.firstColumn Y) z • GlobalTheory.EisMidHt.firstColumn X - hE σ J (GlobalTheory.EisMidHt.firstColumn X) z • GlobalTheory.EisMidHt.firstColumn Y :=
  rfl

variable {σ J X Y}

variable (σ J X Y)

variable {σ J X Y}

variable {a b : ℕ}

end GlobalTheory.EisRestrict.LatLocPre

namespace GlobalTheory.EisRestrict

end GlobalTheory.EisRestrict
