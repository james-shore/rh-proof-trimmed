import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.IsTamagawa
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.TamagawaSpecialUnitary
import Development.AbelianVarietyTheory.Definitions.Foundations.HermitianSpaceBaseLatticeEqFrameLattice
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.FiniteResidueFieldAdicCompletionIntegers

noncomputable section

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes IsDedekindDomain NumberField Matrix GlobalTheory.AdelicU
open scoped TensorProduct

namespace GlobalTheory.TamOne

section General

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

def intLocIncl (v : HeightOneSpectrum (𝓞 F)) : 𝓞 E →+* intLoc F E v :=
  RingHom.codRestrict (((Algebra.TensorProduct.includeRight : E →ₐ[F] Fv F v ⊗[F] E) : E →+* Fv F v ⊗[F] E).comp
    (algebraMap (𝓞 E) E)) (intLoc F E v) fun x => tmul_mem_intLoc (one_mem _) x

theorem coe_intLocIncl (v : HeightOneSpectrum (𝓞 F)) (x : 𝓞 E) :
    ((intLocIncl v x : intLoc F E v) : Fv F v ⊗[F] E) = (1 : Fv F v) ⊗ₜ[F] (x : E) := rfl

variable (σ : E →ₐ[F] E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E)

end General

section CM

variable {E : Type} [Field E] [NumberField E] [IsCMField E]

variable (E) in

abbrev cj : E →ₐ[maximalRealSubfield E] E := (IsCMField.complexConj E).toAlgHom

abbrev extIdeal (v : HeightOneSpectrum (𝓞 (maximalRealSubfield E))) : Ideal (𝓞 E) :=
  v.asIdeal.map (algebraMap (𝓞 (maximalRealSubfield E)) (𝓞 E))

theorem conj_algebraMap (s : 𝓞 (maximalRealSubfield E)) :
    IsCMField.ringOfIntegersComplexConj E (algebraMap (𝓞 (maximalRealSubfield E)) (𝓞 E) s) =
      algebraMap (𝓞 (maximalRealSubfield E)) (𝓞 E) s :=
  (IsCMField.ringOfIntegersComplexConj_eq_self_iff E _).2 ⟨s, rfl⟩

theorem extIdeal_le_comap (v : HeightOneSpectrum (𝓞 (maximalRealSubfield E))) :
    extIdeal v ≤ (extIdeal v).comap (IsCMField.ringOfIntegersComplexConj E : 𝓞 E →+* 𝓞 E) := by
  rw [Ideal.map_le_iff_le_comap]
  intro s hs
  rw [Ideal.mem_comap, Ideal.mem_comap]
  change IsCMField.ringOfIntegersComplexConj E (algebraMap (𝓞 (maximalRealSubfield E)) (𝓞 E) s) ∈ _
  rw [conj_algebraMap]
  exact Ideal.mem_map_of_mem _ hs

def resConj (v : HeightOneSpectrum (𝓞 (maximalRealSubfield E))) : 𝓞 E ⧸ extIdeal v →+* 𝓞 E ⧸ extIdeal v :=
  Ideal.quotientMap (extIdeal v) (IsCMField.ringOfIntegersComplexConj E : 𝓞 E →+* 𝓞 E) (extIdeal_le_comap v)

theorem resConj_mk (v : HeightOneSpectrum (𝓞 (maximalRealSubfield E))) (x : 𝓞 E) :
    resConj v (Ideal.Quotient.mk (extIdeal v) x) =
      Ideal.Quotient.mk (extIdeal v) (IsCMField.ringOfIntegersComplexConj E x) :=
  rfl

def intLocConj (v : HeightOneSpectrum (𝓞 (maximalRealSubfield E))) :
    intLoc (maximalRealSubfield E) E v →+* intLoc (maximalRealSubfield E) E v :=
  (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.sigR (Fv (maximalRealSubfield E) v) (cj E)).restrict _ _ fun _ hz => sigR_mem_intLoc (cj E) hz

theorem coe_intLocConj (v : HeightOneSpectrum (𝓞 (maximalRealSubfield E))) (z : intLoc (maximalRealSubfield E) E v) :
    ((intLocConj v z : intLoc (maximalRealSubfield E) E v) : Fv (maximalRealSubfield E) v ⊗[maximalRealSubfield E] E) =
      Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.sigR (Fv (maximalRealSubfield E) v) (cj E) z := rfl

end CM

end GlobalTheory.TamOne
