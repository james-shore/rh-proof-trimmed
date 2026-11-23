module

public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PadicUnitNorm
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PAdFour
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PBlockMat
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PCongrScale
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PDefSign
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PFinCls
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PFinCongr
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PHenselV
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PInfCongr
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PIsoEx
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PLocFour
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PLocRoot
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PLocUnit
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PNormTwo
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PPadMap
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PPadicSqFin
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PPadicUnitNorm
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PRelOf
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PScale
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PSplitCongr
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PSplitRep
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PTrivMat
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PUnitCls
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PZSqFin
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicHensel.PZUnitNorm
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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

@[expose] public section

namespace UpperTheory.Gal.G1

theorem LocUnit_holds : LocUnit := pLocUnit _root_.UpperTheory.Gal.G1.pHenselV
theorem LocRoot_holds : LocRoot := pLocRoot _root_.UpperTheory.Gal.G1.pHenselV
theorem ZUnitNorm_holds : ZUnitNorm := pZUnitNorm _root_.UpperTheory.Gal.G1.pPadicUnitNorm
theorem ZSqFin_holds : ZSqFin := pZSqFin _root_.UpperTheory.Gal.G1.pPadicSqFin
theorem AdFour_holds : AdFour := pAdFour _root_.UpperTheory.Gal.G1.pLocFour LocUnit_holds LocRoot_holds _root_.UpperTheory.Gal.G1.pSplitRep
theorem UnitCls_holds : UnitCls := pUnitCls _root_.UpperTheory.Gal.G1.pScale ZUnitNorm_holds ZSqFin_holds
theorem FinCongr_holds : FinCongr := pFinCongr _root_.UpperTheory.Gal.G1.pPadMap LocRoot_holds _root_.UpperTheory.Gal.G1.pTrivMat _root_.UpperTheory.Gal.G1.pCongrScale _root_.UpperTheory.Gal.G1.pSplitCongr _root_.UpperTheory.Gal.G1.pDefSign
theorem NormTwo_holds : NormTwo := pNormTwo AdFour_holds
theorem FinCls_holds : FinCls := pFinCls UnitCls_holds FinCongr_holds _root_.UpperTheory.Gal.G1.pInfCongr _root_.UpperTheory.Gal.G1.pDefSign _root_.UpperTheory.Gal.G1.pRelOf
theorem IsoEx_holds : IsoEx := pIsoEx NormTwo_holds _root_.UpperTheory.Gal.G1.pBlockMat

end UpperTheory.Gal.G1
