import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingRChain
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsBaseEqChain
import Development.AbelianVarietyTheory.Definitions.Divisors.FaithfulSMulAlgClosure
import Development.AbelianVarietyTheory.Definitions.Divisors.ToKnownTheoremsOf
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.PrismaticDieudonnePerfd
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TopLeOfClosedPoint

set_option autoImplicit false
set_option synthInstance.maxHeartbeats 400000

noncomputable section

open CategoryTheory Limits AlgebraicGeometry IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.DV Formalism.L2.Pj Formalism.L2.Geo
open GlobalTheory.QCoh GlobalTheory.CechPic GlobalTheory.Vert GlobalTheory.LocM GlobalTheory.ShFam GlobalTheory.ShFam.Pad GlobalTheory.Mean4O GlobalTheory.MixedLocalChains
open GlobalTheory.Twist (resM)
open Formalism.MainNotions.DIV.Cons (intO)
open GlobalTheory.GroupBplus (AffOp)
open GlobalTheory.RingChain (RChain)
open GlobalTheory.ChainPts.PullHT (pullA)
open scoped TensorProduct

namespace GlobalTheory.ChainPts

section Sys

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (p : ℕ) {B : Vert.Model O} {Λ : Type} [CommRing Λ]

def cstBp (U : AffOp B.X) (a : Γ(B.X, ⊤)) : U.Bp := algebraMap Γ(B.X, U.1) U.Bp (resG B.X le_top a)

abbrev SecBp (F : B.X.Modules) (U : AffOp B.X) : Type := U.Bp ⊗[Γ(B.X, U.1)] Γ(F, U.1)

abbrev ChainsBp (h o : ℕ) (Lie Om : AM B Λ) (π : Γ(B.X, ⊤)) (γ : ℕ → Γ(B.X, ⊤)) : Type :=
  ∀ U : AffOp B.X, RChain p U.Bp h o (cstBp U π) (fun n => cstBp U (γ n)) (SecBp Lie.V U) (SecBp Om.V U)

variable {p} {h o : ℕ} {Lie Om : AM B Λ} {π : Γ(B.X, ⊤)} {γ : ℕ → Γ(B.X, ⊤)}

end Sys

end GlobalTheory.ChainPts

end
