import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SplitKOfIsAlgClosed
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MinorAtZero
import Development.AbelianVarietyTheory.Definitions.Divisors.HodgeTateLatticePointFinrankTateModule

set_option autoImplicit false

noncomputable section

open AlgebraicGeometry CategoryTheory Limits NumberField IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.L2.Pj
open GlobalTheory GlobalTheory.ShFam.Pad GlobalTheory.TrueGeo GlobalTheory.Cartier GlobalTheory.ProjVar GlobalTheory.Mean4O GlobalTheory.LineNorm GlobalTheory.CoverNorm GlobalTheory.HtGen GlobalTheory.TrivFlag GlobalTheory.WholeFlag
open Formalism.MainNotions.DIV.Cons (intO)
open MonObj
open scoped TensorProduct NNReal

namespace GlobalTheory.HalfGeo

attribute [local instance] Over.cartesianMonoidalCategory

section Defs

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {X X₀ : Scheme.{0}}
  {t : SAB H X} (t₀ : SAB H X₀) (φ : t₀.G.left ⟶ t.G.left)

def Gens {O : Type} [CommRing O] {x : Sp O ⟶ X} {q N : ℕ} (c : Fin N → TorsChar t x q) : Prop :=
  ∀ c' : TorsChar t x q, ∃ n : Fin N → ℕ, ∀ (B : Type) [CommRing B] [Algebra O B] [Module.Finite O B]
    (w : Over.mk (spMap (algebraMap O B) ≫ x) ⟶ t.G), w ^ q = 1 → c'.χ B w = ∏ m, (c m).χ B w ^ n m

