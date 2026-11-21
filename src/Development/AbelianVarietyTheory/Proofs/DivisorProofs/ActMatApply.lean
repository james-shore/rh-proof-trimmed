import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPreChain
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CutsSecOfIsLat
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenImmersionChart
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsBaseEqChain
import Development.AbelianVarietyTheory.Definitions.Divisors.FaithfulSMulAlgClosure
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.PrismaticDieudonnePerfd
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDualPullback

set_option autoImplicit false
set_option synthInstance.maxHeartbeats 400000

noncomputable section

open CategoryTheory Limits AlgebraicGeometry IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.DV Formalism.L2.Pj Formalism.L2.Geo
open GlobalTheory.QCoh GlobalTheory.CechPic GlobalTheory.Vert GlobalTheory.LocM GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.Mean4O GlobalTheory.MixedLocalChains
open GlobalTheory.Twist (resM)
open Formalism.MainNotions.DIV.Cons (intO SCF)
open GlobalTheory.GroupBplus (AffOp IsPropG TorsionMap Tors)
open GlobalTheory.RingChain (RChain IsOf)
open GlobalTheory.LineNorm (IsTanBasis)
open GlobalTheory.OmegaHT (crd ToOpen)
open GlobalTheory.PDivGroup (muRoot omegaMap tateMap dualHom dlog)
open GlobalTheory.PerfdLat (PrismData ConstTate eps dualBaseChange bcTate piMap)
open GlobalTheory.Published (CycPerfd)
open scoped TensorProduct Pointwise

namespace GlobalTheory.ChainPts.SysB

section Ring

variable {p : ℕ} [Fact p.Prime] {A : Type} [CommRing A] {GG : PDivGroup p A}

def polBC (pol : GG ≅ GG.dual) (R : Type) [CommRing R] [Algebra A R] : GG.baseChange R ⟶ (GG.baseChange R).dual :=
  PDivGroup.baseChangeMap R pol.hom ≫ (dualBaseChange R GG).inv

def IsLevels {M : Type} [AddCommGroup M] [Module A M] (c : M →ₗ[A] GG.omega) : Prop :=
  (∀ n, Function.Surjective fun w => (c w).1 n) ∧ ∀ n w, (c w).1 n = 0 ↔ ∃ w', w = (p : A) ^ n • w'

def IsChainOf (D : PrismData p) (pol : GG ≅ GG.dual) {ε : (PDivGroup.mu p A).Tate} (c : ConstTate ε GG) {h o : ℕ}
    (e : GG.height = h) {π : A} {γ : ℕ → A} {Lie Om : Type} [AddCommGroup Lie] [Module A Lie] [AddCommGroup Om] [Module A Om]
    (cω : Om →ₗ[A] GG.omega) (pr : Lie →ₗ[A] Module.Dual A Om) (C : RChain p A h o π γ Lie Om) : Prop :=
  ¬ IsUnit (p : A) → ∃ (S : CycPerfd p) (_ : Algebra A S.R) (ec : AdicCompletion (Ideal.span {(p : A)}) A ≃+* S.R)
    (_ : ∀ a, ec (algebraMap A _ a) = algebraMap A S.R a) (hε : ∀ n, muRoot (eps S) n = algebraMap A S.R (muRoot ε n))
    (eL : S.R ⊗[A] Lie ≃ₗ[S.R] (GG.baseChange S.R).Lie) (eO : S.R ⊗[A] Om ≃ₗ[S.R] (GG.baseChange S.R).dual.omega),
    (∀ y w, eL (1 ⊗ₜ y) ((GG.toBase S.R).omega (cω w)) = algebraMap A S.R (pr y w)) ∧
    (∀ w, omegaMap _ _ (polBC pol S.R) (eO (1 ⊗ₜ w)) = (GG.toBase S.R).omega (cω w)) ∧
    IsOf D (c.baseChange S.R hε) e (fun y => eL (1 ⊗ₜ y)) (fun w => eO (1 ⊗ₜ w)) C

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H}

def ct {t : SAB H (Sp A)} {act : PDivGroup.Action (𝓞 E) GG} {pol : GG ≅ GG.dual} {θ : TorsionMap t.G GG}
    {ε : (PDivGroup.mu p A).Tate} {τ : Dw.La →+ GG.Tate} (hP : IsPropG Dw t GG act pol θ ε τ) {n : ℕ} (e : GG.height = n)
    (b : Module.Basis (Fin n) ℤ Dw.La) : ConstTate ε GG :=
  hP.constTate (b.reindex (finCongr e.symm))

def actMat {n : ℕ} (b : Module.Basis (Fin n) ℤ Dw.La) : 𝓞 E →+* Matrix (Fin n) (Fin n) ℤ :=
  (LinearMap.toMatrixAlgEquiv b).toRingEquiv.toRingHom.comp (Module.toModuleEnd ℤ Dw.La)

theorem actMat_apply {n : ℕ} (b : Module.Basis (Fin n) ℤ Dw.La) (a : 𝓞 E) (k i : Fin n) :
    actMat b a k i = b.repr (a • b i) k := LinearMap.toMatrixAlgEquiv_apply b _ k i

end Ring

def RingActSt : Prop :=
  ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H) (p : ℕ) [Fact p.Prime] (D : PrismData p)
    (A : Type) [CommRing A] (t : SAB H (Sp A)) (GG : PDivGroup p A)
    (act : PDivGroup.Action (𝓞 E) GG) (pol : GG ≅ GG.dual) (θ : TorsionMap t.G GG) (ε : (PDivGroup.mu p A).Tate)
    (τ : Dw.La →+ GG.Tate) (hP : IsPropG Dw t GG act pol θ ε τ) (n o : ℕ) (e : GG.height = n)
    (b : Module.Basis (Fin n) ℤ Dw.La) (π : A) (γ : ℕ → A) (Lie Om : Type)
    [AddCommGroup Lie] [Module A Lie] [AddCommGroup Om] [Module A Om] (cω : Om →ₗ[A] GG.omega)
    (pr : Lie →ₗ[A] Module.Dual A Om) (C : RChain p A n o π γ Lie Om) (a : 𝓞 E) (l : Lie → Lie) (m m' : Om → Om),
    IsChainOf D pol (ct hP e b) e cω pr C →
    (∀ w, cω (m w) = omegaMap GG GG (act (H.bar a)) (cω w)) → (∀ w, cω (m' w) = omegaMap GG GG (act a) (cω w)) →
    (∀ y w, pr (l y) w = pr y (m' w)) → π ∣ (p : A) → C.Map C (RingHom.id A) (actMat b a) l m

end GlobalTheory.ChainPts.SysB

end
