import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSmoothDetPair
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.ExistsCellOfIsSubquotient
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsCentralScalarDistinctGeometricLemmaCells

noncomputable section

namespace GlobalTheory.IndLineGL.CellTorus

open GlobalTheory.SmGL GlobalTheory.PRep GlobalTheory.IndLineGL
open scoped TensorProduct

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

theorem extTensor_detRep_apply {n n' : Type} [Fintype n] [DecidableEq n] [Fintype n'] [DecidableEq n']
    (χ ψ : kˣ →* ℂˣ) (x : GL n k × GL n' k) (v : ℂ ⊗[ℂ] ℂ) :
    extTensor (detRep n χ) (detRep n' ψ) x v =
      ((χ (Matrix.GeneralLinearGroup.det x.1) * ψ (Matrix.GeneralLinearGroup.det x.2) : ℂˣ) : ℂ) • v := by
  induction v using TensorProduct.induction_on with
  | zero => simp
  | tmul u w =>
    rw [extTensor_tmul]
    simp only [detRep, ofChar_apply, detChar_apply, Units.val_mul]
    rw [← smul_eq_mul, ← smul_eq_mul (a := ((ψ _ : ℂˣ) : ℂ)), TensorProduct.smul_tmul_smul]
  | add u w hu hw => rw [map_add, hu, hw, smul_add]

end GlobalTheory.IndLineGL.CellTorus

namespace GlobalTheory.IndLineGL.CellTorus

end GlobalTheory.IndLineGL.CellTorus

namespace GlobalTheory.IndLineGL.CellTorus

end GlobalTheory.IndLineGL.CellTorus

namespace GlobalTheory.IndLineGL.CellTorus

end GlobalTheory.IndLineGL.CellTorus

namespace GlobalTheory.IndLineGL.CellTorus

end GlobalTheory.IndLineGL.CellTorus
