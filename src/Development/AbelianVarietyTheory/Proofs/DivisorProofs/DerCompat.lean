import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect
import Development.AbelianVarietyTheory.Definitions.Divisors.RigidForFan
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TopPairDForm
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KodairaSpencerConditionRestrictBasicOpenOfAffine
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsTransl
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualMapCompDualMap
import Development.AbelianVarietyTheory.Definitions.Divisors.IsLatBasisHtLatIffSpanEq
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ToroidalCompactificationData
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.MSmoothOfWeightIffIsCInf
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.DualGramInterpGram
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.MemSupportBDIff
import Development.AbelianVarietyTheory.BlockTheory.ExistenceTori.AdelicNormWeight
import Development.AbelianVarietyTheory.Definitions.Divisors.NormSqColGrLineOfOrthogonal
import Development.AbelianVarietyTheory.Definitions.Divisors.TorusExt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCechOneCoboundaryOfRefinement
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.MemMaximalIdealBall
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsFlagFrame
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SplitTorsAlgClosedFractionField
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MapPairDetCovec
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsFrameCover
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TorsionCharEqOfEqOnTorsionStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TorsionCharacterCocycleDescentStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsDlogUniqueModuloPStatement
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsTangentPresentationPrime
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExtensionPropertyPi
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RankOneBaseWeightEqCmTheta
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PushInvertibleModelOfIso
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ScaledTwistingSheafSpec
import Formalism.SharpRestriction.Divisibility.LocalNonemptiness.SubsingletonRankIndicatorIff
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsFiniteQCHomModOfExact
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LinearIndependentFlagVec
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CoefSetNonemptyOfNonneg
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PullbackAndTensorModule
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RestrictionPoincareBundle
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CmHostUnitAddConjEqOne
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsGrpPullbackPtC
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsTangentEquiv
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FibLatPreSubSpanSubLe
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsExtendResidue
import Formalism.SharpRestriction.Divisibility.LocalNonemptiness.NonemptyBoundaryLocalIff
import Formalism.LocalRingCardinality.SpanPowerMembership.PlOver
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.PointGlobalSectionsNeBot
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ChiLenPicPushforwardOfIsClosedImmersion
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsClosedImmersionBaseChange
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.FinitePartLePreimageOfClosedFibreSubset
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DerivationDivisibleOfCocomm
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.AdmissibleStageOfPackage
import Formalism.LocalToGlobal.IndefiniteReal.FWExist
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LatAtOmPHtEval
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsTrans
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AffineOpenChartCompStructureEqSpMap
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UniMatBlockTriangular
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DiagMatLower
import Development.AbelianVarietyTheory.Definitions.Divisors.TorsionTowersOfDivisibleGroup
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsNnrealValuationOfAddValuation
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.HasChartsOfForallIsAffineOpen
import Development.AbelianVarietyTheory.BlockTheory.PoincareCuspForms.FormalGroupTorsionCharts
import Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.ZmodPrimeSqLocal
import ReciprocityTheory.DualLattices.IsFibreSq
import ReciprocityTheory.DualLattices.IsPairingValueAddRight
import ReciprocityTheory.DualLattices.NilSurjOfSqZero
import Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.UniversalDerivation
import ReciprocityTheory.DualLattices.SubMemSpan
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PtMapDualBCLeft

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.RigChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

set_option autoImplicit false
noncomputable section
namespace GlobalTheory.KSAgree

theorem dual_alg {S S' : Type} [CommRing S] [CommRing S'] (r : S →+* S') :
    (dualMap r).comp (algebraMap S (DualNumber S)) = (algebraMap S' (DualNumber S')).comp r := by
  ext a <;> simp [dualMap, TrivSqZeroExt.algebraMap_eq_inl] <;> rfl

theorem fst_dual {S S' : Type} [CommRing S] [CommRing S'] (r : S →+* S') :
    (TrivSqZeroExt.fstHom S' S' S').toRingHom.comp (dualMap r) = r.comp (TrivSqZeroExt.fstHom S S S).toRingHom := by
  ext a <;> (try simp [dualMap]) <;> rfl

section Gen
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {X : Scheme.{0}} (t : SAB H X)

theorem eps_over {S S' : Type} [CommRing S] [CommRing S'] (r : S →+* S') {x : Sp S ⟶ X} {x' : Sp S' ⟶ X}
    (hx : spMap r ≫ x = x') :
    spMap (dualMap r) ≫ spMap (algebraMap S (DualNumber S)) ≫ x = spMap (algebraMap S' (DualNumber S')) ≫ x' := by
  rw [← hx, ← Category.assoc, ← Category.assoc, GlobalTheory.LogKSLoc.spMap_comp', GlobalTheory.LogKSLoc.spMap_comp', dual_alg]

theorem tan_map {S S' : Type} [CommRing S] [CommRing S'] (r : S →+* S') {x : Sp S ⟶ X} {x' : Sp S' ⟶ X}
    (hx : spMap r ≫ x = x') {v : Sp (DualNumber S) ⟶ t.G.left} (hv : IsTanAtG t x v) :
    IsTanAtG t x' (spMap (dualMap r) ≫ v) := by
  refine ⟨?_, ?_⟩
  · rw [Category.assoc, hv.1, eps_over r hx]
  · have h : spMap (TrivSqZeroExt.fstHom S' S' S').toRingHom ≫ spMap (dualMap r) =
        spMap r ≫ spMap (TrivSqZeroExt.fstHom S S S).toRingHom := by
      rw [GlobalTheory.LogKSLoc.spMap_comp', GlobalTheory.LogKSLoc.spMap_comp', fst_dual]
    rw [← Category.assoc, h, Category.assoc, hv.2]
    let k : Over.mk x' ⟶ Over.mk x := Over.homMk (spMap r) hx
    exact congrArg CommaMorphism.left (comp_one k (M := t.G))

end Gen

theorem tan_res : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (X : Scheme.{0}) (t : SAB H X) (U W : X.affineOpens) (hW : W.1 ≤ U.1) (v : Sp (DualNumber Γ(X, U.1)) ⟶ t.G.left), IsTanAtG t (chart U) v → IsTanAtG t (chart W) (spMap (dualMap (X.presheaf.map (homOfLE hW).op).hom) ≫ v) :=
  fun _ _ _ _ _ _ t U W hW _ hv => tan_map t _ (GlobalTheory.LogKSLoc.spMap_res_chart U W hW) hv

end GlobalTheory.KSAgree
