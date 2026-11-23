import Mathlib
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ThetaMod
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsUniqueVec
import Formalism.PadicSubsetSums.CentralIdempotents.PrimitiveRootFifteenSubOneUnit
import Formalism.GaloisIrreducibility.GaloisIrreducibilityProofs.OneNonUnit
import Formalism.ResultantValuation.ResultantAdjugateProofs.Laplace
import Formalism.PadicSubsetSums.StableGradedCounts.ZBrauerNesbittAlg
import Formalism.LocalRingCardinality.SpanPowerMembership.NDLocE
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.MemFiniteCocyclesIffBcrisTensorCoboundary
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.ContinuousAdeleNorm
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisGeometry₂.IsTemperedGLOfIsUnitaryLSeg
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.DeRhamPotSemistable
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.MemUnitOff
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisOfPolarized
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsNormalisedThetaSub
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeVecMemFixed
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ElementaryDivisorsMulMinusculeTopTerm
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsIdempotentElemCharIdem
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsAntiJFrame
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.DegOneIffSurjective

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.Host Formalism.L2.NT NumberField IsDedekindDomain Polynomial GlobalTheory.HeightCounting GlobalTheory.RowTie GlobalTheory.SplitRead GlobalTheory.NPin
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section

namespace GlobalTheory.GalClose

open GlobalTheory.CuspRep

theorem isSSRep_rankOne {Γ k : Type} [Group Γ] [Field k] (ρ : Γ →* GL (Fin 1) k) : IsSSRep ρ := by
  intro W _
  by_cases h : W = ⊥
  · refine ⟨⊤, fun g v _ => Submodule.mem_top, ?_⟩
    rw [h]; exact isCompl_bot_top
  · have hW : W = ⊤ := by
      obtain ⟨v, hv, hv0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot h
      have h0 : v 0 ≠ 0 := fun e => hv0 (funext fun j => by rw [Subsingleton.elim j 0, e]; rfl)
      refine eq_top_iff.2 fun u _ => ?_
      have : u = (u 0 / v 0) • v := funext fun j => by
        rw [Subsingleton.elim j 0, Pi.smul_apply, smul_eq_mul, div_mul_cancel₀ _ h0]
      rw [this]; exact W.smul_mem _ hv
    refine ⟨⊥, fun g v hv => ?_, ?_⟩
    · rw [Submodule.mem_bot] at hv ⊢; rw [hv]; exact Matrix.mulVec_zero _
    · rw [hW]; exact isCompl_top_bot

end GlobalTheory.GalClose
