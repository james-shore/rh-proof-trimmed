import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SemiposAtOfPositive
import Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LinearIndependentFlagVec
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LetterConjugation
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IoOfLeOneIff
import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap

set_option autoImplicit false

noncomputable section

open AlgebraicGeometry CategoryTheory NumberField IsDedekindDomain
open Formalism.BasicNotions Formalism.MainNotions ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.PullbackSections ReciprocityTheory.GeometryOfNumbersTheory Formalism.L2.Pj
open GlobalTheory.TrueGeo GlobalTheory.ProjVar GlobalTheory.CxPts GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.Mean4 GlobalTheory.Mean4O GlobalTheory.Toroidal GlobalTheory.LocM.Frm
open GlobalTheory.GradedNorm GlobalTheory.LieHt
open Formalism.MainNotions.DIV.Cons (intO)

namespace GlobalTheory.LieSmooth

section Emb

variable {F : Type} [Field F] [NumberField F] {K : Type} [Field K] [NumberField K]

def EmbOver (φ : F →+* K) : Type :=
  {θ : K →+* AlgebraicClosure F // θ.comp φ = algebraMap F (AlgebraicClosure F)}

instance (φ : F →+* K) : Fintype (EmbOver φ) := by
  classical exact Subtype.fintype _

variable {Y : Var F} {φ : F →+* K} (p : Sp K ⟶ Y.X) (hp : p ≫ Y.str = spMap φ)

end Emb

end GlobalTheory.LieSmooth

end
