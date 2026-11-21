import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DiffsZeroOfLev
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SemidirectHaarMeasureFundamentalDomain
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsMulRightInvariantOfFundamentalDomain
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CocompactLatticeUnitCovolume
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChainEmbSuccMulVec
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdaptedPlaneIntegralSkewHermitianTwist
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HyperbolicPlaneComplementDet
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DiscreteTopologyRationalUnitary
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TripleAdaptedPlaneLocalFactor
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ReconfiguredTripleCompatibility
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdeleQuotientCompactFundamentalSet

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK
open GlobalTheory.ConeSmallMidJB

noncomputable section

namespace GlobalTheory.MidUnfold

open Matrix GlobalTheory.ThK.FlagSemi
open GlobalTheory.SwapShearLines (incM_mulVec' incM_mul' inv_mulVec_of pair_incV incV_add' incV_smul' incV_sub' incV_zero' cA_inclR')

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E} {d d₁ e : ℕ}

variable (F) in

def Spans (H : Plane E d₁ e) : Prop := ∀ z : Fin d₁ → AE F E, ∃ (a b : AE F E) (z₂ : Fin e → AE F E),
  z = a • incV F H.x + incM F H.ι *ᵥ z₂ + b • incV F H.y

section Shear

variable {W : Spc F E d} {J₁ : Matrix (Fin d₁) (Fin d₁) E} {H' : Plane E d d₁} {H₂ : Plane E d₁ e}
  {π : Matrix (Fin d₁) (Fin d) E} (hF : IsFrame σ W.J J₁ H' π) (hS : Spans F H₂)
  {nn : AE F E → UA σ W.J} (hn : IsShear H' H₂ nn)

include hS hn in
theorem shear_ι (z : Fin d₁ → AE F E) : ∃ a : AE F E, ∀ c,
    mat (nn c) *ᵥ (incM F H'.ι *ᵥ z) = incM F H'.ι *ᵥ z + (c * a) • incV F H'.x := by
  obtain ⟨a, b, z₂, rfl⟩ := hS z
  refine ⟨a, fun c => ?_⟩
  obtain ⟨-, n2, n3, -, n5⟩ := hn c
  simp only [mulVec_add, mulVec_smul, incM_mulVec', n2, n3]
  rw [mulVec_mulVec z₂ (incM F H'.ι), ← incM_mul', mulVec_mulVec, n5, smul_add, smul_smul, mul_comm a c]
  abel

include hF hS hn in
theorem shear_apply (v : Fin d → AE F E) : ∃ a b : AE F E, ∀ c,
    mat (nn c) *ᵥ v = v + (c * a) • incV F H'.x + (cA σ c * b) • incV F (H'.ι *ᵥ H₂.y) := by
  obtain ⟨a, ha⟩ := shear_ι hS hn (incM F π *ᵥ v)
  refine ⟨a, incV F (W.J *ᵥ fun i => σ (H'.x i)) ⬝ᵥ v, fun c => ?_⟩
  have hv := hF.decomp v
  generalize incV F (W.J *ᵥ fun i => σ (H'.x i)) ⬝ᵥ v = β at hv ⊢
  generalize incV F (W.J *ᵥ fun i => σ (H'.y i)) ⬝ᵥ v = α at hv
  generalize incM F π *ᵥ v = z at hv ha
  subst hv
  rw [mulVec_sub, mulVec_add, mulVec_smul, mulVec_smul, ha, (hn c).1, (hn c).2.2.2.1, smul_sub, smul_smul,
    mul_comm β]
  abel

include hF hS hn in
theorem shear_add (c c' : AE F E) : nn (c + c') = nn c * nn c' := by
  refine mat_ext (ext_mulVec_single fun j => ?_)
  obtain ⟨a, b, h⟩ := shear_apply hF hS hn (Pi.single j 1)
  rw [mat_mul, ← mulVec_mulVec, h c', mulVec_add, mulVec_add, mulVec_smul, mulVec_smul, (hn c).1, (hn c).2.2.1, h c, h,
    map_add, add_mul, add_mul, add_smul, add_smul]
  abel

def shearHom : Multiplicative (AE F E) →* UA σ W.J :=
  MonoidHom.mk' (fun c => nn c.toAdd) fun c c' => shear_add hF hS hn _ _

theorem shearHom_apply (c : Multiplicative (AE F E)) : shearHom hF hS hn c = nn c.toAdd := rfl

variable (hxy : form σ W.J H'.x H'.y = 1) (ho : form σ W.J (H'.ι *ᵥ H₂.x) H'.y = 0)
include hxy ho

end Shear

section Swap

variable {W : Spc F E d} {W₁ : Spc F E d₁} {H' : Plane E d d₁} {H₂ : Plane E d₁ e}
  {π : Matrix (Fin d₁) (Fin d) E} (hF : IsFrame σ W.J W₁.J H' π) (hS : Spans F H₂) {w : UA σ W.J} (hw : IsSwap H' H₂ w)

variable (σ W H') in

def capN (w : UA σ W.J) : Subgroup (UA σ W.J) := unip σ W H' ⊓ (unip σ W H').comap (MulAut.conj w).toMonoidHom

theorem mem_capN {u : UA σ W.J} : u ∈ capN σ W H' w ↔ u ∈ unip σ W H' ∧ w * u * w⁻¹ ∈ unip σ W H' := Iff.rfl

end Swap

end GlobalTheory.MidUnfold

end
