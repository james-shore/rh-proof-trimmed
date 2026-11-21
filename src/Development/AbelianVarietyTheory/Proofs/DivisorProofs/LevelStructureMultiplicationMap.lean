import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsMulVal
import Development.AbelianVarietyTheory.Definitions.Divisors.ToSpanSingletonConstGenInjective
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PointsGroup
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PowFlatLocallyQuasiFinite
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PDivisibleExtensionUniqueness
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianMulNatSurjectiveStatement
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.FinitePartLePreimageOfClosedFibreSubset

set_option autoImplicit false
noncomputable section
open CategoryTheory Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj NumberField WithConv
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.PDiv GlobalTheory.PDivGroup GlobalTheory.PerfdLat GlobalTheory.GroupBplus GlobalTheory.GroupBplus.Aff
open Coalgebra Bialgebra
open GlobalTheory.DeRham (spOver spOver_comp)
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.GroupBplus.Aff.LevKer

attribute [local instance] GlobalTheory.HopfShear.pointsGroup

@[reducible] def pointsCommGroup {R A X : Type} [CommRing R] [CommRing A] [CommRing X] [HopfAlgebra R A] [IsCocomm R A]
    [Algebra R X] : CommGroup (WithConv (A →ₐ[R] X)) :=
  { GlobalTheory.HopfShear.pointsGroup with mul_comm := mul_comm }

attribute [local instance] pointsCommGroup

section
variable {R : Type} [CommRing R] {G : Over (Sp R)} [GrpObj G] [IsCommMonObj G] {N : ℕ}
  {A : Type} [CommRing A] [HopfAlgebra R A]

def ptHom (θ : TorsPt G N A) (B : Type) [CommRing B] [Algebra R B] : Tors G N B →* WithConv (A →ₐ[R] B) :=
  MonoidHom.mk' (fun z => toConv (θ.pt B z)) (θ.mul B)

theorem ptHom_apply (θ : TorsPt G N A) (B : Type) [CommRing B] [Algebra R B] (z : Tors G N B) :
    ptHom θ B z = toConv (θ.pt B z) := rfl

theorem tors_pow_val {B : Type} [CommRing B] [Algebra R B] (z : Tors G N B) (n : ℕ) : (z ^ n).1 = z.1 ^ n := rfl

end

theorem ptsPush_ptsPush {R A B C D : Type} [CommRing R] [CommRing A] [Bialgebra R A] [CommRing B] [Algebra R B]
    [CommRing C] [Algebra R C] [CommRing D] [Algebra R D] (φ : B →ₐ[R] C) (ψ : C →ₐ[R] D) (x : WithConv (A →ₐ[R] B)) :
    ptsPush A ψ (ptsPush A φ x) = ptsPush A (ψ.comp φ) x := rfl

theorem ptsPush_ptsMap {R A A' C D : Type} [CommRing R] [CommRing A] [Bialgebra R A] [CommRing A'] [Bialgebra R A']
    [CommRing C] [Algebra R C] [CommRing D] [Algebra R D] (ψ : C →ₐ[R] D) (g : A' →ₐc[R] A) (x : WithConv (A →ₐ[R] C)) :
    ptsPush A' ψ (pointsMap C g x) = pointsMap D g (ptsPush A ψ x) := rfl

end GlobalTheory.GroupBplus.Aff.LevKer
