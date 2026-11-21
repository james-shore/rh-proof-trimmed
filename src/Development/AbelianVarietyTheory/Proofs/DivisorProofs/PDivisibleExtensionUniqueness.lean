import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.FaithfulSMulAlgClosure
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.HenselianLocalRingOfIsAdicComplete
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsCrystalPairing
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.CubeTheorem
import Development.AbelianVarietyTheory.Definitions.Divisors.ToSpanSingletonConstGenInjective
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PowFlatLocallyQuasiFinite

set_option autoImplicit false
noncomputable section
open CategoryTheory Limits AlgebraicGeometry NumberField MonObj WithConv
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.PDiv GlobalTheory.PDivGroup GlobalTheory.PerfdLat GlobalTheory.GroupBplus
open GlobalTheory.DeRham (spOver spOver_comp)

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.GroupBplus.Rigid

def push {R : Type} [CommRing R] {G : Over (Sp R)} [GrpObj G] {N : ℕ} {B C : Type} [CommRing B] [Algebra R B]
    [CommRing C] [Algebra R C] (φ : B →ₐ[R] C) (z : Tors G N B) : Tors G N C :=
  ⟨spOver φ ≫ z.1, by rw [← MonObj.comp_pow, z.2, MonObj.comp_one]⟩

section Key

variable {p : ℕ} [Fact p.Prime] {La : Type} [AddCommGroup La]

variable {R₁ R₂ K : Type} [CommRing R₁] [CommRing R₂] [Field K] [Algebra R₁ K] [Algebra R₂ K]
  {Z : Scheme.{0}} {T : Over Z} [GrpObj T] {T₁ : Over (Sp R₁)} [GrpObj T₁] {T₂ : Over (Sp R₂)} [GrpObj T₂]
  {T₀ : Over (Sp K)} [GrpObj T₀] {f₁ : Sp R₁ ⟶ Z} {f₂ : Sp R₂ ⟶ Z} {f₀ : Sp K ⟶ Z}
  {φ₁ : T₁.left ⟶ T.left} {φ₂ : T₂.left ⟶ T.left} {φ₀ : T₀.left ⟶ T.left}
  {G₁ : PDivGroup p R₁} {G₂ : PDivGroup p R₂} {G₀ : PDivGroup p K}
  {θ₁ : TorsionMap T₁ G₁} {θ₂ : TorsionMap T₂ G₂} {θ₀ : TorsionMap T₀ G₀}
  {τ₁ : La →+ G₁.Tate} {τ₂ : La →+ G₂.Tate} {τ₀ : La →+ G₀.Tate}

def Link (φ₁ : T₁.left ⟶ T.left) (θ₁ : TorsionMap T₁ G₁) (τ₁ : La →+ G₁.Tate) (φ₀ : T₀.left ⟶ T.left) (θ₀ : TorsionMap T₀ G₀)
    (τ₀ : La →+ G₀.Tate) (s : SemiHom (algebraMap R₁ K) G₀ G₁) : Prop :=
  (∀ x n a, (τ₀ x).pt n (s.app n a) = algebraMap R₁ K ((τ₁ x).pt n a)) ∧
    ∀ (n : ℕ) (B : Type) [CommRing B] [Algebra R₁ B] [Algebra K B] [IsScalarTower R₁ K B]
      (z : Tors T₁ (p ^ n) B) (z' : Tors T₀ (p ^ n) B), z.1.left ≫ φ₁ = z'.1.left ≫ φ₀ →
        ∀ a, θ₁.pt n B z a = θ₀.pt n B z' (s.app n a)

theorem Link.mul {s : SemiHom (algebraMap R₁ K) G₀ G₁} (l : Link φ₁ θ₁ τ₁ φ₀ θ₀ τ₀ s) (n : ℕ) (L C : Type) [CommRing L]
    [Algebra R₁ L] [CommRing C] [Algebra R₁ C] [Algebra K C] [IsScalarTower R₁ K C] (κ : L →ₐ[R₁] C)
    (z : Tors T₁ (p ^ n) L) (z' : Tors T₀ (p ^ n) C) (h : spMap (κ : L →+* C) ≫ z.1.left ≫ φ₁ = z'.1.left ≫ φ₀) (x : La)
    (a : G₁.A n) : κ ((toConv (θ₁.pt n L z) * toConv (tatePt (τ₁ x) n L)).ofConv a) =
      (toConv (θ₀.pt n C z') * toConv (tatePt (τ₀ x) n C)).ofConv (s.app n a) := by
  have h1 := map_mul (ptsPush (G₁.A n) κ) (toConv (θ₁.pt n L z)) (toConv (tatePt (τ₁ x) n L))
  have h2 := map_mul ((s.app n).pts C (IsScalarTower.algebraMap_apply R₁ K C)) (toConv (θ₀.pt n C z'))
    (toConv (tatePt (τ₀ x) n C))
  have h3 : ptsPush (G₁.A n) κ (toConv (θ₁.pt n L z)) =
      (s.app n).pts C (IsScalarTower.algebraMap_apply R₁ K C) (toConv (θ₀.pt n C z')) :=
    ofConv_injective (AlgHom.ext fun a => (DFunLike.congr_fun (θ₁.nat n L C κ z (push κ z) rfl) a).symm.trans
      (l.2 n C (push κ z) z' ((Category.assoc ..).trans h) a))
  have h4 : ptsPush (G₁.A n) κ (toConv (tatePt (τ₁ x) n L)) =
      (s.app n).pts C (IsScalarTower.algebraMap_apply R₁ K C) (toConv (tatePt (τ₀ x) n C)) :=
    ofConv_injective (AlgHom.ext fun a => (κ.commutes _).trans ((IsScalarTower.algebraMap_apply R₁ K C _).trans
      (congrArg (algebraMap K C) (l.1 x n a).symm)))
  rw [h3, h4, ← h2] at h1
  exact DFunLike.congr_fun (congrArg ofConv h1) a

variable (h₁ : IsGrpPullback T₁ T f₁ φ₁) (h₂ : IsGrpPullback T₂ T f₂ φ₂) (h₀ : IsGrpPullback T₀ T f₀ φ₀)
  (hf : spMap (algebraMap R₁ K) ≫ f₁ = f₀) {s₁ : SemiHom (algebraMap R₁ K) G₀ G₁} {s₂ : SemiHom (algebraMap R₂ K) G₀ G₂}
  (l₁ : Link φ₁ θ₁ τ₁ φ₀ θ₀ τ₀ s₁) (l₂ : Link φ₂ θ₂ τ₂ φ₀ θ₀ τ₀ s₂) (hθ : θ₁.IsOpenNearZero) (n : ℕ)
  (hs : Function.Surjective (s₁.lift.app n))

end Key

end GlobalTheory.GroupBplus.Rigid

end
