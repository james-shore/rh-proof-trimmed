import Mathlib
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.EHHre
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ColDictLReTr
import Formalism.LocalToGlobal.IndefiniteReal.HeckeNonvanishing.Imports
import Formalism.GelfandTransference.EnergyIdentity
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.WeylLeDual
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.DualWeylDominanceOf
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LClosedeqLemmas
import Formalism.SubspaceCounting.Statement
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ComplexifiedDerivativeCommutator
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.TrPowSumFilterZero
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.CharId
import Formalism.RealPlaceAnalysis.QuotientSettingHolds
import Formalism.StatementU
import Formalism.ProductFormula.StatementOCCM
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Ipindep
import Formalism.HermitianLattices.HermitianLatticesProofs.ThetaBasic
import Formalism.LatticeTheta.ThetaShiftInversion
import Formalism.HermitianLattices.HermitianLatticesProofs.IndexBasic
import Formalism.HermitianLattices.HermitianLatticesProofs.DualOrthSum
import Formalism.HermitianLattices.HermitianLatticesProofs.MajLattice
import Formalism.HermitianLattices.HermitianLatticesProofs.MajDual
import Formalism.HermitianLattices.HermitianLatticesProofs.MajBasic
import Formalism.HermitianLattices.HermitianLatticesProofs.NeighbourConstruct
import Formalism.HermitianLattices.DiscrFinite
import Formalism.ThetaLiftIndependence.ThetaOrbitSums.DetSwap
import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.OrderOfSignGroupDvdTwo
import Formalism.DirichletDensity.DirichletDensityProofs.APLogDensity
import Formalism.FrobeniusOrbits.FrobeniusOrbitsProofs.ThickExists
import Formalism.HarderNarasimhan.HarderNarasimhanProofs.PiSumForallInsertOnly
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LDrowLemmas
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.NablaLTwist
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.HeckeActionLevelMemHolds
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.RationalPointsLeHolds
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.AutomorphicFormsDecompositionHolds
import Formalism.SatakeDualWeyl.StatementG
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Transport
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Levelvsplit
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.LocalAlgebraInertPrime
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Levelv
import Formalism.SatakeDualWeyl.NablaRepApply
import Formalism.SatakeDualWeyl.DualWeylRepApply
import Formalism.QuotientMetricDivisors.StatementACE
import Formalism.QuotientMetricDivisors.StatementJ
import Formalism.QuotientMetricDivisors.StatementE
import Formalism.QuotientMetricDivisors.StatementK
import Formalism.QuotientMetricDivisors.TheoremDivIneqRowsShift
import Formalism.SizeWindowBrackets.FrameTraceRatioFinEquiv
import Formalism.SizeWindowBrackets.SlopeHypothesesRounded
import Formalism.RankGapBounds.RankAndGapBounds
import Formalism.SizeWindowBrackets.WindowSettingSatisfiable
import Formalism.SharpRestriction.Divisibility.PlaceRankTwoOne
import Formalism.LocalToGlobal.UnitaryNorms.PowValCast
import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HilbertClassFieldA
import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA
import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.LogCondLeThree
import Formalism.FockGram.StatementFock
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsRanksRankValFrame
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.MPowFiveMulFMulLLe
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.BadCharacterBound
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.WeightRequirementOfValid
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsWeightsInWindows
import Formalism.QuotientMetricDivisors.ProdFormula
import Formalism.GL3MeanSquares.RankMulPowThreeHalvesLeFourthPower
import Formalism.LogVandermondeBounds.GaussOperatorProductFormula
import Formalism.GL3MeanSquares.HookFormulaTorsion.FourierCommutesHeckeScalar
import Formalism.SharpRestriction.CuspSpanNormBounds.CayleySignature
import Formalism.LocalToGlobal.HermitianColumns.StepLevelQ
import Formalism.LocalToGlobal.HermitianForms.TransportT
import Formalism.SharpRestriction.CuspSpanNormBounds.FrobeniusProjectedBounds
import Formalism.SharpRestriction.CuspSpanNormBounds.NonGenericAndKTwoTheorems
import Formalism.SharpRestriction.CuspSpanNormBounds.FrobeniusCoefficientMemLp.BigCellConjI
import Formalism.YangianSpanCharacter.StatementF
import Formalism.HermitianCurvature.Statement
import Formalism.HermitianCurvature.HermitianCurvatureProofs.FirstEmbeddingOne
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LocalisationTypedIndependentExponent
import Formalism.DoubleCosetMeasures.LowerUnipotentOrbits.DoubleCosetEqPreimage
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SecondVanishingOffRing
import Formalism.HermitianCurvature.HermitianCurvatureProofs.OutsideSystemsBound
import Formalism.HermitianCurvature.HermitianCurvatureProofs.AxiomsFromFamilies
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.ConcreteSettingExists

noncomputable section

namespace GlobalTheory.Mem.SRe

open scoped Classical
open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.PackageTie2
  Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.ColDict Formalism.L2.Forms Formalism.L2.SG.TermOp Formalism.L2.SG.Full

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} (Z : New D)

set_option smartUnfolding false in
set_option maxHeartbeats 4000000 in

def reY {X : HidaSetting D} (Y : Full X) : Full (reX Z X) where
  hK := (Y.hK)
  TR := (reTR Z Y.TR)
  psi_ne := (Y.psi_ne)
  what₂ := (Y.what₂)
  rowsOK := (Y.rowsOK)
  split := (Y.split)
  cs := (fun (u : @Formalism.BasicNotions.Rows.Data.Word (Formalism.BasicNotions.D7.R D) (Formalism.BasicNotions.D7.what₂ D)) ↦ @GlobalTheory.Mem.SRe.reCS D Z X u (@Formalism.L2.SG.Full.Full.what₂ D X Y u) (@Formalism.L2.SG.Full.Full.cs D X Y u))
  colReps := (Y.colReps)
  Dt := (Y.Dt)
  reps := (Y.reps)
  FN := (Y.FN)
  FN_fund := (Y.FN_fund)
  δ := (Y.δ)
  M := (Y.M)
  agree := (Y.agree)
  δ_pin := (Y.δ_pin)

set_option maxHeartbeats 4000000 in

def eRT {X : HidaSetting D} (Y : Full X) (u u' : D.what₂.Word) : RT Y u u' ≃ RT (reY Z Y) (wd Z u) (wd Z u') where
  toFun t := ⟨(t.lam), (t.mem), (t.cls)⟩
  invFun t := ⟨(t.lam), (t.mem), (t.cls)⟩
  left_inv t := (Eq.refl t)
  right_inv t := (Eq.refl t)

set_option maxHeartbeats 4000000 in

def eTT {X : HidaSetting D} (Y : Full X) (u u' : D.what₂.Word) : TT Y u u' ≃ TT (reY Z Y) (wd Z u) (wd Z u') where
  toFun t := ⟨(t.lam), (t.mem), (t.lam'), (t.mem'), (t.cls)⟩
  invFun t := ⟨(t.lam), (t.mem), (t.lam'), (t.mem'), (t.cls)⟩
  left_inv t := (Eq.refl t)
  right_inv t := (Eq.refl t)

set_option maxHeartbeats 4000000 in

def eCure {X : HidaSetting D} {Y : Full X} (h : FinX Y) (h' : FinX (reY Z Y)) (u : D.what₂.Word) :
    ColT (h.shInj u) ≃ₗᵢ[ℂ] ColT (h'.shInj (wd Z u)) := by kexactB LinearIsometryEquiv.refl ℂ (ColT (h.shInj u))

end GlobalTheory.Mem.SRe

end
