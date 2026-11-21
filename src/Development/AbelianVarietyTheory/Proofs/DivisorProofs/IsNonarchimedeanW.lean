import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MinorAtZero
import Development.AbelianVarietyTheory.Definitions.Divisors.NatCastNeZeroG

set_option autoImplicit false

noncomputable section

open CategoryTheory AlgebraicGeometry NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Formalism.BasicNotions GlobalTheory GlobalTheory.Cartier GlobalTheory.CechPic GlobalTheory.ProjVar GlobalTheory.TrueGeo GlobalTheory.Mean4O GlobalTheory.CoverNorm GlobalTheory.ShFam.Pad GlobalTheory.TrivFlag
open GlobalTheory.WholeFlag

namespace GlobalTheory.ConstLat

variable {F : Type} [Field F] [NumberField F] {Y : Var F}

def AtTest (V : Cover Y) (W : Y.X.Opens) (p : ℕ)
    (Q : ∀ (v : HeightOneSpectrum (𝓞 F)) (e : Ext v), AlgPt Y → (Sp (AlgebraicClosure F) ⟶ V.G) → (Sp e.O ⟶ V.X) → Prop) :
    Prop :=
  ∀ (v : HeightOneSpectrum (𝓞 F)), resP v = p → ∀ (e : Ext v) (y : AlgPt Y), below y.1 ∈ W →
    ∀ (z : Sp (AlgebraicClosure F) ⟶ V.G) (yt : Sp e.O ⟶ V.X), z ≫ V.π = y.1 → spMap e.O.subtype ≫ yt = z ≫ V.j →
      Q v e y z yt

variable {C : CxSt F} {g : ℕ}

def LineBase (V : Cover Y) (d : Y.X → Fin g → Y.Fnˣ) (A : Fin g → Adl C Y) (p : ℕ) : Prop :=
  (∀ i y, UnitAt y (genAt (A i).D y * d y i)) ∧
    ∃ (L : Fin g → LB V.X) (m : ℕ), 0 < m ∧ ∀ i, (L i).IsLB ∧
      NormsAt V (L i) p ⊤ (fun y => genAt (A i).D y ^ m) fun v e y => m * (A i).lg v e y

def ChartReg (V : Cover Y) (U : V.X.Opens) (H : Matrix (Fin (g + g)) (Fin g) V.G.functionField)
    (T : Y.X → Matrix (Fin g) (Fin g) Y.Fn) : Prop :=
  ∀ z : V.G, V.j z ∈ U → ∀ k l, RegAt z ((H * ((T (V.π z)).map V.φ)⁻¹) k l)

end GlobalTheory.ConstLat

end
