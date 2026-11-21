import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsBaseEqChain
import Development.AbelianVarietyTheory.Definitions.Divisors.FaithfulSMulAlgClosure
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.PrismaticDieudonnePerfd
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsFlagFrame

set_option autoImplicit false
set_option synthInstance.maxHeartbeats 400000

noncomputable section

open CategoryTheory Limits AlgebraicGeometry IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.DV Formalism.L2.Pj Formalism.L2.Geo
open GlobalTheory.QCoh GlobalTheory.CechPic GlobalTheory.Vert GlobalTheory.LocM GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.Mean4O GlobalTheory.MixedLocalChains GlobalTheory.ChainPts
open GlobalTheory.LineNorm (IsTanBasis)
open GlobalTheory.Twist (resM)
open Formalism.MainNotions.DIV.Cons (intO SCF)

namespace GlobalTheory.OmegaHT

def crd {X : Scheme.{0}} {F : X.Modules} {r : ℕ} {V V' : X.Opens} {s : Fin r → Γ(F, V')} (hs : GlobalTheory.VB.IsFrame s)
    (σ : Γ(F, V)) (i : Fin r) : Γ(X, V ⊓ V') :=
  (hs.basis inf_le_right).repr (resM F inf_le_left σ) i

theorem coef_true {X : Scheme.{0}} {F : X.Modules} {r : ℕ} {V V' : X.Opens} {e : Fin r → Γ(F, V)} {s : Fin r → Γ(F, V')}
    (he : GlobalTheory.VB.IsFrame e) (hs : GlobalTheory.VB.IsFrame s) (l i : Fin r) : coef true he hs l i = crd hs (e l) i := rfl

section Model

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}
  {Xo : ∀ l : Level H, Moduli Dw l} {p : ℕ} {W : ValuationSubring ℂ} {Y : LocalSystem Xo p W} {i₀ : Idx H p}

def ToOpen (Z : LocM.Mdl Y i₀) {X : Scheme.{0}} (h : X ⟶ Z.X) : Prop :=
  ∀ η : X, (∀ y : X, y ⤳ η → y = η) → h η ∈ Z.opn

end Model

end GlobalTheory.OmegaHT
