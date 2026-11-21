import Mathlib
import Development.AbelianVarietyTheory.Definitions.Divisors.SiegelWeilAnisotropicHermitian
import Development.AbelianVarietyTheory.Definitions.Divisors.CTSmallCone
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaActionExists
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OneMemKAt
import Development.AbelianVarietyTheory.Definitions.Divisors.IsCompactIsOpenUnitsAt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatAtVAtStable
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EventuallyTwoNotMem
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlaceSplitOrInert
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PsiUnramifiedAwayDifferent
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorLatticeAtFinitePlaceEqIntegralSpanGenerato
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharacterUnramifiedAlmostAllPlaces
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilOperatorLatticeStabiliserRightPreservesVacuu
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ComplementaryAdelicSchwartzOfNonzeroLocal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNonzeroComplementaryAdelicSchwartzFunction
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeisenbergEigenLatticePointAtPlaceLocalIdentity
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeisenbergEigenProportionalLocalField
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
import Development.AbelianVarietyTheory.Definitions.Divisors.DiscreteSeriesHermitianUnique
import Formalism.SharpRestriction.Divisibility.SchurIrreducible
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FromBlocksMem
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsComplementaryAdelicSchwartzRestFunction
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StarMemAdelicSchwartzSpaceNumberField
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDiagOneNegOneConjAntidiagonalStabilizerMem
import Development.AbelianVarietyTheory.Definitions.Divisors.AdelicAdmissibleSmul
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProductFunctionOnSumCoordsMemAdelicSchwartzSpace
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTranslationInvariantDoubledFormConjProductStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubledSiegelParabolicDiagonalActionIntegralStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DoubledWeilInertPlaceVacuumEigenfunction
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeisenbergLatticeSelfDualEveryFinitePlace
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalThetaIntegralAtInertPlace
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ComparisonCharacterDetEqOneInertPlace
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IdeleCharacterEqOneIntegralUnitsUnramifiedAdelic
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsIsLatticeFrameIsMajorantFrame
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsIsSplitChartOne
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.VacuumSplitPlaceIndicatorLift
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceStabilizerTwoFactorDecomposition
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSkewCayleyInertPlaceStabilizer
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryToDoubledFirstFactorBigCellInertPlace
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralUnipotentRadicalConjToSquareInertPlaceStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DiagonalFixingDoublingMatrix
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsAntiInvariantSignAdeleSplitPlaceStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DoubledFirstFactorMemDoubledLatticeStabilizerStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DiagonalFixingDoublingMatrixMemIntegralSiegelParStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.NablaUnipotentMemIntegralDoubledUnipotentStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DiagonalFixingDoublingMulFirstFactorLagrangianAlStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.SplitDoublingTMatrixMulInverseEqOneStatement
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnipotentConjugateToSquareStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfComponentTensorAdelicFunctionEq
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFactorPureTensorComponentAtPlace
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecondConfigurationTripleCompatible
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseAdeleExtInfiniteFinite
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteUnitaryDenseClosureLocal

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK

noncomputable section
namespace GlobalTheory.FinFactor

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E} {d : ℕ}
  {W : Spc F E d}

def Loc (v : Pl F) (A B : Matrix (Fin d) (Fin d) (AE F E)) : Prop := ∀ u : AF F, At (evFin F v) u → u • A = u • B

theorem Loc.mul {v : Pl F} {A A' B B' : Matrix (Fin d) (Fin d) (AE F E)} (hA : Loc v A A') (hB : Loc v B B') :
    Loc v (A * B) (A' * B') := by
  intro u hu
  rw [← Matrix.smul_mul, hA u hu, Matrix.smul_mul, ← Matrix.mul_smul, hB u hu, Matrix.mul_smul]

theorem Loc.trans {v : Pl F} {A B C : Matrix (Fin d) (Fin d) (AE F E)} (h1 : Loc v A B) (h2 : Loc v B C) : Loc v A C :=
  fun u hu => (h1 u hu).trans (h2 u hu)

theorem Loc.symm {v : Pl F} {A B : Matrix (Fin d) (Fin d) (AE F E)} (h1 : Loc v A B) : Loc v B A :=
  fun u hu => (h1 u hu).symm

theorem Loc.refl (v : Pl F) (A : Matrix (Fin d) (Fin d) (AE F E)) : Loc v A A := fun _ _ => rfl

theorem Loc.inv {v : Pl F} {g g' : UA σ W.J} (h : Loc v (mat g) (mat g')) : Loc v (mat g⁻¹) (mat g'⁻¹) := by
  have e1 : mat g⁻¹ = mat g⁻¹ * mat g' * mat g'⁻¹ := by
    rw [Matrix.mul_assoc, ← GlobalTheory.StabHaar.mat_mul g' g'⁻¹, mul_inv_cancel, GlobalTheory.StabHaar.mat_one, Matrix.mul_one]
  have e2 : mat g'⁻¹ = mat g⁻¹ * mat g * mat g'⁻¹ := by
    rw [← GlobalTheory.StabHaar.mat_mul g⁻¹ g, inv_mul_cancel, GlobalTheory.StabHaar.mat_one, Matrix.one_mul]
  have h' : Loc v (mat g⁻¹ * mat g' * mat g'⁻¹) (mat g⁻¹ * mat g * mat g'⁻¹) :=
    ((Loc.refl v (mat g⁻¹)).mul h.symm).mul (Loc.refl v _)
  intro u hu
  rw [e1, h' u hu, ← e2]

end GlobalTheory.FinFactor

