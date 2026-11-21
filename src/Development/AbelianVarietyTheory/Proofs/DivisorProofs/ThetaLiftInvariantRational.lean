import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaBasicPropertiesStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfComponentTensorAdelicFunctionEq
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsConstOfPolConst

noncomputable section

namespace GlobalTheory.ThK.LeftInvV

open NumberField MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.AdelicU GlobalTheory.SiegelSet GlobalTheory.UAut GlobalTheory.ThK.SquareIntegrability GlobalTheory.WeilM

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem polData_le_schA {σ : E →ₐ[F] E} {B : Base F E} {n d : ℕ} {X : Spc F E n} {W : Spc F E d} {M : Model σ X W}
    (hM : M.IsGood B.ψ) : PolData B M ≤ schA F (Fin n × Fin d) := by
  refine Submodule.span_le.2 ?_
  rintro _ ⟨f, -, φ, hφ, hv, rfl⟩
  exact GlobalTheory.TensUniq.pure_mem_schA f φ hφ ((hv.and hM.std).mono fun v h => h.1.trans h.2)

end GlobalTheory.ThK.LeftInvV
