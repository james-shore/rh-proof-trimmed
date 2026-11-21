import Mathlib
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsRigFr
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CoeIntEmbEmbP
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.GaugeUniqPf
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsNumOf
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SecLinOfSecScal
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.FBIdJet
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.BCRing

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField
open scoped CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Formalism.L2.Pj GlobalTheory.RayEv
attribute [local instance] Over.cartesianMonoidalCategory

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.RayHoriz.CubeNorm.SymMul

section Jets

variable {S : Type} [CommRing S] {ρ : Type}

theorem jetMap_mk' {κ κ' : Type} {m : ℕ} (φ : κ → MvPolynomial κ' S) (hφ : ∀ i, φ i ∈ orig S κ')
    (p : MvPolynomial κ S) :
    jetMap (m := m) φ hφ (Ideal.Quotient.mk _ p) = Ideal.Quotient.mk _ (MvPolynomial.aeval φ p) := rfl

theorem jet_ext {κ : Type} {m : ℕ} {A : Type} [CommRing A] [Algebra S A] {f g : Jet S κ m →ₐ[S] A}
    (h : ∀ r, f (Ideal.Quotient.mk _ (MvPolynomial.X r)) = g (Ideal.Quotient.mk _ (MvPolynomial.X r))) : f = g := by
  apply Ideal.Quotient.algHom_ext
  apply MvPolynomial.algHom_ext
  exact h

def wv (a b : S) : Fin 2 → ρ → S := ![fun _ => a, fun _ => b]

def linK {K K' : Type} [Fintype K'] (A : K → K' → S) (m : ℕ) : Jet S (K × ρ) m →ₐ[S] Jet S (K' × ρ) m :=
  jetMap (fun p => ∑ j, MvPolynomial.C (A p.1 j) * MvPolynomial.X (j, p.2)) fun p =>
    Ideal.sum_mem _ fun j _ => Ideal.mul_mem_left _ _ (X_mem_orig (j, p.2))

def subA : Fin 3 → Fin 2 → S := ![![1, 0], ![-1, 0], ![0, -1]]

def subB : Fin 3 → Fin 2 → S := ![![0, 1], ![0, -1], ![1, 0]]

def dneg (m : ℕ) : Jet S (Fin 2 × ρ) m →ₐ[S] Jet S ρ m :=
  jetMap (fun p => MvPolynomial.C (![1, -1] p.1 : S) * MvPolynomial.X p.2) fun p =>
    Ideal.mul_mem_left _ _ (X_mem_orig p.2)

macro "jet_tac" : tactic => `(tactic| (
  refine jet_ext fun r => ?_
  simp only [AlgHom.comp_apply, jetSum, jetIn, jetScale, linK, dneg, GlobalTheory.RayHoriz.jetW, jetMap_mk', AlgHom.id_apply]
  refine congrArg _ ?_
  simp [Finset.sum_insert, Fin.sum_univ_two, Fin.sum_univ_three, wv, subA, subB]
  try ring))

variable (m : ℕ)

end Jets

end GlobalTheory.RayHoriz.CubeNorm.SymMul
