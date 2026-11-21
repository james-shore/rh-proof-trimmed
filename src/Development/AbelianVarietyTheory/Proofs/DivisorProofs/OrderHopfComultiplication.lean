import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsMulVal
set_option autoImplicit false
noncomputable section
open CategoryTheory Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj NumberField WithConv
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.PDiv GlobalTheory.PDivGroup GlobalTheory.PerfdLat GlobalTheory.GroupBplus GlobalTheory.GroupBplus.Aff
open Coalgebra Bialgebra
open GlobalTheory.DeRham (spOver spOver_comp)
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.HopfFn

end GlobalTheory.HopfFn

namespace GlobalTheory.HopfFn

open Algebra.TensorProduct in
section
variable {R K : Type} [CommRing R] [IsDomain R] [Field K] [Algebra R K] [IsFractionRing R K]
  {M : Type} [CommGroup M] [Finite M] (O : Subalgebra R (M → K))

def ev (a : M) : O →ₐ[R] K := (Pi.evalAlgHom R (fun _ : M => K) a).comp O.val

def ev2 (a b : M) : O ⊗[R] O →ₐ[R] K :=
  Algebra.TensorProduct.lift (ev O a) (ev O b) (fun _ _ => .all _ _)

omit [IsDomain R] [IsFractionRing R K] [Finite M] in
@[simp] theorem ev_apply (a : M) (f : O) : ev O a f = (f : M → K) a := rfl

omit [IsDomain R] [IsFractionRing R K] [Finite M] in
@[simp] theorem ev2_tmul (a b : M) (f g : O) :
    ev2 O a b (f ⊗ₜ g) = (f : M → K) a * (g : M → K) b := by
  simp [ev2]

variable (hΔ : ∀ f ∈ O, ∃ T : O ⊗[R] O, ∀ a b : M, ev2 O a b T = f (a * b))
  (hε : ∀ f ∈ O, ∃ c : R, algebraMap R K c = f 1)
  (hS : ∀ f ∈ O, (fun a => f a⁻¹) ∈ O)

def antipode : O →ₐ[R] O where
  toFun f := ⟨fun a => (f : M → K) a⁻¹, hS f.1 f.2⟩
  map_one' := rfl
  map_mul' _ _ := rfl
  map_zero' := rfl
  map_add' _ _ := rfl
  commutes' _ := rfl

omit [IsDomain R] [IsFractionRing R K] [Finite M] in
@[simp] theorem antipode_apply (f : O) (a : M) :
    ((antipode O hS f : O) : M → K) a = (f : M → K) a⁻¹ := rfl

end
end GlobalTheory.HopfFn

namespace GlobalTheory.HopfFn

end GlobalTheory.HopfFn

namespace GlobalTheory.HopfFn

end GlobalTheory.HopfFn