def Isotropic {p : ℕ} [Fact p.Prime] {x : Sp ↥(intO ℂ_[p]) ⟶ X} {N : ℕ} (c : Fin N → TorsChar t x (p ^ 2))
    (J : Matrix (Fin N) (Fin N) ℤ) : Prop :=
  ∀ (g : ℕ) (e : Fin g → (Sp (DualNumber ↥(intO ℂ_[p])) ⟶ t.G.left)) (h : Fin N → Fin g → ↥(intO ℂ_[p])),
    IsTanBasis t x e → (∀ m, DlogIs t p 2 (c m) e (h m)) → ∀ a a' : Fin g → ℂ_[p],
    (∀ i, ‖(p : ℂ_[p]) * a i‖ ≤ 1) → (∀ i, ‖(p : ℂ_[p]) * a' i‖ ≤ 1) →
    (∀ m, ‖∑ i, (h m i : ℂ_[p]) * a i‖ ≤ 1) → (∀ m, ‖∑ i, (h m i : ℂ_[p]) * a' i‖ ≤ 1) →
    ‖∑ m, ∑ m', (J m m' : ℂ_[p]) * ((∑ i, (h m i : ℂ_[p]) * a i) * ∑ i, (h m' i : ℂ_[p]) * a' i)‖ < 1

def IsGram {k : Type} [CommRing k] {x : Sp k ⟶ X₀} (q : ℕ) {N : ℕ} (s : Fin N → (Over.mk x ⟶ t₀.G)) (ζ : kˣ)
    (B : Matrix (Fin N) (Fin N) ℤ) : Prop :=
  (∀ m, s m ^ q = 1) ∧ ∀ m m', Out.WeilIs t₀.G t₀.PP.L (q : ℤ) (s m) (s m') (unitOn (ζ ^ B m m'))

def IsWeilHom {K : Type} [Field K] {ξ₀ : Sp K ⟶ X₀} {ξ : Sp K ⟶ X} {q : ℕ} (s : Over.mk ξ₀ ⟶ t₀.G)
    (χ : TorsK t ξ q →* Kˣ) : Prop :=
  ∀ (k : TorsK t ξ q) (a : Over.mk ξ₀ ⟶ t₀.G), a.left ≫ φ = k.1.left →
    Out.WeilIs t₀.G t₀.PP.L (q : ℤ) a s (unitOn (χ k))

def IsWeilChar {p : ℕ} [Fact p.Prime] {z : Sp ↥(intO ℂ_[p]) ⟶ X} {yy : Sp ℂ_[p] ⟶ X₀} {q : ℕ}
    (s : Over.mk yy ⟶ t₀.G) (c : TorsChar t z q) : Prop :=
  ∀ (w : Over.mk (spMap (algebraMap ↥(intO ℂ_[p]) ↥(intO ℂ_[p])) ≫ z) ⟶ t.G) (a : Over.mk yy ⟶ t₀.G), w ^ q = 1 →
    a.left ≫ φ = spMap (intO ℂ_[p]).subtype ≫ w.left →
    Out.WeilIs t₀.G t₀.PP.L (q : ℤ) a s (unitOn (Units.map (intO ℂ_[p]).subtype.toMonoidHom (c.χ _ w)))

def HasPoint {p : ℕ} [Fact p.Prime] (z : Sp ↥(intO ℂ_[p]) ⟶ X) (yy : Sp ℂ_[p] ⟶ X₀) : Prop :=
  ∃ (v : Valuation ℂ_[p] ℝ≥0) (Λ : Type) (_ : CommRing Λ) (_ : StarRing Λ) (P : GlobalTheory.HTLat.Point p v ↥(intO ℂ_[p]) Λ)
    (π : P.G.left ⟶ t.G.left) (ψ : P.A.A.left ⟶ t₀.G.left), IsGrpPullback P.G t.G z π ∧ IsGrpPullback P.A.A t₀.G yy ψ ∧
    ψ ≫ φ = P.gen ≫ π ∧ LBIso P.A.L (t₀.PP.L.pull ψ)

variable {F : Type} [Field F] [NumberField F] {Y : Var F}

def ChartVal (V : Cover Y) (ρ' : V.X ⟶ X) {m N : ℕ}
    (f : ∀ y : Y.X, Fin m → (Sp (DualNumber (Y.X.presheaf.stalk y)) ⟶ t.G.left)) (T : Y.X → Matrix (Fin m) (Fin m) Y.Fn)
    {U : V.X.Opens} (hU : IsAffineOpen U) {g : ℕ} (e : Fin g → (Sp (DualNumber Γ(V.X, U)) ⟶ t.G.left))
    (h : Fin N → Fin g → Γ(V.X, U)) (M : Matrix (Fin N) (Fin m) V.G.functionField) : Prop :=
  ∀ z : V.G, V.j z ∈ U → ∃ (α : Γ(V.X, U) →+* V.G.presheaf.stalk z) (a : Fin m → Fin g → V.G.presheaf.stalk z),
    spMap α ≫ hU.fromSpec = V.G.fromSpecStalk z ≫ V.j ∧
    (∀ l, IsCombAtG t (spMap α ≫ hU.fromSpec ≫ ρ') (fun i => spMap (dualMap α) ≫ e i) (a l)
      (spMap (dualMap (V.π.stalkMap z).hom) ≫ f (V.π z) l)) ∧
    ∀ r l, (M * ((T (V.π z)).map V.φ)⁻¹) r l =
      algebraMap (V.G.presheaf.stalk z) V.G.functionField (∑ i, α (h r i) * a l i)

end Defs

def GramSt : Prop :=
  ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E) (Dw : Datum H) (l : Level H)
    (Xo : Moduli Dw l) (c : Coeff l) (O : Type) [CommRing O] (β : O →+* c.F) (Z : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Model Xo c β)
    (K : Type) [Field K] [CharZero K] (ξ₀ : Sp K ⟶ Xo.XF c) (q : ℕ), q ≠ 0 → (∃ ζ : K, IsPrimitiveRoot ζ q) →
    SplitK Z.t (ξ₀ ≫ Z.j) q → ∀ N : ℕ, N = Module.finrank ℤ Dw.La →
    ∃ (s : Fin N → (Over.mk ξ₀ ⟶ Z.oF.t.G)) (ζ : Kˣ) (B : Matrix (Fin N) (Fin N) ℤ), IsPrimitiveRoot ζ q ∧ IsUnit B.det ∧
      IsGram Z.oF.t q s ζ B ∧ ∀ a : Over.mk ξ₀ ⟶ Z.oF.t.G, a ^ q = 1 → ∃ n : Fin N → ℕ, a = ∏ m, s m ^ n m

def HomSt : Prop :=
  ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E) (Dw : Datum H) (l : Level H)
    (Xo : Moduli Dw l) (c : Coeff l) (O : Type) [CommRing O] (β : O →+* c.F) (Z : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Model Xo c β)
    (K : Type) [Field K] (ξ₀ : Sp K ⟶ Xo.XF c) (ξ : Sp K ⟶ Z.X), ξ₀ ≫ Z.j = ξ → ∀ q : ℕ, q ≠ 0 →
    ∀ (N : ℕ) (s : Fin N → (Over.mk ξ₀ ⟶ Z.oF.t.G)) (ζ : Kˣ) (B : Matrix (Fin N) (Fin N) ℤ), IsPrimitiveRoot ζ q →
    IsUnit B.det → IsGram Z.oF.t q s ζ B → (∀ a : Over.mk ξ₀ ⟶ Z.oF.t.G, a ^ q = 1 → ∃ n : Fin N → ℕ, a = ∏ m, s m ^ n m) →
    ∃ χ : Fin N → (TorsK Z.t ξ q →* Kˣ), (∀ m, IsWeilHom Z.oF.t Z.m.φ (s m) (χ m)) ∧
      ∀ χ' : TorsK Z.t ξ q →* Kˣ, ∃ n : Fin N → ℕ, χ' = ∏ m, χ m ^ n m

def ExtSt : Prop :=
  ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E) (Dw : Datum H) (l : Level H)
    (Xo : Moduli Dw l) (c : Coeff l) (O : Type) [CommRing O] (β : O →+* c.F) (Z : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Model Xo c β)
    (R K : Type) [CommRing R] [IsDomain R] [IsIntegrallyClosed R] [Field K] [Algebra R K] [IsFractionRing R K]
    (x₀ : Sp R ⟶ Xo.XF c) (ξ₀ : Sp K ⟶ Xo.XF c), spMap (algebraMap R K) ≫ x₀ = ξ₀ → ∀ q : ℕ, q ≠ 0 →
    ∀ s : Over.mk ξ₀ ⟶ Z.oF.t.G, s ^ q = 1 →
    ∃ s' : Over.mk x₀ ⟶ Z.oF.t.G, s' ^ q = 1 ∧ spMap (algebraMap R K) ≫ s'.left = s.left

def SpecSt : Prop :=
  ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E) (Dw : Datum H) (l : Level H)
    (Xo : Moduli Dw l) (c : Coeff l) (O : Type) [CommRing O] (β : O →+* c.F) (Z : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Model Xo c β)
    (R K k : Type) [CommRing R] [CommRing K] [CommRing k] (u : R →+* K) (ψ : R →+* k), Function.Injective u →
    ∀ (x₀ : Sp R ⟶ Xo.XF c) (ξ₀ : Sp K ⟶ Xo.XF c) (y₀ : Sp k ⟶ Xo.XF c) (q : ℕ), q ≠ 0 →
    ∀ (a b : Over.mk x₀ ⟶ Z.oF.t.G) (a₁ b₁ : Over.mk ξ₀ ⟶ Z.oF.t.G) (a₂ b₂ : Over.mk y₀ ⟶ Z.oF.t.G),
    a ^ q = 1 → b ^ q = 1 → a₁.left = spMap u ≫ a.left → b₁.left = spMap u ≫ b.left →
    a₂.left = spMap ψ ≫ a.left → b₂.left = spMap ψ ≫ b.left → ∀ r : Rˣ,
    Out.WeilIs Z.oF.t.G Z.oF.t.PP.L (q : ℤ) a₁ b₁ (unitOn (Units.map u.toMonoidHom r)) →
    Out.WeilIs Z.oF.t.G Z.oF.t.PP.L (q : ℤ) a₂ b₂ (unitOn (Units.map ψ.toMonoidHom r))

def CharSt : Prop :=
  ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E) (Dw : Datum H) (l : Level H)
    (Xo : Moduli Dw l) (c : Coeff l) (O : Type) [CommRing O] (β : O →+* c.F) (Z : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Model Xo c β) [IsLocallyNoetherian Z.X]
    (K : Type) [Field K] [CharZero K] (ξ₀ : Sp K ⟶ Xo.XF c) (ξ : Sp K ⟶ Z.X), ξ₀ ≫ Z.j = ξ → ∀ q : ℕ, q ≠ 0 →
    (∃ ζ : K, IsPrimitiveRoot ζ q) → SplitK Z.t ξ q →
    ∀ (R : Type) [CommRing R] [IsDomain R] [IsIntegrallyClosed R] [IsLocalRing R] [Algebra R K] [IsFractionRing R K]
    (x : Sp R ⟶ Z.X), spMap (algebraMap R K) ≫ x = ξ →
    ∀ (R' : Type) [CommRing R'] (r : R →+* R') (u : R' →+* K) (x₀ : Sp R' ⟶ Xo.XF c), Function.Injective u →
    u.comp r = algebraMap R K → x₀ ≫ Z.j = spMap r ≫ x → spMap u ≫ x₀ = ξ₀ →
    ∀ (p : ℕ) [Fact p.Prime] (ψ : R →+* ↥(intO ℂ_[p])) (ψ' : R' →+* ℂ_[p]) (z : Sp ↥(intO ℂ_[p]) ⟶ Z.X)
    (yy : Sp ℂ_[p] ⟶ Xo.XF c), IsLocalHom ψ → ψ'.comp r = (intO ℂ_[p]).subtype.comp ψ → spMap ψ ≫ x = z →
    spMap ψ' ≫ x₀ = yy → ∀ (s : Over.mk ξ₀ ⟶ Z.oF.t.G) (s' : Over.mk x₀ ⟶ Z.oF.t.G) (s'' : Over.mk yy ⟶ Z.oF.t.G),
    s' ^ q = 1 → s.left = spMap u ≫ s'.left → s''.left = spMap ψ' ≫ s'.left →
    ∀ (χ : TorsK Z.t ξ q →* Kˣ) (ch : TorsChar Z.t z q), IsWeilHom Z.oF.t Z.m.φ s χ →
    InducedBy χ x (algebraMap R K) ψ ch → IsWeilChar Z.oF.t Z.m.φ s'' ch

