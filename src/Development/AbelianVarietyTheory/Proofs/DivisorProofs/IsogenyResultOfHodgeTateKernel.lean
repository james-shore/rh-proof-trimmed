import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsWeilChar
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ToOverSurjective
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsEquivOfIsGrpPullback
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsEquivStdSymp
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ObjIsAbelianSchemeDimRigidifiedSym
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TateFreeOfCard
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.WeilIsGrpPullbackIff
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FlagComponentFramedPointFrame
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.DimSplitPf

set_option autoImplicit false

noncomputable section

open AlgebraicGeometry CategoryTheory Limits NumberField IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.BasicNotions Formalism.L2.Pj
open GlobalTheory GlobalTheory.ShFam.Pad GlobalTheory.TrueGeo GlobalTheory.Cartier GlobalTheory.ProjVar GlobalTheory.Mean4O GlobalTheory.LineNorm GlobalTheory.CoverNorm GlobalTheory.HtGen GlobalTheory.TrivFlag GlobalTheory.WholeFlag
open Formalism.MainNotions.DIV.Cons (intO)
open MonObj
open scoped TensorProduct NNReal
open GlobalTheory.HTLat GlobalTheory.ChTor

namespace GlobalTheory.HalfGeo.Iso

attribute [local instance] Over.cartesianMonoidalCategory

section Push

variable {C : Type} [Field C] {A : Over (Sp C)} [GrpObj A] {S₀ : Scheme.{0}} {G : Over S₀} [GrpObj G]
  {f : Sp C ⟶ S₀} {ψ : A.left ⟶ G.left}

omit [GrpObj A] [GrpObj G] in

theorem exists_lift (hpb : IsPullback ψ A.hom G.hom f) (s : Over.mk f ⟶ G) : ∃ a : Pts A, a.left ≫ ψ = s.left :=
  ⟨Over.homMk (hpb.lift s.left (𝟙 _) ((Over.w s).trans (Category.id_comp f).symm)) (hpb.lift_snd _ _ _),
    hpb.lift_fst _ _ _⟩

end Push

end GlobalTheory.HalfGeo.Iso
