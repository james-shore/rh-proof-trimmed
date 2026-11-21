import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsMulVal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PointsGroup
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PowFlatLocallyQuasiFinite
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.FormallyUnramifiedOfTangentMapInjective
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.FinitePartLePreimageOfClosedFibreSubset
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.UniformisationConclusion
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RelativeAmpleSpreadFromLocalization
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.PowEqScaleAndExistsUniqueTorsion

set_option autoImplicit false
noncomputable section
open CategoryTheory Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj NumberField WithConv
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.PDiv GlobalTheory.PDivGroup GlobalTheory.PerfdLat GlobalTheory.GroupBplus GlobalTheory.GroupBplus.Aff
open Coalgebra Bialgebra
open GlobalTheory.DeRham (spOver spOver_comp)
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.GroupBplus.Aff.LevMap

section Push

variable {R : Type} [CommRing R] {G : Over (Sp R)} [GrpObj G] [IsCommMonObj G]

theorem comp_pow_of_isMonHom (f : G ⟶ G) [IsMonHom f] {Z : Over (Sp R)} (t : Z ⟶ G) (n : ℕ) :
    (t ≫ f) ^ n = (t ^ n) ≫ f := by
  induction n with
  | zero => simp only [pow_zero]; exact (MonObj.one_comp f).symm
  | succ n ih => rw [pow_succ, pow_succ, MonObj.mul_comp, ih]

def torsPush {N N' : ℕ} (h : N ∣ N') (f : G ⟶ G) [IsMonHom f] {B : Type} [CommRing B] [Algebra R B]
    (z : Tors G N B) : Tors G N' B :=
  ⟨z.1 ≫ f, by obtain ⟨m, rfl⟩ := h; rw [pow_mul, comp_pow_of_isMonHom, z.2, MonObj.one_comp, one_pow]⟩

variable {N N' : ℕ} (h : N ∣ N') (f : G ⟶ G) [IsMonHom f]

@[simp] theorem torsPush_val {B : Type} [CommRing B] [Algebra R B] (z : Tors G N B) :
    (torsPush h f z).1 = z.1 ≫ f := rfl

end Push

end GlobalTheory.GroupBplus.Aff.LevMap

namespace GlobalTheory.GroupBplus.Aff.LevMap

end GlobalTheory.GroupBplus.Aff.LevMap

namespace GlobalTheory.GroupBplus.Aff.LevMap

end GlobalTheory.GroupBplus.Aff.LevMap
