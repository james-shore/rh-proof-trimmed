import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConstantTermUnipotentIntegral
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsCompactAdeleRingModNumberFieldStatement

open scoped TensorProduct NNReal Matrix

namespace GlobalTheory.HermEichler

end GlobalTheory.HermEichler
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK

private theorem tens_cocompact (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] :
    ∃ K : Set (AF F ⊗[F] E), IsCompact K ∧ ∀ z, ∃ x : E, z - inclR (F := F) (AF F) x ∈ K := by
  obtain ⟨K, hK, h⟩ := GlobalTheory.T.exists_compact_adeleRing_mod_numberField F
  haveI : Module.Finite F E := Module.Finite.of_restrictScalars_finite ℚ F E
  have : IsModuleTopology (AF F) (AF F ⊗[F] E) := ⟨rfl⟩
  have : IsTopologicalRing (AF F ⊗[F] E) := IsModuleTopology.isTopologicalRing (AF F) _
  let b := Module.finBasis F E
  let e := (Algebra.TensorProduct.basis (AF F) b).equivFun
  have he : Continuous e.symm := IsModuleTopology.continuous_of_linearMap e.symm.toLinearMap
  refine ⟨e.symm '' Set.pi Set.univ fun _ => K, (isCompact_univ_pi fun _ => hK).image he, fun z => ?_⟩
  choose x hx using fun i => h (e z i)
  refine ⟨∑ i, x i • b i, fun i => e z i - algebraMap F _ (x i), fun i _ => hx i, ?_⟩
  have : (fun i => e z i - algebraMap F (AF F) (x i)) = e z - fun i => algebraMap F (AF F) (x i) := rfl
  rw [this, map_sub, LinearEquiv.symm_apply_apply, map_sum]
  congr 1
  rw [Module.Basis.equivFun_symm_apply]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [algebraMap_smul, Algebra.TensorProduct.basis_apply, ← TensorProduct.tmul_smul]
  rfl

