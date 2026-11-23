module

public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.CodiffUnit
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.ExistsClose
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.HenselRoot
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PAtPEx
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PBarEx
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PCodiffGen
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PCodiffUnit
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PDeltaEx
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PDiagTrace
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PDomSt
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PFormCoord
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PFormOKSt
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PFormPerfSt
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PHdSign
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PIdemEx
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PKqEx
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PLiftEx
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.POrbEx
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.POrient
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PPerfCof
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PPerfOf
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PPosGen
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PQuadEx
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PRealGen
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PRealIso
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PRepAdj
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PRepEx
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PRepLaws
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PSetupBasic
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PSetupEx
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PSigSt
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PTraceType
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.SphericalCoordinates.AlgebraEquivSetup.PUnitMod
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

namespace UpperTheory.Gal.W2.Seed

alias BarEx_holds := _root_.UpperTheory.Gal.W2.Seed.pBarEx
alias CEx_holds := _root_.UpperTheory.Gal.W2.Seed.pCEx
theorem CodiffGen_holds : CodiffGen := pCodiffGen
alias DeltaEx_holds := _root_.UpperTheory.Gal.W2.Seed.pDeltaEx
theorem IdemEx_holds : IdemEx := pIdemEx
theorem PerfCof_holds : PerfCof := pPerfCof
theorem PerfOf_holds : PerfOf := pPerfOf
theorem QuadEx_holds : QuadEx := pQuadEx
theorem SetupBasic_holds : SetupBasic := pSetupBasic
theorem UnitMod_holds : UnitMod := pUnitMod
theorem CodiffUnit_holds : CodiffUnit := pCodiffUnit UnitMod_holds
theorem FormCoord_holds : FormCoord := pFormCoord _root_.UpperTheory.Gal.W2.Seed.pTraceType
theorem KqEx_holds : KqEx := pKqEx _root_.UpperTheory.Gal.W2.Seed.pTraceType
theorem Orient_holds : Orient := pOrient _root_.UpperTheory.Gal.W2.Seed.pTraceType _root_.UpperTheory.Gal.W2.Seed.pHdSign
theorem RealIso_holds : RealIso := pRealIso _root_.UpperTheory.Gal.W2.Seed.pTraceType
theorem SigSt_holds : SigSt := pSigSt _root_.UpperTheory.Gal.W2.Seed.pHdSign
theorem AtPEx_holds : AtPEx := pAtPEx KqEx_holds _root_.UpperTheory.Gal.W2.Seed.pUEx _root_.UpperTheory.Gal.W2.Seed.pOrbEx _root_.UpperTheory.Gal.W2.Seed.pLiftEx
theorem DomSt_holds : DomSt := pDomSt _root_.UpperTheory.Gal.W2.Seed.pTraceType RealIso_holds FormCoord_holds _root_.UpperTheory.Gal.W2.Seed.pHdSign _root_.UpperTheory.Gal.W2.Seed.pDiagTrace
theorem PosGen_holds : PosGen := pPosGen CodiffUnit_holds
theorem RealGen_holds : RealGen := pRealGen CodiffGen_holds CodiffUnit_holds
theorem SetupEx_holds : SetupEx := pSetupEx _root_.UpperTheory.Gal.W2.Seed.pFormOKSt _root_.UpperTheory.Gal.W2.Seed.pFormPerfSt SigSt_holds DomSt_holds AtPEx_holds _root_.UpperTheory.Gal.W2.Seed.pRepEx _root_.UpperTheory.Gal.W2.Seed.pRepLaws _root_.UpperTheory.Gal.W2.Seed.pRepAdj Orient_holds

end UpperTheory.Gal.W2.Seed
