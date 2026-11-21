import Mathlib
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsRigFr
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CoeIntEmbEmbP
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.GaugeUniqPf
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.FormalLogEqSumOfMultiplicativeParam

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.CubeSeries

open MvPowerSeries

variable {S : Type} [CommRing S] {ρ : Type}

def blinV {K K' : Type} [Fintype K'] (M : K → K' → ℤ) : K × ρ → MvPowerSeries (K' × ρ) S :=
  fun p => ∑ i, M p.1 i • X (i, p.2)

def blin {K K' : Type} [Fintype K'] (M : K → K' → ℤ) (F : MvPowerSeries (K × ρ) S) :
    MvPowerSeries (K' × ρ) S :=
  subst (blinV (S := S) (ρ := ρ) M) F

def blin1V {K' : Type} [Fintype K'] (v : K' → ℤ) : ρ → MvPowerSeries (K' × ρ) S :=
  fun r => ∑ i, v i • X (i, r)

def blin1 {K' : Type} [Fintype K'] (v : K' → ℤ) (h : MvPowerSeries ρ S) :
    MvPowerSeries (K' × ρ) S :=
  subst (blin1V (S := S) (ρ := ρ) v) h

section Basic

variable {K K' K'' : Type} [Fintype K'] [Fintype K'']

theorem constantCoeff_blinV (M : K → K' → ℤ) (p : K × ρ) :
    constantCoeff (blinV (S := S) (ρ := ρ) M p) = 0 := by
  simp [blinV]

theorem constantCoeff_blin1V (v : K' → ℤ) (r : ρ) :
    constantCoeff (blin1V (S := S) (ρ := ρ) v r) = 0 := by
  simp [blin1V]

variable [Finite ρ]

theorem hasSubst_blinV [Finite K] (M : K → K' → ℤ) : HasSubst (blinV (S := S) (ρ := ρ) M) :=
  hasSubst_of_constantCoeff_zero (constantCoeff_blinV M)

theorem hasSubst_blin1V (v : K' → ℤ) : HasSubst (blin1V (S := S) (ρ := ρ) v) :=
  hasSubst_of_constantCoeff_zero (constantCoeff_blin1V v)

def blinHom [Finite K] (M : K → K' → ℤ) : MvPowerSeries (K × ρ) S →ₐ[S] MvPowerSeries (K' × ρ) S :=
  substAlgHom (hasSubst_blinV M)

theorem blinHom_apply [Finite K] (M : K → K' → ℤ) (F : MvPowerSeries (K × ρ) S) :
    blinHom M F = blin M F := by
  rw [blinHom, coe_substAlgHom]; rfl

def blin1Hom (v : K' → ℤ) : MvPowerSeries ρ S →ₐ[S] MvPowerSeries (K' × ρ) S :=
  substAlgHom (hasSubst_blin1V v)

theorem blin1Hom_apply (v : K' → ℤ) (h : MvPowerSeries ρ S) : blin1Hom v h = blin1 v h := by
  rw [blin1Hom, coe_substAlgHom]; rfl

section Ring

variable [Finite K] (M : K → K' → ℤ) (v : K' → ℤ)

@[simp] theorem blin_add (F G : MvPowerSeries (K × ρ) S) : blin M (F + G) = blin M F + blin M G := by
  simp [← blinHom_apply]
@[simp] theorem blin_sub (F G : MvPowerSeries (K × ρ) S) : blin M (F - G) = blin M F - blin M G := by
  simp [← blinHom_apply]
@[simp] theorem blin_mul (F G : MvPowerSeries (K × ρ) S) : blin M (F * G) = blin M F * blin M G := by
  simp [← blinHom_apply]
@[simp] theorem blin_neg (F : MvPowerSeries (K × ρ) S) : blin M (-F) = -blin M F := by
  simp [← blinHom_apply]
@[simp] theorem blin_zero : blin M (0 : MvPowerSeries (K × ρ) S) = 0 := by
  simp [← blinHom_apply]
@[simp] theorem blin_one : blin M (1 : MvPowerSeries (K × ρ) S) = 1 := by
  simp [← blinHom_apply]
@[simp] theorem blin_zsmul (n : ℤ) (F : MvPowerSeries (K × ρ) S) : blin M (n • F) = n • blin M F := by
  simp [← blinHom_apply]
@[simp] theorem blin_sum {ι : Type} (s : Finset ι) (F : ι → MvPowerSeries (K × ρ) S) :
    blin M (∑ i ∈ s, F i) = ∑ i ∈ s, blin M (F i) := by
  simp [← blinHom_apply]

@[simp] theorem block_substitution_add (g h : MvPowerSeries ρ S) : blin1 v (g + h) = blin1 v g + blin1 v h := by
  simp [← blin1Hom_apply]
@[simp] theorem block_substitution_sub (g h : MvPowerSeries ρ S) : blin1 v (g - h) = blin1 v g - blin1 v h := by
  simp [← blin1Hom_apply]
@[simp] theorem block_substitution_mul (g h : MvPowerSeries ρ S) : blin1 v (g * h) = blin1 v g * blin1 v h := by
  simp [← blin1Hom_apply]
@[simp] theorem block_substitution_zero : blin1 v (0 : MvPowerSeries ρ S) = 0 := by
  simp [← blin1Hom_apply]
@[simp] theorem block_substitution_one : blin1 v (1 : MvPowerSeries ρ S) = 1 := by
  simp [← blin1Hom_apply]
@[simp] theorem block_substitution_zsmul (n : ℤ) (h : MvPowerSeries ρ S) : blin1 v (n • h) = n • blin1 v h := by
  simp [← blin1Hom_apply]

end Ring

end Basic

end GlobalTheory.CubeSeries

namespace GlobalTheory.CubeSeries

end GlobalTheory.CubeSeries

namespace GlobalTheory.CubeSeries

end GlobalTheory.CubeSeries

namespace GlobalTheory.CubeSeries

end GlobalTheory.CubeSeries
