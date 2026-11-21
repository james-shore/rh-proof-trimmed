import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.PrismaticDieudonnePerfdIff
import Development.AbelianVarietyTheory.Definitions.Divisors.GlobalHeightBoundIffAtGoodPrimes
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.IsDiscreteValuationRingAndFiniteResidueFieldValu

set_option autoImplicit false

noncomputable section

open CategoryTheory WittVector
open scoped TensorProduct Pointwise ChangeOfRings

namespace GlobalTheory.RingChain

open GlobalTheory.PDivGroup GlobalTheory.Sandwich GlobalTheory.IndefiniteRowSideFullHecke.EpsilonPairingZeta GlobalTheory.Published GlobalTheory.PerfdLat

section Defs

variable {A : Type} [CommRing A]

abbrev Qt {X : Type} [AddCommGroup X] [Module A X] (P N : Submodule A X) : Type := P ⧸ N.comap P.subtype

variable (A) in

def IsFrobLin (p q : ℕ) {M N : Type} [AddCommGroup M] [Module A M] [AddCommGroup N] [Module A N] (ψ : M →+ N) : Prop :=
  ∀ f : A →+* A ⧸ Ideal.span {(p : A)}, (∀ a, f a = Ideal.Quotient.mk _ (a ^ q)) →
    ∃ e : (ModuleCat.extendScalars f).obj (ModuleCat.of A M) ≃+ N,
      ∀ (a : A) (x : M), e ((Ideal.Quotient.mk _ a : A ⧸ Ideal.span {(p : A)}) ⊗ₜ[A, f] x) = a • ψ x

abbrev baseOf (π : A) (h : ℕ) : Submodule A (Fin h → A) := π • ⊤

structure RChain (p : ℕ) (A : Type) [CommRing A] (h o : ℕ) (π : A) (γ : ℕ → A) (Lie Om : Type) [AddCommGroup Lie]
    [Module A Lie] [AddCommGroup Om] [Module A Om] where

  L : ℕ → Submodule A (Fin h → A)
  finite : ∀ n, Module.Finite A (L n)
  projective : ∀ n, Module.Projective A (L n)
  base_le : ∀ n, baseOf π h ≤ L n
  succ_le : ∀ n, L (n + 1) ≤ L n
  kill : ∀ n < o, γ 0 • L (n + 1) ≤ baseOf π h
  gam : ∀ n < o, γ n • L n ≤ L (n + 1)
  lfree : ∀ n < o, Module.Projective (A ⧸ Ideal.span {γ n}) ((A ⧸ Ideal.span {γ n}) ⊗[A] Qt (L n) (L (n + 1)))

  j : Lie →ₗ[A] Qt (L 0) (baseOf π h)

  ρ : Om →ₗ[A] Qt (L 0) (baseOf π h) ⧸ LinearMap.range j
  ρ_surj : Function.Surjective ρ

  ψ : ∀ n, Qt (L (n + 1)) (baseOf π h) →+ Qt (L n) (baseOf π h)
  ψ_lin : ∀ n < o, IsFrobLin A p p (ψ n)

  κ : ∀ n, Qt (L n) (L (n + 1)) →+ Lie ⧸ (p : A) • (⊤ : Submodule A Lie)
  κ_lin : ∀ n < o, IsFrobLin A p (p ^ (n + 1)) (κ n)

variable {A' : Type} [CommRing A']

