import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasLatticesComplete
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigExtMapRelFrobCompRigOfOmega
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OmegaBaseChangeBijectiveOfPEqZero
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CobOneEqZeroOfConnecting
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DieudonneRanksFieldCharP
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrobTwistBaseChangeHomApp
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigOfOmegaInjectiveOfEqZero
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsUniquePairsToTower
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemilinearRankComparison

set_option autoImplicit false

noncomputable section

open CategoryTheory TensorProduct GlobalTheory.PDiv GlobalTheory.PDivGroup

namespace GlobalTheory.BadPt.FrobSpan

section Main

variable {p : ℕ} [Fact p.Prime] {R K : Type} [CommRing R] [IsDomain R] [Field K] [Algebra R K] [IsFractionRing R K]
  {Γ Δ : PDivGroup p R} {𝒜 : PDivGroup p K} [Module R 𝒜.RigExt] [IsScalarTower R K 𝒜.RigExt]

def pullRig (π : 𝒜 ⟶ Δ.baseChange K) : Δ.RigExt →ₗ[R] 𝒜.RigExt where
  toFun y := rigExtMap π ((Δ.toBase K).rig y)
  map_add' _ _ := by rw [map_add, map_add]
  map_smul' _ _ := by rw [map_smulₛₗ, map_smul, algebraMap_smul, RingHom.id_apply]

variable (hR : (p : R) = 0) (hK : (p : K) = 0) (κ : Γ.baseChange K ⟶ 𝒜) (π : 𝒜 ⟶ Δ.baseChange K)

omit [IsDomain R] [IsFractionRing R K] in

theorem pullRig_apply (y : Δ.RigExt) : pullRig π y = rigExtMap π ((Δ.toBase K).rig y) := rfl

end Main

end GlobalTheory.BadPt.FrobSpan
