import Mathlib
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.KFiniteVectors.KFiniteThetaLifts.DualWhittakerAdelicGL3
import PositivityTheory.AutomorphicForms.PublishedInputs.CuspidalContinuity.ArchimedeanCuspidal.AdelicGaussians.UpperRightUnipotentInvariance
import GroundTheory.LocalFields.QuadraticAbelian.WeilRepQuadratic

open NumberField IsDedekindDomain MeasureTheory Topology GroundTheory.Global GroundTheory.LocalField GroundTheory.Automorphic GroundTheory.Automorphic.AutomorphicForm Ad3 Ad3.K Ad3.K.QuadraticBaseChangeGL3
open GroundTheory.Automorphic.GodementSection (localChar)
open GroundTheory.Global.AdicLiesOver
open scoped ValuativeRel
noncomputable section
namespace GlobalTheory.CompanionTheory.WeilSplit
variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]

open Ad3 Ad3.K

section Alg
variable {F : Type} [Field F]

theorem norm_pair (x : F × F) : Algebra.norm F x = x.1 * x.2 := by
  have : Algebra.lmul F (F × F) x = LinearMap.prodMap (Algebra.lmul F F x.1) (Algebra.lmul F F x.2) := by
    ext <;> simp
  rw [Algebra.norm_apply, this, LinearMap.det_prodMap]
  simp [← Algebra.norm_apply]

end Alg

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]

theorem nsg_pair {a : F} (ha : a ≠ 0) : GL2LocalData.nsg (F × F) a = 1 := by
  unfold GL2LocalData.nsg
  rw [if_pos]
  refine ⟨⟨(a, 1), (a⁻¹, 1), by ext <;> simp [ha], by ext <;> simp [ha]⟩, ?_⟩
  rw [norm_pair]; simp

end GlobalTheory.CompanionTheory.WeilSplit
