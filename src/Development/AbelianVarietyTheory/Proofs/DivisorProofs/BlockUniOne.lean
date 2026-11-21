import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.IsHtFunGenericIff
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RegFlagged
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSplitting
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.EpsZeroCompOfIsTanAtG

set_option autoImplicit false

noncomputable section

open NumberField CategoryTheory AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Formalism.BasicNotions Formalism.MainNotions Formalism.DegreeFormula Formalism.L2.Pj GlobalTheory GlobalTheory.ArInt GlobalTheory.VB GlobalTheory.CovTest GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.Toroidal GlobalTheory.ArLieBase
open GlobalTheory.TwoLat GlobalTheory.VdmRec GlobalTheory.TrueGeo
open GlobalTheory.LieVB (omega)
open GlobalTheory.LocM (tanEv)
open Formalism.MainNotions.DIV.Cons (intO)
open scoped Classical

namespace GlobalTheory.LieFilt

section Sheaves

variable {X : Scheme.{0}} {ι : Type} [Fintype ι] {L : X.Modules} {E E' : ι → X.Modules} {r : ι → ℕ}

def LocAdapted (r : ι → ℕ) (o : ι → ℕ) (T : ∀ a, E a ⟶ L) (u : ∀ a, E a ⟶ E' a) (V : X.Opens) : Prop :=
  ∃ (f : ∀ a, Fin (r a) → Γ(E a, V)) (_ : ∀ a, VB.IsFrame (f a)) (f' : ∀ a, Fin (r a) → Γ(E' a, V))
    (hf' : ∀ a, VB.IsFrame (f' a)) (c : (Σ a, Fin (r a)) → Γ(L, V)) (hc : VB.IsFrame c), ∀ a i,
    (∀ z : Σ a, Fin (r a), o a < o z.1 → (hc.basis le_rfl).repr ((T a).app V (f a i)) z = 0) ∧
      ∀ j, (hc.basis le_rfl).repr ((T a).app V (f a i)) ⟨a, j⟩ = ((hf' a).basis le_rfl).repr ((u a).app V (f a i)) j

end Sheaves

end GlobalTheory.LieFilt

end
