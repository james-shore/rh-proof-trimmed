import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AwayAgree
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsIsFlagBundleRankOne
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.RegularAlteration
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLieFrames
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TotalEqCurve
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdjacentPullPull

set_option autoImplicit false

noncomputable section

open NumberField MvPolynomial CategoryTheory AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.ArInt GlobalTheory.VB GlobalTheory.CovTest

namespace GlobalTheory.TwoLat

section General

variable {k : Type} [CommRing k] {X : Scheme.{0}} {p : X ⟶ Sp k} {E E' : X.Modules} {r : ℕ}

def Compat (u : E ⟶ E') (fl : Vert.Flag E r) (fl' : Vert.Flag E' r) : Prop :=
  ∀ i, ∃ t : fl.F i ⟶ fl'.F i, t ≫ fl'.ι i = fl.ι i ≫ u

theorem Compat.pull {u : E ⟶ E'} {fl : Vert.Flag E r} {fl' : Vert.Flag E' r} (h : Compat u fl fl') {Y : Scheme.{0}}
    (π : Y ⟶ X) : Compat ((Scheme.Modules.pullback π).map u) (fl.pull π) (fl'.pull π) := fun i => by
  obtain ⟨t, ht⟩ := h i
  exact ⟨(Scheme.Modules.pullback π).map t, ((Functor.map_comp _ _ _).symm.trans (congrArg _ ht)).trans
    (Functor.map_comp _ _ _)⟩

end General

open Formalism.BasicNotions Formalism.MainNotions Formalism.DegreeFormula GlobalTheory.FlagPoly GlobalTheory.Mean4O GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.TrueGeo Formalism.L2.Pj GlobalTheory.Toroidal
open GlobalTheory.ArLieBase

variable {D : D7} (O : Setup D)

end GlobalTheory.TwoLat

end
