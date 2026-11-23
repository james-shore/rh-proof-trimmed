module

public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.ThetaParseval.ThetaKernels.SiegelMultK
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.ThetaParseval.ThetaKernels.BaseKnownTheoremsE
public import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinContinuation.DictInf
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.ThetaParseval.ThetaKernels.EisBLOfK
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.ThetaParseval.ThetaKernels.EisensteinHalfPlaneHolds
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.ThetaParseval.ThetaKernels.SiegelMultiplicityOfLaws
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocalFactorisationHolomorphic
public import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.SchwartzBruhatMajorants.SiegelMultOf
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Topology.Sheaves.Init
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ConstantMultiplierMirabolic
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CrossingOfWallsAndHeights
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SiegelInductionFromGallery
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SphericalTestFunctionExists
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StagedEstimateHolds
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TubeChainHolds
import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.MirabolicGenerators.MirGen
import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.SchwartzBruhatMajorants.ContinuousOnThetaCFunLtr
import Development.WeilBound.RepresentationTheoryGL.EisensteinSeries.SiegelEisensteinHalfPlane.SchwartzBruhatMajorants.SgOneHd

@[expose] public section



section
noncomputable section
namespace PositivityTheory.RgEis.Hd
open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
theorem eisBL_k : _root_.GlobalTheory.ThK.Dbl.EisBL_k :=
  have hW := wallLaw_of secLaw
  have hP := parLaw_of bdetLaw extLaw grpTop
  have hG := cmGood_of stdGood dict dictInf
  have hM := _root_.PositivityTheory.RgEis.MG.mirGen secLaw stdGood bdetLaw _root_.GlobalTheory.CompanionTheory.EpConvB.epConv (_root_.GlobalTheory.CompanionTheory.EpsteinMain.Hd.epMain_of_epConv _root_.GlobalTheory.CompanionTheory.EpConvB.epConv) _root_.PositivityTheory.RgEis.TF.testFun _root_.GlobalTheory.CompanionTheory.RgEisTestSph.testSph
  _root_.SiegelEisensteinSeries.BRoad.eisBL_of_k _root_.GlobalTheory.CompanionTheory.SiegelEisHalf.eisHalf_k
    (_root_.GlobalTheory.CompanionTheory.SiegelFrame.siegelMult_of_k secLaw hW dict dictInf hG grpTop bdetLaw extLaw hP
      (sgAll_of hG (_root_.GlobalTheory.CompanionTheory.CMMirror.cmMir dict hG grpTop bdetLaw extLaw hP hM)
        (_root_.PositivityTheory.RgEis.So.sgOne_hd secLaw hW _root_.GlobalTheory.CompanionTheory.RgEisScale.scale stdGood dict dictInf hG grpTop bdetLaw extLaw hP hM)
        (_root_.GlobalTheory.CompanionTheory.RgEis.sgStep (_root_.GlobalTheory.CompanionTheory.RgEisGal.gallery secLaw _root_.GlobalTheory.CompanionTheory.Eis.idTube _root_.GlobalTheory.CompanionTheory.TubeFourier.tubeChain (_root_.GlobalTheory.CompanionTheory.RgEisCross.cross secLaw htLip _root_.GlobalTheory.CompanionTheory.RgEis.stage hW)) (_root_.GlobalTheory.CompanionTheory.RgTransfer.transfer secLaw hW)
          (_root_.GlobalTheory.CompanionTheory.RgEisTwist.twist secLaw) grpTop hP (_root_.GlobalTheory.CompanionTheory.RgEisLevi.leviS bdetLaw extLaw grpTop) (_root_.GlobalTheory.CompanionTheory.RgEisLeviQUnit.leviQ bdetLaw extLaw grpTop)
          (_root_.GlobalTheory.CompanionTheory.Plucker.convGrOf bdetLaw extLaw) (_root_.GlobalTheory.CompanionTheory.RgEis.UnitaryConv.convU_of_parLaw hP))))
    GlobalTheory.CompanionTheory.Entire.local_factorisation
end PositivityTheory.RgEis.Hd
end
end