def GensSt : Prop :=
  ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E) (X : Scheme.{0}) [IsLocallyNoetherian X] (t : SAB H X) (K : Type) [Field K] [CharZero K]
    (ξ : Sp K ⟶ X) (q : ℕ), q ≠ 0 → (∃ ζ : K, IsPrimitiveRoot ζ q) → SplitK t ξ q →
    ∀ (R : Type) [CommRing R] [IsDomain R] [IsIntegrallyClosed R] [IsLocalRing R] [Algebra R K] [IsFractionRing R K]
    (x : Sp R ⟶ X), spMap (algebraMap R K) ≫ x = ξ →
    ∀ (p : ℕ) [Fact p.Prime] (ψ : R →+* ↥(intO ℂ_[p])) (z : Sp ↥(intO ℂ_[p]) ⟶ X), IsLocalHom ψ → spMap ψ ≫ x = z →
    ∀ (N : ℕ) (χ : Fin N → (TorsK t ξ q →* Kˣ)) (ch : Fin N → TorsChar t z q),
    (∀ χ' : TorsK t ξ q →* Kˣ, ∃ n : Fin N → ℕ, χ' = ∏ m, χ m ^ n m) →
    (∀ m, InducedBy (χ m) x (algebraMap R K) ψ (ch m)) → Gens ch

