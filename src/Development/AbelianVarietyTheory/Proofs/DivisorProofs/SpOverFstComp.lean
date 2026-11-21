import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsMulVal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.QuasiCompactZeroSec
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoToBidualOfLocalFrames
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentPhiInjectiveCriterion
set_option autoImplicit false
noncomputable section
open CategoryTheory Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj NumberField WithConv
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.PDiv GlobalTheory.PDivGroup GlobalTheory.PerfdLat GlobalTheory.GroupBplus GlobalTheory.GroupBplus.Aff
open Coalgebra Bialgebra
open GlobalTheory.DeRham (spOver spOver_comp)
open GlobalTheory.SqZeroPt
open scoped GlobalTheory.SqZeroPt
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.OpenOmega

variable {p : ℕ} {R : Type} [CommRing R] {G : Over (Sp R)} [GrpObj G] {GG : PDivGroup p R}

def PtSurj (θ : TorsionMap G GG) (n : ℕ) : Prop :=
  ∀ (M : Type) [AddCommGroup M] [Module R M] [Module Rᵐᵒᵖ M] [IsCentralScalar R M]
    (φ : GG.A n →ₐ[R] TrivSqZeroExt R M), (TrivSqZeroExt.fstHom R R M).comp φ = Bialgebra.counitAlgHom R (GG.A n) →
      ∃ z : Tors G (p ^ n) (TrivSqZeroExt R M), zeroSec R M ≫ z.1 = η[G] ∧ θ.pt n _ z = φ

def univPt (θ : TorsionMap G GG) (n : ℕ) (hs : PtSurj θ n) : Tors G (p ^ n) (TrivSqZeroExt R (Cot R (GG.A n))) :=
  Classical.choose (hs _ (univ GG n) (fst_comp_univ n))

theorem univPt_spec (θ : TorsionMap G GG) (n : ℕ) (hs : PtSurj θ n) :
    zeroSec R (Cot R (GG.A n)) ≫ (univPt θ n hs).1 = η[G] ∧ θ.pt n _ (univPt θ n hs) = univ GG n :=
  Classical.choose_spec (hs _ (univ GG n) (fst_comp_univ n))

def cnθ (θ : TorsionMap G GG) (n : ℕ) (hs : PtSurj θ n) : Wmod G →ₗ[R] Cot R (GG.A n) where
  toFun := Phi (univPt θ n hs).1 (univPt_spec θ n hs).1
  map_add' := map_add _
  map_smul' a w := GlobalTheory.SqZeroPt.CnSurj.Phi_smul _ _ a w

theorem cnθ_apply (θ : TorsionMap G GG) (n : ℕ) (hs : PtSurj θ n) (w : Wmod G) :
    cnθ θ n hs w = Phi (univPt θ n hs).1 (univPt_spec θ n hs).1 w := rfl

end GlobalTheory.OpenOmega
