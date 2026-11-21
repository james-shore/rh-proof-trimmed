import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.GenSubHwOfSurjective
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfComponentTensorAdelicFunctionEq
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNatMulIntegralOfIsCompact
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone

open scoped TensorProduct Matrix GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open NumberField Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.BasicNotions.TH GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.FockAlg GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.RealLift
open GlobalTheory.RealLift.OneParam GlobalTheory.ThK GlobalTheory.ThK.DescB GlobalTheory.ThK.RealK

noncomputable section

namespace GlobalTheory.ThK.GenAssemble

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

section Good

variable {n d : ℕ} {Y : Spc F E n} {W : Spc F E d}

def goodSub (M : Model σ Y W) (om : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Rep σ Y W) : Submodule ℂ (Fn F n d) where
  carrier := {Φ | (∀ x, om x Φ ∈ schA F (Fin n × Fin d)) ∧ M.Conv om Φ}
  add_mem' := fun {Φ Ψ} hΦ hΨ => ⟨fun x => by rw [map_add]; exact add_mem (hΦ.1 x) (hΨ.1 x), fun h => by
      have e : (fun g => theta om (Φ + Ψ) g h) = fun g => theta om Φ g h + theta om Ψ g h := funext fun g => by
        simp only [theta, map_add]; exact thetaSum_add F (hΦ.1 _) (hΨ.1 _)
      rw [e]; exact (hΦ.2 h).add (hΨ.2 h)⟩
  zero_mem' := ⟨fun x => by rw [map_zero]; exact zero_mem _, fun h => by
      have e : (fun g => theta om (0 : Fn F n d) g h) = fun _ => 0 := funext fun g => by
        simp [theta, thetaSum]
      rw [e]; exact MeasureTheory.integrableOn_zero⟩
  smul_mem' := fun c Φ hΦ => ⟨fun x => by rw [map_smul]; exact Submodule.smul_mem _ c (hΦ.1 x), fun h => by
      have e : (fun g => theta om (c • Φ) g h) = fun g => c * theta om Φ g h := funext fun g => by
        simp only [theta, map_smul]; exact thetaSum_smul F c _
      rw [e]; exact (hΦ.2 h).const_mul c⟩

end Good

end GlobalTheory.ThK.GenAssemble

namespace GlobalTheory.ThK.GenAssemble

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

section Match

variable {n d : ℕ} {Y : Spc F E n} {W : Spc F E d}

def Dat (M : Model σ Y W) : Type :=
  {φ : ∀ v : Pl F, (Fin n × Fin d → Fv F v) → ℂ // (∀ v, φ v ∈ SB _) ∧ ∀ᶠ v in Filter.cofinite, φ v = M.vac v}

open Classical in

def Dat.T {M : Model σ Y W} (X : Chars F E) (φ : Dat M) : Finset (Pl F) :=
  X.T ∪ (Filter.eventually_cofinite.1 φ.2.2).toFinset

end Match

variable {B : Base F E} {a a' : ℕ} {G : Geo σ a a'} {X : Chars F E} {om : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Rep σ G.V G.W}
  {om' : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Rep σ G.V' G.W} {R : RealMaps F a a'} {Rf : FinMaps F a a'}

variable (B G X om om' R Rf) in

structure Hyp : Prop where
  m : IsMatched B G X om om' R Rf
  f1 : ∀ Φ, PolMatch B G X R Rf Φ 0 → G.M.I om Φ = 0
  f2 : ∀ Φ' ∈ G.M'.So B.ψ B.τ₁, PolMatch B G X R Rf 0 Φ' → G.M'.I om' Φ' = 0
  part : ∀ Φ ∈ PolData B G.M, ∃ Φ' ∈ G.M'.So B.ψ B.τ₁, PolMatch B G X R Rf Φ Φ'
  gP : ∀ f ∈ G.M.Pol B.ψ B.emb, ∀ φ : Dat G.M, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.pure f φ.1 ∈ goodSub G.M om
  gV' : ∀ Φ Φ', Φ' ∈ G.M'.So B.ψ B.τ₁ → PolMatch B G X R Rf Φ Φ' → Φ' ∈ goodSub G.M' om'

end GlobalTheory.ThK.GenAssemble

namespace GlobalTheory.ThK.GenAssemble

end GlobalTheory.ThK.GenAssemble

namespace GlobalTheory.ThK.GenAssemble

end GlobalTheory.ThK.GenAssemble