def LiftSt : Prop :=
  ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E) (Dw : Datum H) (l : Level H)
    (Xo : Moduli Dw l) (c : Coeff l) (Z : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Model Xo c (algebraMap (𝓞 c.F) c.F))
    (R k : Type) [CommRing R] [IsLocalRing R] [Field k] (ψ : R →+* k), IsLocalHom ψ → ∀ (x : Sp R ⟶ Z.X)
    (yy : Sp k ⟶ Xo.XF c), spMap ψ ≫ x = yy ≫ Z.j → ∃ x₀ : Sp R ⟶ Xo.XF c, x₀ ≫ Z.j = x

def IntSt : Prop :=
  ∀ (p : ℕ) [Fact p.Prime], ¬ IsUnit (p : ↥(intO ℂ_[p])) ∧ IsAdicComplete (Ideal.span {(p : ↥(intO ℂ_[p]))}) ↥(intO ℂ_[p]) ∧
    HenselianLocalRing ↥(intO ℂ_[p]) ∧ (Valued.v : Valuation ℂ_[p] ℝ≥0).Integers ↥(intO ℂ_[p]) ∧
    Nonempty (ℤ_[p] →+* ↥(intO ℂ_[p]))

def PointSt : Prop :=
  ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E) (Dw : Datum H) (l : Level H)
    (Xo : Moduli Dw l) (c : Coeff l) (Z : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Model Xo c (algebraMap (𝓞 c.F) c.F)), 1 ≤ Dw.p + Dw.q →
    ∀ (p : ℕ) [Fact p.Prime] (K : Type) [Field K] (k : K →+* ℂ_[p]) (z₀ : Sp K ⟶ Xo.XF c), (∀ a : K, IsAlgebraic ℤ a) →
    ∀ (z : Sp ↥(intO ℂ_[p]) ⟶ Z.X) (yy : Sp ℂ_[p] ⟶ Xo.XF c), spMap k ≫ z₀ = yy →
    spMap (intO ℂ_[p]).subtype ≫ z = yy ≫ Z.j → HasPoint Z.oF.t Z.m.φ z yy

