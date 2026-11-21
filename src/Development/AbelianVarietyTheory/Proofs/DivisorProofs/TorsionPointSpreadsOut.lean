import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsMulVal
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

namespace GlobalTheory.GroupBplus.Aff.TorsLift

def extendAway {R : Type} [CommRing R] (r : R) {A T : Type} [CommRing A] [Algebra R A]
    [Algebra (Localization.Away r) A] [IsScalarTower R (Localization.Away r) A] [CommRing T] [Algebra R T]
    [Algebra (Localization.Away r) T] [IsScalarTower R (Localization.Away r) T] (f : A →ₐ[R] T) :
    A →ₐ[Localization.Away r] T :=
  { f with
    commutes' := fun x => by
      haveI := IsLocalization.algHom_subsingleton (R := R) (M := Submonoid.powers r)
        (S := Localization.Away r) (P := T)
      have h := congrArg (fun g : Localization.Away r →ₐ[R] T => g x)
        (Subsingleton.elim (f.comp (IsScalarTower.toAlgHom R (Localization.Away r) A))
          (IsScalarTower.toAlgHom R (Localization.Away r) T))
      simpa using h }

@[simp] theorem extendAway_apply {R : Type} [CommRing R] (r : R) {A T : Type} [CommRing A] [Algebra R A]
    [Algebra (Localization.Away r) A] [IsScalarTower R (Localization.Away r) A] [CommRing T] [Algebra R T]
    [Algebra (Localization.Away r) T] [IsScalarTower R (Localization.Away r) T] (f : A →ₐ[R] T) (a : A) :
    extendAway r f a = f a := rfl

end GlobalTheory.GroupBplus.Aff.TorsLift