def mv (φ : A →+* A') {h : ℕ} (M : Matrix (Fin h) (Fin h) ℤ) (x : Fin h → A) : Fin h → A' :=
  (M.map (Int.cast : ℤ → A')).mulVec fun i => φ (x i)

variable {p h o : ℕ} {π : A} {γ : ℕ → A} {Lie Om : Type} [AddCommGroup Lie] [Module A Lie] [AddCommGroup Om] [Module A Om]
  {π' : A'} {γ' : ℕ → A'} {Lie' Om' : Type} [AddCommGroup Lie'] [Module A' Lie'] [AddCommGroup Om'] [Module A' Om']

structure RChain.Map (C : RChain p A h o π γ Lie Om) (C' : RChain p A' h o π' γ' Lie' Om') (φ : A →+* A')
    (M : Matrix (Fin h) (Fin h) ℤ) (l : Lie → Lie') (m : Om → Om') : Prop where
  mem : ∀ n, ∀ x ∈ C.L n, mv φ M x ∈ C'.L n
  j : ∀ (y : Lie) (x : C.L 0) (x' : C'.L 0), x'.1 = mv φ M x.1 → C.j y = Submodule.Quotient.mk x →
    C'.j (l y) = Submodule.Quotient.mk x'
  ρ : ∀ (w : Om) (x : C.L 0) (x' : C'.L 0), x'.1 = mv φ M x.1 →
    C.ρ w = Submodule.Quotient.mk (Submodule.Quotient.mk x) →
      C'.ρ (m w) = Submodule.Quotient.mk (Submodule.Quotient.mk x')
  ψ : ∀ n < o, ∀ (x : C.L (n + 1)) (x' : C'.L (n + 1)) (y : C.L n) (y' : C'.L n), x'.1 = mv φ M x.1 → y'.1 = mv φ M y.1 →
    C.ψ n (Submodule.Quotient.mk x) = Submodule.Quotient.mk y → C'.ψ n (Submodule.Quotient.mk x') = Submodule.Quotient.mk y'
  κ : ∀ n < o, ∀ (x : C.L n) (x' : C'.L n) (y : Lie), x'.1 = mv φ M x.1 →
    C.κ n (Submodule.Quotient.mk x) = Submodule.Quotient.mk y →
      C'.κ n (Submodule.Quotient.mk x') = Submodule.Quotient.mk (l y)

variable (A') in

def ModIso [Algebra A A'] (a : A) : Prop :=
  (∀ r : A', ∃ x : A, algebraMap A A' a ∣ r - algebraMap A A' x) ∧ ∀ x : A, algebraMap A A' a ∣ algebraMap A A' x → a ∣ x

end Defs

namespace Examples₂

end Examples₂

section Group

variable {p : ℕ} [Fact p.Prime] (D : PrismData p) {S : CycPerfd p} {G : PDivGroup p S.R} (c : ConstTate (eps S) G)
  {A : Type} [CommRing A] [Algebra A S.R] {h o : ℕ} (e : G.height = h) {π : A} {γ : ℕ → A} {Lie Om : Type}
  [AddCommGroup Lie] [Module A Lie] [AddCommGroup Om] [Module A Om]

def toR (x : Fin h → A) : Fin G.height → S.R := fun i => algebraMap A S.R (x (Fin.cast e i))

structure IsOf (iL : Lie → G.Lie) (iO : Om → G.dual.omega) (C : RChain p A h o π γ Lie Om) : Prop where
  pi_eq : algebraMap A S.R π = zeta S.ε 1 - 1
  mem : ∀ n x, x ∈ C.L n ↔ toR e x ∈ H D c n
  j : ∀ (y : Lie) (x : C.L 0), C.j y = Submodule.Quotient.mk x ↔ toR e x.1 - c.alDual (iL y) ∈ base S G.height
  ρ : ∀ (w : Om) (x : C.L 0), C.ρ w = Submodule.Quotient.mk (Submodule.Quotient.mk x) ↔
    ∃ x₀ ∈ H D c 0, (zeta S.ε 1 - 1) • iO w = c.al x₀ ∧ toR e x.1 - x₀ ∈ base S G.height ⊔ LinearMap.range c.alDual
  ψ : ∀ n < o, ∀ (x : C.L (n + 1)) (y : C.L n), C.ψ n (Submodule.Quotient.mk x) = Submodule.Quotient.mk y ↔
    ∃ k ∈ K D c (n + 2), (zeta S.ε 1 - 1) • piMap (fontaineTheta S.R p) _ k = (zeta S.ε (n + 2) - 1) • toR e x.1 ∧
      ∃ y₀, (zeta S.ε 1 - 1) • piMap (fontaineTheta S.R p) _ (piMap frobenius _ k) = (zeta S.ε (n + 1) - 1) • y₀ ∧
        toR e y.1 - y₀ ∈ base S G.height
  κ : ∀ n < o, ∀ (x : C.L n) (y : Lie), C.κ n (Submodule.Quotient.mk x) = Submodule.Quotient.mk y ↔
    ∃ m : D.Cov G, (zeta S.ε 1 - 1) • piMap (fontaineTheta S.R p) _ (fun j => (phiInv p S.R)^[n + 1] (coord D c m j)) =
      (zeta S.ε (n + 1) - 1) • toR e x.1 ∧ ∃ y₀ : G.Lie, c.alDual y₀ = b D c m ∧
        iL y - y₀ ∈ (p : S.R) • (⊤ : Submodule S.R G.Lie)

end Group

def ExistsSt : Prop :=
  ∀ (p : ℕ) [Fact p.Prime] (D : PrismData p) (S : CycPerfd p) (G : PDivGroup p S.R) (c : ConstTate (eps S) G)
    (A : Type) [CommRing A] [IsDomain A] [CharZero A] [Algebra A S.R]
    (ec : AdicCompletion (Ideal.span {(p : A)}) A ≃+* S.R), (∀ a, ec (algebraMap A _ a) = algebraMap A S.R a) →
    ∀ (h o : ℕ) (e : G.height = h) (π : A) (γ : ℕ → A), π ∣ (p : A) → (∀ n ≤ o, γ n ∣ (p : A)) →
      algebraMap A S.R π = zeta S.ε 1 - 1 → (∀ n ≤ o, algebraMap A S.R (γ n) = fontaineTheta S.R p (xiN S (n + 1))) →
      ∀ (Lie Om : Type) [AddCommGroup Lie] [Module A Lie] [AddCommGroup Om] [Module A Om] [Module.Finite A Lie]
        [Module.Projective A Lie] [Module.Finite A Om] [Module.Projective A Om]
        (eL : S.R ⊗[A] Lie ≃ₗ[S.R] G.Lie) (eO : S.R ⊗[A] Om ≃ₗ[S.R] G.dual.omega),
        ∃ C : RChain p A h o π γ Lie Om, IsOf D c e (fun y => eL (1 ⊗ₜ y)) (fun w => eO (1 ⊗ₜ w)) C

def MapSt : Prop :=
  ∀ (p : ℕ) [Fact p.Prime] (D : PrismData p) (S S' : CycPerfd p) [Algebra S.R S'.R] (G : PDivGroup p S.R)
    (G' : PDivGroup p S'.R) (c : ConstTate (eps S) G) (c' : ConstTate (eps S') G') (A A' : Type) [CommRing A] [CommRing A']
    [Algebra A S.R] [Algebra A' S'.R] (φ : A →+* A') (h o : ℕ) (e : G.height = h) (e' : G'.height = h) (π : A) (π' : A')
    (γ : ℕ → A) (γ' : ℕ → A') (Lie Om Lie' Om' : Type) [AddCommGroup Lie] [Module A Lie] [AddCommGroup Om] [Module A Om]
    [AddCommGroup Lie'] [Module A' Lie'] [AddCommGroup Om'] [Module A' Om'] (iL : Lie → G.Lie) (iO : Om → G.dual.omega)
    (iL' : Lie' → G'.Lie) (iO' : Om' → G'.dual.omega) (C : RChain p A h o π γ Lie Om) (C' : RChain p A' h o π' γ' Lie' Om')
    (f : G.baseChange S'.R ⟶ G') (M : Matrix (Fin h) (Fin h) ℤ) (l : Lie → Lie') (m : Om → Om'),
    IsOf D c e iL iO C → IsOf D c' e' iL' iO' C' →
    (∀ a, algebraMap S.R S'.R (algebraMap A S.R a) = algebraMap A' S'.R (φ a)) →
    (∀ n, zeta S'.ε n = algebraMap S.R S'.R (zeta S.ε n)) →
    (∀ j : Fin h, tateMap _ _ S'.R (dualHom _ G' f) (c'.t' (Fin.cast e'.symm j)) =
      ∑ i : Fin h, M j i • bcChar S'.R (c.t' (Fin.cast e.symm i))) →
    (∀ (y : Lie) (j : Fin h), c'.alDual (iL' (l y)) (Fin.cast e'.symm j) =
      mv (algebraMap S.R S'.R) M (fun i => c.alDual (iL y) (Fin.cast e.symm i)) j) →
    (∀ (w : Om) (x : Fin G.height → S.R), (zeta S.ε 1 - 1) • iO w = c.al x → (zeta S'.ε 1 - 1) • iO' (m w) =
      c'.al fun j => mv (algebraMap S.R S'.R) M (fun i => x (Fin.cast e.symm i)) (Fin.cast e' j)) →
    C.Map C' φ M l m ∧ (IsIso f → M = 1 → φ π = π' → ModIso S.R π → ModIso S'.R π' →
      ∀ n, C'.L n = Submodule.span A' (piMap φ (Fin h) '' (C.L n : Set (Fin h → A))))

end GlobalTheory.RingChain

end