def ChartSt : Prop :=
  ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E) (X : Scheme.{0}) (t : SAB H X)
    (F : Type) [Field F] [NumberField F] (Y : Var F) (V : Cover Y) (ρ' : V.X ⟶ X) (ρ : Y.X ⟶ X), V.j ≫ ρ' = V.π ≫ ρ →
    ∀ (m : ℕ) (u₀ : Fin m → (Sp (DualNumber Y.Fn) ⟶ t.G.left))
    (f : ∀ y : Y.X, Fin m → (Sp (DualNumber (Y.X.presheaf.stalk y)) ⟶ t.G.left)) (T : Y.X → Matrix (Fin m) (Fin m) Y.Fn),
    (∀ y l, IsTanAtG t (GlobalTheory.ShFam.stalkPt Y y ≫ ρ) (f y l)) → (∀ y, IsUnit (T y).det) →
    (∀ y i, IsCombAtG t (GlobalTheory.ShFam.genericPt Y ≫ ρ)
      (fun k => spMap (dualMap (algebraMap (Y.X.presheaf.stalk y) Y.X.functionField)) ≫ f y k) (fun k => T y k i) (u₀ i)) →
    ∀ (U : V.X.Opens) (hU : IsAffineOpen U) (g : ℕ) (e : Fin g → (Sp (DualNumber Γ(V.X, U)) ⟶ t.G.left)),
    IsTanBasis t (hU.fromSpec ≫ ρ') e → ∀ (N : ℕ) (h : Fin N → Fin g → Γ(V.X, U)),
    ∃ M : Matrix (Fin N) (Fin m) V.G.functionField, ChartVal V ρ' f T hU e h M

def BundleSt : Prop :=
  ∀ (F : Type) [Field F] [NumberField F] (Y : Var F) (n : ℕ) (Δ : Fin n → Y.Dv) (φ : Fin n → PtFn Y),
    (∃ M : GlobalTheory.TrueGeo.Model Y, ReciprocityTheory.ChartRestriction.G.Geo.Tor.IsNormalScheme M.X) → (∀ i, FromModel Y (Δ i) (eqn (Δ i)) (φ i)) →
    ∃ (V₀ : Cover Y) (m : ℕ), 0 < m ∧ ∀ (V : Cover Y) (a : V.X ⟶ V₀.X) (b : V.G ⟶ V₀.G), a ≫ V₀.p = V.p →
      V.j ≫ a = b ≫ V₀.j → b ≫ V₀.π = V.π → b (genericPoint V.G) = genericPoint V₀.G →
      ∃ L : Fin n → LB V.X, ∀ i, (L i).IsLB ∧
        ∀ p : ℕ, NormsAt V (L i) p ⊤ (fun y => genAt (Δ i) y ^ m) fun v e y => m * φ i v e y

end GlobalTheory.HalfGeo
