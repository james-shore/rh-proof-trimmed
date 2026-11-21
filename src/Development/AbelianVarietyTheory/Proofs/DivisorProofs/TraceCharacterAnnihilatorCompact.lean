import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UAtMemIsoB
open MeasureTheory Filter NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.ConeSoB
open scoped TensorProduct GlobalTheory.VacAny
open Matrix

namespace GlobalTheory.TraceAnnCompact

theorem trace_one_tmul {F E : Type} [Field F] [Field E] [Algebra F E] [Module.Finite F E]
    (R : Type) [CommRing R] [Algebra F R] (e : E) :
    Algebra.trace R (R ⊗[F] E) ((1 : R) ⊗ₜ[F] e) = algebraMap F R (Algebra.trace F E e) := by
  rw [Algebra.trace_apply, Algebra.trace_apply, ← Algebra.baseChange_lmul, LinearMap.trace_baseChange]

theorem trace_traceDual_mul {F E ι : Type} [Field F] [Field E] [Algebra F E] [Module.Finite F E]
    [Algebra.IsSeparable F E] [Fintype ι] [DecidableEq ι] (R : Type) [CommRing R] [Algebra F R]
    (b : Module.Basis ι F E) (i : ι) (l : R ⊗[F] E) :
    Algebra.traceForm R (R ⊗[F] E) ((1 : R) ⊗ₜ[F] b.traceDual i) l =
      (Algebra.TensorProduct.basis R b).repr l i := by
  have : Algebra.traceForm R (R ⊗[F] E) ((1 : R) ⊗ₜ[F] b.traceDual i) = (Algebra.TensorProduct.basis R b).coord i := by
    refine (Algebra.TensorProduct.basis R b).ext fun j => ?_
    rw [Module.Basis.coord_apply, Module.Basis.repr_self, Algebra.TensorProduct.basis_apply, Algebra.traceForm_apply,
      Algebra.TensorProduct.tmul_mul_tmul, one_mul, trace_one_tmul, Module.Basis.trace_traceDual_mul,
      Finsupp.single_apply]
    split_ifs <;> simp
  rw [this, Module.Basis.coord_apply]

end GlobalTheory.TraceAnnCompact
