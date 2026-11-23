import Mathlib
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CubeVal
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.UnifUniqSt
import Development.AbelianVarietyTheory.Definitions.Uniformization.IsCPPullback
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.FinrankFamOfExpBij
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.NonemptyLinearEquivOfRel
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllSixAbelianSchemeLawsHold
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsCPMapCompCancel
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.NonemptyMumfordTorusQuotientTower
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverMorphismRestrictOfRelAmple
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.Theta1
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ModularJExpansionAndPolynomialAndIsIntegral
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsVariableChangeEqLatticeCurve
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.FiniteOfIsClosedOfFiniteInterClosedPoints
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.FiniteOfIsClosedTorusZariskiOfPowEqOne
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsIsoNormalizationPullbackOfToIntegralClosure
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
import Development.AbelianVarietyTheory.Definitions.ArchimedeanThetaValues.IsCoprimeTwoSubRtTwoAddRt
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsFormalTorusPointsSemiAbelianModel
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ExistsUniqueIsPointOfDualNumber
import Development.AbelianVarietyTheory.Definitions.Uniformization.SmulOneSecEqZeroIff
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ExistsPowEqOfBaseChange
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsIsoIffBijectiveOverAlgClosed
import Development.AbelianVarietyTheory.Definitions.Uniformization.FinrankComplexReal
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsValuationSubringDominatingSubring
import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.OpensRangeChartYSupOpensRangeChartZ
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.OverHomEqIffForallIsAlgClosedAlgebra
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.TopLePtHomPreimageSmoothOpenIff
import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.MulLeftCompOfPullbackPointEquivMul
import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.ExistsUniqueEqConstMulOriginSec
import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.ExistsLiftAddOfIsReducedEq
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.CorrOfGenericOfIsSeparated
import Development.AbelianVarietyTheory.Definitions.Degenerations.IsNormalSchemeSp

open CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.TateUnif

theorem rank_add_dim {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} (hR : AdmBase R I) {D : DegData R I}
    {A : PolAV (Spec (CommRingCat.of (FractionRing R)))} {G : Over (Spec (CommRingCat.of R))} [GrpObj G]
    [IsCommMonObj G] (hG : IsSemiAbelian G) (U : Unif I D A G) :
    Module.finrank ℤ D.toPre.X + D.toPre.P.g = A.g := by
  obtain ⟨hL, hL₂, -⟩ := GlobalTheory.allSixLaws
  have := hG.geomConnected
  have h₁ := GlobalTheory.finrank_fam_of_expBij hL.secBaseChange R I hR D A G U.toUnifPre 2 one_le_two
    (U.expand 2 one_le_two)
  have h₂ := (GlobalTheory.FamDimension.main hL.globalFns hL.cube hL.square hL₂.secTwist R I D (FractionRing R) 2
    one_le_two).2
  exact Nat.pow_right_injective le_rfl (h₂.symm.trans h₁)

end GlobalTheory.TateUnif
